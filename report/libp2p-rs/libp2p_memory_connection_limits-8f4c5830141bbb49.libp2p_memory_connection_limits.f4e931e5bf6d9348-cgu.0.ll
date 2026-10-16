Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_memory_connection_limits-8f4c5830141bbb49.libp2p_memory_connection_limits.f4e931e5bf6d9348-cgu.0?download=true
inline.NumInlined: 97
inline.NumDeleted: 59
begin_hunk_0_@_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour19with_max_percentage:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ax = getelementptr inbounds i8, ptr %i.ad, i64 -344
  %.val.i38.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !97, !noalias !82, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ad, i64 -336
  %.val1.i39.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !97, !noalias !82, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.az = icmp eq i64 %.val1.i39.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i41.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.val.i38.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i41.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = add nuw nsw i64 %.sroa.0.011.i.i.i41.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i42.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !98, !noalias !99 ; 2 uses
  %i.bc = icmp eq i64 %.val8.i.i.i42.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val9.i.i.i43.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !98, !noalias !99, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i43.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i42.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !100
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i
  %i.be = icmp eq i64 %i.bb, %.val1.i39.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.be, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i40.i.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i44.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit37.i.i.i.i.i.i.i.i.i.i.i
  %.val2.i46.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !range !5, !alias.scope !97, !noalias !82, !noundef !4 ; 2 uses
  %i.bf = icmp eq i64 %.val2.i46.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = mul nuw i64 %.val2.i46.i.i.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i38.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !99
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i45.i.i.i.i.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.ad, i64 -280
  %.val23.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !range !95, !alias.scope !88, !noalias !82, !noundef !4 ; 2 uses
  %i.bi = icmp sgt i64 %.val23.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds i8, ptr %i.ad, i64 -272
  %.val24.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val23.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit47.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.ad, i64 -256
  %.val19.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !range !95, !alias.scope !88, !noalias !82, !noundef !4 ; 2 uses
  %i.bl = icmp sgt i64 %.val19.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bl, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.ad, i64 -248
  %.val20.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val19.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit53.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %i.ad, i64 -104
  %.val31.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !88, !noalias !82, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.ad, i64 -96
  %.val32.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !88, !noalias !82 ; 4 uses
  %i.bp = icmp eq ptr %.val31.i.i.i.i.i.i.i.i.i.i.i, null
  %i.bq = icmp eq i64 %.val32.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i
  %i.br = shl i64 %.val32.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.bs = icmp slt i64 %.val32.i.i.i.i.i.i.i.i.i.i.i, 4611686018427387900
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.br, -16                      ; 2 uses
  %i.bu = add i64 %i.bt, 16                       ; 2 uses
  %i.bv = add nsw i64 %.val32.i.i.i.i.i.i.i.i.i.i.i, 17
  %i.bw = add i64 %i.bv, %i.bu                    ; 4 uses
  %i.bx = icmp uge i64 %i.bw, %i.bu
  %i.by = icmp ult i64 %i.bw, 9223372036854775793
  call void @llvm.assume(i1 %i.bx)
  call void @llvm.assume(i1 %i.by)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.bz = icmp eq i64 %i.bw, 0
  br i1 %i.bz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = sub nuw nsw i64 -16, %i.bt
  %i.cb = getelementptr inbounds i8, ptr %.val31.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ca
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !89
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit59.i.i.i.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 8, !alias.scope !101, !noalias !82, !noundef !4
  %i.ce = icmp eq i32 %i.cd, -1
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvXs7_NtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7processNtB5_11FileCounterNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.cc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i, !noalias !82

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cc, align 4, !range !102, !alias.scope !103, !noalias !82, !noundef !4
  %i.cg = call noundef i32 @close(i32 noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i) #16, !noalias !82 ; 0 uses
  %i.ch = getelementptr inbounds i8, ptr %i.ad, i64 -328
  %.val17.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !88, !noalias !82 ; 2 uses
  %i.ci = icmp eq i64 %.val17.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.body.i.i, label %bb.o

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cc, align 8, !range !102, !alias.scope !103, !noalias !82, !noundef !4
  %i.cj = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) #16, !noalias !82 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds i8, ptr %i.ad, i64 -320
  %.val18.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val17.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !82
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds i8, ptr %i.ad, i64 -328
  %.val15.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cl, align 8, !alias.scope !88, !noalias !82 ; 2 uses
  %i.cm = icmp eq i64 %.val15.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.ad, i64 -320
  %.val16.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !88, !noalias !82, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val15.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #16, !noalias !82
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.co = icmp eq i64 %i.ae, 0
  br i1 %i.co, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.cp = mul i64 %i.k, 408
  %i.cq = icmp slt i64 %i.k, 45212608023797920
  call void @llvm.assume(i1 %i.cq)
  %i.cr = and i64 %i.cp, -16                      ; 2 uses
  %i.cs = add i64 %i.cr, 416                      ; 2 uses
  %i.ct = add nsw i64 %i.k, 17
  %i.cu = add i64 %i.ct, %i.cs                    ; 4 uses
  %i.cv = icmp uge i64 %i.cu, %i.cs
  %i.cw = icmp ult i64 %i.cu, 9223372036854775793
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i64 %i.cu, 0
  br i1 %i.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit, label %bb.q

bb.q:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i
  %i.cy = load ptr, ptr %i.i, align 8, !alias.scope !80, !nonnull !4, !noundef !4
  %i.cz = sub i64 -416, %i.cr
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %i.cz
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 16) #16, !noalias !80
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit

.body.i.i:                                        ; preds = %bb.o, %.body.i.i.i.i.i.i.i.i.i.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux3cpu11CpusWrapperECsl1EC4Y8FHbU_31libp2p_memory_connection_limits(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(376) %i.c) #20
  resume { ptr, i32 } %i.cf

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits.exit.i.i.i.i.i.i.i, %bb.q
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux3cpu11CpusWrapperECsl1EC4Y8FHbU_31libp2p_memory_connection_limits(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(376) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = uitofp i64 %i.h to double
  %i.dc = fmul double %1, %i.db
  %i.dd = call double @llvm.round.f64(double %i.dc)
  %i.de = call i64 @llvm.fptoui.sat.i64.f64(double %i.dd)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  call void @_RNvCs8BVNPLexBuN_12memory_stats12memory_stats(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !noalias !104
  %i.df = load i64, ptr %i.a, align 8, !range !6, !noalias !104, !noundef !4
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !noalias !104
  %.sroa.0.0.i = select i1 %i.dg, i64 %i.di, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  %i.dj = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !noalias !104 ; 2 uses
  %i.dk = extractvalue { i64, i32 } %i.dj, 0
  %i.dl = extractvalue { i64, i32 } %i.dj, 1
  store i64 %i.de, ptr %0, align 8, !alias.scope !104
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.dm, align 8, !alias.scope !104
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dk, ptr %i.dn, align 8, !alias.scope !104
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.dl, ptr %i.do, align 8, !alias.scope !104
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !108, !noalias !109, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_Csl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB5_24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !7, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @12, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_Csl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB5_24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 29, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_Csl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour33handle_pending_inbound_connection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readnone align 8 captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour11check_limit(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_Csl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9BehaviourNtNtCs6b9j1MKPRPC_12libp2p_swarm9behaviour16NetworkBehaviour34handle_pending_outbound_connection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %3, ptr nofree noundef nonnull readnone align 8 captures(none) %4, i64 noundef range(i64 0, 288230376151711744) %5, i1 noundef zeroext %6) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { ptr, ptr } @_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour11check_limit(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp ne ptr %i.b, null                  ; 3 uses
  %.sink7 = sext i1 %.not to i64
  %.sink6 = select i1 %.not, ptr %i.b, ptr inttoptr (i64 8 to ptr)
  %.sink = select i1 %.not, ptr @1, ptr null
  store i64 %.sink7, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.d, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error11descriptionB4_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @18, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error5causeB4_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error6sourceB4_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error7provideB4_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsl1EC4Y8FHbU_31libp2p_memory_connection_limits24MemoryUsageLimitExceededNtNtCskKLDkoKarTP_4core5error5Error7type_idB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @19, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9Bqz0CSWZZv_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsl1EC4Y8FHbU_31libp2p_memory_connection_limits(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7processNtB5_11FileCounterNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs8BVNPLexBuN_12memory_stats12memory_stats(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsjxhXpl572Cv_7sysinfo6common6systemNtB4_6System18new_with_specifics(ptr dead_on_unwind noalias nofree noundef writable sret([376 x i8]) align 8 captures(none) dereferenceable(376), ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(14)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fptoui.sat.i64.f64(double) #10

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs9Bqz0CSWZZv_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noinline }
attributes #18 = { inlinehint }
attributes #19 = { noreturn }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{i64 0, i64 2}
!7 = !{i64 8}
!8 = distinct !{!8, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3CpuEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!9 = distinct !{!9, !8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3CpuEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!10 = distinct !{!10, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3CpuECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!11 = distinct !{!11, !10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3CpuECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!12 = distinct !{!12, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3CpuECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!13 = distinct !{!13, !12, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3CpuECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!14 = distinct !{!14, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux3cpu8CpuInnerECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!15 = distinct !{!15, !14, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux3cpu8CpuInnerECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!16 = !{!9}
!17 = !{!11}
!18 = !{!13}
!19 = !{!15}
!20 = !{!15, !13, !11}
!21 = !{!15, !13, !11, !9}
!22 = distinct !{!22, i1 false, !"_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed"}
!23 = distinct !{!23, !22, !"_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour30refresh_memory_stats_if_needed: argument 0"}
!24 = distinct !{!24, i1 false, !"_RNCNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed0B4_"}
!25 = distinct !{!25, !24, !"_RNCNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB4_9Behaviour30refresh_memory_stats_if_needed0B4_: argument 0"}
!26 = distinct !{null, null}
!27 = distinct !{null}
!28 = !{!23}
!29 = !{i32 0, i32 1000000000}
!30 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!31 = !{!25, !23}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = distinct !{!33, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!34 = distinct !{!34, !33, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system6SystemECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!35 = distinct !{!35, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux6system11SystemInnerECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!36 = distinct !{!36, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux6system11SystemInnerECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!37 = distinct !{!37, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1x_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1x_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!39 = distinct !{!39, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1i_7ProcessNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!40 = distinct !{!40, !39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3map7HashMapNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1i_7ProcessNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!41 = distinct !{!41, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1k_7ProcessEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!42 = distinct !{!42, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1k_7ProcessEEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!43 = distinct !{!43, i1 false, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBR_7ProcessEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!44 = distinct !{!44, !43, !"_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBR_7ProcessEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!45 = distinct !{!45, i1 false, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1f_7ProcessENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!46 = distinct !{!46, !45, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1f_7ProcessENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!47 = distinct !{!47, i1 false, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!48 = distinct !{!48, !47, !"_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtB1c_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!49 = distinct !{!49, i1 false, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBW_7ProcessEE3newCsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!50 = distinct !{!50, !49, !"_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBW_7ProcessEE3newCsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!51 = distinct !{!51, i1 false, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBX_7ProcessEE9next_implKb0_ECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!52 = distinct !{!52, !51, !"_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBX_7ProcessEE9next_implKb0_ECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!53 = distinct !{!53, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!54 = distinct !{!54, !53, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtCsjxhXpl572Cv_7sysinfo6common6system3PidNtBE_7ProcessEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!55 = distinct !{!55, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system7ProcessECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!56 = distinct !{!56, !55, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjxhXpl572Cv_7sysinfo6common6system7ProcessECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!57 = distinct !{!57, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process12ProcessInnerECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!58 = distinct !{!58, !57, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process12ProcessInnerECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!59 = distinct !{!59, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!60 = distinct !{!60, !59, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!61 = distinct !{!61, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!62 = distinct !{!62, !61, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!63 = distinct !{!63, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!64 = distinct !{!64, !63, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!65 = distinct !{!65, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!67 = distinct !{!67, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!68 = distinct !{!68, !67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterEECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!69 = distinct !{!69, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterECsl1EC4Y8FHbU_31libp2p_memory_connection_limits"}
!70 = distinct !{!70, !69, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjxhXpl572Cv_7sysinfo4unix5linux7process11FileCounterECsl1EC4Y8FHbU_31libp2p_memory_connection_limits: argument 0"}
!71 = distinct !{!71, i1 false, !"_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour14with_max_bytes"}
!72 = distinct !{!72, !71, !"_RNvMCsl1EC4Y8FHbU_31libp2p_memory_connection_limitsNtB2_9Behaviour14with_max_bytes: argument 0"}
!73 = !{!34}
!74 = !{!36}
!75 = !{!38}
!76 = !{!40}
!77 = !{!42}
!78 = !{!44}
!79 = !{!46}
!80 = !{!46, !44, !42, !40, !38, !36, !34}
!81 = !{!48}
!82 = !{!48, !46, !44, !42, !40, !38, !36, !34}
!83 = !{!50, !48, !46, !44, !42, !40, !38, !36, !34}
!84 = !{!52, !48, !46, !44, !42, !40, !38, !36, !34}
!85 = !{!54}
!86 = !{!56}
!87 = !{!58}
!88 = !{!58, !56, !54}
!89 = !{!58, !56, !54, !48, !46, !44, !42, !40, !38, !36, !34}
!90 = !{!60}
!91 = !{!60, !58, !56, !54}
!92 = !{!62}
!93 = !{!60, !58, !56, !54, !48, !46, !44, !42, !40, !38, !36, !34}
!94 = !{!62, !60, !58, !56, !54, !48, !46, !44, !42, !40, !38, !36, !34}
!95 = !{i64 -1, i64 -9223372036854775808}
!96 = !{!64}
!97 = !{!64, !58, !56, !54}
!98 = !{!66}
!99 = !{!64, !58, !56, !54, !48, !46, !44, !42, !40, !38, !36, !34}
!100 = !{!66, !64, !58, !56, !54, !48, !46, !44, !42, !40, !38, !36, !34}
!101 = !{!68, !58, !56, !54}
!102 = !{i32 0, i32 -1}
!103 = !{!70, !68, !58, !56, !54}
!104 = !{!72}
!105 = distinct !{!105, i1 false, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt"}
!106 = distinct !{!106, !105, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!107 = distinct !{!107, !105, !"_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt: argument 0"}
!108 = !{!106}
!109 = !{!107}
end_hunk_0
