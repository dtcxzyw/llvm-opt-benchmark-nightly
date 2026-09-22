Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.03?download=true
inline.NumInlined: 474
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringuNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE12contains_keyeECs5XgW7KoffLW_12opendal_core:bb.a
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneReECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !44, !noalias !45, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !44, !noalias !45, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !noalias !46 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.w = tail call noundef zeroext i1 @_RNvXCsfBDUjroi3FF_9hashbrowneINtB2_10EquivalentNtNtCs6i54tJFfzR_5alloc6string6StringE10equivalentCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !47
  br i1 %i.w, label %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs5XgW7KoffLW_12opendal_core.exit, label %bb.d, !prof !5

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs5XgW7KoffLW_12opendal_core.exit, !prof !6

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i33.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE4findNCINvNtB8_3map14equivalent_keyeBQ_uE0ECs5XgW7KoffLW_12opendal_core.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !65, !noalias !66, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !65, !noalias !66, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !67 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  call fastcc void @_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 49) 48, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %3) #28
  %i.u = load ptr, ptr %i.a, align 8, !noalias !69, !noundef !4 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !69 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !69 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #29, !noalias !70
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  store ptr %i.e, ptr %i.b, align 8, !noalias !69
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !71, !noalias !72, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge29, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !71, !noalias !72, !nonnull !4, !noundef !4 ; 2 uses
  %.val618 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val618, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.028 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.027 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.026 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.025 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i220 = icmp eq i16 %.sroa.13.025, 0
  br i1 %.not.i220, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.122 = phi ptr [ %i.ag, %.noexc3 ], [ %.sroa.0.028, %.preheader ] ; 2 uses
  %.sroa.5.121 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.027, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.122) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.122, i64 16 ; 3 uses
  %.val519 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val519, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.121, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge29.loopexit:                           ; preds = %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !71, !noalias !72
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge29.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.z, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  invoke void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h, !noalias !70

bb.h:                                             ; preds = %._crit_edge29
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #30, !noalias !70
  unreachable

_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit: ; preds = %._crit_edge29
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74), !noalias !70
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !75, !noalias !70 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !75, !noalias !70 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !75, !noalias !70, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, label %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !70
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !75, !noalias !70
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !70
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !70
  call void @llvm.assume(i1 %i.az), !noalias !70
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !70
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #31, !noalias !76
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.025, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.027, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.028, %.preheader ], [ %i.ag, %.noexc3 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.026, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !77, !noalias !78, !nonnull !4, !noundef !4
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [48 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -48
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !79, !nonnull !4, !align !7, !noundef !4
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn)
          to label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !80
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.u, align 16
  %i.bz = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.cf, %i.x            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !80
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.ck = lshr i64 %i.bo, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16
  %i.cn = and i64 %i.cm, %i.x
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !70
  %i.co = getelementptr i8, ptr %i.u, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !70
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !71, !noalias !72, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 48
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 48
  %i.cs = getelementptr inbounds i8, ptr %i.u, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.cs, ptr noundef nonnull align 1 dereferenceable(48) %i.cr, i64 range(i64 24, 49) 48, i1 false), !noalias !70
  %i.ct = icmp eq i64 %i.bj, 0
  br i1 %i.ct, label %._crit_edge29.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core, i64 noundef 48, ptr noundef nonnull @_RNvYNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtBb_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBV_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BV_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTOhEE9call_onceCs5XgW7KoffLW_12opendal_core) #28
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.x, %bb.e ], [ -1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit ]
  %i.cu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cv = insertvalue { i64, i64 } %i.cu, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cv
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1C_8operator8OperatorNtNtB1E_5error5ErrorEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1r_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0EB1G_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !98, !noalias !99, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !98, !noalias !99, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !100 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  call fastcc void @_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 49) 32, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %3) #28
  %i.u = load ptr, ptr %i.a, align 8, !noalias !102, !noundef !4 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !102 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !102 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #29, !noalias !103
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  store ptr %i.e, ptr %i.b, align 8, !noalias !102
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !102
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !102
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !102
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !102
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !102
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !102
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !104, !noalias !105, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge29, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !104, !noalias !105, !nonnull !4, !noundef !4 ; 2 uses
  %.val618 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val618, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.028 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.027 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.026 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.025 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i220 = icmp eq i16 %.sroa.13.025, 0
  br i1 %.not.i220, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.122 = phi ptr [ %i.ag, %.noexc3 ], [ %.sroa.0.028, %.preheader ] ; 2 uses
  %.sroa.5.121 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.027, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.122) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.122, i64 16 ; 3 uses
  %.val519 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val519, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.121, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge29.loopexit:                           ; preds = %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !104, !noalias !105
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge29.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.z, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !102
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !102
  invoke void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h, !noalias !103

bb.h:                                             ; preds = %._crit_edge29
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #30, !noalias !103
  unreachable

_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit: ; preds = %._crit_edge29
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107), !noalias !103
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !108, !noalias !103 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !108, !noalias !103 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !108, !noalias !103, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, label %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !103
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !108, !noalias !103
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !103
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !103
  call void @llvm.assume(i1 %i.az), !noalias !103
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !103
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #31, !noalias !109
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.025, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.027, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.028, %.preheader ], [ %i.ag, %.noexc3 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.026, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !110, !noalias !111, !nonnull !4, !noundef !4
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [32 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -32
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !112, !nonnull !4, !align !7, !noundef !4
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !113
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_.exit ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.u, align 16
  %i.bz = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.cf, %i.x            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !113
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.ck = lshr i64 %i.bo, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16
  %i.cn = and i64 %i.cm, %i.x
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !103
  %i.co = getelementptr i8, ptr %i.u, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !103
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !104, !noalias !105, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 5
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 5
  %i.cs = getelementptr inbounds i8, ptr %i.u, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cs, ptr noundef nonnull align 1 dereferenceable(32) %i.cr, i64 range(i64 24, 49) 32, i1 false), !noalias !103
  %i.ct = icmp eq i64 %i.bj, 0
  br i1 %i.ct, label %._crit_edge29.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0B1I_, i64 noundef 32, ptr noundef nonnull @_RNvYNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtBb_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1H_8operator8OperatorNtNtB1J_5error5ErrorEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1w_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0INtNtNtB2P_3ops8function6FnOnceTOhEE9call_onceB1L_) #28
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.x, %bb.e ], [ -1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit ]
  %i.cu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cv = insertvalue { i64, i64 } %i.cu, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cv
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0ECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !131, !noalias !132, !noundef !4 ; 2 uses
  %i.h = add i64 %i.g, %1                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !131, !noalias !132, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  %i.m = add i64 %i.k, 1
  %i.n = lshr i64 %i.m, 3
  %i.o = mul nuw i64 %i.n, 7
  %.sroa.03.0.i = select i1 %i.l, i64 %i.k, i64 %i.o ; 2 uses
  %i.p = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.h, %i.p
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.q = call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !133 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !135
  call fastcc void @_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 24, 49) 24, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %3) #28
  %i.u = load ptr, ptr %i.a, align 8, !noalias !135, !noundef !4 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !135 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !135 ; 3 uses
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !135
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #29, !noalias !136
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  store ptr %i.e, ptr %i.b, align 8, !noalias !135
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !135
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !135
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.u, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !135
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !135
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.z, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !135
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !135
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !137, !noalias !138, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %._crit_edge29, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !137, !noalias !138, !nonnull !4, !noundef !4 ; 2 uses
  %.val618 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val618, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.028 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.027 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.026 = phi i64 [ %i.ab, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.025 = phi i16 [ %i.af, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i220 = icmp eq i16 %.sroa.13.025, 0
  br i1 %.not.i220, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.122 = phi ptr [ %i.ag, %.noexc3 ], [ %.sroa.0.028, %.preheader ] ; 2 uses
  %.sroa.5.121 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.027, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.122) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.122, i64 16 ; 3 uses
  %.val519 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val519, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.121, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge29.loopexit:                           ; preds = %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !137, !noalias !138
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.g
  %i.ak = phi i64 [ %.pre, %._crit_edge29.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.z, %i.ak
  store i64 %i.al, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !135
  store i64 %i.ak, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !135
  invoke void @_RINvNvNtCsgxBkk5gSRhY_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h, !noalias !136

bb.h:                                             ; preds = %._crit_edge29
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #30, !noalias !136
  unreachable

_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit: ; preds = %._crit_edge29
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !140), !noalias !136
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !136 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !136 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !141, !noalias !136, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %.val3.i.i, 0
  br i1 %i.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, label %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !136
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !141, !noalias !136
  %i.ao = add i64 %.val3.i.i, 1
  %i.ap = mul nuw i64 %.val.i.i, %i.ao            ; 2 uses
  %i.aq = add i64 %.val1.i.i, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !136
  %i.at = sub i64 0, %.val1.i.i
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val3.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !136
  call void @llvm.assume(i1 %i.az), !noalias !136
  %i.ba = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ba), !noalias !136
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bc
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #31, !noalias !142
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core10intrinsics25typed_swap_nonoverlappingNtNtCsfBDUjroi3FF_9hashbrown3raw13RawTableInnerECs5XgW7KoffLW_12opendal_core.exit, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !135
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.025, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.027, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.028, %.preheader ], [ %i.ag, %.noexc3 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.026, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !143, !noalias !144, !nonnull !4, !noundef !4
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !145, !nonnull !4, !align !7, !noundef !4
  %i.bo = invoke noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.x, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !146
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.x                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !4
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.j:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.u, align 16
  %i.bz = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.cf, %i.x            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !146
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !9

_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i5.i
  %i.ck = lshr i64 %i.bo, 57
  %i.cl = trunc nuw nsw i64 %i.ck to i8           ; 2 uses
  %i.cm = add i64 %.sroa.0.0.i5.i, -16
  %i.cn = and i64 %i.cm, %i.x
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !136
  %i.co = getelementptr i8, ptr %i.u, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.cl, ptr %i.cp, align 1, !noalias !136
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !137, !noalias !138, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.cs = getelementptr inbounds i8, ptr %i.u, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cs, ptr noundef nonnull align 1 dereferenceable(24) %i.cr, i64 range(i64 24, 49) 24, i1 false), !noalias !136
  %i.ct = icmp eq i64 %i.bj, 0
  br i1 %i.ct, label %._crit_edge29.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0E0Cs5XgW7KoffLW_12opendal_core, i64 noundef 24, ptr noundef nonnull @_RNvYNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtBb_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTOhEE9call_onceCs5XgW7KoffLW_12opendal_core) #28
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit, %bb.c, %bb.k
  %.sroa.4.0.i = phi i64 [ %i.s, %bb.c ], [ undef, %bb.k ], [ %i.z, %bb.e ], [ undef, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit ]
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.c ], [ -1, %bb.k ], [ %i.x, %bb.e ], [ -1, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core.exit ]
  %i.cu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cv = insertvalue { i64, i64 } %i.cu, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, i64 } %i.cv
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs_NtCs76KlaVGnJsc_4http10extensionsNtB5_10Extensions3getNtNtB7_3uri3UriECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !align !7, !noundef !4 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !161, !noalias !162, !noundef !4
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBS_6marker4SendNtB2F_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtB1X_8IdHasherEE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = call noundef i64 @_RINvYINtNtCsgxBkk5gSRhY_4core4hash18BuildHasherDefaultNtNtCs76KlaVGnJsc_4http10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.i = lshr i64 %i.h, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !165, !noalias !166, !noundef !4 ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !165, !noalias !166, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.af, %bb.f ]
  %.pn.i.i = phi i64 [ %i.h, %bb.c ], [ %i.ag, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.l      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !167 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ae, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.z = call noundef zeroext i1 @_RNvXCsfBDUjroi3FF_9hashbrownNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y), !noalias !168
  br i1 %i.z, label %bb.g, label %bb.e, !prof !5

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBS_6marker4SendNtB2F_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtB1X_8IdHasherEE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread, !prof !6

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.af = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  br label %bb.d

_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBS_6marker4SendNtB2F_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtB1X_8IdHasherEE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %._crit_edge.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.ai = getelementptr i8, ptr %i.x, i64 -8
  %.val5 = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !7, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !4, !nonnull !4
  %i.al = call { ptr, ptr } %i.ak(ptr noundef nonnull %.val) #28, !inline_history !160 ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !invariant.load !4, !nonnull !4
  call void %i.ap(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.am) #28, !inline_history !160
  %i.aq = load i128, ptr %i.a, align 16, !noundef !4
  %i.ar = icmp eq i128 %i.aq, 55351879389816054849585094726209523744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %..i = select i1 %i.ar, ptr %i.am, ptr null
  br label %bb.h

bb.h:                                             ; preds = %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBS_6marker4SendNtB2F_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtB1X_8IdHasherEE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ %..i, %bb.g ], [ null, %bb.a ], [ null, %_RINvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB6_7HashMapNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBS_6marker4SendNtB2F_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtB1X_8IdHasherEE3getBO_ECs5XgW7KoffLW_12opendal_core.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6i54tJFfzR_5alloc5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef range(i64 24, 49) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.e, !prof !6

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
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 24, 49) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp ugt i64 %i.n, -16
  br i1 %i.o, label %bb.j, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15
  %i.q = and i64 %i.p, -16                        ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !10

_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.n, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !171
  %i.w = tail call noundef align 16 ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !171 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.y = tail call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !171
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i
  %i.z = tail call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.s), !noalias !171
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.aa = tail call { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { i64, i64 } [ %i.z, %bb.k ], [ %i.y, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.ph, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0.ph, ptr %i.ag, align 8
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %.sroa.0.0.i.i9.i = phi ptr [ %i.w, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i, i64 %i.q ; 2 uses
  %i.ai = add nsw i64 %.sroa.4.0.i.ph, -1         ; 2 uses
  %i.aj = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.ak = lshr i64 %.sroa.4.0.i.ph, 3
  %i.al = mul nuw nsw i64 %i.ak, 7
  %.sroa.07.0.i = select i1 %i.aj, i64 %i.ai, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ah, i8 -1, i64 %i.r, i1 false)
  store ptr %i.ah, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.b, %bb.n
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !174 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !174 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !174, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit, label %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !174
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
  br i1 %i.s, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #31, !noalias !174
  br label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit

_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6i54tJFfzR_5alloc5alloc6GlobalE0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !178
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !178, !nonnull !4, !align !7, !noundef !4 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !178, !noundef !4 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !178, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !178, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !178, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !178
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !178, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !178
  %i.q = load i64, ptr %i.e, align 8, !noalias !178, !noundef !4
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !178
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.e ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !178, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !178, !noundef !4
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !178, !noundef !4
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !178
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !178, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !178
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !178, !nonnull !4, !noundef !4
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !178, !inline_history !177
  %i.af = load i64, ptr %i.e, align 8, !noalias !178, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !178
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.split.i.i

_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !178, !noundef !4 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !178, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !178
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringB1R_EEENCNvMse_B1y_B1v_15clone_from_impl0EECs5XgW7KoffLW_12opendal_core(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringBC_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit, label %bb.b

_RNvXs1_NtCsfBDUjroi3FF_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown3raw11RawIntoIterTNtNtCs6i54tJFfzR_5alloc6string6StringB1m_EEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !187, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_7RawIterTNtNtCs6i54tJFfzR_5alloc6string6StringBO_EE13drop_elementsCs5XgW7KoffLW_12opendal_core.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted.i = load i16, ptr %i.e, align 8, !alias.scope !188
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringBV_EE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i, %.preheader.i.i
  %i.g = phi i16 [ %.promoted.i, %.preheader.i.i ], [ %i.r, %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringBV_EE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i.i ], [ %i.u, %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringBV_EE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %.not11.i.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !188 ; 2 uses
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringBV_EE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %.promoted13.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !188
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !188
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !188
  br label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringBV_EE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.i = phi ptr [ %.promoted13.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.c ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !188
  %i.k = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.k to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringBV_EE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.b, %._crit_edge.i.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %bb.b ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i.i              ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !188
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !187
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringBC_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v), !noalias !187
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringuNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE6insertCs5XgW7KoffLW_12opendal_core:bb.a
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.g, label %.thread24.i.i, !prof !6

.thread24.i.i:                                    ; preds = %bb.f
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ac, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.0.017.i.i, %i.ae
  %i.ag = and i64 %i.af, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ag, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %.thread.i.i, %bb.f
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.f ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.f ]
  %i.ak = add i64 %i.m, 16                        ; 2 uses
  %i.al = add i64 %i.ak, %.sroa.0.017.i.i
  br label %bb.d

bb.h:                                             ; preds = %.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.an = load i8, ptr %i.am, align 1, !noundef !4
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.o, !prof !6

bb.i:                                             ; preds = %bb.h
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ap = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.aq = bitcast <16 x i1> %i.ap to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.aq, 0
  %i.ar = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aq, i1 true)
  %i.as = zext nneg i16 %i.ar to i64
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.o

bb.j:                                             ; preds = %.noexc7
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %1, align 8, !alias.scope !723 ; 2 uses
  %i.au = icmp eq i64 %.val2.i.i, 0
  br i1 %i.au, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.av, align 8, !alias.scope !724, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !725
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !723 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i, 0
  br i1 %i.aw, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !724, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !726
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit

common.resume:                                    ; preds = %bb.p, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.at, %bb.l ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.n, %bb.m, %bb.o
  %.sroa.0.0 = phi i1 [ false, %bb.o ], [ true, %bb.m ], [ true, %bb.n ]
  ret i1 %.sroa.0.0

bb.o:                                             ; preds = %bb.i, %bb.h
  %.sroa.3.0.i.ph.i = phi i64 [ %i.as, %bb.i ], [ %.sroa.4.121.i.i, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.ay = load ptr, ptr %0, align 8, !alias.scope !727, !noalias !728, !nonnull !4, !noundef !4 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !noalias !729, !noundef !4
  %i.bb = and i8 %i.ba, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = add i64 %.sroa.3.0.i.ph.i, -16
  %i.be = load i64, ptr %i.h, align 8, !alias.scope !727, !noalias !728, !noundef !4
  %i.bf = and i64 %i.be, %i.bd
  store i8 %i.j, ptr %i.az, align 1, !noalias !729
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store i8 %i.j, ptr %i.bh, align 1, !noalias !729
  %i.bi = load <2 x i64>, ptr %i.d, align 8, !alias.scope !727, !noalias !728
  %i.bj = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bc, i64 0
  %i.bk = sub <2 x i64> %i.bi, %i.bj
  store <2 x i64> %i.bk, ptr %i.d, align 8, !alias.scope !727, !noalias !728
  %i.bl = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.ay, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.c, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #29
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !734 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !736
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !736
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !736
  %i.i = load i64, ptr %i.a, align 8, !range !14, !noalias !736, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs5XgW7KoffLW_12opendal_core.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !11, !noalias !736, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !736
  br label %bb.f

_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !736, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !736
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !736
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !736
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #34
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs5XgW7KoffLW_12opendal_core.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #3 {
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
  br i1 %i.d, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #31
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #31 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core3raw5layer5LayerEL_EE8grow_oneB19_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !739
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !739
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !739
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !739, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !739, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !739
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !739, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !739
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !739
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !739
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCs76KlaVGnJsc_4http6header3map6BucketNtNtBQ_5value11HeaderValueEE8grow_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !742
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !742
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 104), !noalias !742
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !742, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !742, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !742
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !742, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !742
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !742
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !742
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangeyEE8grow_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !745
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !745
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !745
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !745, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !745, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !745
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !745, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !745
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !745
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !745
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs5XgW7KoffLW_12opendal_core5types7execute3api4TaskTNtNtNtBS_4read13buffer_stream16ChunkedReadInputINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtBS_6buffer6BufferNtNtBS_5error5ErrorEEEE8grow_oneBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !748
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !748
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !748
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !748, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !748, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !748
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !748, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !748
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !748
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !748
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutE8grow_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !751
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !751
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !751
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !751, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !751, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !751
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

end_hunk_1
begin_hunk_2_@_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsk2Y6yuwWMc1_5bytes9bytes_mut8BytesMutE8grow_oneCs5XgW7KoffLW_12opendal_core:bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !751, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !751
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !751
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !751
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !754
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !754
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !754
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !754, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !754, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !754
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !754, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !754
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !754
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !754
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read6reader14FetchReadInputE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !757
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !757
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !757
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !757, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !757, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !757
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !757, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !757
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !757
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !757
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtB7_5boxed3BoxDNtNtNtB1s_4list3api7ListDynEL_EEE8grow_oneB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !760
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !760
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 64), !noalias !760
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !760, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !760, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !760
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !760, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !760
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !760
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !760
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEE8grow_oneCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !763
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !763
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !763
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !763, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !763, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !763
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !763, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !763
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !763
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !763
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTyNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEE8grow_oneBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !766
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !766
  call fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 48), !noalias !766
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !766, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !766, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !766
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !766, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !766
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !766
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !766
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #10 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !10
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #31
  br label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.j = tail call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #31
  br label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.n, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !10
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !10

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
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  br i1 %2, label %bb.g, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #31
  br label %bb.h

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit
  %.pn12 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn12, null
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
  store ptr %.pn12, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 24, 49) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
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

._crit_edge:                                      ; preds = %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !4
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
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsfBDUjroi3FF_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #29
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !769
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
  %i.at = load i8, ptr %i.as, align 1, !noundef !4
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !6

bb.g:                                             ; preds = %._crit_edge.i17
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !769
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !9

_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !5

bb.h:                                             ; preds = %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !4
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !4
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
end_hunk_2
begin_hunk_3_@_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1B_8operator8OperatorNtNtB1D_5error5ErrorEEENtNtNtB2J_3ops4drop4Drop4dropB1F_:bb.a
bb.i:                                             ; preds = %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1W_8operator8OperatorNtNtB1Y_5error5ErrorEEEB20_.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !866, !nonnull !4, !noundef !4
  %i.al = sub nuw nsw i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !866
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1Z_8operator8OperatorNtNtB21_5error5ErrorEENtNtB1h_5alloc6GlobalEB23_.exit

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1Z_8operator8OperatorNtNtB21_5error5ErrorEENtNtB1h_5alloc6GlobalEB23_.exit: ; preds = %bb.a, %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1W_8operator8OperatorNtNtB1Y_5error5ErrorEEEB20_.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !895, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6i54tJFfzR_5alloc6string6StringuENtNtB1h_5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !897, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !897, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !898
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.c
  %.sroa.05.018.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i ] ; 2 uses
  %.sroa.6.017.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i ] ; 2 uses
  %.sroa.86.016.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.016.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringuEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.017.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.018.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !899
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringuEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i

_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringuEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.017.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.018.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.016.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 3 uses
  %i.v = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.g unwind label %bb.e, !noalias !897

bb.e:                                             ; preds = %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringuEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !900, !noalias !897 ; 2 uses
  %i.y = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val3.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !901, !noalias !897, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !902
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i

bb.g:                                             ; preds = %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6i54tJFfzR_5alloc6string6StringuEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !900, !noalias !897 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !901, !noalias !897, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !903
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.x

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.d

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.b
  %i.ad = mul i64 %i.b, 24
  %i.ae = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i64 %i.ad, -16                      ; 2 uses
  %i.ag = add i64 %i.af, 32                       ; 2 uses
  %i.ah = add nsw i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = icmp ult i64 %i.ai, 9223372036854775793
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6i54tJFfzR_5alloc6string6StringuENtNtB1h_5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.am = load ptr, ptr %0, align 8, !alias.scope !895, !nonnull !4, !noundef !4
  %i.an = sub i64 -32, %i.af
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !895
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6i54tJFfzR_5alloc6string6StringuENtNtB1h_5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6i54tJFfzR_5alloc6string6StringuENtNtB1h_5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6i54tJFfzR_5alloc6string6StringuEECs5XgW7KoffLW_12opendal_core.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !912, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !914, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !914, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !915
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !916
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i

_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i = load ptr, ptr %i.w, align 8, !noalias !914 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i = load ptr, ptr %i.x, align 8, !noalias !914, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.y = load ptr, ptr %.val5.i.i, align 8, !invariant.load !4, !noalias !914 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !914

bb.f:                                             ; preds = %bb.e, %_RINvMsi_NtCsfBDUjroi3FF_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2M_4SyncEL_EEE9next_implKb0_ECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !13, !invariant.load !4, !noalias !914 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !917, !invariant.load !4, !noalias !914
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #31, !noalias !914
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !13, !invariant.load !4, !noalias !914 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit5.i.i.i.i, label %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !917, !invariant.load !4, !noalias !914
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #31, !noalias !914
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit5.i.i.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtCsgxBkk5gSRhY_4core6marker4SendNtB1r_4SyncEL_ENtNtNtB1t_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.ae

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %_RNvXs_NtCs6i54tJFfzR_5alloc5allocNtB4_6GlobalNtNtCsgxBkk5gSRhY_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.d

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2d_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.b
  %i.al = shl i64 %i.b, 5                         ; 2 uses
  %i.am = add i64 %i.al, 32                       ; 2 uses
  %i.an = add i64 %i.b, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.as = load ptr, ptr %0, align 8, !alias.scope !912, !nonnull !4, !noundef !4
  %i.at = sub nuw nsw i64 -32, %i.al
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #31, !noalias !912
  br label %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit

_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB34_4SyncEL_EENtNtB1Q_5alloc6GlobalECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a, %_RINvMsa_NtCsfBDUjroi3FF_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsgxBkk5gSRhY_4core3any6TypeIdINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtCs76KlaVGnJsc_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB31_4SyncEL_EEECs5XgW7KoffLW_12opendal_core.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtBb_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringBV_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BV_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTOhEE9call_onceCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringBC_EECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtBb_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1H_8operator8OperatorNtNtB1J_5error5ErrorEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1w_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0INtNtNtB2P_3ops8function6FnOnceTOhEE9call_onceB1L_(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !930 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !931, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !932
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !930 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.d, label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0B1I_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !931, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !933
  br label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0B1I_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtCsgxBkk5gSRhY_4core6result6ResultNtNtB1E_8operator8OperatorNtNtB1G_5error5ErrorEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1t_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0B1I_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtBb_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTOhEE9call_onceCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !946 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !947, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !948
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !946 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.d, label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0Cs5XgW7KoffLW_12opendal_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !947, !nonnull !4, !noundef !4
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !949
  br label %_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0Cs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RNCINvMs6_NtCsfBDUjroi3FF_9hashbrown3rawINtB8_8RawTableTNtNtCs6i54tJFfzR_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateE0Es_0Cs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneReECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYINtNtCsgxBkk5gSRhY_4core4hash18BuildHasherDefaultNtNtCs76KlaVGnJsc_4http10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsfBDUjroi3FF_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #16

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCsgxBkk5gSRhY_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgxBkk5gSRhY_4core5sliceSINtNtNtB4_3ops5range5RangeyE14swap_uncheckedCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgxBkk5gSRhY_4core5sliceSTNtNtCs6i54tJFfzR_5alloc6string6StringBv_E14swap_uncheckedCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 192153584101141163), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsc_NtNtCs76KlaVGnJsc_4http6header3mapINtB5_4IterNtNtB7_5value11HeaderValueENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtNtCs9k3SxhrAWiO_3std11collections4hash3map4KeysNtNtCs6i54tJFfzR_5alloc6string6StringFG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtBc_6result6ResultNtNtB2X_8operator8OperatorNtNtB2Z_5error5ErrorEEENCINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB5i_7HashSetB2b_NtNtNtB1s_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB2b_E6extendBX_E0ENtNtB6K_8iterator8Iterator4folduNCINvNvB7t_8for_each4callTB2b_uENCINvXs1i_NtB5k_3mapINtB8F_7HashMapB2b_uB65_EIB6G_B8o_E6extendBN_E0E0EB31_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateNtNtCsgxBkk5gSRhY_4core4hash11BuildHasher8hash_oneRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

end_hunk_3
