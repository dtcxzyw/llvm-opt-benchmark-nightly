Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.03?download=true
inline.NumInlined: 156
inline.NumDeleted: 88
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types8datetime10PyDateTimeEE15get_or_try_initNCNvNtNtNtB7_11conversions3std4time13unix_epoch_py0NtNtB7_3err5PyErrEB7_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !alias.scope !48, !noalias !49
  store i64 0, ptr %0, align 8, !alias.scope !48, !noalias !49
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBO_5types8datetime10PyDateTimeEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2V_10PyOnceLockBJ_E15get_or_try_initNCNvNtNtNtBO_11conversions3std4time13unix_epoch_py0B2x_E0NcNtB28_2Ok0EBO_.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtB6_11conversions3std4time13unix_epoch_py0INtNtB6_8instance2PyNtNtNtB6_5types8datetime10PyDateTimeENtNtB6_3err5PyErrEB6_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2), !noalias !50
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBO_5types8datetime10PyDateTimeEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2V_10PyOnceLockBJ_E15get_or_try_initNCNvNtNtNtBO_11conversions3std4time13unix_epoch_py0B2x_E0NcNtB28_2Ok0EBO_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBO_5types8datetime10PyDateTimeEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2V_10PyOnceLockBJ_E15get_or_try_initNCNvNtNtNtBO_11conversions3std4time13unix_epoch_py0B2x_E0NcNtB28_2Ok0EBO_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 6 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !79 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81
  %i.s = icmp ult i64 %..i, 15
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.t, label %bb.l, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %..i, 3
  %i.v = udiv i64 %i.u, 7
  %i.w = add nsw i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = lshr i64 -1, %i.x
  %i.z = add nuw nsw i64 %i.y, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.aa = icmp samesign ult i64 %..i, 4
  %i.ab = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.ab, 8
  %.sroa.03.0.i.i = select i1 %i.aa, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.z, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 56) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = add nuw i64 %i.ae, 8
  %i.ag = and i64 %i.af, -16                      ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  %i.ak = icmp ugt i64 %i.ai, 9223372036854775792
  %or.cond.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, !prof !6

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !82
  %i.al = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !noalias !82 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !82
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit.thread

bb.k:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ao = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ai), !noalias !82
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.ap = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !83
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit.thread

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ah, i1 false), !noalias !83
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.as, i64 %i.au ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !81
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 56, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !81
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !81
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !81
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.as, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !81
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !81
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !81
  %i.av = load i64, ptr %i.d, align 8, !alias.scope !84, !noalias !85, !noundef !4 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !84, !noalias !85, !nonnull !4, !noundef !4 ; 2 uses
  %.val337 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val337, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.ap, %bb.l ], [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %.sroa.12.033 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.034 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit

bb.m:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #23
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.019.053 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.019.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.052 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.051 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.050 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i145 = icmp eq i16 %.sroa.13.050, 0
  br i1 %.not.i145, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.019.147 = phi ptr [ %i.bb, %.noexc2 ], [ %.sroa.019.053, %.preheader ] ; 2 uses
  %.sroa.5.146 = phi i64 [ %i.be, %.noexc2 ], [ %.sroa.5.052, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.147) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.019.147, i64 16 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.bb, align 16
  %i.bc = icmp sgt <16 x i8> %.val38, splat (i8 -1)
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = add i64 %.sroa.5.146, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bd, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge54.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre67 = load i64, ptr %i.d, align 8, !alias.scope !84, !noalias !85
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit
  %i.bf = phi i64 [ %.pre67, %._crit_edge54.loopexit ], [ 0, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit ] ; 2 uses
  %i.bg = sub i64 %.sroa.07.0.i.i, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !81
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !81
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdc6yCHiM2ZJ_4pyo3(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsdc6yCHiM2ZJ_4pyo3.exit unwind label %bb.n

bb.n:                                             ; preds = %._crit_edge54
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %._crit_edge54
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !88 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !88 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !88, !noundef !4 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsdc6yCHiM2ZJ_4pyo3.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !88
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn)
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bx = sub nsw i64 0, %i.bp
  %i.by = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bx
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #22, !noalias !88
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsdc6yCHiM2ZJ_4pyo3.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.050, %.preheader ], [ %i.bd, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.052, %.preheader ], [ %i.be, %.noexc2 ] ; 2 uses
  %.sroa.019.1.lcssa = phi ptr [ %.sroa.019.053, %.preheader ], [ %i.bb, %.noexc2 ]
  %i.bz = add i16 %.sroa.13.1.lcssa, -1
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = and i16 %i.bz, %.sroa.13.1.lcssa
  %i.cd = add i64 %.sroa.5.1.lcssa, %i.cb         ; 2 uses
  %i.ce = add i64 %.sroa.9.051, -1                ; 2 uses
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !89, !noalias !90, !nonnull !4, !noundef !4
  %i.cg = sub nsw i64 0, %i.cd
  %i.ch = getelementptr inbounds [56 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -56
  %i.cj = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtNtBT_3ffi5c_str4CStrECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit unwind label %bb.m ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.as, %i.cj            ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !91
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit ], [ %.sroa.0.0.i10, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %i.as                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !4
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i9 = load <16 x i8>, ptr %i.aq, align 16
  %i.cu = icmp slt <16 x i8> %.val2.i.i9, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i10, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i10 = and i64 %i.da, %i.as           ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i10
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !91
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %i.as
  store i8 %i.dg, ptr %i.de, align 1
  %i.dj = getelementptr i8, ptr %i.aq, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.dg, ptr %i.dk, align 1
  %i.dl = load ptr, ptr %0, align 8, !alias.scope !84, !noalias !85, !nonnull !4, !noundef !4
  %.neg.i.i = mul i64 %i.cd, -56
  %i.dm = getelementptr i8, ptr %i.dl, i64 %.neg.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 -56
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i, -56
  %i.do = getelementptr i8, ptr %i.aq, i64 %.neg62.i.i
  %i.dp = getelementptr i8, ptr %i.do, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dp, ptr noundef nonnull align 1 dereferenceable(56) %i.dn, i64 56, i1 false)
  %i.dq = icmp eq i64 %i.ce, 0
  br i1 %i.dq, label %._crit_edge54.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.t, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.et, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !4, !noundef !4 ; 5 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  br label %bb.ab

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.dr = lshr i64 %i.k, 4
  %i.ds = and i64 %i.k, 15
  %.not10.i.i.i.i = icmp ne i64 %i.ds, 0
  %i.dt = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dr, %i.dt ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.du = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.du, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.r

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ee, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.dv = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dv, align 16, !noalias !92
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dw = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dx = or <2 x i64> %i.dw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dx, ptr %i.dv, align 16, !noalias !92
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.ea = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 1 %.val13.i, i64 %.27.i, i1 false), !noalias !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  store ptr null, ptr %i.dy, align 8, !noalias !92
  store i64 56, ptr %i.dz, align 8, !noalias !92
  store ptr %0, ptr %i.a, align 8, !noalias !92
  br label %.lr.ph.i13

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ee, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.r ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.eb, align 16, !noalias !92
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ec = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ed = or <2 x i64> %i.ec, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ed, ptr %i.eb, align 16, !noalias !92
  %i.ee = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.08.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.eg, align 16, !noalias !92
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.eh = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ei = or <2 x i64> %i.eh, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ei, ptr %i.eg, align 16, !noalias !92
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.r

.lr.ph.i13:                                       ; preds = %bb.z, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.ej, %bb.z ], [ 0, %._crit_edge.i.i ] ; 9 uses
  %i.ej = add nuw i64 %.sroa.0.06.i, 1            ; 2 uses
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !4, !noundef !4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.0.06.i
  %i.em = load i8, ptr %i.el, align 1, !noundef !4
  %.not.i14 = icmp eq i8 %i.em, -128
  br i1 %.not.i14, label %bb.s, label %bb.z

bb.s:                                             ; preds = %.lr.ph.i13
  %.neg.i = mul i64 %i.ej, -56
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 %.neg.i ; 2 uses
  %i.eo = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.y, %bb.s
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !93, !noalias !94, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds [56 x i8], ptr %i.ep, i64 %i.eo
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -56
  %i.es = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtNtBT_3ffi5c_str4CStrECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.er)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit.i unwind label %bb.t ; 3 uses

bb.t:                                             ; preds = %bb.y, %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #23
          to label %common.resume unwind label %bb.aa

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit.i: ; preds = %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i17 = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !4, !noundef !4 ; 7 uses
  %.val12.i = load i64, ptr %i.h, align 8, !alias.scope !92, !noundef !4 ; 6 uses
  %.sroa.0.07.i.i = and i64 %.val12.i, %i.es      ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.eu, align 1, !noalias !95
  %i.ev = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ew = bitcast <16 x i1> %i.ev to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !7

._crit_edge.i15.i:                                ; preds = %.lr.ph.i16.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit.i ], [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ]
  %.lcssa.i.i = phi i16 [ %i.ew, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit.i ], [ %i.fn, %.lr.ph.i16.i ]
  %i.ex = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = add i64 %.sroa.0.0.lcssa.i.i, %i.ey
  %i.fa = and i64 %i.ez, %.val12.i                ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noundef !4
  %i.fd = icmp sgt i8 %i.fc, -1
  br i1 %i.fd, label %bb.u, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !5

bb.u:                                             ; preds = %._crit_edge.i15.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i17, align 16
  %i.fe = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ff = bitcast <16 x i1> %i.fe to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.ff, 0
  %i.fg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ff, i1 true)
  %i.fh = zext nneg i16 %i.fg to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i16.i:                                     ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit.i, %.lr.ph.i16.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i18, %.lr.ph.i16.i ], [ %.sroa.0.07.i.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit.i ]
  %i.fi = phi i64 [ %i.fj, %.lr.ph.i16.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0B1D_.exit.i ]
  %i.fj = add i64 %i.fi, 16                       ; 2 uses
  %i.fk = add i64 %i.fj, %.sroa.0.010.i.i
  %.sroa.0.0.i.i18 = and i64 %i.fk, %.val12.i     ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i.i18
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fl, align 1, !noalias !95
  %i.fm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fn = bitcast <16 x i1> %i.fm to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i.i.i, label %.lr.ph.i16.i, label %._crit_edge.i15.i, !prof !8

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.u, %._crit_edge.i15.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fh, %bb.u ], [ %i.fa, %._crit_edge.i15.i ] ; 4 uses
  %i.fo = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fp = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fq = xor i64 %i.fp, %i.fo
  %.unshifted.i = and i64 %i.fq, %.val12.i
  %i.fr = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fr, label %bb.w, label %bb.v, !prof !9

bb.v:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %.neg11.i = mul i64 %.sroa.0.0.i5.i.i, -56
  %i.fs = getelementptr i8, ptr %.val.i17, i64 %.neg11.i
  %i.ft = getelementptr i8, ptr %i.fs, i64 -56    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !noundef !4
  %i.fw = lshr i64 %i.es, 57
  %i.fx = trunc nuw nsw i64 %i.fw to i8           ; 2 uses
  %i.fy = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fz = and i64 %i.fy, %.val12.i
  store i8 %i.fx, ptr %i.fu, align 1
  %i.ga = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !4, !noundef !4
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i8 %i.fx, ptr %i.gc, align 1
  %i.gd = icmp eq i8 %i.fv, -1
  br i1 %i.gd, label %bb.x, label %bb.y

bb.w:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ge = lshr i64 %i.es, 57
  %i.gf = trunc nuw nsw i64 %i.ge to i8           ; 2 uses
  %i.gg = add i64 %.sroa.0.06.i, -16
  %i.gh = and i64 %.val12.i, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i17, i64 %.sroa.0.06.i
  store i8 %i.gf, ptr %i.gi, align 1
  %i.gj = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !4, !noundef !4
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gh
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  store i8 %i.gf, ptr %i.gl, align 1
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.gm = add i64 %.sroa.0.06.i, -16
  %i.gn = load i64, ptr %i.h, align 8, !alias.scope !92, !noundef !4
  %i.go = and i64 %i.gn, %i.gm
  %i.gp = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !4, !noundef !4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gq, align 1
  %i.gr = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !4, !noundef !4
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.go
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  store i8 -1, ptr %i.gt, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ft, ptr noundef nonnull align 1 dereferenceable(56) %i.en, i64 56, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdc6yCHiM2ZJ_4pyo3(ptr noundef nonnull %i.en, ptr noundef nonnull %i.ft, i64 noundef 7)
          to label %_RNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.t

bb.z:                                             ; preds = %bb.x, %bb.w, %.lr.ph.i13
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i13

bb.aa:                                            ; preds = %bb.t
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.z
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !92
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.gv = lshr i64 %.pre13.i, 3
  %i.gw = mul nuw i64 %i.gv, 7
  %i.gx = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.gx, i64 %.pre.i.fr, i64 %i.gw
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !92
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gy = phi i64 [ %i.e, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.gz = phi i64 [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hb = sub i64 %i.gz, %i.gy
  store i64 %i.hb, ptr %i.ha, align 8, !alias.scope !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3.exit, %bb.c, %bb.ab
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.c ], [ undef, %bb.ab ], [ %.sroa.12.033, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit.thread ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3.exit ]
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.ab ], [ %.sroa.7.034, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsdc6yCHiM2ZJ_4pyo3.exit.thread ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3.exit ]
  %i.hc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hd = insertvalue { i64, i64 } %i.hc, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hd
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !98 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !98 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !98, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !98
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #22, !noalias !98
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3.exit

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !102
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !102, !nonnull !4, !align !10, !noundef !4 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !102, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !102, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !102, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !102, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !102
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !102, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !102
  %i.q = load i64, ptr %i.e, align 8, !noalias !102, !noundef !4
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !102, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !102, !noundef !4
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !102, !noundef !4
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !102
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !102, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !102
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !102, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !102, !inline_history !101
  %i.af = load i64, ptr %i.e, align 8, !noalias !102, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !102
  br label %bb.d

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !102, !noundef !4 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !102, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !102
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs3_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEEB6_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types6string8PyStringEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B2G_NtB2G_8Interned3get0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBV_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvNtNtB6_5impl_16extract_argument25argument_extraction_error0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEEB6_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types6string8PyStringEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBV_5impl_16extract_argument25argument_extraction_error0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBV_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtB6_5panicNtB1e_14PanicExceptionNtNtB6_11type_object10PyTypeInfo15type_object_raw0INtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEEB6_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = call noundef nonnull align 8 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBV_5panicNtB3D_14PanicExceptionNtNtBV_11type_object10PyTypeInfo15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBV_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2_INtB2_10PyOnceLockINtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEE6import0B1D_NtNtB6_3err5PyErrEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2m_INtB2m_10PyOnceLockBQ_E6import0BQ_NtNtBV_3err5PyErrE0B3Y_EBV_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2_INtB2_10PyOnceLockINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEE6import0B1D_NtNtB6_3err5PyErrEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = tail call { i64, ptr } @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types3any5PyAnyEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2d_INtB2d_10PyOnceLockBQ_E6import0BQ_NtNtBV_3err5PyErrE0B3P_EBV_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvMs_NtNtB6_5impl_8pymoduleNtB1h_9ModuleDef11make_modules_0INtNtB6_8instance2PyNtNtNtB6_5types6module8PyModuleENtNtB6_3err5PyErrEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB1K_:bb.a
bb.c:                                             ; preds = %._crit_edge.i
  %i.ad = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i, %i.ad
  br label %bb.b

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0EB1B_.exit: ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1x_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0B1D_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ag, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !133, !noalias !134, !noundef !4
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE7reserveNCINvNtB8_3map11make_hasherBQ_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB1B_.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.ak = call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i1 noundef zeroext true) #26 ; 0 uses
  br label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE7reserveNCINvNtB8_3map11make_hasherBQ_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB1B_.exit

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE7reserveNCINvNtB8_3map11make_hasherBQ_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB1B_.exit: ; preds = %bb.d, %bb.e
  store ptr %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE7reserveNCINvNtB8_3map11make_hasherBQ_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB1B_.exit, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1v_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0EB1B_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 26), (32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !137
  %i.f = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  store ptr %i.a, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.f, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtNtNtB9_5types10typeobject6PyTypeEE6importB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.f, align 8
  store ptr %4, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %5, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.h = tail call noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE3getBU_(ptr noundef nonnull align 8 %1), !noalias !152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !152
  store ptr %1, ptr %i.b, align 8, !noalias !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.i, align 8, !noalias !152
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.j, align 8, !noalias !151
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !151
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !151
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit.thread

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.k, align 8, !alias.scope !153, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !152
  br label %bb.c

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit: ; preds = %bb.a
  call fastcc void @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2_INtB2_10PyOnceLockINtNtB6_8instance2PyNtNtNtB6_5types10typeobject6PyTypeEE6import0B1D_NtNtB6_3err5PyErrEB6_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.j), !noalias !155
  %.pre = load i64, ptr %i.c, align 8, !range !12
  %i.l = trunc nuw i64 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !152
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit.thread, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types10typeobject6PyTypeEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !10, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB5_10PyOnceLockINtNtB9_8instance2PyNtNtNtB9_5types3any5PyAnyEE6importB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.f, align 8
  store ptr %4, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %5, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.h = tail call noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types3any5PyAnyEE3getBU_(ptr noundef nonnull align 8 %1), !noalias !170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !170
  store ptr %1, ptr %i.b, align 8, !noalias !170
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.i, align 8, !noalias !170
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.j, align 8, !noalias !169
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !169
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !169
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit.thread

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit.thread: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.k, align 8, !alias.scope !171, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !170
  br label %bb.c

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit: ; preds = %bb.a
  call fastcc void @_RINvNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2_INtB2_10PyOnceLockINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEE6import0B1D_NtNtB6_3err5PyErrEB6_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.j), !noalias !173
  %.pre = load i64, ptr %i.c, align 8, !range !12
  %i.l = trunc nuw i64 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !170
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit.thread, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types3any5PyAnyEE15get_or_try_initNCNvMs0_B3_BF_6import0NtNtB7_3err5PyErrEB7_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !10, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #22
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #22 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !176
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !176
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !176, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !176, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !176, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !176
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !176
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !179
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !179
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !179, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !179, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !179, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !179
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !179
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !182
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !182
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !182, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !182, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !182, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !182
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !182
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !185
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !185
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !185
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !185, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !185, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !185, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !185
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !185
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !188
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !188
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !188, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !188, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !188, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !188
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !188
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsG258MDvU3F_3std6thread2id8ThreadIdE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !191
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !191
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !191, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !191, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !191, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !191
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !191
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !194
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !194
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !194, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !194, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !194, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !194
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !194
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !194
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1x_5types3any5PyAnyEEE8grow_oneB1x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !197
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !197
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !197
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !197, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !197, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !197
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !197, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !197
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !197
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !197
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !6
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #22
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #22
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !6
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14insert_no_growB1A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.val2, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !200
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val2                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !4  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val2             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !200
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.b
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val2
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [56 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtCsdc6yCHiM2ZJ_4pyo315internal_tricks11traverse_eq(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @_RNvYFUKCONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectFUKCB6_ONtNtCskKLDkoKarTP_4core3ffi6c_voidElBV_ElNtNtNtB10_3ops8function5FnPtr4addrCsdc6yCHiM2ZJ_4pyo3(ptr noundef nonnull %0)
  %i.b = tail call noundef i64 @_RNvYFUKCONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectFUKCB6_ONtNtCskKLDkoKarTP_4core3ffi6c_voidElBV_ElNtNtNtB10_3ops8function5FnPtr4addrCsdc6yCHiM2ZJ_4pyo3(ptr noundef nonnull %1)
  %i.c = icmp eq i64 %i.a, %i.b
  br label %bb.c

end_hunk_1
begin_hunk_2_@_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1x_5types3any5PyAnyEEENtNtNtBU_3ops4drop4Drop4dropB1x_:bb.a
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdc6yCHiM2ZJ_4pyo3.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdc6yCHiM2ZJ_4pyo3.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdc6yCHiM2ZJ_4pyo3.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdc6yCHiM2ZJ_4pyo3.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechRNtNtB7_5alloc6GlobalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_11RawVecInnerRNtNtB7_5alloc6GlobalE10deallocateCsdc6yCHiM2ZJ_4pyo3.exit, label %_RNvXs0_NtCskKLDkoKarTP_4core5allocRNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsdc6yCHiM2ZJ_4pyo3.exit.i

_RNvXs0_NtCskKLDkoKarTP_4core5allocRNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsdc6yCHiM2ZJ_4pyo3.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_11RawVecInnerRNtNtB7_5alloc6GlobalE10deallocateCsdc6yCHiM2ZJ_4pyo3.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_11RawVecInnerRNtNtB7_5alloc6GlobalE10deallocateCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a, %_RNvXs0_NtCskKLDkoKarTP_4core5allocRNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsdc6yCHiM2ZJ_4pyo3.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterReEB10_EIB11_NtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrEEINtB5_7ZipImplBW_B1y_E3newB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1 = load i64, ptr %i.d, align 8, !noundef !4
  %i.e = sub i64 %.val1, %.val
  %i.f = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %..i, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsdc6yCHiM2ZJ_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E3newB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCsdc6yCHiM2ZJ_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtB9_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB19_5types3any5PyAnyEEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeB19_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterReEBW_EINtB5_7ZipImplBW_BW_E3newCsdc6yCHiM2ZJ_4pyo3(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterReENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterReENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderENtNtNtNtBR_4iter6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !203, !noundef !4 ; 2 uses
  %.not11.i = icmp eq i16 %i.e, 0
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !203 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE9next_implKb0_EB1G_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.f, align 8, !alias.scope !203
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !203
  store ptr %i.j, ptr %0, align 8, !alias.scope !203
  br label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE9next_implKb0_EB1G_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.val9.i = load <16 x i8>, ptr %i.g, align 16, !noalias !203
  %i.i = icmp sgt <16 x i8> %.val9.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -896 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.i to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE9next_implKb0_EB1G_.exit: ; preds = %bb.b, %._crit_edge.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i
  store i16 %i.p, ptr %i.d, align 8, !alias.scope !203
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [56 x i8], ptr %i.l, i64 %i.q ; 2 uses
  %i.s = add i64 %i.b, -1
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -56
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -40
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE9next_implKb0_EB1G_.exit
  %.sroa.3.0 = phi ptr [ %i.u, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE9next_implKb0_EB1G_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.t, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE9next_implKb0_EB1G_.exit ], [ null, %bb.a ]
  %i.v = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.w
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEENtNtNtBW_3ops4drop4Drop4dropB1A_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1Y_.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = mul i64 %.val1, 56
  %i.d = icmp slt i64 %.val1, 329406144173384850
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 64                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1Y_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -64, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #22
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1Y_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1Y_.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types10typeobject6PyTypeEE3getBU_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types3any5PyAnyEE3getBU_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types6module8PyModuleEE3getBU_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB5_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBU_5types8datetime10PyDateTimeEE3getBU_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttach3new() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types6string8PyStringEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvMs3_B2G_NtB2G_8Interned3get0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBV_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types6string8PyStringEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvNtNtBV_5impl_16extract_argument25argument_extraction_error0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBV_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvB2_11get_or_initNCINvNtNtBV_4sync9once_lock26init_once_cell_py_attachedNCNvXs1_NtBV_5panicNtB3D_14PanicExceptionNtNtBV_11type_object10PyTypeInfo15type_object_raw0BQ_E0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBV_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types10typeobject6PyTypeEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2m_INtB2m_10PyOnceLockBQ_E6import0BQ_NtNtBV_3err5PyErrE0B3Y_EBV_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types3any5PyAnyEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs0_B2d_INtB2d_10PyOnceLockBQ_E6import0BQ_NtNtBV_3err5PyErrE0B3P_EBV_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types6module8PyModuleEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvMs_NtNtBV_5impl_8pymoduleNtB3i_9ModuleDef11make_modules_0BQ_NtNtBV_3err5PyErrE0B4d_EBV_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types8datetime10PyDateTimeEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvNtNtNtBV_11conversions3std4time13unix_epoch_py0BQ_NtNtBV_3err5PyErrE0B48_EBV_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCsjCbDjdVFjRH_9once_cell4syncINtB6_8OnceCellINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBV_5types3any5PyAnyEE15get_or_try_initNCINvNtNtBV_4sync9once_lock30try_init_once_cell_py_attachedNCNvXNtNtB1u_7weakref6anyrefNtB3a_9PyWeakrefNtNtBV_11type_object11PyTypeCheck16classinfo_object0BQ_NtNtBV_3err5PyErrE0B4G_EBV_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtNtBT_3ffi5c_str4CStrECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYFUKCONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectFUKCB6_ONtNtCskKLDkoKarTP_4core3ffi6c_voidElBV_ElNtNtNtB10_3ops8function5FnPtr4addrCsdc6yCHiM2ZJ_4pyo3(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYFUKCONtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectElNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCsdc6yCHiM2ZJ_4pyo3(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdc6yCHiM2ZJ_4pyo3(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsdc6yCHiM2ZJ_4pyo33err5PyErrENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBM_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCsdc6yCHiM2ZJ_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterINtNtB9_6option6OptionINtNtCsdc6yCHiM2ZJ_4pyo38instance8BorrowedNtNtNtB19_5types3any5PyAnyEEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeB19_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterReENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", i32 2002, i32 2000}
!7 = !{!"branch_weights", i32 1, i32 1999}
!8 = !{!"branch_weights", i32 0, i32 1}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i64 8}
!11 = !{i64 0, i64 -9223372036854775808}
!12 = !{i64 0, i64 2}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = distinct !{!14, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2K_10PyOnceLockBJ_E15get_or_try_initNCNvXNtNtB1n_7weakref6anyrefNtB3P_9PyWeakrefNtNtBO_11type_object11PyTypeCheck16classinfo_object0B2m_E0NcNtB1X_2Ok0EBO_"}
!15 = distinct !{!15, !14, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2K_10PyOnceLockBJ_E15get_or_try_initNCNvXNtNtB1n_7weakref6anyrefNtB3P_9PyWeakrefNtNtBO_11type_object11PyTypeCheck16classinfo_object0B2m_E0NcNtB1X_2Ok0EBO_: argument 0"}
!16 = distinct !{!16, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceBO_"}
!17 = distinct !{!17, !16, !"_RNvYNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyENtNtBO_3err5PyErrE2Ok0INtNtNtBb_3ops8function6FnOnceTBI_EE9call_onceBO_: argument 0"}
!18 = distinct !{!18, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyENtNtBL_3err5PyErrE2Ok0BL_"}
!19 = distinct !{!19, !18, !"_RNcNtINtNtCskKLDkoKarTP_4core6result6ResultRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyENtNtBL_3err5PyErrE2Ok0BL_: argument 0"}
!20 = distinct !{!20, !14, !"_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBO_5types3any5PyAnyEE11map_or_elseINtNtB5_6result6ResultBI_NtNtBO_3err5PyErrENCINvMNtNtBO_4sync9once_lockINtB2K_10PyOnceLockBJ_E15get_or_try_initNCNvXNtNtB1n_7weakref6anyrefNtB3P_9PyWeakrefNtNtBO_11type_object11PyTypeCheck16classinfo_object0B2m_E0NcNtB1X_2Ok0EBO_: argument 1"}
end_hunk_2
