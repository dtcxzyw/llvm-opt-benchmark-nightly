Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.00?download=true
inline.NumInlined: 322
inline.NumDeleted: 153
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_:bb.a
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !7

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i31.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.z = add nsw i64 %i.n, -16
  %i.aa = and i64 %i.z, %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !42
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !43
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ad, i1 false)
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.ai, %i.ah
  %i.aj = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.aj, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE6removeB1s_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !44, !noalias !45, !noundef !5
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !alias.scope !44, !noalias !45
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE6removeB1s_.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE6removeB1s_.exit: ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1p_E0EB1t_.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.ae, align 1, !noalias !46
  %i.an = getelementptr i8, ptr %i.ab, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.an, align 1, !noalias !46
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !44, !noalias !45, !noundef !5
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !44, !noalias !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.q, i64 256, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE6removeB1s_.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1p_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0EB1t_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !64, !noalias !65, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !64, !noalias !65, !noundef !5 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !66 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68
  call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 257) 256, i64 noundef range(i64 1, 0) %..i, i1 noundef zeroext %3) #21
  %i.u = load ptr, ptr %i.a, align 8, !noalias !68, !noundef !5 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !68 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !68 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #22, !noalias !69
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68
  store ptr %i.e, ptr %i.b, align 8, !noalias !68
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 256, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !70, !noalias !71, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !70, !noalias !71, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ag, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.aj, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ai, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !70, !noalias !71
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.z, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !68
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfG1pxJcRFT5_4raft(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit unwind label %bb.h, !noalias !69

bb.h:                                             ; preds = %._crit_edge27
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23, !noalias !69
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !73), !noalias !69
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !74, !noalias !69 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !74, !noalias !69 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !74, !noalias !69, !noundef !5 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !74, !noalias !69
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !69
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !69
  call void @llvm.assume(i1 %i.az), !noalias !69
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !69
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !69
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #24, !noalias !75
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.ai, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.aj, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ag, %.noexc2 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !76, !noalias !77, !nonnull !5, !noundef !5
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [256 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -256
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !78, !nonnull !5, !noundef !5
  %i.bo = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !79
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !5
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.u, align 16
  %i.bz = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cf, %i.x             ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !79
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.ck = lshr i64 %i.bo, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16
  %i.cn = and i64 %i.cm, %i.x
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !69
  %i.co = getelementptr i8, ptr %i.u, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !69
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !70, !noalias !71, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 8
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 8
  %i.cs = getelementptr inbounds i8, ptr %i.u, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.cs, ptr noundef nonnull align 1 dereferenceable(256) %i.cr, i64 range(i64 8, 257) 256, i1 false), !noalias !69
  %i.ct = icmp eq i64 %i.bj, 0
  br i1 %i.ct, label %._crit_edge27.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0B1v_, i64 noundef 256, ptr noundef nonnull @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1u_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0Es_0INtNtNtB3d_3ops8function6FnOnceTOhEE9call_onceB1y_) #21
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.x, %bb.e ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit ]
  %i.cu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cv = insertvalue { i64, i64 } %i.cu, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE7reserveNCINvNtB8_3map11make_hasherBQ_B1p_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0EB1t_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1p_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0EB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE12remove_entryNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !103, !noalias !104, !noundef !5 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !103, !noalias !104, !nonnull !5, !noundef !5 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.d          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.h, align 1, !noalias !105 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 3 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [128 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -128 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.q), !noalias !106
  br i1 %i.r, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit, label %bb.c, !prof !6

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !7

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i31.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.z = add nsw i64 %i.n, -16
  %i.aa = and i64 %i.z, %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !110
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !111
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ad, i1 false)
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.ai, %i.ah
  %i.aj = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.aj, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE6removeBW_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !112, !noalias !113, !noundef !5
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !alias.scope !112, !noalias !113
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE6removeBW_.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE6removeBW_.exit: ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE4findNCINvNtB8_3map14equivalent_keyyyBR_E0EBX_.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.ae, align 1, !noalias !114
  %i.an = getelementptr i8, ptr %i.ab, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.an, align 1, !noalias !114
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !112, !noalias !113, !noundef !5
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !112, !noalias !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i64 128, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE6removeBW_.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0EBX_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !132, !noalias !133, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !132, !noalias !133, !noundef !5 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !134 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136
  call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 257) 128, i64 noundef range(i64 1, 0) %..i, i1 noundef zeroext %3) #21
  %i.u = load ptr, ptr %i.a, align 8, !noalias !136, !noundef !5 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !136 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !136 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #22, !noalias !137
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136
  store ptr %i.e, ptr %i.b, align 8, !noalias !136
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 128, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !136
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !136
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !136
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !138, !noalias !139, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !138, !noalias !139, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ag, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.aj, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ai, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !138, !noalias !139
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.z, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !136
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfG1pxJcRFT5_4raft(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit unwind label %bb.h, !noalias !137

bb.h:                                             ; preds = %._crit_edge27
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23, !noalias !137
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !141), !noalias !137
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !142, !noalias !137 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !142, !noalias !137 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !142, !noalias !137, !noundef !5 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !142, !noalias !137
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !137
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !137
  call void @llvm.assume(i1 %i.az), !noalias !137
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !137
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !137
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #24, !noalias !143
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.ai, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.aj, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ag, %.noexc2 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !144, !noalias !145, !nonnull !5, !noundef !5
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [128 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -128
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !146, !nonnull !5, !noundef !5
  %i.bo = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bn)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !147
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !5
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.u, align 16
  %i.bz = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cf, %i.x             ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !147
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.ck = lshr i64 %i.bo, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16
  %i.cn = and i64 %i.cm, %i.x
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !137
  %i.co = getelementptr i8, ptr %i.u, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !137
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !138, !noalias !139, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 7
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 7
  %i.cs = getelementptr inbounds i8, ptr %i.u, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.cs, ptr noundef nonnull align 1 dereferenceable(128) %i.cr, i64 range(i64 8, 257) 128, i1 false), !noalias !137
  %i.ct = icmp eq i64 %i.bj, 0
  br i1 %i.ct, label %._crit_edge27.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0BZ_, i64 noundef 128, ptr noundef nonnull @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBd_3map11make_hasheryBW_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0Es_0INtNtNtB2D_3ops8function6FnOnceTOhEE9call_onceB12_) #21
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.x, %bb.e ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit ]
  %i.cu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cv = insertvalue { i64, i64 } %i.cu, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE7reserveNCINvNtB8_3map11make_hasheryBR_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0EBX_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtB8_3map11make_hasheryBR_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0EBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTybEE14reserve_rehashNCINvNtB8_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !165, !noalias !166, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !165, !noalias !166, !noundef !5 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !167 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !169
  call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 257) 16, i64 noundef range(i64 1, 0) %..i, i1 noundef zeroext %3) #21
  %i.u = load ptr, ptr %i.a, align 8, !noalias !169, !noundef !5 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !169 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !169 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !169
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #22, !noalias !170
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !169
  store ptr %i.e, ptr %i.b, align 8, !noalias !169
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !169
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !169
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !169
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !171, !noalias !172, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !171, !noalias !172, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ag, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.aj, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ai, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !171, !noalias !172
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.z, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !169
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfG1pxJcRFT5_4raft(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit unwind label %bb.h, !noalias !170

bb.h:                                             ; preds = %._crit_edge27
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23, !noalias !170
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174), !noalias !170
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !175, !noalias !170 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !175, !noalias !170 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !175, !noalias !170, !noundef !5 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !175, !noalias !170
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !170
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !170
  call void @llvm.assume(i1 %i.az), !noalias !170
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !170
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !170
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #24, !noalias !176
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !169
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.ai, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.aj, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ag, %.noexc2 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !177, !noalias !178, !nonnull !5, !noundef !5
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !179, !nonnull !5, !noundef !5
  %i.bo = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bn)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !180
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !5
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.u, align 16
  %i.bz = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cf, %i.x             ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !180
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.ck = lshr i64 %i.bo, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16
  %i.cn = and i64 %i.cm, %i.x
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !170
  %i.co = getelementptr i8, ptr %i.u, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !170
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !171, !noalias !172, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 4
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 4
  %i.cs = getelementptr inbounds i8, ptr %i.u, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cs, ptr noundef nonnull align 1 dereferenceable(16) %i.cr, i64 range(i64 8, 257) 16, i1 false), !noalias !170
  %i.ct = icmp eq i64 %i.bj, 0
  br i1 %i.ct, label %._crit_edge27.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTybEE14reserve_rehashNCINvNtBa_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft, i64 noundef 16, ptr noundef null) #21
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.x, %bb.e ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit ]
  %i.cu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cv = insertvalue { i64, i64 } %i.cu, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTybEE7reserveNCINvNtB8_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTybEE14reserve_rehashNCINvNtB8_3map11make_hasherybINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE12remove_entryNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.a = lshr i64 %1, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !203, !noalias !204, !noundef !5 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !203, !noalias !204, !nonnull !5, !noundef !5 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i = phi i64 [ %1, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.d          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.h, align 1, !noalias !205 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 3 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !206
  br i1 %i.r, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit, label %bb.c, !prof !6

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit.thread, !prof !7

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i31.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.z = add nsw i64 %i.n, -16
  %i.aa = and i64 %i.z, %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !210
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !211
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ad, i1 false)
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.ai, %i.ah
  %i.aj = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.aj, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE6removeCsfG1pxJcRFT5_4raft.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !212, !noundef !5
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !alias.scope !212
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE6removeCsfG1pxJcRFT5_4raft.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE6removeCsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.ae, align 1, !noalias !212
  %i.an = getelementptr i8, ptr %i.ab, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.an, align 1, !noalias !212
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !212, !noundef !5
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !212
  %i.ar = load i64, ptr %i.q, align 8, !noalias !207, !noundef !5
  br label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit.thread

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE4findNCINvNtB8_3map14equivalent_keyyyuE0ECsfG1pxJcRFT5_4raft.exit.thread: ; preds = %._crit_edge.i, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE6removeCsfG1pxJcRFT5_4raft.exit
  %.sroa.3.0 = phi i64 [ %i.ar, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE6removeCsfG1pxJcRFT5_4raft.exit ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE6removeCsfG1pxJcRFT5_4raft.exit ], [ 0, %._crit_edge.i ]
  %i.as = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.at = insertvalue { i64, i64 } %i.as, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.at
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE14reserve_rehashNCINvNtB8_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !230, !noalias !231, !noundef !5 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !230, !noalias !231, !noundef !5 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !232 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.t, i64 range(i64 1, 0) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 8, 257) 8, i64 noundef range(i64 1, 0) %..i, i1 noundef zeroext %3) #21
  %i.u = load ptr, ptr %i.a, align 8, !noalias !234, !noundef !5 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !234 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !234 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #22, !noalias !235
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  store ptr %i.e, ptr %i.b, align 8, !noalias !234
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !234
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !234
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !234
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !234
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !234
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !234
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !236, !noalias !237, !noundef !5 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !236, !noalias !237, !nonnull !5, !noundef !5 ; 2 uses
  %.val516 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val516, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.026 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.025 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.024 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.023 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i118 = icmp eq i16 %.sroa.13.023, 0
  br i1 %.not.i118, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.120 = phi ptr [ %i.ag, %.noexc2 ], [ %.sroa.0.026, %.preheader ] ; 2 uses
  %.sroa.5.119 = phi i64 [ %i.aj, %.noexc2 ], [ %.sroa.5.025, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.120) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.120, i64 16 ; 3 uses
  %.val417 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val417, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.119, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ai, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge27.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !236, !noalias !237
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge27.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.z, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !234
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !234
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfG1pxJcRFT5_4raft(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit unwind label %bb.h, !noalias !235

bb.h:                                             ; preds = %._crit_edge27
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #23, !noalias !235
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit: ; preds = %._crit_edge27
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239), !noalias !235
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !240, !noalias !235 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !240, !noalias !235 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !240, !noalias !235, !noundef !5 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !240, !noalias !235
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !235
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !235
  call void @llvm.assume(i1 %i.az), !noalias !235
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !235
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !235
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #24, !noalias !241
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfG1pxJcRFT5_4raft.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !234
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.023, %.preheader ], [ %i.ai, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.025, %.preheader ], [ %i.aj, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.026, %.preheader ], [ %i.ag, %.noexc2 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.024, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !242, !noalias !243, !nonnull !5, !noundef !5
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !244, !nonnull !5, !noundef !5
  %i.bo = invoke noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !245
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !5
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.u, align 16
  %i.bz = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cf, %i.x             ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !245
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.ck = lshr i64 %i.bo, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16
  %i.cn = and i64 %i.cm, %i.x
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !235
  %i.co = getelementptr i8, ptr %i.u, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !235
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !236, !noalias !237, !nonnull !5, !noundef !5
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cs = getelementptr inbounds i8, ptr %i.u, i64 %.neg64.i.i
  %i.ct = load i64, ptr %i.cr, align 1, !noalias !235
  store i64 %i.ct, ptr %i.cs, align 1, !noalias !235
  %i.cu = icmp eq i64 %i.bj, 0
  br i1 %i.cu, label %._crit_edge27.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyuEE14reserve_rehashNCINvNtBa_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0E0CsfG1pxJcRFT5_4raft, i64 noundef 8, ptr noundef null) #21
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.x, %bb.e ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft.exit ]
  %i.cv = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cw = insertvalue { i64, i64 } %i.cv, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE7reserveNCINvNtB8_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTyuEE14reserve_rehashNCINvNtB8_3map11make_hasheryuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef range(i64 8, 257) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.d = shl nuw i64 %2, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i64 %2, 4
  %i.k = and i64 %2, 8
  %..i = add nuw nsw i64 %i.k, 8
  %.sroa.03.0.i = select i1 %i.j, i64 4, i64 %..i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.ph = phi i64 [ %i.i, %bb.e ], [ %.sroa.03.0.i, %bb.f ] ; 5 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 257) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp ugt i64 %i.n, -16
  br i1 %i.o, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15
  %i.q = and i64 %i.p, -16                        ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !10

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.n, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !248
  %i.w = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !248 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.y = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !248
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  %i.z = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.s), !noalias !248
  br label %bb.m
end_hunk_0
begin_hunk_1_@_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyuEE9fold_implNCINvXsG_NtB8_3mapINtB1i_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvXsU_B1i_INtB1i_4KeysyuEB1G_4foldjNCINvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB3s_10DifferenceyINtNtB1O_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEB1G_4foldjQNCNvYINtB3s_19SymmetricDifferenceyB4v_EB1G_5count0E0E0E0jECsfG1pxJcRFT5_4raft:bb.a
  ret i64 %.sroa.02.0.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyuEE9fold_implNCINvXsG_NtB8_3mapINtB1i_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B1i_INtB1i_4KeysyuEB1G_4folduNCINvNtNtB1M_8adapters3map8map_foldRyyuNvYyNtNtB1O_5clone5Clone5cloneNCIB3m_yBU_uNCINvXs8_NtB8_3setINtB4L_7HashSetyINtNtB1O_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEINtNtB1K_7collect6ExtendyE6extendINtNtB3q_6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEEE0NCINvNvB1G_8for_each4callBU_NCINvXs1i_B1i_INtB1i_7HashMapyuB5a_EIB6h_BU_E6extendINtB3o_3MapB6N_B4C_EE0E0E0E0E0E0uECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted23 = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %2, align 8, !nonnull !5, !align !11
  %.promoted = load ptr, ptr %i.b, align 8
  %.pre = load i16, ptr %i.a, align 8
  br label %.outer

.outer:                                           ; preds = %bb.b, %bb.a
  %i.c = phi i16 [ %i.h, %bb.b ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2227 = phi ptr [ %.lcssa2226, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2125 = phi ptr [ %.lcssa2124, %bb.b ], [ %.promoted23, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.m, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.not18 = icmp eq i16 %i.c, 0
  br i1 %.not18, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.d = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.d, label %bb.c, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.q, ptr %0, align 8
  store ptr %i.r, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2226 = phi ptr [ %i.r, %._crit_edge ], [ %.lcssa2227, %.outer ]
  %.lcssa2124 = phi ptr [ %i.q, %._crit_edge ], [ %.lcssa2125, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.c, %.outer ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa                    ; 2 uses
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [8 x i8], ptr %.lcssa2124, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %.val11 = load i64, ptr %i.k, align 8, !alias.scope !260, !noundef !5
  %.val.i.i = load ptr, ptr %.val.i, align 8, !nonnull !5, !align !11, !noundef !5
  %i.l = tail call noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE6insertCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i.i, i64 noundef %.val11) ; 0 uses
  %i.m = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.n = phi ptr [ %i.r, %.lr.ph.split ], [ %.lcssa2227, %.lr.ph ] ; 2 uses
  %i.o = phi ptr [ %i.q, %.lr.ph.split ], [ %.lcssa2125, %.lr.ph ]
  %.val914 = load <16 x i8>, ptr %i.n, align 16
  %i.p = icmp sgt <16 x i8> %.val914, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -128 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.p to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyuEE9next_implKb0_ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val79 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val79, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -128 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsfG1pxJcRFT5_4raft.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecmEECsfG1pxJcRFT5_4raft.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecmEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsfG1pxJcRFT5_4raft.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !263 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !263 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !263, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !263
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #24, !noalias !263
  br label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !267
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !267
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !267, !nonnull !5, !align !11, !noundef !5 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !267, !noundef !5 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !267, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !267, !noundef !5
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !267, !noundef !5
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !267
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !267, !nonnull !5, !noundef !5
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !267
  %i.q = load i64, ptr %i.e, align 8, !noalias !267, !noundef !5
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !267
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !267, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !267, !noundef !5
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !267, !noundef !5
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !267
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !267, !nonnull !5, !noundef !5
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !267
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !267, !nonnull !5, !noundef !5
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !267, !inline_history !266
  %i.af = load i64, ptr %i.e, align 8, !noalias !267, !noundef !5
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !267
  br label %bb.d

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !267, !noundef !5 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !267, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !267
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B1y_B1v_15clone_from_impl0EECsfG1pxJcRFT5_4raft(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !5
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [104 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -104
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit, label %bb.b

_RNvXs1_NtCsjqcU1oJFKXj_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !280, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !282, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !282, !nonnull !5, !noundef !5 ; 3 uses
  %.val13.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !283
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i ]
  %.not11.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i, 0
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %.val79.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !284
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.m to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i.i, -1         ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -104
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(104) %i.w), !noalias !282
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i.i, label %bb.d
end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEECsfG1pxJcRFT5_4raft:bb.a
bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit10.i.i.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body12.i.i.i.i.i.i.i unwind label %bb.n

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit10.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit14.i.i.i.i.i.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body12.i.i.i.i.i.i.i:                            ; preds = %bb.o, %bb.l, %.body8.i.i.i.i.i.i.i
  %.pn2.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %.body8.i.i.i.i.i.i.i ], [ %i.r, %bb.o ], [ %i.o, %bb.l ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #22
          to label %.body16.i.i.i.i.i.i.i unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit14.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit14.i.i.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body16.i.i.i.i.i.i.i unwind label %bb.r

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit14.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit18.i.i.i.i.i.i.i unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body16.i.i.i.i.i.i.i:                            ; preds = %bb.s, %bb.p, %.body12.i.i.i.i.i.i.i
  %.pn4.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn2.i.i.i.i.i.i.i, %.body12.i.i.i.i.i.i.i ], [ %i.w, %bb.s ], [ %i.t, %bb.p ]
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 96
  %.val6.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !287, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.val6.i.i.i.i.i.i.i) #22
          to label %.body.i.i.i unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body16.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit18.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 96
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !287, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.val.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i unwind label %bb.u

bb.t:                                             ; preds = %.body16.i.i.i.i.i.i.i, %.body12.i.i.i.i.i.i.i, %.body8.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit18.i.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.u, %.body16.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.u ], [ %.pn4.i.i.i.i.i.i.i, %.body16.i.i.i.i.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef 120, i64 noundef 8) #24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.val.i.i) #22
          to label %bb.x unwind label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit18.i.i.i.i.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef 120, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEECsfG1pxJcRFT5_4raft.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEECsfG1pxJcRFT5_4raft.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i, %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.val.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.w

bb.v:                                             ; preds = %.body.i.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEECsfG1pxJcRFT5_4raft.exit.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.w ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb9ConfStateEECsfG1pxJcRFT5_4raft.exit.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEEECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEECsfG1pxJcRFT5_4raft.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEECsfG1pxJcRFT5_4raft(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEEECsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !297, !noundef !5
  %i.d = load ptr, ptr %.0.val, align 8, !alias.scope !297, !nonnull !5, !align !11, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !297, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !297, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !297, !noundef !5
  invoke void %i.f(ptr noundef %i.c, ptr noundef %i.h, i64 noundef %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i.i.i unwind label %bb.c, !noalias !294, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %.val4.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !294, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEECsfG1pxJcRFT5_4raft(ptr %.val4.i.i.i) #22
          to label %bb.d unwind label %bb.g, !noalias !294

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %.val3.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !294, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb16SnapshotMetadataEECsfG1pxJcRFT5_4raft(ptr %.val3.i.i.i)
          to label %bb.f unwind label %bb.e, !noalias !294

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.k, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val2.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !294, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.val2.i.i.i) #22
          to label %bb.i unwind label %bb.g, !noalias !294

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !294, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.val.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !294
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %bb.h ], [ %.pn.i.i.i, %bb.d ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #24
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEEECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEECsfG1pxJcRFT5_4raft.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.8.val, 3
  %i.c = icmp slt i64 %.8.val, 2305843009213693950
  tail call void @llvm.assume(i1 %i.c)
  %i.d = and i64 %i.b, -16                        ; 2 uses
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %i.f = add nsw i64 %.8.val, 17
  %i.g = add i64 %i.f, %i.e                       ; 4 uses
  %i.h = icmp uge i64 %i.g, %i.e
  %i.i = icmp ult i64 %i.g, 9223372036854775793
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.k = sub nuw nsw i64 -16, %i.d
  %i.l = getelementptr inbounds i8, ptr %.0.val, i64 %i.k
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !300
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8repeated13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6.i = load ptr, ptr %i.d, align 8, !alias.scope !315, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEECsfG1pxJcRFT5_4raft(ptr %.val6.i) #22
          to label %bb.e unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8repeated13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i = load ptr, ptr %i.e, align 8, !alias.scope !315, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8singular16SingularPtrFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb8SnapshotEECsfG1pxJcRFT5_4raft(ptr %.val5.i)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %eh.lpad-body.i, %.body.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !318, !noundef !5
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !318, !nonnull !5, !align !11, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !319, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !318, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !318, !noundef !5
  invoke void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.i, !inline_history !0

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8repeated13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslpwiOMB70Kp_8protobuf8repeated13RepeatedFieldNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !322, !noundef !5
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !322, !nonnull !5, !align !11, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !323, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !322, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !322, !noundef !5
  invoke void %i.v(ptr noundef %i.s, ptr noundef %i.x, i64 noundef %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit7.i unwind label %bb.h, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.h, %bb.e
  %.pn2.i = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn.i, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val4.i = load ptr, ptr %i.aa, align 8, !alias.scope !315, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.val4.i) #22
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit7.i: ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !315, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr %.val.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageECsfG1pxJcRFT5_4raft.exit unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i, %bb.e, %.body.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit7.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %.pn2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val2 = load ptr, ptr %i.af, align 8, !alias.scope !324
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val3 = load i64, ptr %i.ag, align 8, !alias.scope !324, !noundef !5
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft(ptr %.val2, i64 %.val3) #22
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsfG1pxJcRFT5_4raft.exit7.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.ah, align 8, !alias.scope !324 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1 = load i64, ptr %i.ai, align 8, !alias.scope !324, !noundef !5 ; 4 uses
  %i.aj = icmp eq i64 %.val1, 0
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageECsfG1pxJcRFT5_4raft.exit
  %i.ak = shl i64 %.val1, 3
  %i.al = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.al)
  %i.am = and i64 %i.ak, -16                      ; 2 uses
  %i.an = add i64 %i.am, 16                       ; 2 uses
  %i.ao = add nsw i64 %.val1, 17
  %i.ap = add i64 %i.ao, %i.an                    ; 4 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  %i.ar = icmp ult i64 %i.ap, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aq)
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.at = sub nuw nsw i64 -16, %i.am
  %i.au = getelementptr inbounds i8, ptr %.val, i64 %i.at
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !325
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyINtNtB4_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb7MessageECsfG1pxJcRFT5_4raft.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownFieldsECsfG1pxJcRFT5_4raft(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1F_4hash6random13DefaultHasherEEEEECsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !347, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !349, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.0.val, align 8, !alias.scope !349, !nonnull !5, !noundef !5 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !350
  %i.i = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.e

bb.e:                                             ; preds = %.noexc.i.i, %bb.d
  %.sroa.05.016.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.d ], [ %.sroa.05.1.i.i.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.d ], [ %i.x, %.noexc.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.d ], [ %i.v, %.noexc.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i.i.i, %bb.e ]
  %.val79.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !351
  %i.n = icmp sgt <16 x i8> %.val79.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i.i.i, %bb.e ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i.i.i, %bb.e ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i.i.i.i, %bb.e ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i.i, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(104) %i.u)
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i.i
  %i.v = add i64 %.sroa.107.013.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.w = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.x = and i16 %i.w, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i, label %bb.e

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i, %bb.c
  %i.z = mul i64 %i.c, 104
  %i.aa = icmp slt i64 %i.c, 177372539170284150
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 112                      ; 2 uses
  %i.ad = add nsw i64 %i.c, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i
  %i.ai = load ptr, ptr %.0.val, align 8, !alias.scope !347, !nonnull !5, !noundef !5
  %i.aj = sub i64 -112, %i.ab
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !347
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i

bb.g:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #24
  resume { ptr, i32 } %i.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.f, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i.i, %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1F_4hash6random13DefaultHasherEEEEECsfG1pxJcRFT5_4raft.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1F_4hash6random13DefaultHasherEEEEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesINtNtB4_4hash18BuildHasherDefaultNtNtNtB1j_4hash6random13DefaultHasherEEEECsfG1pxJcRFT5_4raft.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %.body4.i unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsfG1pxJcRFT5_4raft.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body4.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsfG1pxJcRFT5_4raft.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body4.i:                                         ; preds = %bb.i, %bb.f, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #22
          to label %.body7.i unwind label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body7.i unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft.exit9.i unwind label %bb.m

end_hunk_2
begin_hunk_3_@_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE5clearBW_:bb.a
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTybEE14insert_no_growCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %.sroa.0.07.i = and i64 %.val2, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !363
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val2                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !5  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.b:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
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
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !363
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

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
  %i.ae = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ad ; 3 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -16
  store i64 %2, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ak = zext i1 %3 to i8
  store i8 %i.ak, ptr %i.aj, align 8
  %i.al = load <2 x i64>, ptr %i.ah, align 8
  %i.am = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.an = sub <2 x i64> %i.al, %i.am
  store <2 x i64> %i.an, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTybEE16with_capacity_inCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 16, i64 noundef %1, i1 noundef zeroext true) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTybEE5clearCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTybEENCNvMs6_B1w_B1t_5clear0EECsfG1pxJcRFT5_4raft.exit5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.h = add i64 %i.e, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 -1, i64 %i.h, i1 false)
  %i.i = icmp ult i64 %i.e, 8
  %i.j = add i64 %i.e, 1
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %spec.select.i.i.i4 = select i1 %i.i, i64 %i.e, i64 %i.l
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTybEENCNvMs6_B1w_B1t_5clear0EECsfG1pxJcRFT5_4raft.exit5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTybEENCNvMs6_B1w_B1t_5clear0EECsfG1pxJcRFT5_4raft.exit5: ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %spec.select.i.i.i4, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTybEENCNvMs6_B1w_B1t_5clear0EECsfG1pxJcRFT5_4raft.exit5
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE16with_capacity_inCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 8, i64 noundef %1, i1 noundef zeroext true) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE5clearCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTyuEENCNvMs6_B1w_B1t_5clear0EECsfG1pxJcRFT5_4raft.exit5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.h = add i64 %i.e, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 -1, i64 %i.h, i1 false)
  %i.i = icmp ult i64 %i.e, 8
  %i.j = add i64 %i.e, 1
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %spec.select.i.i.i4 = select i1 %i.i, i64 %i.e, i64 %i.l
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTyuEENCNvMs6_B1w_B1t_5clear0EECsfG1pxJcRFT5_4raft.exit5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTyuEENCNvMs6_B1w_B1t_5clear0EECsfG1pxJcRFT5_4raft.exit5: ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %spec.select.i.i.i4, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTyuEENCNvMs6_B1w_B1t_5clear0EECsfG1pxJcRFT5_4raft.exit5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEE5drainCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 26), (32, 80)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !366
  %i.f = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.f, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 257) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
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
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #22
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !369
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !8

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !5
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.g:                                             ; preds = %._crit_edge.i17
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !369
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !9

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !5
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !5
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
end_hunk_3
begin_hunk_4_@_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft:bb.a
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.034.i.i, %bb.i ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.813.032.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = and i16 %i.ap, %.lcssa.i.i.i
  %i.at = sub nsw i64 0, %i.ar
  %i.au = getelementptr inbounds [104 x i8], ptr %.sroa.012.1.i.i, i64 %i.at ; 6 uses
  %i.av = add i64 %.sroa.1014.031.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -104
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.ax = load i32, ptr %i.aw, align 4, !alias.scope !418, !noalias !419, !noundef !5
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !420
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ay)
          to label %.noexc.i.i unwind label %bb.h, !noalias !415

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !420
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 -72
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.l unwind label %bb.k, !noalias !421

bb.j:                                             ; preds = %bb.m, %bb.k
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.m ], [ %i.ba, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #22
          to label %.body.i.i unwind label %bb.q, !noalias !421

bb.k:                                             ; preds = %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !420
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 -48
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %bb.o unwind label %bb.n, !noalias !421

bb.m:                                             ; preds = %bb.p, %bb.n
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.be, %bb.p ], [ %i.bc, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #22
          to label %bb.j unwind label %bb.q, !noalias !421

bb.n:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !420
  %i.bd = getelementptr inbounds i8, ptr %i.au, i64 -24
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %bb.r unwind label %bb.p, !noalias !421

bb.p:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %bb.m unwind label %bb.q, !noalias !421

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.j
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !421
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !420
  %i.bg = ptrtoint ptr %i.au to i64
  %i.bh = sub i64 %i.ai, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 104               ; 2 uses
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [104 x i8], ptr %.sroa.0.0, i64 %i.bj ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -104
  store i32 %i.ax, ptr %i.bl, align 8, !noalias !415
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bk, i64 -100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i, i64 28, i1 false), !noalias !415
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bk, i64 -72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516.i.i, i64 24, i1 false), !noalias !415
  %.sroa.617.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bk, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.i.i, i64 24, i1 false), !noalias !415
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bk, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, i64 24, i1 false), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.bm = add nsw i64 %i.bi, 1
  %i.bn = icmp eq i64 %i.av, 0
  br i1 %i.bn, label %.loopexit, label %bb.i

bb.s:                                             ; preds = %.body.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !415
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.u

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #22
          to label %bb.w unwind label %bb.v

.loopexit:                                        ; preds = %bb.r, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE17new_uninitializedCsfG1pxJcRFT5_4raft.exit
  store i64 %i.ad, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !414, !noalias !413
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !413, !noalias !414, !noundef !5
  store i64 %i.bq, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !414, !noalias !413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %bb.t
  ret void

bb.v:                                             ; preds = %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1                          ; 2 uses
  %or.cond.i = icmp ugt i64 %i.d, 2305843009213693950
  br i1 %or.cond.i, label %bb.d, label %bb.c, !prof !430

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %i.d, 3
  %i.f = add nuw i64 %i.e, 8
  %i.g = and i64 %i.f, -16                        ; 3 uses
  %i.h = add nsw i64 %i.b, 17                     ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 5 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !10

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.c
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !431
  %i.m = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !431 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !431
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.p = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.i), !noalias !431
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %bb.i

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.m, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.g
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i64 [ %i.h, %bb.g ], [ %.pre, %bb.f ]
  %.sroa.5.0 = phi i64 [ %i.b, %bb.g ], [ %.sroa.7.0.ph.i, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.q, %bb.g ], [ null, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !432, !noalias !433, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.r, i64 %.pre-phi, i1 false), !noalias !434
  %i.s = xor i64 %i.b, -1
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = xor i64 %.sroa.5.0, -1
  %i.v = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %i.u ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = shl i64 %.sroa.5.0, 3
  %i.x = add i64 %i.w, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.t, i64 %i.x, i1 false), !noalias !434
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load <2 x i64>, ptr %i.y, align 8, !alias.scope !432, !noalias !433
  store <2 x i64> %i.z, ptr %.sroa.93.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBX_6hybrid2id11LazyStateIDEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !451, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !453, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !453, !nonnull !5, !noundef !5 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !454
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !455
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !460, !noalias !453, !nonnull !5, !noundef !5
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !461
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCslWnoh50wX8Y_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #25, !noalias !453
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !451, !nonnull !5, !noundef !5
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !451
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1l_6hybrid2id11LazyStateIDENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCslWnoh50wX8Y_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsfG1pxJcRFT5_4raft.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !470, !noundef !5 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !472, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !472, !nonnull !5, !noundef !5 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !473
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !474
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -104
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(104) %i.w), !noalias !472
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEE9next_implKb0_ECsfG1pxJcRFT5_4raft.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 104
  %i.z = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = and i64 %i.y, -16                       ; 2 uses
  %i.ab = add i64 %i.aa, 112                      ; 2 uses
  %i.ac = add nsw i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !470, !nonnull !5, !noundef !5
  %i.ai = sub i64 -112, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !470
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmNtNtCslpwiOMB70Kp_8protobuf7unknown13UnknownValuesEECsfG1pxJcRFT5_4raft.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !483, !noundef !5 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !485, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEB1h_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !485, !nonnull !5, !noundef !5 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !486
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEBJ_.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEBJ_.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEBJ_.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEBJ_.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEBJ_.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE9next_implKb0_EB12_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !487
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -2048 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE9next_implKb0_EB12_.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE9next_implKb0_EB12_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [128 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -104 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEBJ_.exit.i.i unwind label %bb.e, !noalias !485

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE9next_implKb0_EB12_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !485

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !485
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEBJ_.exit.i.i: ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE9next_implKb0_EB12_.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !485
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEB1h_.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEB1h_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEBJ_.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 7                         ; 2 uses
  %i.ab = add i64 %i.aa, 128                      ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1k_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEB1h_.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !483, !nonnull !5, !noundef !5
  %i.ai = sub nuw nsw i64 -128, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #24, !noalias !483
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1k_.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalEB1k_.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEEB1h_.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 3
  %i.d = icmp slt i64 %.val1, 2305843009213693950
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #24
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTyuENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1u_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0Es_0INtNtNtB3d_3ops8function6FnOnceTOhEE9call_onceB1y_(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0)
          to label %.body.i.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0Es_0B1v_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEBF_(ptr noalias nofree noundef align 8 dereferenceable(232) %i.d) #22
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.body.i.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1r_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0Es_0B1v_.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfG1pxJcRFT5_4raft9read_only15ReadIndexStatusEBF_(ptr noalias nofree noundef align 8 dereferenceable(232) %i.f)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBd_3map11make_hasheryBW_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0Es_0INtNtNtB2D_3ops8function6FnOnceTOhEE9call_onceB12_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0Es_0BZ_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecyEECsfG1pxJcRFT5_4raft.exit.i.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTyNtNtNtCsfG1pxJcRFT5_4raft7tracker8progress8ProgressEE14reserve_rehashNCINvNtBa_3map11make_hasheryBT_INtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE0Es_0BZ_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtB2_10EquivalentBq_E10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE6insertCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyuINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEE12contains_keyyECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3set19SymmetricDifferenceyINtNtBb_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEENtNtNtNtBb_4iter6traits8iterator8Iterator5count0INtB7_5FnMutTjRyEE8call_mutCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfG1pxJcRFT5_4raft(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_4
