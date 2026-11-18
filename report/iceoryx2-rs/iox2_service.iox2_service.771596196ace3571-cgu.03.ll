Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.03?download=true
inline.NumInlined: 891
inline.NumDeleted: 433
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE12remove_entryNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECsadSKrpJ73hd_12iox2_service:bb.a
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [96 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -96 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCscPfSGRvVnao_9hashbrowneINtB2_10EquivalentNtNtCsbqH9stoieM8_5alloc6string6StringE10equivalentCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q) #26, !noalias !61
  br i1 %i.r, label %_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECsadSKrpJ73hd_12iox2_service.exit, label %bb.c, !prof !6

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

_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECsadSKrpJ73hd_12iox2_service.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.idx.neg = mul i64 %i.n, 96
  %i.z = sdiv exact i64 %.idx.neg, 96             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !65
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !66
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ae, i1 false)
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.aj, %i.ai
  %i.ak = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.ak, label %_RNvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB5_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE6removeCsadSKrpJ73hd_12iox2_service.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECsadSKrpJ73hd_12iox2_service.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !67, !noundef !5
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !67
  br label %_RNvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB5_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE6removeCsadSKrpJ73hd_12iox2_service.exit

_RNvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB5_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE6removeCsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECsadSKrpJ73hd_12iox2_service.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE4findNCINvNtB8_3map14equivalent_keyeBQ_B1s_E0ECsadSKrpJ73hd_12iox2_service.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.af, align 1, !noalias !68
  %i.ao = getelementptr i8, ptr %i.ac, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.ao, align 1, !noalias !68
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !67, !noundef !5
  %i.ar = add i64 %i.aq, -1
  store i64 %i.ar, ptr %i.ap, align 8, !alias.scope !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.q, i64 96, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB5_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE6removeCsadSKrpJ73hd_12iox2_service.exit
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCscPfSGRvVnao_9hashbrown3rawINtB6_8RawTableTNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8FOSrxU71ur_3ron3ser9path_meta5FieldEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCsigunbJSLHCW_3std4hash6random11RandomStateE0ECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !95, !noundef !5 ; 5 uses
  %i.e = add i64 %i.d, %1                         ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !95, !noundef !5 ; 11 uses
  %i.i = icmp ult i64 %i.h, 8
  %i.j = add i64 %i.h, 1                          ; 6 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %.sroa.03.0.i = select i1 %i.i, i64 %i.h, i64 %i.l ; 3 uses
  %i.m = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.e, %i.m
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #26, !noalias !96
  %i.o = extractvalue { i64, i64 } %i.n, 0
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.p) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  %i.r = icmp ult i64 %i.q, 15
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %i.s, label %bb.l, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %i.q, 3
  %i.u = udiv i64 %i.t, 7
  %i.v = add nsw i64 %i.u, -1
  %i.w = tail call range(i64 2, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 false)
  %i.x = sub nuw nsw i64 64, %i.w
  %i.y = shl nuw nsw i64 1, %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.z = icmp samesign ult i64 %i.q, 4
  %i.aa = and i64 %i.q, 8
  %..i.i = add nuw nsw i64 %i.aa, 8
  %.sroa.03.0.i.i = select i1 %i.z, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.y, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ab = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 96) ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.ad = extractvalue { i64, i1 } %i.ab, 0       ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.af = add i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i, !prof !8

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !99
  %i.ai = tail call noundef align 16 ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !99 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #26, !noalias !99
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit.thread

bb.k:                                             ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.af) #26, !noalias !99
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCscPfSGRvVnao_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #26, !noalias !100
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit.thread

_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit: ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ae, i1 false), !noalias !100
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ap = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.aq = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.ap, i64 %i.ar ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !noalias !98
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 96, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !98
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !98
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !98
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.ap, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !98
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !98
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !98
  %i.as = icmp eq i64 %i.d, 0
  br i1 %i.as, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit
  %i.at = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !5, !noundef !5 ; 3 uses
  %.val430 = load <16 x i8>, ptr %i.at, align 16
  %i.au = icmp sgt <16 x i8> %.val430, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  br label %.preheader

_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.l ], [ %i.ak, %bb.j ], [ %i.al, %bb.k ]
  %.sroa.7.029 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.014.044 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %.sroa.014.1.lcssa, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.043 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.042 = phi i64 [ %i.d, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.041 = phi i16 [ %i.av, %.preheader.lr.ph ], [ %i.bd, %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i136 = icmp eq i16 %.sroa.13.041, 0
  br i1 %.not.i136, label %.lr.ph, label %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.014.138 = phi ptr [ %i.aw, %.lr.ph ], [ %.sroa.014.044, %.preheader ] ; 2 uses
  %.sroa.5.137 = phi i64 [ %i.az, %.lr.ph ], [ %.sroa.5.043, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.138) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.014.138, i64 16 ; 3 uses
  %.val331 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val331, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = add i64 %.sroa.5.137, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ay, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.041, %.preheader ], [ %i.ay, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.043, %.preheader ], [ %i.az, %.lr.ph ] ; 2 uses
  %.sroa.014.1.lcssa = phi ptr [ %.sroa.014.044, %.preheader ], [ %i.aw, %.lr.ph ]
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.042, -1                ; 2 uses
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [96 x i8], ptr %i.at, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -96
  %i.bj = tail call noundef i64 @_RINvYNtNtNtCsigunbJSLHCW_3std4hash6random11RandomStateNtNtCs8Chj7Szqq0n_4core4hash11BuildHasher8hash_oneRNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bi) #26, !noalias !102 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ap, %i.bj            ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !103
  %i.bl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !104

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bm, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.cd, %.lr.ph.i ]
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.bo
  %i.bq = and i64 %i.bp, %i.ap                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %bb.m, label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !7

bb.m:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %i.an, align 16
  %i.bu = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bv, 0
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bv, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.by = phi i64 [ %i.bz, %.lr.ph.i ], [ 0, %_RNvMsv_NtCscPfSGRvVnao_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.bz = add i64 %i.by, 16                       ; 2 uses
  %i.ca = add i64 %i.bz, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.ca, %i.ap            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !103
  %i.cc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !105

_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.m
  %.sroa.0.0.i5.i = phi i64 [ %i.bx, %bb.m ], [ %i.bq, %._crit_edge.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i5.i
  %i.cf = lshr i64 %i.bj, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.ci = and i64 %i.ch, %i.ap
  store i8 %i.cg, ptr %i.ce, align 1
  %i.cj = getelementptr i8, ptr %i.an, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store i8 %i.cg, ptr %i.ck, align 1
  %i.cl = load ptr, ptr %0, align 8, !alias.scope !101, !nonnull !5, !noundef !5
  %.neg.i.i = mul i64 %i.be, -96
  %i.cm = getelementptr i8, ptr %i.cl, i64 %.neg.i.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 -96
  %.neg59.i.i = mul i64 %.sroa.0.0.i5.i, -96
  %i.co = getelementptr i8, ptr %i.an, i64 %.neg59.i.i
  %i.cp = getelementptr i8, ptr %i.co, i64 -96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cp, ptr noundef nonnull align 1 dereferenceable(96) %i.cn, i64 96, i1 false)
  %i.cq = icmp eq i64 %i.bf, 0
  br i1 %i.cq, label %._crit_edge.loopexit, label %.preheader

._crit_edge.loopexit:                             ; preds = %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.c, align 8, !alias.scope !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit
  %i.cr = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit ] ; 2 uses
  %i.cs = sub i64 %.sroa.07.0.i.i, %i.cr
  store i64 %i.cs, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !98
  store i64 %i.cr, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !98
  call void @_RINvNvNtCs8Chj7Szqq0n_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsadSKrpJ73hd_12iox2_service(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !108 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !108 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !108, !noundef !5 ; 3 uses
  %i.ct = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ct, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECsadSKrpJ73hd_12iox2_service.exit, label %_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !108
  %i.cu = add i64 %.val3.i.i, 1
  %i.cv = mul nuw i64 %.val.i.i, %i.cu            ; 2 uses
  %i.cw = add i64 %.val1.i.i, -1
  %i.cx = add i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = icmp uge i64 %i.cx, %i.cv
  call void @llvm.assume(i1 %i.cy)
  %i.cz = sub i64 0, %.val1.i.i
  %i.da = and i64 %i.cx, %i.cz                    ; 3 uses
  %i.db = add i64 %.val3.i.i, 17
  %i.dc = add i64 %i.db, %i.da                    ; 4 uses
  %i.dd = icmp uge i64 %i.dc, %i.da
  %i.de = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.df = icmp ule i64 %i.dc, %i.de
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.assume(i1 %i.df)
  %i.dg = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.dh = icmp eq i64 %i.dc, 0
  br i1 %i.dh, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECsadSKrpJ73hd_12iox2_service.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.di = sub nsw i64 0, %i.da
  %i.dj = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.di
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #26, !noalias !108
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECsadSKrpJ73hd_12iox2_service.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCscPfSGRvVnao_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsbqH9stoieM8_5alloc5alloc6GlobalE0EECsadSKrpJ73hd_12iox2_service.exit: ; preds = %._crit_edge, %_RNvMs1_NtCscPfSGRvVnao_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  br label %_RINvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsbqH9stoieM8_5alloc5alloc6GlobalECsadSKrpJ73hd_12iox2_service.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !109 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.j, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dk = lshr i64 %i.j, 4
  %i.dl = and i64 %i.j, 15
  %.not10.i.i.i.i = icmp ne i64 %i.dl, 0
  %i.dm = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dk, %i.dm ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dn = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dn, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dv, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.do = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.do, align 16, !noalias !109
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dp = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dq = or <2 x i64> %i.dp, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dq, ptr %i.do, align 16, !noalias !109
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 16)
  %i.dr = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !109
  br label %.lr.ph.i9

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dv, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ds, align 16, !noalias !109
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !109
  %i.dv = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dx, align 16, !noalias !109
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !noalias !109
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i9:                                        ; preds = %bb.x, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.ea, %bb.x ], [ 0, %._crit_edge.i.i ] ; 7 uses
  %i.ea = add nuw i64 %.sroa.014.04.i, 1          ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !109, !noundef !5
  %.not.i10 = icmp eq i8 %i.ec, -128
  br i1 %.not.i10, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph.i9
  %.neg.i = mul i64 %i.ea, -96
  %i.ed = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg.i ; 2 uses
  %i.ee = sub nsw i64 0, %.sroa.014.04.i
  %i.ef = getelementptr inbounds [96 x i8], ptr %.val25.i, i64 %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -96
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  %i.eh = tail call noundef i64 @_RINvYNtNtNtCsigunbJSLHCW_3std4hash6random11RandomStateNtNtCs8Chj7Szqq0n_4core4hash11BuildHasher8hash_oneRNtNtCsbqH9stoieM8_5alloc6string6StringECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.eg) #26, !noalias !110 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.eh, %i.h           ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ei, align 1, !noalias !111
  %i.ej = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !104

._crit_edge.i27.i:                                ; preds = %.lr.ph.i28.i, %bb.r
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.r ], [ %.sroa.0.0.i.i13, %.lr.ph.i28.i ]
  %.lcssa.i.i = phi i16 [ %i.ek, %bb.r ], [ %i.fb, %.lr.ph.i28.i ]
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add i64 %.sroa.0.0.lcssa.i.i, %i.em
  %i.eo = and i64 %i.en, %i.h                     ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !109, !noundef !5
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.s, label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !7

bb.s:                                             ; preds = %._crit_edge.i27.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val25.i, align 16, !noalias !109
  %i.es = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.et, 0
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.et, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.r, %.lr.ph.i28.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i28.i ], [ %.sroa.0.07.i.i, %bb.r ]
  %i.ew = phi i64 [ %i.ex, %.lr.ph.i28.i ], [ 0, %bb.r ]
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add i64 %i.ex, %.sroa.0.010.i.i
  %.sroa.0.0.i.i13 = and i64 %i.ey, %i.h          ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !111
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i.i.i, label %.lr.ph.i28.i, label %._crit_edge.i27.i, !prof !105

_RNvMsa_NtCscPfSGRvVnao_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i27.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ev, %bb.s ], [ %i.eo, %._crit_edge.i27.i ] ; 4 uses
  %i.fc = sub i64 %.sroa.014.04.i, %.sroa.0.07.i.i
  %i.fd = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fe = xor i64 %i.fd, %i.fc
  %.unshifted.i = and i64 %i.fe, %i.h
  %i.ff = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ff, label %bb.u, label %bb.t, !prof !6

end_hunk_0
