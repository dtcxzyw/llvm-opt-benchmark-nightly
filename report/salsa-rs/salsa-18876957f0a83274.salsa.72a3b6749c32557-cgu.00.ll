Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.00?download=true
inline.NumInlined: 639
inline.NumDeleted: 186
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hashbrown-0.17.1/src/raw.rs\00", align 1
@1 = private unnamed_addr constant [28 x i8] c"Hash table capacity overflow", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"`\00\00\00\00\00\00\00$\00\00\00(\00\00\00" }>, align 8
@3 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@4 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @3, [24 x i8] zeroinitializer }>, align 8
@5 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@6 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/indexmap-2.14.0/src/inner.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"a\00\00\00\00\00\00\00I\00\00\00D\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"a\00\00\00\00\00\00\00&\00\00\00\0F\00\00\00" }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1D_INtB1D_17RawVacantEntryMutB2o_uINtNtBW_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3g_21insert_hashed_nocheck0E0EB2s_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !41, !noalias !42, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !41, !noalias !42, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.v, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 8, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !44, !noundef !3 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !44 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !44 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !45
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44
  store ptr %i.d, ptr %i.c, align 8, !noalias !44
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !44
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !44
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !44
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !46, !noalias !47, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge65, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !46, !noalias !47, !nonnull !3, !noundef !3 ; 2 uses
  %.val547 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val547, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.040.064 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.040.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.063 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.062 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.061 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i356 = icmp eq i16 %.sroa.13.061, 0
  br i1 %.not.i356, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.040.158 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.040.064, %.preheader ] ; 2 uses
  %.sroa.5.157 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.063, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.040.158) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.040.158, i64 16 ; 3 uses
  %.val48 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val48, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.157, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge65.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre77 = load i64, ptr %i.e, align 8, !alias.scope !46, !noalias !47
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %._crit_edge65.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre77, %._crit_edge65.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !44
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !45

bb.h:                                             ; preds = %._crit_edge65
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !45
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge65
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !49), !noalias !45
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !50, !noalias !45 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !50, !noalias !45, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51), !noalias !45
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !52, !noalias !45, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !52, !noalias !45, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !45
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !45
  call void @llvm.assume(i1 %i.ax), !noalias !45
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !45
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !53
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.061, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.063, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.064, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.062, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !54, !noalias !55, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.val2.i = load ptr, ptr %i.bl, align 8, !noalias !56, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.bn = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa2id2IdEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bm)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bn             ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bo, align 1, !noalias !57
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bq, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit ], [ %i.ch, %.lr.ph.i ]
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.0.0.lcssa.i, %i.bs
  %i.bu = and i64 %i.bt, %i.t                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !3
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.j, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.by = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bz, 0
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bz, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit ]
  %i.cd = add i64 %i.cc, 16                       ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.ce, %i.t            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !57
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cb, %bb.j ], [ %i.bu, %._crit_edge.i ] ; 3 uses
  %i.ci = lshr i64 %i.bn, 57
  %i.cj = trunc nuw nsw i64 %i.ci to i8           ; 2 uses
  %i.ck = add i64 %.sroa.0.0.i5.i, -16
  %i.cl = and i64 %i.ck, %i.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.cj, ptr %i.cm, align 1, !noalias !45
  %i.cn = getelementptr i8, ptr %i.q, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  store i8 %i.cj, ptr %i.co, align 1, !noalias !45
  %i.cp = load ptr, ptr %0, align 8, !alias.scope !46, !noalias !47, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  %i.cs = load i64, ptr %i.cq, align 1, !noalias !45
  store i64 %i.cs, ptr %i.cr, align 1, !noalias !45
  %i.ct = icmp eq i64 %i.bh, 0
  br i1 %i.ct, label %._crit_edge65.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dz, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cu = lshr i64 %i.l, 4
  %i.cv = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cv, 0
  %i.cw = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cu, %i.cw ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cx = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cx, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.df, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod118 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.cy = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cy, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.db = icmp ult i64 %i.l, 16
  br i1 %i.db, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.df, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dc, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.dd = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.de = or <2 x i64> %i.dd, splat (i64 -9187201950435737472)
  store <2 x i64> %i.de, ptr %i.dc, align 16
  %i.df = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dh, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.di = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dj = or <2 x i64> %i.di, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dj, ptr %i.dh, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dk, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dl, align 8, !noalias !59
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dm, align 8, !noalias !59
  store ptr %0, ptr %i.a, align 8, !noalias !59
  %i.dn = load i64, ptr %i.i, align 8, !alias.scope !58, !noalias !60, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dn, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i55 = phi i64 [ %i.do, %bb.t ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.do = add nuw i64 %.sroa.04.0.i55, 1
  %i.dp = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.04.0.i55
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !60, !noundef !3
  %.not.i2 = icmp eq i8 %i.dr, -128
  br i1 %.not.i2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i55, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %.neg11.i ; 2 uses
  %i.dt = sub nsw i64 0, %.sroa.04.0.i55
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.du = load ptr, ptr %0, align 8, !alias.scope !61, !noalias !62, !nonnull !3, !noundef !3
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -8
  %.val2.i20 = load ptr, ptr %i.dw, align 8, !noalias !63, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw i8, ptr %.val2.i20, i64 16
  %i.dy = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa2id2IdEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dx)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.s, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.u, !noalias !60

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22: ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i23 = and i64 %.val9, %i.dy         ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i23
  %.sroa.0.0.copyload.i68.i24 = load <16 x i8>, ptr %i.ea, align 1, !noalias !64
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i24, zeroinitializer
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.i9.i25 = icmp eq i16 %i.ec, 0
  br i1 %.not.i9.i25, label %.lr.ph.i32, label %._crit_edge.i26, !prof !5

._crit_edge.i26:                                  ; preds = %.lr.ph.i32, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22
  %.sroa.0.0.lcssa.i27 = phi i64 [ %.sroa.0.07.i23, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 ], [ %.sroa.0.0.i34, %.lr.ph.i32 ]
  %.lcssa.i28 = phi i16 [ %i.ec, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 ], [ %i.et, %.lr.ph.i32 ]
  %i.ed = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i28, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = add i64 %.sroa.0.0.lcssa.i27, %i.ee
  %i.eg = and i64 %i.ef, %.val9                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !3
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.o, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37, !prof !4

bb.o:                                             ; preds = %._crit_edge.i26
  %.val2.i.i30 = load <16 x i8>, ptr %.val8, align 16
  %i.ek = icmp slt <16 x i8> %.val2.i.i30, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i6.i31 = icmp ne i16 %i.el, 0
  %i.em = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.el, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  tail call void @llvm.assume(i1 %.not.i6.i31)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37

.lr.ph.i32:                                       ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22, %.lr.ph.i32
  %.sroa.0.010.i33 = phi i64 [ %.sroa.0.0.i34, %.lr.ph.i32 ], [ %.sroa.0.07.i23, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 ]
  %i.eo = phi i64 [ %i.ep, %.lr.ph.i32 ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEE14reserve_rehashNCINvMss_B1F_INtB1F_17RawVacantEntryMutB2q_uINtNtBY_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE24insert_entry_with_hasherNCNvB3i_21insert_hashed_nocheck0E0E0B2u_.exit22 ]
  %i.ep = add i64 %i.eo, 16                       ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.0.010.i33
  %.sroa.0.0.i34 = and i64 %i.eq, %.val9          ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i34
  %.sroa.0.0.copyload.i6.i35 = load <16 x i8>, ptr %i.er, align 1, !noalias !64
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i35, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i.i36 = icmp eq i16 %i.et, 0
  br i1 %.not.i.i36, label %.lr.ph.i32, label %._crit_edge.i26, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37: ; preds = %bb.o, %._crit_edge.i26
  %.sroa.0.0.i5.i29 = phi i64 [ %i.en, %bb.o ], [ %i.eg, %._crit_edge.i26 ] ; 4 uses
  %i.eu = sub i64 %.sroa.04.0.i55, %.sroa.0.07.i23
  %i.ev = sub i64 %.sroa.0.0.i5.i29, %.sroa.0.07.i23
  %i.ew = xor i64 %i.ev, %i.eu
  %.unshifted.i = and i64 %i.ew, %.val9
  %i.ex = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ex, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37
  %i.ey = lshr i64 %i.dy, 57
  %i.ez = trunc nuw nsw i64 %i.ey to i8           ; 2 uses
  %i.fa = add i64 %.sroa.04.0.i55, -16
  %i.fb = and i64 %.val9, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i55
  store i8 %i.ez, ptr %i.fc, align 1, !noalias !60
  %i.fd = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fb
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  store i8 %i.ez, ptr %i.ff, align 1, !noalias !60
  br label %bb.t

bb.q:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit37
  %.neg12.i = xor i64 %.sroa.0.0.i5.i29, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.fg = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i29 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !60, !noundef !3
  %i.fj = lshr i64 %i.dy, 57
  %i.fk = trunc nuw nsw i64 %i.fj to i8           ; 2 uses
  %i.fl = add i64 %.sroa.0.0.i5.i29, -16
  %i.fm = and i64 %i.fl, %.val9
  store i8 %i.fk, ptr %i.fh, align 1, !noalias !60
  %i.fn = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  store i8 %i.fk, ptr %i.fp, align 1, !noalias !60
  %i.fq = icmp eq i8 %i.fi, -1
  br i1 %i.fq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fr = add i64 %.sroa.04.0.i55, -16
  %i.fs = load i64, ptr %i.i, align 8, !noalias !60, !noundef !3
  %i.ft = and i64 %i.fs, %i.fr
  %i.fu = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sroa.04.0.i55
  store i8 -1, ptr %i.fv, align 1, !noalias !60
  %i.fw = load ptr, ptr %0, align 8, !noalias !60, !nonnull !3, !noundef !3
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.ft
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 -1, ptr %i.fy, align 1, !noalias !60
  %i.fz = load i64, ptr %i.ds, align 1, !noalias !60
  store i64 %i.fz, ptr %i.fg, align 1, !noalias !60
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.fg, i64 noundef 1)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i55, %i.dn
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !60
  unreachable

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.t
  %.pre = load i64, ptr %i.i, align 8, !noalias !60 ; 2 uses
  %.pre78 = add i64 %.pre, 1
  %i.gb = lshr i64 %.pre78, 3
  %i.gc = mul nuw i64 %i.gb, 7
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.gc, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.gd = phi i64 [ %.pre, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.ge = icmp ult i64 %i.gd, 8
  %.sroa.01.0.i = select i1 %i.ge, i64 %i.gd, i64 %.pre-phi
  %i.gf = load i64, ptr %i.e, align 8, !noalias !60, !noundef !3
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gh = sub i64 %.sroa.01.0.i, %i.gf
  store i64 %i.gh, ptr %i.gg, align 8, !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.v:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !65
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.gi = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gj = insertvalue { i64, i64 } %i.gi, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gj
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryE14reserve_rehashNCNvMs1_BR_NtBR_11IdentityMap12insert_entrys_0EBT_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !91, !noalias !92, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !91, !noalias !92, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.v, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 32, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %2)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !94, !noundef !3 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !94 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !94 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94
  store ptr %i.d, ptr %i.c, align 8, !noalias !94
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !94
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !94
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !94
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  %i.w = load i64, ptr %i.e, align 8, !alias.scope !95, !noalias !96, !noundef !3 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !alias.scope !95, !noalias !96, !nonnull !3, !noundef !3 ; 2 uses
  %.val542 = load <16 x i8>, ptr %i.y, align 16
  %i.z = icmp sgt <16 x i8> %.val542, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.035.063 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %.sroa.035.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.w, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.aa, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i355, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.035.157 = phi ptr [ %i.ab, %.noexc4 ], [ %.sroa.035.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ae, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.157) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.035.157, i64 16 ; 3 uses
  %.val43 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val43, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ad, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre80 = load i64, ptr %i.e, align 8, !alias.scope !95, !noalias !96
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.f
  %i.af = phi i64 [ %.pre80, %._crit_edge64.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.ag = sub i64 %i.v, %i.af
  store i64 %i.ag, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  store i64 %i.af, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !94
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.g, !noalias !97

bb.g:                                             ; preds = %._crit_edge64
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !97
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !99), !noalias !97
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !100, !noalias !97 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !100, !noalias !97, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101), !noalias !97
  %i.ai = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.aj = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !102, !noalias !97, !noundef !3
  %i.ak = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !102, !noalias !97, !noundef !3 ; 5 uses
  %i.al = add i64 %.val1.i.i, 1
  %i.am = mul nuw i64 %i.aj, %i.al                ; 2 uses
  %i.an = add i64 %i.ak, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !97
  %i.aq = sub i64 0, %i.ak
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val1.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %i.ak
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !97
  call void @llvm.assume(i1 %i.aw), !noalias !97
  %i.ax = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %i.ax), !noalias !97
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !97
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.az
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #29, !noalias !103
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !94
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ad, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ae, %.noexc4 ] ; 2 uses
  %.sroa.035.1.lcssa = phi ptr [ %.sroa.035.063, %.preheader ], [ %i.ab, %.noexc4 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.061, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !104, !noalias !97, !nonnull !3, !noundef !3
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %.val.i = load i64, ptr %i.bk, align 8, !noalias !105, !noundef !3 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %.val.i           ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !106
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i14, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bn, %._crit_edge ], [ %i.ce, %.lr.ph.i ]
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp
  %i.br = and i64 %i.bq, %i.t                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !3
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bv = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i14, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i
  %.sroa.0.0.i14 = and i64 %i.cb, %i.t            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i14
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !106
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.i ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %.val.i, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16
  %i.ci = and i64 %i.ch, %i.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.cg, ptr %i.cj, align 1, !noalias !97
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 %i.cg, ptr %i.cl, align 1, !noalias !97
  %i.cm = load ptr, ptr %0, align 8, !alias.scope !95, !noalias !96, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bf, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 5
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 5
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.co, ptr noundef nonnull align 1 dereferenceable(32) %i.cn, i64 range(i64 8, 145) 32, i1 false), !noalias !97
  %i.cp = icmp eq i64 %i.bg, 0
  br i1 %i.cp, label %._crit_edge64.loopexit, label %.preheader

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.j
  %i.cq = lshr i64 %i.l, 4
  %i.cr = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cr, 0
  %i.cs = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cq, %i.cs ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ct = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i15.new

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.k

._crit_edge.i17.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i17, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.lr.ph.i15
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.db, %._crit_edge.i17.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.cu = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cu, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cv = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cw, ptr %i.cu, align 16
  br label %._crit_edge.i17

._crit_edge.i17:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.epil.preheader
  %i.cx = icmp ult i64 %i.l, 16
  br i1 %i.cx, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.k:                                             ; preds = %bb.k, %.lr.ph.i15.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.db, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cy, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i17.unr-lcssa, label %bb.k

._crit_edge.thread.i:                             ; preds = %._crit_edge.i17, %bb.j
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i17, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i17 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i17 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !108
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dh, align 8, !noalias !108
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %i.di, align 8, !noalias !108
  store ptr %0, ptr %i.a, align 8, !noalias !108
  %i.dj = load i64, ptr %i.i, align 8, !alias.scope !107, !noalias !109, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dj, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dk, %bb.s ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dk = add nuw i64 %.sroa.04.0.i54, 1
  %i.dl = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i54
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !109, !noundef !3
  %.not.i2 = icmp eq i8 %i.dn, -128
  br i1 %.not.i2, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1
  %.neg11.i = shl i64 %.neg.i, 5
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %.neg11.i ; 2 uses
  %i.dp = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

bb.m:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.u unwind label %bb.t, !noalias !109

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.r, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.dr = load ptr, ptr %0, align 8, !alias.scope !110, !noalias !109, !nonnull !3, !noundef !3 ; 8 uses
  %i.ds = getelementptr inbounds [32 x i8], ptr %i.dr, i64 %i.dp
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %.val.i18 = load i64, ptr %i.dt, align 8, !noalias !111, !noundef !3 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i19 = and i64 %.val9, %.val.i18     ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.07.i19
  %.sroa.0.0.copyload.i68.i20 = load <16 x i8>, ptr %i.du, align 1, !noalias !112
  %i.dv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i20, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i9.i21 = icmp eq i16 %i.dw, 0
  br i1 %.not.i9.i21, label %.lr.ph.i28, label %._crit_edge.i22, !prof !5

._crit_edge.i22:                                  ; preds = %.lr.ph.i28, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.0.0.lcssa.i23 = phi i64 [ %.sroa.0.07.i19, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %.sroa.0.0.i30, %.lr.ph.i28 ]
  %.lcssa.i24 = phi i16 [ %i.dw, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.en, %.lr.ph.i28 ]
  %i.dx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i24, i1 true)
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = add i64 %.sroa.0.0.lcssa.i23, %i.dy
  %i.ea = and i64 %i.dz, %.val9                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noundef !3
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.n, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33, !prof !4

bb.n:                                             ; preds = %._crit_edge.i22
  %.val2.i.i26 = load <16 x i8>, ptr %i.dr, align 16
  %i.ee = icmp slt <16 x i8> %.val2.i.i26, zeroinitializer
  %i.ef = bitcast <16 x i1> %i.ee to i16          ; 2 uses
  %.not.i6.i27 = icmp ne i16 %i.ef, 0
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ef, i1 true)
  %i.eh = zext nneg i16 %i.eg to i64
  tail call void @llvm.assume(i1 %.not.i6.i27)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33

.lr.ph.i28:                                       ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i28
  %.sroa.0.010.i29 = phi i64 [ %.sroa.0.0.i30, %.lr.ph.i28 ], [ %.sroa.0.07.i19, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ei = phi i64 [ %i.ej, %.lr.ph.i28 ], [ 0, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ej = add i64 %i.ei, 16                       ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.0.010.i29
  %.sroa.0.0.i30 = and i64 %i.ek, %.val9          ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i30
  %.sroa.0.0.copyload.i6.i31 = load <16 x i8>, ptr %i.el, align 1, !noalias !112
  %i.em = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i31, zeroinitializer
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %.not.i.i32 = icmp eq i16 %i.en, 0
  br i1 %.not.i.i32, label %.lr.ph.i28, label %._crit_edge.i22, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33: ; preds = %bb.n, %._crit_edge.i22
  %.sroa.0.0.i5.i25 = phi i64 [ %i.eh, %bb.n ], [ %i.ea, %._crit_edge.i22 ] ; 4 uses
  %i.eo = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i19
  %i.ep = sub i64 %.sroa.0.0.i5.i25, %.sroa.0.07.i19
  %i.eq = xor i64 %i.ep, %i.eo
  %.unshifted.i = and i64 %i.eq, %.val9
  %i.er = icmp ult i64 %.unshifted.i, 16
  br i1 %i.er, label %bb.o, label %bb.p, !prof !8

bb.o:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %i.es = lshr i64 %.val.i18, 57
  %i.et = trunc nuw nsw i64 %i.es to i8           ; 2 uses
  %i.eu = add i64 %.sroa.04.0.i54, -16
  %i.ev = and i64 %.val9, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i54
  store i8 %i.et, ptr %i.ew, align 1, !noalias !109
  %i.ex = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  store i8 %i.et, ptr %i.ez, align 1, !noalias !109
  br label %bb.s

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %.neg12.i = xor i64 %.sroa.0.0.i5.i25, -1
  %.neg13.i = shl i64 %.neg12.i, 5
  %i.fa = getelementptr inbounds i8, ptr %i.dr, i64 %.neg13.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i5.i25 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !109, !noundef !3
  %i.fd = lshr i64 %.val.i18, 57
  %i.fe = trunc nuw nsw i64 %i.fd to i8           ; 2 uses
  %i.ff = add i64 %.sroa.0.0.i5.i25, -16
  %i.fg = and i64 %i.ff, %.val9
  store i8 %i.fe, ptr %i.fb, align 1, !noalias !109
  %i.fh = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fg
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  store i8 %i.fe, ptr %i.fj, align 1, !noalias !109
  %i.fk = icmp eq i8 %i.fc, -1
  br i1 %i.fk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fl = add i64 %.sroa.04.0.i54, -16
  %i.fm = load i64, ptr %i.i, align 8, !noalias !109, !noundef !3
  %i.fn = and i64 %i.fm, %i.fl
  %i.fo = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.04.0.i54
  store i8 -1, ptr %i.fp, align 1, !noalias !109
  %i.fq = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !noundef !3
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fn
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store i8 -1, ptr %i.fs, align 1, !noalias !109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fa, ptr noundef nonnull align 1 dereferenceable(32) %i.do, i64 32, i1 false), !noalias !109
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.do, ptr noundef nonnull %i.fa, i64 noundef 4)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m

bb.s:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dj
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.t:                                             ; preds = %bb.m
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !109
  unreachable

bb.u:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.dq

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.s
  %.pre = load i64, ptr %i.i, align 8, !noalias !109 ; 2 uses
  %.pre81 = add i64 %.pre, 1
  %i.fu = lshr i64 %.pre81, 3
  %i.fv = mul nuw i64 %i.fu, 7
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.fv, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.fw = phi i64 [ %.pre, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 8
  %.sroa.01.0.i = select i1 %i.fx, i64 %i.fw, i64 %.pre-phi
  %i.fy = load i64, ptr %i.e, align 8, !noalias !109, !noundef !3
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = sub i64 %.sroa.01.0.i, %i.fy
  store i64 %i.ga, ptr %i.fz, align 8, !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !108
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.v:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !113
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.gb = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gc = insertvalue { i64, i64 } %i.gb, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gc
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !141, !noalias !142, !noundef !3 ; 2 uses
  %i.i = add i64 %i.h, %1                         ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !141, !noalias !142, !noundef !3 ; 3 uses
  %i.m = icmp ult i64 %i.l, 8
  %i.n = add i64 %i.l, 1                          ; 7 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = mul nuw i64 %i.o, 7
  %.sroa.03.0.i = select i1 %i.m, i64 %i.l, i64 %i.p ; 2 uses
  %i.q = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.i, %i.q
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %4, label %bb.v, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.r, i64 range(i64 1, 0) %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !144
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 8, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %4)
  %i.s = load ptr, ptr %i.b, align 8, !noalias !144, !noundef !3 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !144 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !144 ; 3 uses
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !144
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !145
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !144
  store ptr %i.f, ptr %i.c, align 8, !noalias !144
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !144
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !144
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !144
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.x, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  %i.z = load i64, ptr %i.g, align 8, !alias.scope !146, !noalias !147, !noundef !3 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %._crit_edge63, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !146, !noalias !147, !nonnull !3, !noundef !3 ; 2 uses
  %.val545 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val545, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.038.062 = phi ptr [ %i.ab, %.preheader.lr.ph ], [ %.sroa.038.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.061 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.060 = phi i64 [ %i.z, %.preheader.lr.ph ], [ %i.bj, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.059 = phi i16 [ %i.ad, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i354 = icmp eq i16 %.sroa.13.059, 0
  br i1 %.not.i354, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.038.156 = phi ptr [ %i.ae, %.noexc4 ], [ %.sroa.038.062, %.preheader ] ; 2 uses
  %.sroa.5.155 = phi i64 [ %i.ah, %.noexc4 ], [ %.sroa.5.061, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.156) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.038.156, i64 16 ; 3 uses
  %.val46 = load <16 x i8>, ptr %i.ae, align 16
  %i.af = icmp sgt <16 x i8> %.val46, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %i.ah = add i64 %.sroa.5.155, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ag, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge63.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre75 = load i64, ptr %i.g, align 8, !alias.scope !146, !noalias !147
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit, %bb.g
  %i.ai = phi i64 [ %.pre75, %._crit_edge63.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.aj = sub i64 %i.x, %i.ai
  store i64 %i.aj, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  store i64 %i.ai, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !144
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !145

bb.h:                                             ; preds = %._crit_edge63
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !145
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge63
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.experimental.noalias.scope.decl(metadata !149), !noalias !145
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !150, !noalias !145 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !150, !noalias !145, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151), !noalias !145
  %i.al = icmp eq i64 %.val1.i.i, 0
  br i1 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.am = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !152, !noalias !145, !noundef !3
  %i.an = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !152, !noalias !145, !noundef !3 ; 5 uses
  %i.ao = add i64 %.val1.i.i, 1
  %i.ap = mul nuw i64 %i.am, %i.ao                ; 2 uses
  %i.aq = add i64 %i.an, -1
  %i.ar = add i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  call void @llvm.assume(i1 %i.as), !noalias !145
  %i.at = sub i64 0, %i.an
  %i.au = and i64 %i.ar, %i.at                    ; 3 uses
  %i.av = add i64 %.val1.i.i, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = sub nuw i64 -9223372036854775808, %i.an
  %i.az = icmp ule i64 %i.aw, %i.ay
  call void @llvm.assume(i1 %i.ax), !noalias !145
  call void @llvm.assume(i1 %i.az), !noalias !145
  %i.ba = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %i.ba), !noalias !145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !145
  %i.bb = icmp eq i64 %i.aw, 0
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bc = sub nsw i64 0, %i.au
  %i.bd = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.bc
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) %i.an) #29, !noalias !153
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !144
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.059, %.preheader ], [ %i.ag, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.061, %.preheader ], [ %i.ah, %.noexc4 ] ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.062, %.preheader ], [ %i.ae, %.noexc4 ]
  %i.be = add i16 %.sroa.13.1.lcssa, -1
  %i.bf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = and i16 %i.be, %.sroa.13.1.lcssa
  %i.bi = add i64 %.sroa.5.1.lcssa, %i.bg         ; 2 uses
  %i.bj = add i64 %.sroa.9.060, -1                ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !alias.scope !154, !noalias !155, !nonnull !3, !noundef !3
  %i.bl = sub nsw i64 0, %i.bi
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = invoke noundef i64 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRDG_INtB4_2FnTRL0_NtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEp6OutputyEL_IBP_TRB12_EE4callB16_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.v, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !156
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit ], [ %i.ci, %.lr.ph.i ]
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.v                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !3
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.j, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.bz = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cf, %i.v            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !156
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.j ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = lshr i64 %i.bo, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i
  store i8 %i.ck, ptr %i.cn, align 1, !noalias !145
  %i.co = getelementptr i8, ptr %i.s, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.ck, ptr %i.cp, align 1, !noalias !145
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !146, !noalias !147, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bi, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cs = getelementptr inbounds i8, ptr %i.s, i64 %.neg64.i.i
  %i.ct = load i64, ptr %i.cr, align 1, !noalias !145
  store i64 %i.ct, ptr %i.cs, align 1, !noalias !145
  %i.cu = icmp eq i64 %i.bj, 0
  br i1 %i.cu, label %._crit_edge63.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.dz, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.n, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cv = lshr i64 %i.n, 4
  %i.cw = and i64 %i.n, 15
  %.not10.i.i.i = icmp ne i64 %i.cw, 0
  %i.cx = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cv, %i.cx ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod116 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dc = icmp ult i64 %i.n, 16
  br i1 %i.dc, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dg, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %i.dg = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.di, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dk = or <2 x i64> %i.dj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.n, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dm, align 8, !noalias !158
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dn, align 8, !noalias !158
  store ptr %0, ptr %i.a, align 8, !noalias !158
  %i.do = load i64, ptr %i.k, align 8, !alias.scope !157, !noalias !159, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.do, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i53 = phi i64 [ %i.dp, %bb.t ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dp = add nuw i64 %.sroa.04.0.i53, 1
  %i.dq = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.04.0.i53
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !159, !noundef !3
  %.not.i2 = icmp eq i8 %i.ds, -128
  br i1 %.not.i2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i53, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %.neg11.i ; 2 uses
  %i.du = sub nsw i64 0, %.sroa.04.0.i53
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.m
  %i.dv = load ptr, ptr %0, align 8, !alias.scope !160, !noalias !161, !nonnull !3, !noundef !3
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.dy = invoke noundef i64 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRDG_INtB4_2FnTRL0_NtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEp6OutputyEL_IBP_TRB12_EE4callB16_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dx)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.s, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.u, !noalias !159

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20: ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val9 = load i64, ptr %i.k, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i21 = and i64 %.val9, %i.dy         ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i21
  %.sroa.0.0.copyload.i68.i22 = load <16 x i8>, ptr %i.ea, align 1, !noalias !162
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i22, zeroinitializer
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.i9.i23 = icmp eq i16 %i.ec, 0
  br i1 %.not.i9.i23, label %.lr.ph.i30, label %._crit_edge.i24, !prof !5

._crit_edge.i24:                                  ; preds = %.lr.ph.i30, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20
  %.sroa.0.0.lcssa.i25 = phi i64 [ %.sroa.0.07.i21, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 ], [ %.sroa.0.0.i32, %.lr.ph.i30 ]
  %.lcssa.i26 = phi i16 [ %i.ec, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 ], [ %i.et, %.lr.ph.i30 ]
  %i.ed = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i26, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = add i64 %.sroa.0.0.lcssa.i25, %i.ee
  %i.eg = and i64 %i.ef, %.val9                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !3
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.o, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35, !prof !4

bb.o:                                             ; preds = %._crit_edge.i24
  %.val2.i.i28 = load <16 x i8>, ptr %.val8, align 16
  %i.ek = icmp slt <16 x i8> %.val2.i.i28, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.i6.i29 = icmp ne i16 %i.el, 0
  %i.em = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.el, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  call void @llvm.assume(i1 %.not.i6.i29)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35

.lr.ph.i30:                                       ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20, %.lr.ph.i30
  %.sroa.0.010.i31 = phi i64 [ %.sroa.0.0.i32, %.lr.ph.i30 ], [ %.sroa.0.07.i21, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 ]
  %i.eo = phi i64 [ %i.ep, %.lr.ph.i30 ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BR_EEp6OutputyEL_E0BV_.exit20 ]
  %i.ep = add i64 %i.eo, 16                       ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.0.010.i31
  %.sroa.0.0.i32 = and i64 %i.eq, %.val9          ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i32
  %.sroa.0.0.copyload.i6.i33 = load <16 x i8>, ptr %i.er, align 1, !noalias !162
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i33, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i.i34 = icmp eq i16 %i.et, 0
  br i1 %.not.i.i34, label %.lr.ph.i30, label %._crit_edge.i24, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35: ; preds = %bb.o, %._crit_edge.i24
  %.sroa.0.0.i5.i27 = phi i64 [ %i.en, %bb.o ], [ %i.eg, %._crit_edge.i24 ] ; 4 uses
  %i.eu = sub i64 %.sroa.04.0.i53, %.sroa.0.07.i21
  %i.ev = sub i64 %.sroa.0.0.i5.i27, %.sroa.0.07.i21
  %i.ew = xor i64 %i.ev, %i.eu
  %.unshifted.i = and i64 %i.ew, %.val9
  %i.ex = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ex, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35
  %i.ey = lshr i64 %i.dy, 57
  %i.ez = trunc nuw nsw i64 %i.ey to i8           ; 2 uses
  %i.fa = add i64 %.sroa.04.0.i53, -16
  %i.fb = and i64 %.val9, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i53
  store i8 %i.ez, ptr %i.fc, align 1, !noalias !159
  %i.fd = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fb
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  store i8 %i.ez, ptr %i.ff, align 1, !noalias !159
  br label %bb.t

bb.q:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit35
  %.neg12.i = xor i64 %.sroa.0.0.i5.i27, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.fg = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i27 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !159, !noundef !3
  %i.fj = lshr i64 %i.dy, 57
  %i.fk = trunc nuw nsw i64 %i.fj to i8           ; 2 uses
  %i.fl = add i64 %.sroa.0.0.i5.i27, -16
  %i.fm = and i64 %i.fl, %.val9
  store i8 %i.fk, ptr %i.fh, align 1, !noalias !159
  %i.fn = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fm
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  store i8 %i.fk, ptr %i.fp, align 1, !noalias !159
  %i.fq = icmp eq i8 %i.fi, -1
  br i1 %i.fq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fr = add i64 %.sroa.04.0.i53, -16
  %i.fs = load i64, ptr %i.k, align 8, !noalias !159, !noundef !3
  %i.ft = and i64 %i.fs, %i.fr
  %i.fu = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sroa.04.0.i53
  store i8 -1, ptr %i.fv, align 1, !noalias !159
  %i.fw = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !noundef !3
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.ft
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 -1, ptr %i.fy, align 1, !noalias !159
  %i.fz = load i64, ptr %i.dt, align 1, !noalias !159
  store i64 %i.fz, ptr %i.fg, align 1, !noalias !159
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.fg, i64 noundef 1)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i53, %i.do
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !159
  unreachable

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.t
  %.pre = load i64, ptr %i.k, align 8, !noalias !159 ; 2 uses
  %.pre76 = add i64 %.pre, 1
  %i.gb = lshr i64 %.pre76, 3
  %i.gc = mul nuw i64 %i.gb, 7
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.gc, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.gd = phi i64 [ %.pre, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.ge = icmp ult i64 %i.gd, 8
  %.sroa.01.0.i = select i1 %i.ge, i64 %i.gd, i64 %.pre-phi
  %i.gf = load i64, ptr %i.g, align 8, !noalias !159, !noundef !3
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gh = sub i64 %.sroa.01.0.i, %i.gf
  store i64 %i.gh, ptr %i.gg, align 8, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.v:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !163
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.x, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.gi = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gj = insertvalue { i64, i64 } %i.gi, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gj
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtB1s_4hash12TypeIdHasherEE0EB1s_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !191, !noalias !192, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !191, !noalias !192, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.v, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !194
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 24, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !194, !noundef !3 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !194 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !194 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !195
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !194
  store ptr %i.d, ptr %i.c, align 8, !noalias !194
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !194
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !196, !noalias !197, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !196, !noalias !197, !nonnull !3, !noundef !3 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i355, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !alias.scope !196, !noalias !197
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !194
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !195

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !195
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !199), !noalias !195
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !200, !noalias !195 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !200, !noalias !195, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !201), !noalias !195
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !202, !noalias !195, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !202, !noalias !195, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !195
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !195
  call void @llvm.assume(i1 %i.ax), !noalias !195
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !195
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !203
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !194
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1                ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !204, !noalias !205, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -24
  %i.bm = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCsC8CapfvpQ1_5salsa4hash12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdEBU_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm             ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !noalias !206
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit ], [ %i.cg, %.lr.ph.i ]
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br
  %i.bt = and i64 %i.bs, %i.t                     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !3
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit ]
  %i.cc = add i64 %i.cb, 16                       ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !206
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
  %i.ck = and i64 %i.cj, %i.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.ci, ptr %i.cl, align 1, !noalias !195
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store i8 %i.ci, ptr %i.cn, align 1, !noalias !195
  %i.co = load ptr, ptr %0, align 8, !alias.scope !196, !noalias !197, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cq, ptr noundef nonnull align 1 dereferenceable(24) %i.cp, i64 range(i64 8, 145) 24, i1 false), !noalias !195
  %i.cr = icmp eq i64 %i.bh, 0
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4
  %i.ct = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.ct, 0
  %i.cu = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dc, ptr %i.da, align 16
  %i.dd = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dh, ptr %i.df, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !208
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dj, align 8, !noalias !208
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 24, ptr %i.dk, align 8, !noalias !208
  store ptr %0, ptr %i.a, align 8, !noalias !208
  %i.dl = load i64, ptr %i.i, align 8, !alias.scope !207, !noalias !209, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.t ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1
  %i.dn = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54
  %i.dp = load i8, ptr %i.do, align 1, !noalias !209, !noundef !3
  %.not.i2 = icmp eq i8 %i.dp, -128
  br i1 %.not.i2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1
  %.neg11.i = mul i64 %.neg.i, 24
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !alias.scope !210, !noalias !211, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds [24 x i8], ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -24
  %i.dv = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCsC8CapfvpQ1_5salsa4hash12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdEBU_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.s, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.u, !noalias !209

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21: ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv         ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !noalias !212
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer
  %i.dz = bitcast <16 x i1> %i.dy to i16          ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !prof !5

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ]
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 ], [ %i.eq, %.lr.ph.i31 ]
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb
  %i.ed = and i64 %i.ec, %.val9                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !noundef !3
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !prof !4

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16          ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true)
  %i.ek = zext nneg i16 %i.ej to i64
  tail call void @llvm.assume(i1 %.not.i6.i30)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1q_INtNtBW_4hash18BuildHasherDefaultNtNtB1u_4hash12TypeIdHasherEE0E0B1u_.exit21 ]
  %i.em = add i64 %i.el, 16                       ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32
  %.sroa.0.0.i33 = and i64 %i.en, %.val9          ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !noalias !212
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer
  %i.eq = bitcast <16 x i1> %i.ep to i16          ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22
  %i.et = xor i64 %i.es, %i.er
  %.unshifted.i = and i64 %i.et, %.val9
  %i.eu = icmp ult i64 %.unshifted.i, 16
  br i1 %i.eu, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57
  %i.ew = trunc nuw nsw i64 %i.ev to i8           ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16
  %i.ey = and i64 %.val9, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54
  store i8 %i.ew, ptr %i.ez, align 1, !noalias !209
  %i.fa = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  store i8 %i.ew, ptr %i.fc, align 1, !noalias !209
  br label %bb.t

bb.q:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1
  %.neg13.i = mul i64 %.neg12.i, 24
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !209, !noundef !3
  %i.fg = lshr i64 %i.dv, 57
  %i.fh = trunc nuw nsw i64 %i.fg to i8           ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16
  %i.fj = and i64 %i.fi, %.val9
  store i8 %i.fh, ptr %i.fe, align 1, !noalias !209
  %i.fk = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  store i8 %i.fh, ptr %i.fm, align 1, !noalias !209
  %i.fn = icmp eq i8 %i.ff, -1
  br i1 %i.fn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16
  %i.fp = load i64, ptr %i.i, align 8, !noalias !209, !noundef !3
  %i.fq = and i64 %i.fp, %i.fo
  %i.fr = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54
  store i8 -1, ptr %i.fs, align 1, !noalias !209
  %i.ft = load ptr, ptr %0, align 8, !noalias !209, !nonnull !3, !noundef !3
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 -1, ptr %i.fv, align 1, !noalias !209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fd, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !209
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.fd, i64 noundef 3)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !209
  unreachable

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.t
  %.pre = load i64, ptr %i.i, align 8, !noalias !209 ; 2 uses
  %.pre77 = add i64 %.pre, 1
  %i.fx = lshr i64 %.pre77, 3
  %i.fy = mul nuw i64 %i.fx, 7
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.fy, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.fz = phi i64 [ %.pre, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 8
  %.sroa.01.0.i = select i1 %i.ga, i64 %i.fz, i64 %.pre-phi
  %i.gb = load i64, ptr %i.e, align 8, !noalias !209, !noundef !3
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = sub i64 %.sroa.01.0.i, %i.gb
  store i64 %i.gd, ptr %i.gc, align 8, !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !208
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.v:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !213
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.ge = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gf = insertvalue { i64, i64 } %i.ge, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gf
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtBS_13DisambiguatorEE14reserve_rehashNCINvMs6_NtB8_9raw_entryINtB2s_17RawVacantEntryMutBQ_B1H_uE18insert_with_hasherNCNvMs2_BS_NtBS_16DisambiguatorMap12disambiguates_0E0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !239, !noalias !240, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !239, !noalias !240, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.v, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !242
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 24, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !242, !noundef !3 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !242 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !242 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !242
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !242
  store ptr %i.d, ptr %i.c, align 8, !noalias !242
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !242
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !242
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !242
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  %i.w = load i64, ptr %i.e, align 8, !alias.scope !243, !noalias !244, !noundef !3 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.y = load ptr, ptr %0, align 8, !alias.scope !243, !noalias !244, !nonnull !3, !noundef !3 ; 2 uses
  %.val542 = load <16 x i8>, ptr %i.y, align 16
  %i.z = icmp sgt <16 x i8> %.val542, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.035.063 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %.sroa.035.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.w, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.aa, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i355, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.035.157 = phi ptr [ %i.ab, %.noexc4 ], [ %.sroa.035.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.ae, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.157) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.035.157, i64 16 ; 3 uses
  %.val43 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val43, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ad, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre80 = load i64, ptr %i.e, align 8, !alias.scope !243, !noalias !244
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.f
  %i.af = phi i64 [ %.pre80, %._crit_edge64.loopexit ], [ 0, %bb.f ] ; 2 uses
  %i.ag = sub i64 %i.v, %i.af
  store i64 %i.ag, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  store i64 %i.af, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !242
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.g, !noalias !245

bb.g:                                             ; preds = %._crit_edge64
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !245
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247), !noalias !245
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !248, !noalias !245 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !248, !noalias !245, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249), !noalias !245
  %i.ai = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.aj = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !250, !noalias !245, !noundef !3
  %i.ak = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !250, !noalias !245, !noundef !3 ; 5 uses
  %i.al = add i64 %.val1.i.i, 1
  %i.am = mul nuw i64 %i.aj, %i.al                ; 2 uses
  %i.an = add i64 %i.ak, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !245
  %i.aq = sub i64 0, %i.ak
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val1.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %i.ak
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !245
  call void @llvm.assume(i1 %i.aw), !noalias !245
  %i.ax = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %i.ax), !noalias !245
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !245
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.az
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #29, !noalias !251
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !242
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ad, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.ae, %.noexc4 ] ; 2 uses
  %.sroa.035.1.lcssa = phi ptr [ %.sroa.035.063, %.preheader ], [ %i.ab, %.noexc4 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.061, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !252, !noalias !245, !nonnull !3, !noundef !3
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -24
  %.val.i = load i64, ptr %i.bk, align 8, !noalias !253, !noundef !3 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %.val.i           ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bl, align 1, !noalias !254
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bn = bitcast <16 x i1> %i.bm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i14, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bn, %._crit_edge ], [ %i.ce, %.lr.ph.i ]
  %i.bo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = add i64 %.sroa.0.0.lcssa.i, %i.bp
  %i.br = and i64 %i.bq, %i.t                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !3
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bv = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bw, 0
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bw, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i14, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.010.i
  %.sroa.0.0.i14 = and i64 %i.cb, %i.t            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i14
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !254
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.by, %bb.i ], [ %i.br, %._crit_edge.i ] ; 3 uses
  %i.cf = lshr i64 %.val.i, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i5.i, -16
  %i.ci = and i64 %i.ch, %i.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.cg, ptr %i.cj, align 1, !noalias !245
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ci
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  store i8 %i.cg, ptr %i.cl, align 1, !noalias !245
  %i.cm = load ptr, ptr %0, align 8, !alias.scope !243, !noalias !244, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.co = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.co, ptr noundef nonnull align 1 dereferenceable(24) %i.cn, i64 range(i64 8, 145) 24, i1 false), !noalias !245
  %i.cp = icmp eq i64 %i.bg, 0
  br i1 %i.cp, label %._crit_edge64.loopexit, label %.preheader

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.j
  %i.cq = lshr i64 %i.l, 4
  %i.cr = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cr, 0
  %i.cs = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cq, %i.cs ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ct = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i15.new

.lr.ph.i15.new:                                   ; preds = %.lr.ph.i15
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.k

._crit_edge.i17.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i17, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.lr.ph.i15
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i15 ], [ %i.db, %._crit_edge.i17.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.cu = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cu, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cv = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cw, ptr %i.cu, align 16
  br label %._crit_edge.i17

._crit_edge.i17:                                  ; preds = %._crit_edge.i17.unr-lcssa, %.epil.preheader
  %i.cx = icmp ult i64 %i.l, 16
  br i1 %i.cx, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.k:                                             ; preds = %bb.k, %.lr.ph.i15.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i15.new ], [ %i.db, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i15.new ], [ %niter.next.1, %bb.k ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cy, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i17.unr-lcssa, label %bb.k

._crit_edge.thread.i:                             ; preds = %._crit_edge.i17, %bb.j
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i17, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i17 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i17 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !256
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dh, align 8, !noalias !256
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 24, ptr %i.di, align 8, !noalias !256
  store ptr %0, ptr %i.a, align 8, !noalias !256
  %i.dj = load i64, ptr %i.i, align 8, !alias.scope !255, !noalias !257, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dj, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.s
  %.sroa.04.0.i54 = phi i64 [ %i.dk, %bb.s ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dk = add nuw i64 %.sroa.04.0.i54, 1
  %i.dl = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i54
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !257, !noundef !3
  %.not.i2 = icmp eq i8 %i.dn, -128
  br i1 %.not.i2, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1
  %.neg11.i = mul i64 %.neg.i, 24
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %.neg11.i ; 2 uses
  %i.dp = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

bb.m:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.u unwind label %bb.t, !noalias !257

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.r, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.dr = load ptr, ptr %0, align 8, !alias.scope !258, !noalias !257, !nonnull !3, !noundef !3 ; 8 uses
  %i.ds = getelementptr inbounds [24 x i8], ptr %i.dr, i64 %i.dp
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -24
  %.val.i18 = load i64, ptr %i.dt, align 8, !noalias !259, !noundef !3 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i19 = and i64 %.val9, %.val.i18     ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.07.i19
  %.sroa.0.0.copyload.i68.i20 = load <16 x i8>, ptr %i.du, align 1, !noalias !260
  %i.dv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i20, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i9.i21 = icmp eq i16 %i.dw, 0
  br i1 %.not.i9.i21, label %.lr.ph.i28, label %._crit_edge.i22, !prof !5

._crit_edge.i22:                                  ; preds = %.lr.ph.i28, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.sroa.0.0.lcssa.i23 = phi i64 [ %.sroa.0.07.i19, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %.sroa.0.0.i30, %.lr.ph.i28 ]
  %.lcssa.i24 = phi i16 [ %i.dw, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ], [ %i.en, %.lr.ph.i28 ]
  %i.dx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i24, i1 true)
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = add i64 %.sroa.0.0.lcssa.i23, %i.dy
  %i.ea = and i64 %i.dz, %.val9                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noundef !3
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.n, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33, !prof !4

bb.n:                                             ; preds = %._crit_edge.i22
  %.val2.i.i26 = load <16 x i8>, ptr %i.dr, align 16
  %i.ee = icmp slt <16 x i8> %.val2.i.i26, zeroinitializer
  %i.ef = bitcast <16 x i1> %i.ee to i16          ; 2 uses
  %.not.i6.i27 = icmp ne i16 %i.ef, 0
  %i.eg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ef, i1 true)
  %i.eh = zext nneg i16 %i.eg to i64
  tail call void @llvm.assume(i1 %.not.i6.i27)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33

.lr.ph.i28:                                       ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit, %.lr.ph.i28
  %.sroa.0.010.i29 = phi i64 [ %.sroa.0.0.i30, %.lr.ph.i28 ], [ %.sroa.0.07.i19, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ei = phi i64 [ %i.ej, %.lr.ph.i28 ], [ 0, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit ]
  %i.ej = add i64 %i.ei, 16                       ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.0.010.i29
  %.sroa.0.0.i30 = and i64 %i.ek, %.val9          ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i30
  %.sroa.0.0.copyload.i6.i31 = load <16 x i8>, ptr %i.el, align 1, !noalias !260
  %i.em = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i31, zeroinitializer
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %.not.i.i32 = icmp eq i16 %i.en, 0
  br i1 %.not.i.i32, label %.lr.ph.i28, label %._crit_edge.i22, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33: ; preds = %bb.n, %._crit_edge.i22
  %.sroa.0.0.i5.i25 = phi i64 [ %i.eh, %bb.n ], [ %i.ea, %._crit_edge.i22 ] ; 4 uses
  %i.eo = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i19
  %i.ep = sub i64 %.sroa.0.0.i5.i25, %.sroa.0.07.i19
  %i.eq = xor i64 %i.ep, %i.eo
  %.unshifted.i = and i64 %i.eq, %.val9
  %i.er = icmp ult i64 %.unshifted.i, 16
  br i1 %i.er, label %bb.o, label %bb.p, !prof !8

bb.o:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %i.es = lshr i64 %.val.i18, 57
  %i.et = trunc nuw nsw i64 %i.es to i8           ; 2 uses
  %i.eu = add i64 %.sroa.04.0.i54, -16
  %i.ev = and i64 %.val9, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.04.0.i54
  store i8 %i.et, ptr %i.ew, align 1, !noalias !257
  %i.ex = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  store i8 %i.et, ptr %i.ez, align 1, !noalias !257
  br label %bb.s

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit33
  %.neg12.i = xor i64 %.sroa.0.0.i5.i25, -1
  %.neg13.i = mul i64 %.neg12.i, 24
  %i.fa = getelementptr inbounds i8, ptr %i.dr, i64 %.neg13.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.0.0.i5.i25 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !noalias !257, !noundef !3
  %i.fd = lshr i64 %.val.i18, 57
  %i.fe = trunc nuw nsw i64 %i.fd to i8           ; 2 uses
  %i.ff = add i64 %.sroa.0.0.i5.i25, -16
  %i.fg = and i64 %i.ff, %.val9
  store i8 %i.fe, ptr %i.fb, align 1, !noalias !257
  %i.fh = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fg
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  store i8 %i.fe, ptr %i.fj, align 1, !noalias !257
  %i.fk = icmp eq i8 %i.fc, -1
  br i1 %i.fk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fl = add i64 %.sroa.04.0.i54, -16
  %i.fm = load i64, ptr %i.i, align 8, !noalias !257, !noundef !3
  %i.fn = and i64 %i.fm, %i.fl
  %i.fo = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.04.0.i54
  store i8 -1, ptr %i.fp, align 1, !noalias !257
  %i.fq = load ptr, ptr %0, align 8, !noalias !257, !nonnull !3, !noundef !3
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fn
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store i8 -1, ptr %i.fs, align 1, !noalias !257
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fa, ptr noundef nonnull align 1 dereferenceable(24) %i.do, i64 24, i1 false), !noalias !257
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.do, ptr noundef nonnull %i.fa, i64 noundef 3)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m

bb.s:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dj
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.t:                                             ; preds = %bb.m
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !257
  unreachable

bb.u:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.dq

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.s
  %.pre = load i64, ptr %i.i, align 8, !noalias !257 ; 2 uses
  %.pre81 = add i64 %.pre, 1
  %i.fu = lshr i64 %.pre81, 3
  %i.fv = mul nuw i64 %i.fu, 7
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.fv, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.fw = phi i64 [ %.pre, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 8
  %.sroa.01.0.i = select i1 %i.fx, i64 %i.fw, i64 %.pre-phi
  %i.fy = load i64, ptr %i.e, align 8, !noalias !257, !noundef !3
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = sub i64 %.sroa.01.0.i, %i.fy
  store i64 %i.ga, ptr %i.fz, align 8, !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !256
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.v:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !261
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.gb = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gc = insertvalue { i64, i64 } %i.gb, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gc
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtB8_6hasher18DefaultHashBuilderE0EBY_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !289, !noalias !290, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !289, !noalias !290, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.v, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !292
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 144, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !292, !noundef !3 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !292 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !292 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !292
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !293
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !292
  store ptr %i.d, ptr %i.c, align 8, !noalias !292
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 144, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !292
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !292
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !292
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !294, !noalias !295, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !294, !noalias !295, !nonnull !3, !noundef !3 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i355, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !alias.scope !294, !noalias !295
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !292
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !293

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !293
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge64
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.experimental.noalias.scope.decl(metadata !297), !noalias !293
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !298, !noalias !293 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !298, !noalias !293, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !299), !noalias !293
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !300, !noalias !293, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !300, !noalias !293, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !293
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !293
  call void @llvm.assume(i1 %i.ax), !noalias !293
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !293
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !293
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !301
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !292
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.061, -1                ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !302, !noalias !303, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [144 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -144
  %i.bm = invoke noundef i64 @_RINvYNtNtCsgMW4BsFgQdt_9hashbrown6hasher18DefaultHashBuilderNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bl)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.bm             ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bn, align 1, !noalias !304
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bp, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit ], [ %i.cg, %.lr.ph.i ]
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = add i64 %.sroa.0.0.lcssa.i, %i.br
  %i.bt = and i64 %i.bs, %i.t                     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !3
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %bb.j, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.j:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bx = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.by, 0
  %i.bz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit ]
  %i.cb = phi i64 [ %i.cc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit ]
  %i.cc = add i64 %i.cb, 16                       ; 2 uses
  %i.cd = add i64 %i.cc, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cd, %i.t            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !304
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.ca, %bb.j ], [ %i.bt, %._crit_edge.i ] ; 3 uses
  %i.ch = lshr i64 %i.bm, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
  %i.ck = and i64 %i.cj, %i.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.ci, ptr %i.cl, align 1, !noalias !293
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  store i8 %i.ci, ptr %i.cn, align 1, !noalias !293
  %i.co = load ptr, ptr %0, align 8, !alias.scope !294, !noalias !295, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 144
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 144
  %i.cq = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.cq, ptr noundef nonnull align 1 dereferenceable(144) %i.cp, i64 range(i64 8, 145) 144, i1 false), !noalias !293
  %i.cr = icmp eq i64 %i.bh, 0
  br i1 %i.cr, label %._crit_edge64.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.n, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.dw, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.k
  %i.cs = lshr i64 %i.l, 4
  %i.ct = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.ct, 0
  %i.cu = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cs, %i.cu ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cv = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dd, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.cw = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cw, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cx = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cy = or <2 x i64> %i.cx, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cy, ptr %i.cw, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.cz = icmp ult i64 %i.l, 16
  br i1 %i.cz, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.l:                                             ; preds = %bb.l, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dd, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.da, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.db = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.dc = or <2 x i64> %i.db, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dc, ptr %i.da, align 16
  %i.dd = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.df, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dg = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dh = or <2 x i64> %i.dg, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dh, ptr %i.df, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.k
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !306
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dj, align 8, !noalias !306
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 144, ptr %i.dk, align 8, !noalias !306
  store ptr %0, ptr %i.a, align 8, !noalias !306
  %i.dl = load i64, ptr %i.i, align 8, !alias.scope !305, !noalias !307, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.dl, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.t
  %.sroa.04.0.i54 = phi i64 [ %i.dm, %bb.t ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dm = add nuw i64 %.sroa.04.0.i54, 1
  %i.dn = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.04.0.i54
  %i.dp = load i8, ptr %i.do, align 1, !noalias !307, !noundef !3
  %.not.i2 = icmp eq i8 %i.dp, -128
  br i1 %.not.i2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1
  %.neg11.i = mul i64 %.neg.i, 144
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %.neg11.i ; 2 uses
  %i.dr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.m
  %i.ds = load ptr, ptr %0, align 8, !alias.scope !308, !noalias !309, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds [144 x i8], ptr %i.ds, i64 %i.dr
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -144
  %i.dv = invoke noundef i64 @_RINvYNtNtCsgMW4BsFgQdt_9hashbrown6hasher18DefaultHashBuilderNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.du)
          to label %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 unwind label %bb.n ; 3 uses

bb.n:                                             ; preds = %bb.s, %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.u, !noalias !307

_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21: ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.dv         ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.dx, align 1, !noalias !310
  %i.dy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer
  %i.dz = bitcast <16 x i1> %i.dy to i16          ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.dz, 0
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !prof !5

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ]
  %.lcssa.i27 = phi i16 [ %i.dz, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 ], [ %i.eq, %.lr.ph.i31 ]
  %i.ea = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = add i64 %.sroa.0.0.lcssa.i26, %i.eb
  %i.ed = and i64 %i.ec, %.val9                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !noundef !3
  %i.eg = icmp sgt i8 %i.ef, -1
  br i1 %i.eg, label %bb.o, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !prof !4

bb.o:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16
  %i.eh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16          ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.ei, 0
  %i.ej = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ei, i1 true)
  %i.ek = zext nneg i16 %i.ej to i64
  tail call void @llvm.assume(i1 %.not.i6.i30)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 ]
  %i.el = phi i64 [ %i.em, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtBa_6hasher18DefaultHashBuilderE0E0B10_.exit21 ]
  %i.em = add i64 %i.el, 16                       ; 2 uses
  %i.en = add i64 %i.em, %.sroa.0.010.i32
  %.sroa.0.0.i33 = and i64 %i.en, %.val9          ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.eo, align 1, !noalias !310
  %i.ep = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer
  %i.eq = bitcast <16 x i1> %i.ep to i16          ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.eq, 0
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.o, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.ek, %bb.o ], [ %i.ed, %._crit_edge.i25 ] ; 4 uses
  %i.er = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22
  %i.es = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22
  %i.et = xor i64 %i.es, %i.er
  %.unshifted.i = and i64 %i.et, %.val9
  %i.eu = icmp ult i64 %.unshifted.i, 16
  br i1 %i.eu, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.ev = lshr i64 %i.dv, 57
  %i.ew = trunc nuw nsw i64 %i.ev to i8           ; 2 uses
  %i.ex = add i64 %.sroa.04.0.i54, -16
  %i.ey = and i64 %.val9, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54
  store i8 %i.ew, ptr %i.ez, align 1, !noalias !307
  %i.fa = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ey
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  store i8 %i.ew, ptr %i.fc, align 1, !noalias !307
  br label %bb.t

bb.q:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1
  %.neg13.i = mul i64 %.neg12.i, 144
  %i.fd = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !307, !noundef !3
  %i.fg = lshr i64 %i.dv, 57
  %i.fh = trunc nuw nsw i64 %i.fg to i8           ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i28, -16
  %i.fj = and i64 %i.fi, %.val9
  store i8 %i.fh, ptr %i.fe, align 1, !noalias !307
  %i.fk = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fj
  %i.fm = getelementptr i8, ptr %i.fl, i64 16
  store i8 %i.fh, ptr %i.fm, align 1, !noalias !307
  %i.fn = icmp eq i8 %i.ff, -1
  br i1 %i.fn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fo = add i64 %.sroa.04.0.i54, -16
  %i.fp = load i64, ptr %i.i, align 8, !noalias !307, !noundef !3
  %i.fq = and i64 %i.fp, %i.fo
  %i.fr = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.04.0.i54
  store i8 -1, ptr %i.fs, align 1, !noalias !307
  %i.ft = load ptr, ptr %0, align 8, !noalias !307, !nonnull !3, !noundef !3
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.fq
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store i8 -1, ptr %i.fv, align 1, !noalias !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %i.fd, ptr noundef nonnull align 1 dereferenceable(144) %i.dq, i64 144, i1 false), !noalias !307
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.fd, i64 noundef 18)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.n

bb.t:                                             ; preds = %bb.r, %bb.p, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.dl
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.u:                                             ; preds = %bb.n
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !307
  unreachable

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.t
  %.pre = load i64, ptr %i.i, align 8, !noalias !307 ; 2 uses
  %.pre77 = add i64 %.pre, 1
  %i.fx = lshr i64 %.pre77, 3
  %i.fy = mul nuw i64 %i.fx, 7
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.fy, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.fz = phi i64 [ %.pre, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.ga = icmp ult i64 %i.fz, 8
  %.sroa.01.0.i = select i1 %i.ga, i64 %i.fz, i64 %.pre-phi
  %i.gb = load i64, ptr %i.e, align 8, !noalias !307, !noundef !3
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = sub i64 %.sroa.01.0.i, %i.gb
  store i64 %i.gd, ptr %i.gc, align 8, !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !306
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.v:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !311
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.ge = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gf = insertvalue { i64, i64 } %i.ge, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gf
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner19insert_bulk_no_growNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB26_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !329, !noalias !330, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !329, !noalias !330, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.s, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !332
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 8, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %2)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !332, !noundef !3 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !332 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !332 ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !332
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !333
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !332
  store ptr %i.d, ptr %i.c, align 8, !noalias !332
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !332
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !332
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !332
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !332
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !332
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !332
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !334, !noalias !335, !noundef !3
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !334, !noalias !335, !nonnull !3, !noundef !3
  br label %.noexc4

.noexc4:                                          ; preds = %.noexc4, %bb.h
  %.sroa.036.0 = phi ptr [ %i.z, %bb.h ], [ %i.aa, %.noexc4 ] ; 2 uses
  %.sroa.13.0.in.in = load <16 x i8>, ptr %.sroa.036.0, align 16
  %.sroa.13.0.in = icmp sgt <16 x i8> %.sroa.13.0.in.in, splat (i8 -1)
  %.sroa.13.0 = bitcast <16 x i1> %.sroa.13.0.in to i16
  %.not.i3 = icmp eq i16 %.sroa.13.0, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 16
  br i1 %.not.i3, label %.noexc4, label %bb.l

bb.i:                                             ; preds = %bb.g
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !332
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.j, !noalias !333

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !333
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !333
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !338, !noalias !333 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !338, !noalias !333, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339), !noalias !333
  %i.ac = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ad = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !340, !noalias !333, !noundef !3
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !340, !noalias !333, !noundef !3 ; 5 uses
  %i.af = add i64 %.val1.i.i, 1
  %i.ag = mul nuw i64 %i.ad, %i.af                ; 2 uses
  %i.ah = add i64 %i.ae, -1
  %i.ai = add i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  call void @llvm.assume(i1 %i.aj), !noalias !333
  %i.ak = sub i64 0, %i.ae
  %i.al = and i64 %i.ai, %i.ak                    ; 3 uses
  %i.am = add i64 %.val1.i.i, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = sub nuw i64 -9223372036854775808, %i.ae
  %i.aq = icmp ule i64 %i.an, %i.ap
  call void @llvm.assume(i1 %i.ao), !noalias !333
  call void @llvm.assume(i1 %i.aq), !noalias !333
  %i.ar = icmp ne i64 %i.ae, 0
  call void @llvm.assume(i1 %i.ar), !noalias !333
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !333
  %i.as = icmp eq i64 %i.an, 0
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.at = sub nsw i64 0, %i.al
  %i.au = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.at
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #29, !noalias !341
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !332
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.l:                                             ; preds = %.noexc4
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.l
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.bu, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.m
  %i.av = lshr i64 %i.l, 4
  %i.aw = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.aw, 0
  %i.ax = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.av, %i.ax ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ay = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.bg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod51 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.az = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.az, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.ba = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.bb = or <2 x i64> %i.ba, splat (i64 -9187201950435737472)
  store <2 x i64> %i.bb, ptr %i.az, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.bc = icmp ult i64 %i.l, 16
  br i1 %i.bc, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.bg, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.bd, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.be = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.bf = or <2 x i64> %i.be, splat (i64 -9187201950435737472)
  store <2 x i64> %i.bf, ptr %i.bd, align 16
  %i.bg = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.bi, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.bj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.bk = or <2 x i64> %i.bj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.bk, ptr %i.bi, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !343
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.bm, align 8, !noalias !343
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.bn, align 8, !noalias !343
  store ptr %0, ptr %i.a, align 8, !noalias !343
  %i.bo = load i64, ptr %i.i, align 8, !alias.scope !342, !noalias !344, !noundef !3 ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %exitcond.not49 = icmp eq i64 %i.bp, 0
  br i1 %exitcond.not49, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %i.bq = load ptr, ptr %0, align 8, !noalias !344, !nonnull !3, !noundef !3
  br label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.br = add i64 %.sroa.04.0.i50, 1
  %exitcond.not = icmp eq i64 %.sroa.04.0.i50, %i.bo
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.04.0.i50 = phi i64 [ %i.br, %bb.o ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.04.0.i50
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !344, !noundef !3
  %.not.i2 = icmp eq i8 %i.bt, -128
  br i1 %.not.i2, label %bb.p, label %bb.o

bb.p:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30
          to label %.noexc19 unwind label %bb.q

.noexc19:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.r, !noalias !344

bb.r:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !344
  unreachable

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.o, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %i.bw = icmp ult i64 %i.bo, 8
  %i.bx = lshr i64 %i.bp, 3
  %i.by = mul nuw i64 %i.bx, 7
  %.sroa.01.0.i = select i1 %i.bw, i64 %i.bo, i64 %i.by
  %i.bz = load i64, ptr %i.e, align 8, !noalias !344, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = sub i64 %.sroa.01.0.i, %i.bz
  store i64 %i.cb, ptr %i.ca, align 8, !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !343
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.s:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !345
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.cc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cd = insertvalue { i64, i64 } %i.cc, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.cd
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuE0EB1U_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !373, !noalias !374, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !373, !noalias !374, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %4, label %bb.z, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !376
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 8, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %4)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !376, !noundef !3 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !376 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !376 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !376
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !377
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !376
  store ptr %i.d, ptr %i.c, align 8, !noalias !376
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !376
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !376
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !376
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !378, !noalias !379, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge76, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !378, !noalias !379, !nonnull !3, !noundef !3 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0
  br i1 %.not.i367, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !alias.scope !378, !noalias !379
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !376
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !377

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !377
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge76
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  call void @llvm.experimental.noalias.scope.decl(metadata !381), !noalias !377
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !382, !noalias !377 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !382, !noalias !377, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !383), !noalias !377
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !384, !noalias !377, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !384, !noalias !377, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !377
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !377
  call void @llvm.assume(i1 %i.ax), !noalias !377
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !377
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !377
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !385
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !376
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.073, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !386, !noalias !387, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.val3.i = load i64, ptr %i.bl, align 8, !noalias !388, !noundef !3 ; 3 uses
  %i.bm = icmp ult i64 %.val3.i, %3
  br i1 %i.bm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !388, !noundef !3 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !389
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %bb.k ], [ %i.ci, %.lr.ph.i ]
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.t                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !3
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.l, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bz = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %bb.k ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cf, %i.t            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !389
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.l ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = lshr i64 %i.bo, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.ck, ptr %i.cn, align 1, !noalias !377
  %i.co = getelementptr i8, ptr %i.q, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.ck, ptr %i.cp, align 1, !noalias !377
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !378, !noalias !379, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cs = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  %i.ct = load i64, ptr %i.cr, align 1, !noalias !377
  store i64 %i.ct, ptr %i.cs, align 1, !noalias !377
  %i.cu = icmp eq i64 %i.bh, 0
  br i1 %i.cu, label %._crit_edge76.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.m
  %i.cv = lshr i64 %i.l, 4
  %i.cw = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cw, 0
  %i.cx = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cv, %i.cx ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dc = icmp ult i64 %i.l, 16
  br i1 %i.dc, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dg, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %i.dg = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.di, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dk = or <2 x i64> %i.dj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !391
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dm, align 8, !noalias !391
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dn, align 8, !noalias !391
  store ptr %0, ptr %i.a, align 8, !noalias !391
  %i.do = load i64, ptr %i.i, align 8, !alias.scope !390, !noalias !392, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.do, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.x
  %.sroa.04.0.i66 = phi i64 [ %i.dp, %bb.x ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dp = add nuw i64 %.sroa.04.0.i66, 1
  %i.dq = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.04.0.i66
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !392, !noundef !3
  %.not.i2 = icmp eq i8 %i.ds, -128
  br i1 %.not.i2, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i66, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %.neg11.i ; 2 uses
  %i.du = sub nsw i64 0, %.sroa.04.0.i66
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.w, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.dv = load ptr, ptr %0, align 8, !alias.scope !393, !noalias !394, !nonnull !3, !noundef !3 ; 8 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %.val3.i20 = load i64, ptr %i.dx, align 8, !noalias !395, !noundef !3 ; 3 uses
  %i.dy = icmp ult i64 %.val3.i20, %3
  br i1 %i.dy, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.p
  unreachable

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.y, !noalias !392

bb.r:                                             ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i20
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !395, !noundef !3 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.ea         ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.eb, align 1, !noalias !396
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.ed, 0
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !prof !5

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.r
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %bb.r ], [ %.sroa.0.0.i35, %.lr.ph.i33 ]
  %.lcssa.i29 = phi i16 [ %i.ed, %bb.r ], [ %i.eu, %.lr.ph.i33 ]
  %i.ee = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.0.0.lcssa.i28, %i.ef
  %i.eh = and i64 %i.eg, %.val9                   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !3
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.s, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !prof !4

bb.s:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dv, align 16
  %i.el = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.em, 0
  %i.en = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  tail call void @llvm.assume(i1 %.not.i6.i32)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %bb.r ]
  %i.ep = phi i64 [ %i.eq, %.lr.ph.i33 ], [ 0, %bb.r ]
  %i.eq = add i64 %i.ep, 16                       ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.0.010.i34
  %.sroa.0.0.i35 = and i64 %i.er, %.val9          ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.es, align 1, !noalias !396
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.s, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.eo, %bb.s ], [ %i.eh, %._crit_edge.i27 ] ; 4 uses
  %i.ev = sub i64 %.sroa.04.0.i66, %.sroa.0.07.i24
  %i.ew = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24
  %i.ex = xor i64 %i.ew, %i.ev
  %.unshifted.i = and i64 %i.ex, %.val9
  %i.ey = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ey, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ez = lshr i64 %i.ea, 57
  %i.fa = trunc nuw nsw i64 %i.ez to i8           ; 2 uses
  %i.fb = add i64 %.sroa.04.0.i66, -16
  %i.fc = and i64 %.val9, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i66
  store i8 %i.fa, ptr %i.fd, align 1, !noalias !392
  %i.fe = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  store i8 %i.fa, ptr %i.fg, align 1, !noalias !392
  br label %bb.x

bb.u:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.fh = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !392, !noundef !3
  %i.fk = lshr i64 %i.ea, 57
  %i.fl = trunc nuw nsw i64 %i.fk to i8           ; 2 uses
  %i.fm = add i64 %.sroa.0.0.i5.i30, -16
  %i.fn = and i64 %i.fm, %.val9
  store i8 %i.fl, ptr %i.fi, align 1, !noalias !392
  %i.fo = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fn
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  store i8 %i.fl, ptr %i.fq, align 1, !noalias !392
  %i.fr = icmp eq i8 %i.fj, -1
  br i1 %i.fr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fs = add i64 %.sroa.04.0.i66, -16
  %i.ft = load i64, ptr %i.i, align 8, !noalias !392, !noundef !3
  %i.fu = and i64 %i.ft, %i.fs
  %i.fv = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.sroa.04.0.i66
  store i8 -1, ptr %i.fw, align 1, !noalias !392
  %i.fx = load ptr, ptr %0, align 8, !noalias !392, !nonnull !3, !noundef !3
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fu
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  store i8 -1, ptr %i.fz, align 1, !noalias !392
  %i.ga = load i64, ptr %i.dt, align 1, !noalias !392
  store i64 %i.ga, ptr %i.fh, align 1, !noalias !392
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.fh, i64 noundef 1)
          to label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %.loopexit

bb.x:                                             ; preds = %bb.v, %bb.t, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i66, %i.do
  br i1 %exitcond.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph

bb.y:                                             ; preds = %bb.q
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !392
  unreachable

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.x
  %.pre = load i64, ptr %i.i, align 8, !noalias !392 ; 2 uses
  %.pre99 = add i64 %.pre, 1
  %i.gc = lshr i64 %.pre99, 3
  %i.gd = mul nuw i64 %i.gc, 7
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.gd, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ]
  %i.ge = phi i64 [ %.pre, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 2 uses
  %i.gf = icmp ult i64 %i.ge, 8
  %.sroa.01.0.i = select i1 %i.gf, i64 %i.ge, i64 %.pre-phi
  %i.gg = load i64, ptr %i.e, align 8, !noalias !392, !noundef !3
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gi = sub i64 %.sroa.01.0.i, %i.gg
  store i64 %i.gi, ptr %i.gh, align 8, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !391
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.z:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !noalias !397
  unreachable

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -1, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.gj = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gk = insertvalue { i64, i64 } %i.gj, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gk
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE0EB1U_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !425, !noalias !426, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !425, !noalias !426, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1                          ; 7 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %4, label %bb.z, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit, !prof !4

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !428
  call fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 145) 8, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %4)
  %i.q = load ptr, ptr %i.b, align 8, !noalias !428, !noundef !3 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !428 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !428 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !428
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

bb.f:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.c) #27, !noalias !429
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !428
  store ptr %i.d, ptr %i.c, align 8, !noalias !428
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !428
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !428
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !428
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !428
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !428
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !428
  %i.x = load i64, ptr %i.e, align 8, !alias.scope !430, !noalias !431, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %._crit_edge76, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !alias.scope !430, !noalias !431, !nonnull !3, !noundef !3 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.bh, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.bf, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0
  br i1 %.not.i367, label %.noexc4, label %._crit_edge

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16                ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0
  br i1 %.not.i3, label %.noexc4, label %._crit_edge

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !alias.scope !430, !noalias !431
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !428
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !428
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.h, !noalias !429

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !429
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge76
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  call void @llvm.experimental.noalias.scope.decl(metadata !433), !noalias !429
  %.val.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !434, !noalias !429 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !434, !noalias !429, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !435), !noalias !429
  %i.aj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %i.ak = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !436, !noalias !429, !noundef !3
  %i.al = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !436, !noalias !429, !noundef !3 ; 5 uses
  %i.am = add i64 %.val1.i.i, 1
  %i.an = mul nuw i64 %i.ak, %i.am                ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an                    ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.an
  call void @llvm.assume(i1 %i.aq), !noalias !429
  %i.ar = sub i64 0, %i.al
  %i.as = and i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = add i64 %.val1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = sub nuw i64 -9223372036854775808, %i.al
  %i.ax = icmp ule i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.av), !noalias !429
  call void @llvm.assume(i1 %i.ax), !noalias !429
  %i.ay = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.ay), !noalias !429
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ], !noalias !429
  %i.az = icmp eq i64 %i.au, 0
  br i1 %i.az, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ba = sub nsw i64 0, %i.as
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) %i.al) #29, !noalias !437
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgMW4BsFgQdt_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !428
  br label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ] ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ]
  %i.bc = add i16 %.sroa.13.1.lcssa, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.sroa.13.1.lcssa
  %i.bg = add i64 %.sroa.5.1.lcssa, %i.be         ; 2 uses
  %i.bh = add i64 %.sroa.9.073, -1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.bi = load ptr, ptr %0, align 8, !alias.scope !438, !noalias !439, !nonnull !3, !noundef !3
  %i.bj = sub nsw i64 0, %i.bg
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.val3.i = load i64, ptr %i.bl, align 8, !noalias !440, !noundef !3 ; 3 uses
  %i.bm = icmp ult i64 %.val3.i, %3
  br i1 %i.bm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
          to label %.noexc14 unwind label %bb.f

.noexc14:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !440, !noundef !3 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.bo             ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !441
  %i.bq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.br, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.k
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.0.i15, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.br, %bb.k ], [ %i.ci, %.lr.ph.i ]
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.0.0.lcssa.i, %i.bt
  %i.bv = and i64 %i.bu, %i.t                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !3
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.l, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.l:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.bz = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ca, 0
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ca, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.k ]
  %i.cd = phi i64 [ %i.ce, %.lr.ph.i ], [ 0, %bb.k ]
  %i.ce = add i64 %i.cd, 16                       ; 2 uses
  %i.cf = add i64 %i.ce, %.sroa.0.010.i
  %.sroa.0.0.i15 = and i64 %i.cf, %i.t            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !441
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.l, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cc, %bb.l ], [ %i.bv, %._crit_edge.i ] ; 3 uses
  %i.cj = lshr i64 %i.bo, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8           ; 2 uses
  %i.cl = add i64 %.sroa.0.0.i5.i, -16
  %i.cm = and i64 %i.cl, %i.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  store i8 %i.ck, ptr %i.cn, align 1, !noalias !429
  %i.co = getelementptr i8, ptr %i.q, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  store i8 %i.ck, ptr %i.cp, align 1, !noalias !429
  %i.cq = load ptr, ptr %0, align 8, !alias.scope !430, !noalias !431, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.bg, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.cs = getelementptr inbounds i8, ptr %i.q, i64 %.neg64.i.i
  %i.ct = load i64, ptr %i.cr, align 1, !noalias !429
  store i64 %i.ct, ptr %i.cs, align 1, !noalias !429
  %i.cu = icmp eq i64 %i.bh, 0
  br i1 %i.cu, label %._crit_edge76.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.q, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %.val11 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.l, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.m
  %i.cv = lshr i64 %i.l, 4
  %i.cw = and i64 %i.l, 15
  %.not10.i.i.i = icmp ne i64 %i.cw, 0
  %i.cx = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cv, %i.cx ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cy = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.n

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i16
  %.sroa.01.08.i.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %i.dg, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.cz = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %i.dc = icmp ult i64 %i.l, 16
  br i1 %i.dc, label %._crit_edge.thread.i, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !prof !7

bb.n:                                             ; preds = %bb.n, %.lr.ph.i16.new
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16.new ], [ %i.dg, %bb.n ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %i.dg = add i64 %.sroa.01.08.i, 32              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.di, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.dj = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dk = or <2 x i64> %i.dj, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dk, ptr %i.di, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.m
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !443
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.dm, align 8, !noalias !443
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.dn, align 8, !noalias !443
  store ptr %0, ptr %i.a, align 8, !noalias !443
  %i.do = load i64, ptr %i.i, align 8, !alias.scope !442, !noalias !444, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.do, -1
  br i1 %.not, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.x
  %.sroa.04.0.i66 = phi i64 [ %i.dp, %bb.x ], [ 0, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.dp = add nuw i64 %.sroa.04.0.i66, 1
  %i.dq = load ptr, ptr %0, align 8, !noalias !444, !nonnull !3, !noundef !3 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.04.0.i66
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !444, !noundef !3
  %.not.i2 = icmp eq i8 %i.ds, -128
  br i1 %.not.i2, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i66, -1
  %.neg11.i = shl i64 %.neg.i, 3
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %.neg11.i ; 2 uses
  %i.du = sub nsw i64 0, %.sroa.04.0.i66
  br label %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit

_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.w, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.dv = load ptr, ptr %0, align 8, !alias.scope !445, !noalias !446, !nonnull !3, !noundef !3 ; 8 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %.val3.i20 = load i64, ptr %i.dx, align 8, !noalias !447, !noundef !3 ; 3 uses
  %i.dy = icmp ult i64 %.val3.i20, %3
  br i1 %i.dy, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val3.i20, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.p
  unreachable

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %common.resume unwind label %bb.y, !noalias !444

bb.r:                                             ; preds = %_RNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val3.i20
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !447, !noundef !3 ; 3 uses
  %.val9 = load i64, ptr %i.i, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i24 = and i64 %.val9, %i.ea         ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.07.i24
  %.sroa.0.0.copyload.i68.i25 = load <16 x i8>, ptr %i.eb, align 1, !noalias !448
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i25, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i9.i26 = icmp eq i16 %i.ed, 0
  br i1 %.not.i9.i26, label %.lr.ph.i33, label %._crit_edge.i27, !prof !5

._crit_edge.i27:                                  ; preds = %.lr.ph.i33, %bb.r
  %.sroa.0.0.lcssa.i28 = phi i64 [ %.sroa.0.07.i24, %bb.r ], [ %.sroa.0.0.i35, %.lr.ph.i33 ]
  %.lcssa.i29 = phi i16 [ %i.ed, %bb.r ], [ %i.eu, %.lr.ph.i33 ]
  %i.ee = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i29, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.0.0.lcssa.i28, %i.ef
  %i.eh = and i64 %i.eg, %.val9                   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !3
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.s, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38, !prof !4

bb.s:                                             ; preds = %._crit_edge.i27
  %.val2.i.i31 = load <16 x i8>, ptr %i.dv, align 16
  %i.el = icmp slt <16 x i8> %.val2.i.i31, zeroinitializer
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %.not.i6.i32 = icmp ne i16 %i.em, 0
  %i.en = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  tail call void @llvm.assume(i1 %.not.i6.i32)
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38

.lr.ph.i33:                                       ; preds = %bb.r, %.lr.ph.i33
  %.sroa.0.010.i34 = phi i64 [ %.sroa.0.0.i35, %.lr.ph.i33 ], [ %.sroa.0.07.i24, %bb.r ]
  %i.ep = phi i64 [ %i.eq, %.lr.ph.i33 ], [ 0, %bb.r ]
  %i.eq = add i64 %i.ep, 16                       ; 2 uses
  %i.er = add i64 %i.eq, %.sroa.0.010.i34
  %.sroa.0.0.i35 = and i64 %i.er, %.val9          ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i35
  %.sroa.0.0.copyload.i6.i36 = load <16 x i8>, ptr %i.es, align 1, !noalias !448
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i36, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.i.i37 = icmp eq i16 %i.eu, 0
  br i1 %.not.i.i37, label %.lr.ph.i33, label %._crit_edge.i27, !prof !6

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38: ; preds = %bb.s, %._crit_edge.i27
  %.sroa.0.0.i5.i30 = phi i64 [ %i.eo, %bb.s ], [ %i.eh, %._crit_edge.i27 ] ; 4 uses
  %i.ev = sub i64 %.sroa.04.0.i66, %.sroa.0.07.i24
  %i.ew = sub i64 %.sroa.0.0.i5.i30, %.sroa.0.07.i24
  %i.ex = xor i64 %i.ew, %i.ev
  %.unshifted.i = and i64 %i.ex, %.val9
  %i.ey = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ey, label %bb.t, label %bb.u, !prof !8

bb.t:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %i.ez = lshr i64 %i.ea, 57
  %i.fa = trunc nuw nsw i64 %i.ez to i8           ; 2 uses
  %i.fb = add i64 %.sroa.04.0.i66, -16
  %i.fc = and i64 %.val9, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.04.0.i66
  store i8 %i.fa, ptr %i.fd, align 1, !noalias !444
  %i.fe = load ptr, ptr %0, align 8, !noalias !444, !nonnull !3, !noundef !3
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  store i8 %i.fa, ptr %i.fg, align 1, !noalias !444
  br label %bb.x

bb.u:                                             ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit38
  %.neg12.i = xor i64 %.sroa.0.0.i5.i30, -1
  %.neg13.i = shl i64 %.neg12.i, 3
  %i.fh = getelementptr inbounds i8, ptr %i.dv, i64 %.neg13.i ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sroa.0.0.i5.i30 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !444, !noundef !3
  %i.fk = lshr i64 %i.ea, 57
  %i.fl = trunc nuw nsw i64 %i.fk to i8           ; 2 uses
  %i.fm = add i64 %.sroa.0.0.i5.i30, -16
  %i.fn = and i64 %i.fm, %.val9
  store i8 %i.fl, ptr %i.fi, align 1, !noalias !444
  %i.fo = load ptr, ptr %0, align 8, !noalias !444, !nonnull !3, !noundef !3
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fn
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  store i8 %i.fl, ptr %i.fq, align 1, !noalias !444
  %i.fr = icmp eq i8 %i.fj, -1
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsffXo9NmvYC7_8indexmap5inner8get_hashNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuE0EB1U_:bb.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !471, !noalias !472, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !471, !noalias !472, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !473 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !475
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.m, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i9, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.ac = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 12, 81) 12) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.k, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ag = icmp ugt i64 %i.af, -16
  br i1 %i.ag, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %bb.i
  %i.ah = add nuw i64 %i.af, 12
  %i.ai = and i64 %i.ah, -16                      ; 3 uses
  %i.aj = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ak = add i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  %i.am = icmp ugt i64 %i.ak, 9223372036854775792
  %or.cond.i.i = or i1 %i.al, %i.am
  br i1 %or.cond.i.i, label %bb.k, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.j
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !476
  %i.an = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !476 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.p

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ap = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !476
  br label %bb.n

bb.l:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.aq = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ak), !noalias !476
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.ar = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !477
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.pn = phi { i64, i64 } [ %i.ar, %bb.m ], [ %i.aq, %bb.l ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.o:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !478
  resume { ptr, i32 } %i.as

bb.p:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai ; 3 uses
  %i.au = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.av = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.aw = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ax = mul nuw nsw i64 %i.aw, 7
  %.sroa.07.0.i.i = select i1 %i.av, i64 %i.au, i64 %i.ax ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.at, i8 -1, i64 %i.aj, i1 false), !noalias !477
  store ptr %i.d, ptr %i.a, align 8, !noalias !475
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 12, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !475
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !475
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.at, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !475
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.au, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !475
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !475
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !475
  %i.ay = load i64, ptr %i.e, align 8, !alias.scope !479, !noalias !480, !noundef !3 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.ba = load ptr, ptr %0, align 8, !alias.scope !479, !noalias !480, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.at, %.preheader.lr.ph ], [ %i.dn, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.ba, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.ay, %.preheader.lr.ph ], [ %i.ch, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.bc, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.bd, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bg, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.bd, align 16
  %i.be = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %i.bg = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bf, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !479, !noalias !480
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !475
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.p
  %i.bh = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.p ]
  %i.bi = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.p ] ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !475
  store i64 %i.bi, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !475
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.q, !noalias !478

bb.q:                                             ; preds = %._crit_edge40
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !478
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  call void @llvm.experimental.noalias.scope.decl(metadata !482), !noalias !478
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !483, !noalias !478 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !483, !noalias !478 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !483, !noalias !478, !noundef !3 ; 3 uses
  %i.bl = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !483, !noalias !478
  %i.bm = add i64 %.val3.i.i, 1
  %i.bn = mul nuw i64 %.val.i.i, %i.bm            ; 2 uses
  %i.bo = add i64 %.val1.i.i, -1
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  call void @llvm.assume(i1 %i.bq), !noalias !478
  %i.br = sub i64 0, %.val1.i.i
  %i.bs = and i64 %i.bp, %i.br                    ; 3 uses
  %i.bt = add i64 %.val3.i.i, 17
  %i.bu = add i64 %i.bt, %i.bs                    ; 4 uses
  %i.bv = icmp uge i64 %i.bu, %i.bs
  %i.bw = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bx = icmp ule i64 %i.bu, %i.bw
  call void @llvm.assume(i1 %i.bv), !noalias !478
  call void @llvm.assume(i1 %i.bx), !noalias !478
  %i.by = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.by), !noalias !478
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !478
  %i.bz = icmp eq i64 %i.bu, 0
  br i1 %i.bz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ca = sub nsw i64 0, %i.bs
  %i.cb = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.ca
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !484
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.bf, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bg, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.bd, %.noexc3 ]
  %i.cc = add i16 %.sroa.13.1.lcssa, -1
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = and i16 %i.cc, %.sroa.13.1.lcssa
  %i.cg = add i64 %.sroa.5.1.lcssa, %i.ce         ; 2 uses
  %i.ch = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.ci = load ptr, ptr %i.b, align 8, !alias.scope !485, !noalias !487, !nonnull !3, !align !10, !noundef !3
  %i.cj = load ptr, ptr %0, align 8, !alias.scope !486, !noalias !488, !nonnull !3, !noundef !3
  %i.ck = sub nsw i64 0, %i.cg
  %i.cl = getelementptr inbounds [12 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %.val.i = load ptr, ptr %i.ci, align 8, !noalias !489, !nonnull !3, !noundef !3
  %i.cn = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cm)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit unwind label %bb.o ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cn ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.co, align 1, !noalias !490
  %i.cp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cq, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cq, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit ], [ %i.dh, %.lr.ph.i ]
  %i.cr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = add i64 %.sroa.0.0.lcssa.i, %i.cs
  %i.cu = and i64 %i.ct, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !3
  %i.cx = icmp sgt i8 %i.cw, -1
  br i1 %i.cx, label %bb.s, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.s:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cy = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cz, 0
  %i.da = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cz, i1 true)
  %i.db = zext nneg i16 %i.da to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit ]
  %i.dc = phi i64 [ %i.dd, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit ]
  %i.dd = add i64 %i.dc, 16                       ; 2 uses
  %i.de = add i64 %i.dd, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.de, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.df, align 1, !noalias !490
  %i.dg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dh = bitcast <16 x i1> %i.dg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.s, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.db, %bb.s ], [ %i.cu, %._crit_edge.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.dj = lshr i64 %i.cn, 57
  %i.dk = trunc nuw nsw i64 %i.dj to i8           ; 2 uses
  %i.dl = add i64 %.sroa.0.0.i5.i, -16
  %i.dm = and i64 %i.dl, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dk, ptr %i.di, align 1, !noalias !478
  %i.dn = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !475, !nonnull !3, !noundef !3 ; 3 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dm
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  store i8 %i.dk, ptr %i.dp, align 1, !noalias !478
  %i.dq = load ptr, ptr %0, align 8, !alias.scope !479, !noalias !480, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cg, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 12
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 12
  %i.ds = getelementptr inbounds i8, ptr %i.dn, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ds, ptr noundef nonnull align 1 dereferenceable(12) %i.dr, i64 range(i64 12, 81) 12, i1 false), !noalias !478
  %i.dt = icmp eq i64 %i.ch, 0
  br i1 %i.dt, label %._crit_edge40.loopexit, label %.preheader

bb.t:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_, i64 noundef 12, ptr noundef null)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.t
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.t ], [ %.sroa.12.0.ph, %bb.n ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.t ], [ %.sroa.7.0.ph, %bb.n ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.du = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dv = insertvalue { i64, i64 } %i.du, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE7reserveNCINvNtB8_3map11make_hasherBQ_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1j_E0EBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !514, !noalias !515, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !514, !noalias !515, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.h, align 1, !noalias !516 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsC8CapfvpQ1_5salsa2id2IdINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !noalias !517
  br i1 %i.r, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1j_E0EBU_.exit, label %bb.c, !prof !8

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !4

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i33.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i33.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1j_E0EBU_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %.idx.neg = mul i64 %i.n, 24
  %i.z = sdiv exact i64 %.idx.neg, 24             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !521
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !522
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i, splat (i8 -1)
end_hunk_1
begin_hunk_2_@_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1j_E0EBU_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBT_8function4sync9SyncStateEE6removeBT_.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1j_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !547, !noalias !548, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !547, !noalias !548, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !549 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !551
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i9, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.ac = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 12, 81) 24) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = add nuw i64 %i.af, 8
  %i.ah = and i64 %i.ag, -16                      ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = icmp ugt i64 %i.aj, 9223372036854775792
  %or.cond.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !552
  %i.am = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !552 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !552
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aj), !noalias !552
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.aq = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !553
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ap, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !551
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !554
  resume { ptr, i32 } %i.ar

bb.o:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 3 uses
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.av = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aw = mul nuw nsw i64 %i.av, 7
  %.sroa.07.0.i.i = select i1 %i.au, i64 %i.at, i64 %i.aw ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.as, i8 -1, i64 %i.ai, i1 false), !noalias !553
  store ptr %i.d, ptr %i.a, align 8, !noalias !551
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !551
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !551
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.as, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !551
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !551
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !551
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !551
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !555, !noalias !556, !noundef !3 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.az = load ptr, ptr %0, align 8, !alias.scope !555, !noalias !556, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.dm, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.ax, %.preheader.lr.ph ], [ %i.cg, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.bb, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.bc, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bf, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.be, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !555, !noalias !556
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !551
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.o
  %i.bg = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bh = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !551
  store i64 %i.bh, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !551
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.p, !noalias !554

bb.p:                                             ; preds = %._crit_edge40
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !554
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !558), !noalias !554
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !559, !noalias !554 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !559, !noalias !554 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !559, !noalias !554, !noundef !3 ; 3 uses
  %i.bk = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !559, !noalias !554
  %i.bl = add i64 %.val3.i.i, 1
  %i.bm = mul nuw i64 %.val.i.i, %i.bl            ; 2 uses
  %i.bn = add i64 %.val1.i.i, -1
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  call void @llvm.assume(i1 %i.bp), !noalias !554
  %i.bq = sub i64 0, %.val1.i.i
  %i.br = and i64 %i.bo, %i.bq                    ; 3 uses
  %i.bs = add i64 %.val3.i.i, 17
  %i.bt = add i64 %i.bs, %i.br                    ; 4 uses
  %i.bu = icmp uge i64 %i.bt, %i.br
  %i.bv = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bw = icmp ule i64 %i.bt, %i.bv
  call void @llvm.assume(i1 %i.bu), !noalias !554
  call void @llvm.assume(i1 %i.bw), !noalias !554
  %i.bx = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bx), !noalias !554
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !554
  %i.by = icmp eq i64 %i.bt, 0
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bz = sub nsw i64 0, %i.br
  %i.ca = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bz
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !560
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !551
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.be, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bf, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.bc, %.noexc3 ]
  %i.cb = add i16 %.sroa.13.1.lcssa, -1
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = and i16 %i.cb, %.sroa.13.1.lcssa
  %i.cf = add i64 %.sroa.5.1.lcssa, %i.cd         ; 2 uses
  %i.cg = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.ch = load ptr, ptr %i.b, align 8, !alias.scope !561, !noalias !563, !nonnull !3, !align !10, !noundef !3
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !562, !noalias !564, !nonnull !3, !noundef !3
  %i.cj = sub nsw i64 0, %i.cf
  %i.ck = getelementptr inbounds [24 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -24
  %.val.i = load ptr, ptr %i.ch, align 8, !noalias !565, !nonnull !3, !noundef !3
  %i.cm = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa2id2IdEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cm ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !566
  %i.co = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cp, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %i.dg, %.lr.ph.i ]
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.0.0.lcssa.i, %i.cr
  %i.ct = and i64 %i.cs, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !3
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.r, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cx = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cy, 0
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.db = phi i64 [ %i.dc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.dc = add i64 %i.db, 16                       ; 2 uses
  %i.dd = add i64 %i.dc, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.dd, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.de, align 1, !noalias !566
  %i.df = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.da, %bb.r ], [ %i.ct, %._crit_edge.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.di = lshr i64 %i.cm, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8           ; 2 uses
  %i.dk = add i64 %.sroa.0.0.i5.i, -16
  %i.dl = and i64 %i.dk, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dj, ptr %i.dh, align 1, !noalias !554
  %i.dm = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !551, !nonnull !3, !noundef !3 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store i8 %i.dj, ptr %i.do, align 1, !noalias !554
  %i.dp = load ptr, ptr %0, align 8, !alias.scope !555, !noalias !556, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dr, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 range(i64 12, 81) 24, i1 false), !noalias !554
  %i.ds = icmp eq i64 %i.cg, 0
  br i1 %i.ds, label %._crit_edge40.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_, i64 noundef 24, ptr noundef null)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE7reserveNCINvNtB8_3map11make_hasherBQ_B1j_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBU_8function4sync9SyncStateEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1j_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !590, !noalias !591, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !590, !noalias !591, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.h, align 1, !noalias !592 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 3 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [64 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -64 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q), !noalias !593
  br i1 %i.r, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_.exit, label %bb.c, !prof !8

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !4

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i33.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i33.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.z = add nsw i64 %i.n, -16
  %i.aa = and i64 %i.z, %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !597
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !598
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ad, i1 false)
end_hunk_2
begin_hunk_3_@_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE6removeBT_.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !623, !noalias !624, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !623, !noalias !624, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !625 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !627
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.j, label %bb.f, !prof !4

.thread:                                          ; preds = %bb.d
  %i.v = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.w = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.w, 8
  %.sroa.03.0.i.i = select i1 %i.v, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %.sroa.0.0.i9, 3
  %i.y = udiv i64 %i.x, 7
  %i.z = add nsw i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa                      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = icmp ugt i64 %i.ab, 288230376151711742
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i56 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph.i56, 6      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i56, 16 ; 2 uses
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !628
  %i.aj = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !628 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !628
  br label %bb.k

bb.i:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !628
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !629
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !627
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !630
  resume { ptr, i32 } %i.ao

bb.m:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i56, -1     ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i56, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i56, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.af, i1 false), !noalias !629
  store ptr %i.d, ptr %i.a, align 8, !noalias !627
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !627
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !627
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !627
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !627
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !627
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !627
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !631, !noalias !632, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.m
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !631, !noalias !632, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.dj, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.az, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bc, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bb, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !631, !noalias !632
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !627
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.m
  %i.bd = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.m ]
  %i.be = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.m ] ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !627
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !627
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.n, !noalias !630

bb.n:                                             ; preds = %._crit_edge40
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !630
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634), !noalias !630
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !635, !noalias !630 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !635, !noalias !630 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !635, !noalias !630, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !635, !noalias !630
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !630
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !630
  call void @llvm.assume(i1 %i.bt), !noalias !630
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !630
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !630
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !636
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !627
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.bb, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bc, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.az, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !637, !noalias !639, !nonnull !3, !align !10, !noundef !3
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !638, !noalias !640, !nonnull !3, !noundef !3
  %i.cg = sub nsw i64 0, %i.cc
  %i.ch = getelementptr inbounds [64 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -64
  %.val.i = load ptr, ptr %i.ce, align 8, !noalias !641, !nonnull !3, !noundef !3
  %i.cj = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ci)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit unwind label %bb.l ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cj ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !642
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !3
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cu = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.da, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !642
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dg, ptr %i.de, align 1, !noalias !630
  %i.dj = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !627, !nonnull !3, !noundef !3 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i8 %i.dg, ptr %i.dl, align 1, !noalias !630
  %i.dm = load ptr, ptr %0, align 8, !alias.scope !631, !noalias !632, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 6
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 6
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.do, ptr noundef nonnull align 1 dereferenceable(64) %i.dn, i64 range(i64 12, 81) 64, i1 false), !noalias !630
  %i.dp = icmp eq i64 %i.cd, 0
  br i1 %i.dp, label %._crit_edge40.loopexit, label %.preheader

bb.q:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_, i64 noundef 64, ptr noundef nonnull @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1E_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceBZ_)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.q
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.q ], [ %.sroa.12.0.ph, %bb.k ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.q ], [ %.sroa.7.0.ph, %bb.k ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dr = insertvalue { i64, i64 } %i.dq, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !666, !noalias !667, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !666, !noalias !667, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.h, align 1, !noalias !668 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [80 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -80 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.q), !noalias !669
  br i1 %i.r, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_.exit, label %bb.c, !prof !8

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !4

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i33.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i33.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %.idx.neg = mul i64 %i.n, 80
  %i.z = sdiv exact i64 %.idx.neg, 80             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !673
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !674
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i, splat (i8 -1)
end_hunk_3
begin_hunk_4_@_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBT_7runtime16dependency_graph8SmallSetBP_Kj4_EEE6removeBT_.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !699, !noalias !700, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !699, !noalias !700, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !701 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !703
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i9, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.ac = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 12, 81) 80) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 3 uses
  %i.ag = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ah = add i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775792
  %or.cond.i.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !704
  %i.ak = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !704 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !704
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ah), !noalias !704
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.ao = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !705
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.ao, %bb.l ], [ %i.an, %bb.k ], [ %i.am, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !703
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !706
  resume { ptr, i32 } %i.ap

bb.o:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 3 uses
  %i.ar = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.as = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.at = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.au = mul nuw nsw i64 %i.at, 7
  %.sroa.07.0.i.i = select i1 %i.as, i64 %i.ar, i64 %i.au ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ag, i1 false), !noalias !705
  store ptr %i.d, ptr %i.a, align 8, !noalias !703
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 80, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !703
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !703
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !703
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.ar, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !703
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !703
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !703
  %i.av = load i64, ptr %i.e, align 8, !alias.scope !707, !noalias !708, !noundef !3 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.ax = load ptr, ptr %0, align 8, !alias.scope !707, !noalias !708, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %i.dk, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.av, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.az, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.ba, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bd, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %i.bd = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !707, !noalias !708
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !703
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.o
  %i.be = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bf = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  store i64 %i.bg, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !703
  store i64 %i.bf, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !703
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.p, !noalias !706

bb.p:                                             ; preds = %._crit_edge40
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !706
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  call void @llvm.experimental.noalias.scope.decl(metadata !710), !noalias !706
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !711, !noalias !706 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !711, !noalias !706 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !711, !noalias !706, !noundef !3 ; 3 uses
  %i.bi = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !711, !noalias !706
  %i.bj = add i64 %.val3.i.i, 1
  %i.bk = mul nuw i64 %.val.i.i, %i.bj            ; 2 uses
  %i.bl = add i64 %.val1.i.i, -1
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bk
  call void @llvm.assume(i1 %i.bn), !noalias !706
  %i.bo = sub i64 0, %.val1.i.i
  %i.bp = and i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = add i64 %.val3.i.i, 17
  %i.br = add i64 %i.bq, %i.bp                    ; 4 uses
  %i.bs = icmp uge i64 %i.br, %i.bp
  %i.bt = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bu = icmp ule i64 %i.br, %i.bt
  call void @llvm.assume(i1 %i.bs), !noalias !706
  call void @llvm.assume(i1 %i.bu), !noalias !706
  %i.bv = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bv), !noalias !706
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !706
  %i.bw = icmp eq i64 %i.br, 0
  br i1 %i.bw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bx = sub nsw i64 0, %i.bp
  %i.by = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bx
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !712
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !703
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.bc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.ba, %.noexc3 ]
  %i.bz = add i16 %.sroa.13.1.lcssa, -1
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = and i16 %i.bz, %.sroa.13.1.lcssa
  %i.cd = add i64 %.sroa.5.1.lcssa, %i.cb         ; 2 uses
  %i.ce = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %i.cf = load ptr, ptr %i.b, align 8, !alias.scope !713, !noalias !715, !nonnull !3, !align !10, !noundef !3
  %i.cg = load ptr, ptr %0, align 8, !alias.scope !714, !noalias !716, !nonnull !3, !noundef !3
  %i.ch = sub nsw i64 0, %i.cd
  %i.ci = getelementptr inbounds [80 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -80
  %.val.i = load ptr, ptr %i.cf, align 8, !noalias !717, !nonnull !3, !noundef !3
  %i.ck = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cj)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.ck ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !718
  %i.cm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cn, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %i.de, %.lr.ph.i ]
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.0.0.lcssa.i, %i.cp
  %i.cr = and i64 %i.cq, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !3
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %bb.r, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cv = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cw = bitcast <16 x i1> %i.cv to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cw, 0
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cw, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.cz = phi i64 [ %i.da, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.da = add i64 %i.cz, 16                       ; 2 uses
  %i.db = add i64 %i.da, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.db, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.dc, align 1, !noalias !718
  %i.dd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.de = bitcast <16 x i1> %i.dd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.de, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cy, %bb.r ], [ %i.cr, %._crit_edge.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.dg = lshr i64 %i.ck, 57
  %i.dh = trunc nuw nsw i64 %i.dg to i8           ; 2 uses
  %i.di = add i64 %.sroa.0.0.i5.i, -16
  %i.dj = and i64 %i.di, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dh, ptr %i.df, align 1, !noalias !706
  %i.dk = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !703, !nonnull !3, !noundef !3 ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.dj
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  store i8 %i.dh, ptr %i.dm, align 1, !noalias !706
  %i.dn = load ptr, ptr %0, align 8, !alias.scope !707, !noalias !708, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cd, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 80
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 80
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.dp, ptr noundef nonnull align 1 dereferenceable(80) %i.do, i64 range(i64 12, 81) 80, i1 false), !noalias !706
  %i.dq = icmp eq i64 %i.ce, 0
  br i1 %i.dq, label %._crit_edge40.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_, i64 noundef 80, ptr noundef nonnull @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1E_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceBZ_)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dr = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.ds = insertvalue { i64, i64 } %i.dr, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.ds
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBU_7runtime16dependency_graph8SmallSetBQ_Kj4_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !742, !noalias !743, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !742, !noalias !743, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.h, align 1, !noalias !744 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -40 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q), !noalias !745
  br i1 %i.r, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_.exit, label %bb.c, !prof !8

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !4

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i33.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i33.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %.idx.neg = mul i64 %i.n, 40
  %i.z = sdiv exact i64 %.idx.neg, 40             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !749
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !750
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i, splat (i8 -1)
end_hunk_4
begin_hunk_5_@_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1z_E0EBU_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBP_EEE6removeBT_.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !775, !noalias !776, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !775, !noalias !776, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !777 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !779
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i9, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.ac = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 12, 81) 40) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = add nuw i64 %i.af, 8
  %i.ah = and i64 %i.ag, -16                      ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = icmp ugt i64 %i.aj, 9223372036854775792
  %or.cond.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !780
  %i.am = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !780 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !780
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aj), !noalias !780
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.aq = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !781
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ap, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !779
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !782
  resume { ptr, i32 } %i.ar

bb.o:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 3 uses
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.av = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aw = mul nuw nsw i64 %i.av, 7
  %.sroa.07.0.i.i = select i1 %i.au, i64 %i.at, i64 %i.aw ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.as, i8 -1, i64 %i.ai, i1 false), !noalias !781
  store ptr %i.d, ptr %i.a, align 8, !noalias !779
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !779
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !779
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.as, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !779
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !779
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !779
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !779
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !783, !noalias !784, !noundef !3 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.az = load ptr, ptr %0, align 8, !alias.scope !783, !noalias !784, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.dm, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.ax, %.preheader.lr.ph ], [ %i.cg, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.bb, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.bc, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bf, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.be, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !783, !noalias !784
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !779
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.o
  %i.bg = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bh = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !779
  store i64 %i.bh, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !779
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.p, !noalias !782

bb.p:                                             ; preds = %._crit_edge40
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !782
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !786), !noalias !782
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !787, !noalias !782 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !787, !noalias !782 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !787, !noalias !782, !noundef !3 ; 3 uses
  %i.bk = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !787, !noalias !782
  %i.bl = add i64 %.val3.i.i, 1
  %i.bm = mul nuw i64 %.val.i.i, %i.bl            ; 2 uses
  %i.bn = add i64 %.val1.i.i, -1
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  call void @llvm.assume(i1 %i.bp), !noalias !782
  %i.bq = sub i64 0, %.val1.i.i
  %i.br = and i64 %i.bo, %i.bq                    ; 3 uses
  %i.bs = add i64 %.val3.i.i, 17
  %i.bt = add i64 %i.bs, %i.br                    ; 4 uses
  %i.bu = icmp uge i64 %i.bt, %i.br
  %i.bv = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bw = icmp ule i64 %i.bt, %i.bv
  call void @llvm.assume(i1 %i.bu), !noalias !782
  call void @llvm.assume(i1 %i.bw), !noalias !782
  %i.bx = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bx), !noalias !782
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !782
  %i.by = icmp eq i64 %i.bt, 0
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bz = sub nsw i64 0, %i.br
  %i.ca = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bz
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !788
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !779
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.be, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bf, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.bc, %.noexc3 ]
  %i.cb = add i16 %.sroa.13.1.lcssa, -1
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = and i16 %i.cb, %.sroa.13.1.lcssa
  %i.cf = add i64 %.sroa.5.1.lcssa, %i.cd         ; 2 uses
  %i.cg = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.ch = load ptr, ptr %i.b, align 8, !alias.scope !789, !noalias !791, !nonnull !3, !align !10, !noundef !3
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !790, !noalias !792, !nonnull !3, !noundef !3
  %i.cj = sub nsw i64 0, %i.cf
  %i.ck = getelementptr inbounds [40 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -40
  %.val.i = load ptr, ptr %i.ch, align 8, !noalias !793, !nonnull !3, !noundef !3
  %i.cm = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cl)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cm ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !794
  %i.co = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cp, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %i.dg, %.lr.ph.i ]
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.0.0.lcssa.i, %i.cr
  %i.ct = and i64 %i.cs, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !3
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.r, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cx = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cy, 0
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.db = phi i64 [ %i.dc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.dc = add i64 %i.db, 16                       ; 2 uses
  %i.dd = add i64 %i.dc, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.dd, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.de, align 1, !noalias !794
  %i.df = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.da, %bb.r ], [ %i.ct, %._crit_edge.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.di = lshr i64 %i.cm, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8           ; 2 uses
  %i.dk = add i64 %.sroa.0.0.i5.i, -16
  %i.dl = and i64 %i.dk, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dj, ptr %i.dh, align 1, !noalias !782
  %i.dm = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !779, !nonnull !3, !noundef !3 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store i8 %i.dj, ptr %i.do, align 1, !noalias !782
  %i.dp = load ptr, ptr %0, align 8, !alias.scope !783, !noalias !784, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 40
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 40
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.dr, ptr noundef nonnull align 1 dereferenceable(40) %i.dq, i64 range(i64 12, 81) 40, i1 false), !noalias !782
  %i.ds = icmp eq i64 %i.cg, 0
  br i1 %i.ds, label %._crit_edge40.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_, i64 noundef 40, ptr noundef null)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBQ_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !816, !noalias !817, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !816, !noalias !817, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !818 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !820
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.m, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i9, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.ac = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 12, 81) 12) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.k, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ag = icmp ugt i64 %i.af, -16
  br i1 %i.ag, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %bb.i
  %i.ah = add nuw i64 %i.af, 12
  %i.ai = and i64 %i.ah, -16                      ; 3 uses
  %i.aj = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ak = add i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  %i.am = icmp ugt i64 %i.ak, 9223372036854775792
  %or.cond.i.i = or i1 %i.al, %i.am
  br i1 %or.cond.i.i, label %bb.k, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.j
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !821
  %i.an = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !821 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.p

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ap = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !821
  br label %bb.n

bb.l:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.aq = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ak), !noalias !821
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  %i.ar = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !822
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.pn = phi { i64, i64 } [ %i.ar, %bb.m ], [ %i.aq, %bb.l ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !820
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.o:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !823
  resume { ptr, i32 } %i.as

bb.p:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ai ; 3 uses
  %i.au = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.av = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.aw = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ax = mul nuw nsw i64 %i.aw, 7
  %.sroa.07.0.i.i = select i1 %i.av, i64 %i.au, i64 %i.ax ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.at, i8 -1, i64 %i.aj, i1 false), !noalias !822
  store ptr %i.d, ptr %i.a, align 8, !noalias !820
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 12, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !820
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !820
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.at, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !820
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.au, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !820
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !820
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !820
  %i.ay = load i64, ptr %i.e, align 8, !alias.scope !824, !noalias !825, !noundef !3 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.ba = load ptr, ptr %0, align 8, !alias.scope !824, !noalias !825, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.ba, align 16
  %i.bb = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.bc = bitcast <16 x i1> %i.bb to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.at, %.preheader.lr.ph ], [ %i.dn, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.ba, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.ay, %.preheader.lr.ph ], [ %i.ch, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.bc, %.preheader.lr.ph ], [ %i.cf, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.bd, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bg, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.bd, align 16
  %i.be = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %i.bg = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bf, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !824, !noalias !825
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !820
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.p
  %i.bh = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.p ]
  %i.bi = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.p ] ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !820
  store i64 %i.bi, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !820
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.q, !noalias !823

bb.q:                                             ; preds = %._crit_edge40
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !823
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  call void @llvm.experimental.noalias.scope.decl(metadata !827), !noalias !823
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !828, !noalias !823 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !828, !noalias !823 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !828, !noalias !823, !noundef !3 ; 3 uses
  %i.bl = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !828, !noalias !823
  %i.bm = add i64 %.val3.i.i, 1
  %i.bn = mul nuw i64 %.val.i.i, %i.bm            ; 2 uses
  %i.bo = add i64 %.val1.i.i, -1
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  call void @llvm.assume(i1 %i.bq), !noalias !823
  %i.br = sub i64 0, %.val1.i.i
  %i.bs = and i64 %i.bp, %i.br                    ; 3 uses
  %i.bt = add i64 %.val3.i.i, 17
  %i.bu = add i64 %i.bt, %i.bs                    ; 4 uses
  %i.bv = icmp uge i64 %i.bu, %i.bs
  %i.bw = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bx = icmp ule i64 %i.bu, %i.bw
  call void @llvm.assume(i1 %i.bv), !noalias !823
  call void @llvm.assume(i1 %i.bx), !noalias !823
  %i.by = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.by), !noalias !823
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !823
  %i.bz = icmp eq i64 %i.bu, 0
  br i1 %i.bz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ca = sub nsw i64 0, %i.bs
  %i.cb = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.ca
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !829
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !820
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.bf, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bg, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.bd, %.noexc3 ]
  %i.cc = add i16 %.sroa.13.1.lcssa, -1
  %i.cd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = and i16 %i.cc, %.sroa.13.1.lcssa
  %i.cg = add i64 %.sroa.5.1.lcssa, %i.ce         ; 2 uses
  %i.ch = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.ci = load ptr, ptr %i.b, align 8, !alias.scope !830, !noalias !832, !nonnull !3, !align !10, !noundef !3
  %i.cj = load ptr, ptr %0, align 8, !alias.scope !831, !noalias !833, !nonnull !3, !noundef !3
  %i.ck = sub nsw i64 0, %i.cg
  %i.cl = getelementptr inbounds [12 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -12
  %.val.i = load ptr, ptr %i.ci, align 8, !noalias !834, !nonnull !3, !noundef !3
  %i.cn = invoke noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cm)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit unwind label %bb.o ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cn ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.co, align 1, !noalias !835
  %i.cp = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cq, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cq, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit ], [ %i.dh, %.lr.ph.i ]
  %i.cr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = add i64 %.sroa.0.0.lcssa.i, %i.cs
  %i.cu = and i64 %i.ct, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !3
  %i.cx = icmp sgt i8 %i.cw, -1
  br i1 %i.cx, label %bb.s, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.s:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cy = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cz, 0
  %i.da = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cz, i1 true)
  %i.db = zext nneg i16 %i.da to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit ]
  %i.dc = phi i64 [ %i.dd, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_.exit ]
  %i.dd = add i64 %i.dc, 16                       ; 2 uses
  %i.de = add i64 %i.dd, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.de, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.df, align 1, !noalias !835
  %i.dg = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dh = bitcast <16 x i1> %i.dg to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.s, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.db, %bb.s ], [ %i.cu, %._crit_edge.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.dj = lshr i64 %i.cn, 57
  %i.dk = trunc nuw nsw i64 %i.dj to i8           ; 2 uses
  %i.dl = add i64 %.sroa.0.0.i5.i, -16
  %i.dm = and i64 %i.dl, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dk, ptr %i.di, align 1, !noalias !823
  %i.dn = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !820, !nonnull !3, !noundef !3 ; 3 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dm
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  store i8 %i.dk, ptr %i.dp, align 1, !noalias !823
  %i.dq = load ptr, ptr %0, align 8, !alias.scope !824, !noalias !825, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cg, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 12
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 12
  %i.ds = getelementptr inbounds i8, ptr %i.dn, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ds, ptr noundef nonnull align 1 dereferenceable(12) %i.dr, i64 range(i64 12, 81) 12, i1 false), !noalias !823
  %i.dt = icmp eq i64 %i.ch, 0
  br i1 %i.dt, label %._crit_edge40.loopexit, label %.preheader

bb.t:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_, i64 noundef 12, ptr noundef null)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.t
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.t ], [ %.sroa.12.0.ph, %bb.n ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.t ], [ %.sroa.7.0.ph, %bb.n ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.du = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dv = insertvalue { i64, i64 } %i.du, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE7reserveNCINvNtB8_3map11make_hasherBQ_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBU_5table9PageIndexEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !857, !noalias !858, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !857, !noalias !858, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !859 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !861
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.j, label %bb.f, !prof !4

.thread:                                          ; preds = %bb.d
  %i.v = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.w = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.w, 8
  %.sroa.03.0.i.i = select i1 %i.v, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %.sroa.0.0.i9, 3
  %i.y = udiv i64 %i.x, 7
  %i.z = add nsw i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa                      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = icmp ugt i64 %i.ab, 576460752303423486
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i56 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph.i56, 5      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i56, 16 ; 2 uses
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !862
  %i.aj = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !862 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !862
  br label %bb.k

bb.i:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !862
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !863
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !861
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !864
  resume { ptr, i32 } %i.ao

bb.m:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i56, -1     ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i56, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i56, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.af, i1 false), !noalias !863
  store ptr %i.d, ptr %i.a, align 8, !noalias !861
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !861
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !861
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !861
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !861
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !861
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !861
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !865, !noalias !866, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.m
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !865, !noalias !866, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.dj, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.az, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bc, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bb, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !865, !noalias !866
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !861
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.m
  %i.bd = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.m ]
  %i.be = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.m ] ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !861
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !861
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.n, !noalias !864

bb.n:                                             ; preds = %._crit_edge40
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !864
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  call void @llvm.experimental.noalias.scope.decl(metadata !868), !noalias !864
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !869, !noalias !864 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !869, !noalias !864 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !869, !noalias !864, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !869, !noalias !864
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !864
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !864
  call void @llvm.assume(i1 %i.bt), !noalias !864
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !864
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !864
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !870
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !861
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.bb, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bc, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.az, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !871, !noalias !873, !nonnull !3, !align !10, !noundef !3
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !872, !noalias !874, !nonnull !3, !noundef !3
  %i.cg = sub nsw i64 0, %i.cc
  %i.ch = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %.val.i = load ptr, ptr %i.ce, align 8, !noalias !875, !nonnull !3, !noundef !3
  %i.cj = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ci)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit unwind label %bb.l ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cj ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !876
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !3
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cu = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.da, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !876
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dg, ptr %i.de, align 1, !noalias !864
  %i.dj = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !861, !nonnull !3, !noundef !3 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i8 %i.dg, ptr %i.dl, align 1, !noalias !864
  %i.dm = load ptr, ptr %0, align 8, !alias.scope !865, !noalias !866, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 5
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 5
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.do, ptr noundef nonnull align 1 dereferenceable(32) %i.dn, i64 range(i64 12, 81) 32, i1 false), !noalias !864
  %i.dp = icmp eq i64 %i.cd, 0
  br i1 %i.dp, label %._crit_edge40.loopexit, label %.preheader

bb.q:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_, i64 noundef 32, ptr noundef nonnull @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1F_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceBZ_)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.q
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.q ], [ %.sroa.12.0.ph, %bb.k ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.q ], [ %.sroa.7.0.ph, %bb.k ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dr = insertvalue { i64, i64 } %i.dq, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBU_5table9PageIndexEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBU_5table9PageIndexEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !898, !noalias !899, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !898, !noalias !899, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !900 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !902
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.j, label %bb.f, !prof !4

.thread:                                          ; preds = %bb.d
  %i.v = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.w = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.w, 8
  %.sroa.03.0.i.i = select i1 %i.v, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %.sroa.0.0.i9, 3
  %i.y = udiv i64 %i.x, 7
  %i.z = add nsw i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa                      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = icmp ugt i64 %i.ab, 576460752303423486
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i56 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph.i56, 5      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i56, 16 ; 2 uses
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !903
  %i.aj = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !903 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !903
  br label %bb.k

bb.i:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !903
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !904
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !902
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !905
  resume { ptr, i32 } %i.ao

bb.m:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i56, -1     ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i56, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i56, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.af, i1 false), !noalias !904
  store ptr %i.d, ptr %i.a, align 8, !noalias !902
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !902
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !902
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !902
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !902
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !902
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !902
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !906, !noalias !907, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.m
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !906, !noalias !907, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.dj, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.az, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bc, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bb, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !906, !noalias !907
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !902
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.m
  %i.bd = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.m ]
  %i.be = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.m ] ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !902
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !902
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.n, !noalias !905

bb.n:                                             ; preds = %._crit_edge40
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !905
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !909), !noalias !905
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !910, !noalias !905 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !910, !noalias !905 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !910, !noalias !905, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !910, !noalias !905
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !905
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !905
  call void @llvm.assume(i1 %i.bt), !noalias !905
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !905
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !905
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !911
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !902
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.bb, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bc, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.az, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !912, !noalias !914, !nonnull !3, !align !10, !noundef !3
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !913, !noalias !915, !nonnull !3, !noundef !3
  %i.cg = sub nsw i64 0, %i.cc
  %i.ch = getelementptr inbounds [32 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %.val.i = load ptr, ptr %i.ce, align 8, !noalias !916, !nonnull !3, !noundef !3
  %i.cj = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ci)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit unwind label %bb.l ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cj ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !917
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !3
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cu = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.da, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !917
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dg, ptr %i.de, align 1, !noalias !905
  %i.dj = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !902, !nonnull !3, !noundef !3 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i8 %i.dg, ptr %i.dl, align 1, !noalias !905
  %i.dm = load ptr, ptr %0, align 8, !alias.scope !906, !noalias !907, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 5
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 5
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.do, ptr noundef nonnull align 1 dereferenceable(32) %i.dn, i64 range(i64 12, 81) 32, i1 false), !noalias !905
  %i.dp = icmp eq i64 %i.cd, 0
  br i1 %i.dp, label %._crit_edge40.loopexit, label %.preheader

bb.q:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_, i64 noundef 32, ptr noundef nonnull @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1F_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceBZ_)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.q
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.q ], [ %.sroa.12.0.ph, %bb.k ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.q ], [ %.sroa.7.0.ph, %bb.k ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dr = insertvalue { i64, i64 } %i.dq, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !939, !noalias !940, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !939, !noalias !940, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !941 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !943
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i9, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.ac = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 12, 81) 24) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = add nuw i64 %i.af, 8
  %i.ah = and i64 %i.ag, -16                      ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = icmp ugt i64 %i.aj, 9223372036854775792
  %or.cond.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !944
  %i.am = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !944 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !944
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aj), !noalias !944
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.aq = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !945
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ap, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !943
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !946
  resume { ptr, i32 } %i.ar

bb.o:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 3 uses
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.av = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aw = mul nuw nsw i64 %i.av, 7
  %.sroa.07.0.i.i = select i1 %i.au, i64 %i.at, i64 %i.aw ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.as, i8 -1, i64 %i.ai, i1 false), !noalias !945
  store ptr %i.d, ptr %i.a, align 8, !noalias !943
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !943
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !943
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.as, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !943
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !943
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !943
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !943
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !947, !noalias !948, !noundef !3 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.az = load ptr, ptr %0, align 8, !alias.scope !947, !noalias !948, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.dm, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.ax, %.preheader.lr.ph ], [ %i.cg, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.bb, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.bc, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bf, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.be, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !947, !noalias !948
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !943
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.o
  %i.bg = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bh = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !943
  store i64 %i.bh, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !943
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.p, !noalias !946

bb.p:                                             ; preds = %._crit_edge40
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !946
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.experimental.noalias.scope.decl(metadata !950), !noalias !946
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !951, !noalias !946 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !951, !noalias !946 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !951, !noalias !946, !noundef !3 ; 3 uses
  %i.bk = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !951, !noalias !946
  %i.bl = add i64 %.val3.i.i, 1
  %i.bm = mul nuw i64 %.val.i.i, %i.bl            ; 2 uses
  %i.bn = add i64 %.val1.i.i, -1
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  call void @llvm.assume(i1 %i.bp), !noalias !946
  %i.bq = sub i64 0, %.val1.i.i
  %i.br = and i64 %i.bo, %i.bq                    ; 3 uses
  %i.bs = add i64 %.val3.i.i, 17
  %i.bt = add i64 %i.bs, %i.br                    ; 4 uses
  %i.bu = icmp uge i64 %i.bt, %i.br
  %i.bv = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bw = icmp ule i64 %i.bt, %i.bv
  call void @llvm.assume(i1 %i.bu), !noalias !946
  call void @llvm.assume(i1 %i.bw), !noalias !946
  %i.bx = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bx), !noalias !946
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !946
  %i.by = icmp eq i64 %i.bt, 0
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bz = sub nsw i64 0, %i.br
  %i.ca = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bz
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !952
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !943
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.be, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bf, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.bc, %.noexc3 ]
  %i.cb = add i16 %.sroa.13.1.lcssa, -1
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = and i16 %i.cb, %.sroa.13.1.lcssa
  %i.cf = add i64 %.sroa.5.1.lcssa, %i.cd         ; 2 uses
  %i.cg = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.ch = load ptr, ptr %i.b, align 8, !alias.scope !953, !noalias !955, !nonnull !3, !align !10, !noundef !3
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !954, !noalias !956, !nonnull !3, !noundef !3
  %i.cj = sub nsw i64 0, %i.cf
  %i.ck = getelementptr inbounds [24 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -24
  %.val.i = load ptr, ptr %i.ch, align 8, !noalias !957, !nonnull !3, !noundef !3
  %i.cm = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cm ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !958
  %i.co = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cp, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %i.dg, %.lr.ph.i ]
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.0.0.lcssa.i, %i.cr
  %i.ct = and i64 %i.cs, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !3
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.r, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cx = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cy, 0
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.db = phi i64 [ %i.dc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.dc = add i64 %i.db, 16                       ; 2 uses
  %i.dd = add i64 %i.dc, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.dd, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.de, align 1, !noalias !958
  %i.df = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.da, %bb.r ], [ %i.ct, %._crit_edge.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.di = lshr i64 %i.cm, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8           ; 2 uses
  %i.dk = add i64 %.sroa.0.0.i5.i, -16
  %i.dl = and i64 %i.dk, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dj, ptr %i.dh, align 1, !noalias !946
  %i.dm = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !943, !nonnull !3, !noundef !3 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store i8 %i.dj, ptr %i.do, align 1, !noalias !946
  %i.dp = load ptr, ptr %0, align 8, !alias.scope !947, !noalias !948, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dr, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 range(i64 12, 81) 24, i1 false), !noalias !946
  %i.ds = icmp eq i64 %i.cg, 0
  br i1 %i.ds, label %._crit_edge40.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_, i64 noundef 24, ptr noundef null)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !982, !noalias !983, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !982, !noalias !983, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.h, align 1, !noalias !984 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [72 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -72 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q), !noalias !985
  br i1 %i.r, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_.exit, label %bb.c, !prof !8

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %.loopexit, !prof !4

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i33.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i33.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %.idx.neg = mul i64 %i.n, 72
  %i.z = sdiv exact i64 %.idx.neg, 72             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !989
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !990
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i, splat (i8 -1)
end_hunk_5
begin_hunk_6_@_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1A_E0EBU_:bb.a
.loopexit:                                        ; preds = %._crit_edge.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBT_8database12memory_usage8PageInfoEE6removeBT_.exit
  %storemerge = phi i64 [ 1, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBT_8database12memory_usage8PageInfoEE6removeBT_.exit ], [ 0, %._crit_edge.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1015, !noalias !1016, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1015, !noalias !1016, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1017 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1019
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i9, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.ac = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 12, 81) 72) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = add nuw i64 %i.af, 8
  %i.ah = and i64 %i.ag, -16                      ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = icmp ugt i64 %i.aj, 9223372036854775792
  %or.cond.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1020
  %i.am = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1020 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1020
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aj), !noalias !1020
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.aq = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1021
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ap, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1019
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !1022
  resume { ptr, i32 } %i.ar

bb.o:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 3 uses
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.av = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aw = mul nuw nsw i64 %i.av, 7
  %.sroa.07.0.i.i = select i1 %i.au, i64 %i.at, i64 %i.aw ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.as, i8 -1, i64 %i.ai, i1 false), !noalias !1021
  store ptr %i.d, ptr %i.a, align 8, !noalias !1019
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 72, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1019
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1019
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.as, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1019
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1019
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1019
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1019
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !1023, !noalias !1024, !noundef !3 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.az = load ptr, ptr %0, align 8, !alias.scope !1023, !noalias !1024, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.dm, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.ax, %.preheader.lr.ph ], [ %i.cg, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.bb, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.bc, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bf, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.be, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !1023, !noalias !1024
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1019
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.o
  %i.bg = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bh = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1019
  store i64 %i.bh, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1019
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.p, !noalias !1022

bb.p:                                             ; preds = %._crit_edge40
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !1022
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026), !noalias !1022
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1027, !noalias !1022 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !1027, !noalias !1022 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1027, !noalias !1022, !noundef !3 ; 3 uses
  %i.bk = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1027, !noalias !1022
  %i.bl = add i64 %.val3.i.i, 1
  %i.bm = mul nuw i64 %.val.i.i, %i.bl            ; 2 uses
  %i.bn = add i64 %.val1.i.i, -1
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  call void @llvm.assume(i1 %i.bp), !noalias !1022
  %i.bq = sub i64 0, %.val1.i.i
  %i.br = and i64 %i.bo, %i.bq                    ; 3 uses
  %i.bs = add i64 %.val3.i.i, 17
  %i.bt = add i64 %i.bs, %i.br                    ; 4 uses
  %i.bu = icmp uge i64 %i.bt, %i.br
  %i.bv = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bw = icmp ule i64 %i.bt, %i.bv
  call void @llvm.assume(i1 %i.bu), !noalias !1022
  call void @llvm.assume(i1 %i.bw), !noalias !1022
  %i.bx = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bx), !noalias !1022
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1022
  %i.by = icmp eq i64 %i.bt, 0
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bz = sub nsw i64 0, %i.br
  %i.ca = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bz
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !1028
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1019
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.be, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bf, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.bc, %.noexc3 ]
  %i.cb = add i16 %.sroa.13.1.lcssa, -1
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = and i16 %i.cb, %.sroa.13.1.lcssa
  %i.cf = add i64 %.sroa.5.1.lcssa, %i.cd         ; 2 uses
  %i.cg = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %i.ch = load ptr, ptr %i.b, align 8, !alias.scope !1029, !noalias !1031, !nonnull !3, !align !10, !noundef !3
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !1030, !noalias !1032, !nonnull !3, !noundef !3
  %i.cj = sub nsw i64 0, %i.cf
  %i.ck = getelementptr inbounds [72 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -72
  %.val.i = load ptr, ptr %i.ch, align 8, !noalias !1033, !nonnull !3, !noundef !3
  %i.cm = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cl)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cm ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !1034
  %i.co = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cp, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ], [ %i.dg, %.lr.ph.i ]
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.0.0.lcssa.i, %i.cr
  %i.ct = and i64 %i.cs, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !3
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.r, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cx = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cy, 0
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.db = phi i64 [ %i.dc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_.exit ]
  %i.dc = add i64 %i.db, 16                       ; 2 uses
  %i.dd = add i64 %i.dc, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.dd, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.de, align 1, !noalias !1034
  %i.df = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.da, %bb.r ], [ %i.ct, %._crit_edge.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.di = lshr i64 %i.cm, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8           ; 2 uses
  %i.dk = add i64 %.sroa.0.0.i5.i, -16
  %i.dl = and i64 %i.dk, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dj, ptr %i.dh, align 1, !noalias !1022
  %i.dm = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1019, !nonnull !3, !noundef !3 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store i8 %i.dj, ptr %i.do, align 1, !noalias !1022
  %i.dp = load ptr, ptr %0, align 8, !alias.scope !1023, !noalias !1024, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 72
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 72
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.dr, ptr noundef nonnull align 1 dereferenceable(72) %i.dq, i64 range(i64 12, 81) 72, i1 false), !noalias !1022
  %i.ds = icmp eq i64 %i.cg, 0
  br i1 %i.ds, label %._crit_edge40.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBW_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_, i64 noundef 72, ptr noundef null)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE7reserveNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBU_8database12memory_usage8PageInfoEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1A_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i8 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1B_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %i.a = lshr i64 %1, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1058, !noalias !1059, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1058, !noalias !1059, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %1, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.h, align 1, !noalias !1060 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 3 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdINtB2_10EquivalentBq_E10equivalentCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q), !noalias !1061
  br i1 %i.r, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1B_.exit, label %bb.c, !prof !8

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1B_.exit.thread, !prof !4

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i33.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i33.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1B_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.z = add nsw i64 %i.n, -16
  %i.aa = and i64 %i.z, %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !1065
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !1066
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ad, i1 false)
end_hunk_6
begin_hunk_7_@_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1B_:bb.a
  %i.as = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.at = load i8, ptr %i.as, align 8, !range !1072, !noalias !1071, !noundef !3
  br label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1B_.exit.thread

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1B_.exit.thread: ; preds = %._crit_edge.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE6removeB1A_.exit
  %.sroa.2.0 = phi i8 [ %i.at, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE6removeB1A_.exit ], [ -1, %._crit_edge.i ]
  %.sroa.0.0 = phi i64 [ %i.ar, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE6removeB1A_.exit ], [ undef, %._crit_edge.i ]
  %i.au = insertvalue { i64, i8 } poison, i64 %.sroa.0.0, 0
  %i.av = insertvalue { i64, i8 } %i.au, i8 %.sroa.2.0, 1
  ret { i64, i8 } %i.av
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1x_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EB1B_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1094, !noalias !1095, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1094, !noalias !1095, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1096 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1098
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.j, label %bb.f, !prof !4

.thread:                                          ; preds = %bb.d
  %i.v = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.w = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.w, 8
  %.sroa.03.0.i.i = select i1 %i.v, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %.sroa.0.0.i9, 3
  %i.y = udiv i64 %i.x, 7
  %i.z = add nsw i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa                      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = icmp ugt i64 %i.ab, 1152921504606846974
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i56 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph.i56, 4      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i56, 16 ; 2 uses
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1099
  %i.aj = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1099 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1099
  br label %bb.k

bb.i:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !1099
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1100
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1098
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !1101
  resume { ptr, i32 } %i.ao

bb.m:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i56, -1     ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i56, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i56, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.af, i1 false), !noalias !1100
  store ptr %i.d, ptr %i.a, align 8, !noalias !1098
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1098
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1098
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1098
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1098
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1098
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1098
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !1102, !noalias !1103, !noundef !3 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.m
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !1102, !noalias !1103, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.dj, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.az, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bc, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bb, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !1102, !noalias !1103
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1098
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.m
  %i.bd = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.m ]
  %i.be = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.m ] ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1098
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1098
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.n, !noalias !1101

bb.n:                                             ; preds = %._crit_edge40
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !1101
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  call void @llvm.experimental.noalias.scope.decl(metadata !1105), !noalias !1101
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1106, !noalias !1101 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !1106, !noalias !1101 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1106, !noalias !1101, !noundef !3 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1106, !noalias !1101
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !1101
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !1101
  call void @llvm.assume(i1 %i.bt), !noalias !1101
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !1101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1101
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !1107
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1098
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.bb, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bc, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.az, %.noexc3 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !1108, !noalias !1110, !nonnull !3, !align !10, !noundef !3
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !1109, !noalias !1111, !nonnull !3, !noundef !3
  %i.cg = sub nsw i64 0, %i.cc
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %.val.i = load ptr, ptr %i.ce, align 8, !noalias !1112, !nonnull !3, !noundef !3
  %i.cj = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ci)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_.exit unwind label %bb.l ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cj ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !1113
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !3
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.p:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cu = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.da, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !1113
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dg, ptr %i.de, align 1, !noalias !1101
  %i.dj = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1098, !nonnull !3, !noundef !3 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i8 %i.dg, ptr %i.dl, align 1, !noalias !1101
  %i.dm = load ptr, ptr %0, align 8, !alias.scope !1102, !noalias !1103, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 4
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 4
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.do, ptr noundef nonnull align 1 dereferenceable(16) %i.dn, i64 range(i64 12, 81) 16, i1 false), !noalias !1101
  %i.dp = icmp eq i64 %i.cd, 0
  br i1 %i.dp, label %._crit_edge40.loopexit, label %.preheader

bb.q:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1D_, i64 noundef 16, ptr noundef null)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.q
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.q ], [ %.sroa.12.0.ph, %bb.k ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.q ], [ %.sroa.7.0.ph, %bb.k ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.dr = insertvalue { i64, i64 } %i.dq, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.dr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE7reserveNCINvNtB8_3map11make_hasherBQ_B1x_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EB1B_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1x_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EB1B_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.a = lshr i64 %2, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1137, !noalias !1138, !noundef !3 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1137, !noalias !1138, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.d        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.h, align 1, !noalias !1139 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdINtB2_10EquivalentBq_E10equivalentCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !noalias !1140
  br i1 %i.r, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit, label %bb.c, !prof !8

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.f, !prof !4

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i33.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i33.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %.idx.neg = mul i64 %i.n, 24
  %i.z = sdiv exact i64 %.idx.neg, 24             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %i.aa = add nsw i64 %i.z, -16
  %i.ab = and i64 %i.aa, %i.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !1144
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.z ; 2 uses
  %.sroa.0.0.copyload.i926.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !1145
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i926.i.i.i, splat (i8 -1)
end_hunk_7
begin_hunk_8_@_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1x_E0EB1F_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE6removeB1E_.exit
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1x_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EB1F_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1170, !noalias !1171, !noundef !3 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1170, !noalias !1171, !noundef !3 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1172 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1174
  %i.t = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.u, label %bb.l, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i9, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y
  %i.aa = add nuw nsw i64 %i.z, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.ac = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.ac, 8
  %.sroa.03.0.i.i = select i1 %i.ab, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.aa, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 12, 81) 24) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = add nuw i64 %i.af, 8
  %i.ah = and i64 %i.ag, -16                      ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = icmp ugt i64 %i.aj, 9223372036854775792
  %or.cond.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !9

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1175
  %i.am = call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1175 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1175
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aj), !noalias !1175
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.aq = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !1176
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.aq, %bb.l ], [ %i.ap, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1174
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(56) %i.a) #27, !noalias !1177
  resume { ptr, i32 } %i.ar

bb.o:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 3 uses
  %i.at = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.au = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.av = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aw = mul nuw nsw i64 %i.av, 7
  %.sroa.07.0.i.i = select i1 %i.au, i64 %i.at, i64 %i.aw ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.as, i8 -1, i64 %i.ai, i1 false), !noalias !1176
  store ptr %i.d, ptr %i.a, align 8, !noalias !1174
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.as, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.at, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1174
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1174
  %i.ax = load i64, ptr %i.e, align 8, !alias.scope !1178, !noalias !1179, !noundef !3 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge40, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.az = load ptr, ptr %0, align 8, !alias.scope !1178, !noalias !1179, !nonnull !3, !noundef !3 ; 2 uses
  %.val428 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val428, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.dm, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.039 = phi ptr [ %i.az, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.038 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.037 = phi i64 [ %i.ax, %.preheader.lr.ph ], [ %i.cg, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.036 = phi i16 [ %i.bb, %.preheader.lr.ph ], [ %i.ce, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i231 = icmp eq i16 %.sroa.13.036, 0
  br i1 %.not.i231, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.133 = phi ptr [ %i.bc, %.noexc3 ], [ %.sroa.0.039, %.preheader ] ; 2 uses
  %.sroa.5.132 = phi i64 [ %i.bf, %.noexc3 ], [ %.sroa.5.038, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.133) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.133, i64 16 ; 3 uses
  %.val29 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val29, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.132, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.be, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge40.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !1178, !noalias !1179
  %.pre45 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1174
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %bb.o
  %i.bg = phi i64 [ %.pre45, %._crit_edge40.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bh = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1174
  store i64 %i.bh, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1174
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit unwind label %bb.p, !noalias !1177

bb.p:                                             ; preds = %._crit_edge40
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #28, !noalias !1177
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit: ; preds = %._crit_edge40
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  call void @llvm.experimental.noalias.scope.decl(metadata !1181), !noalias !1177
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1182, !noalias !1177 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !1182, !noalias !1177 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !1182, !noalias !1177, !noundef !3 ; 3 uses
  %i.bk = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1182, !noalias !1177
  %i.bl = add i64 %.val3.i.i, 1
  %i.bm = mul nuw i64 %.val.i.i, %i.bl            ; 2 uses
  %i.bn = add i64 %.val1.i.i, -1
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  call void @llvm.assume(i1 %i.bp), !noalias !1177
  %i.bq = sub i64 0, %.val1.i.i
  %i.br = and i64 %i.bo, %i.bq                    ; 3 uses
  %i.bs = add i64 %.val3.i.i, 17
  %i.bt = add i64 %i.bs, %i.br                    ; 4 uses
  %i.bu = icmp uge i64 %i.bt, %i.br
  %i.bv = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bw = icmp ule i64 %i.bt, %i.bv
  call void @llvm.assume(i1 %i.bu), !noalias !1177
  call void @llvm.assume(i1 %i.bw), !noalias !1177
  %i.bx = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bx), !noalias !1177
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !1177
  %i.by = icmp eq i64 %i.bt, 0
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bz = sub nsw i64 0, %i.br
  %i.ca = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bz
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #29, !noalias !1183
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsC8CapfvpQ1_5salsa.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1174
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.036, %.preheader ], [ %i.be, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.038, %.preheader ], [ %i.bf, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.039, %.preheader ], [ %i.bc, %.noexc3 ]
  %i.cb = add i16 %.sroa.13.1.lcssa, -1
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = and i16 %i.cb, %.sroa.13.1.lcssa
  %i.cf = add i64 %.sroa.5.1.lcssa, %i.cd         ; 2 uses
  %i.cg = add i64 %.sroa.9.037, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %i.ch = load ptr, ptr %i.b, align 8, !alias.scope !1184, !noalias !1186, !nonnull !3, !align !10, !noundef !3
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !1185, !noalias !1187, !nonnull !3, !noundef !3
  %i.cj = sub nsw i64 0, %i.cf
  %i.ck = getelementptr inbounds [24 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -24
  %.val.i = load ptr, ptr %i.ch, align 8, !noalias !1188, !nonnull !3, !noundef !3
  %i.cm = invoke noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val7 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val7, %i.cm ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !1189
  %i.co = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_.exit ], [ %.sroa.0.0.i12, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cp, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_.exit ], [ %i.dg, %.lr.ph.i ]
  %i.cq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.0.0.lcssa.i, %i.cr
  %i.ct = and i64 %i.cs, %.sroa.619.0..sroa_idx.i.i.val7 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !3
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.r, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.r:                                             ; preds = %._crit_edge.i
  %.val2.i.i11 = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cx = icmp slt <16 x i8> %.val2.i.i11, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cy, 0
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_.exit ]
  %i.db = phi i64 [ %i.dc, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_.exit ]
  %i.dc = add i64 %i.db, 16                       ; 2 uses
  %i.dd = add i64 %i.dc, %.sroa.0.010.i
  %.sroa.0.0.i12 = and i64 %i.dd, %.sroa.619.0..sroa_idx.i.i.val7 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i12
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.de, align 1, !noalias !1189
  %i.df = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.da, %bb.r ], [ %i.ct, %._crit_edge.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.di = lshr i64 %i.cm, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8           ; 2 uses
  %i.dk = add i64 %.sroa.0.0.i5.i, -16
  %i.dl = and i64 %i.dk, %.sroa.619.0..sroa_idx.i.i.val7
  store i8 %i.dj, ptr %i.dh, align 1, !noalias !1177
  %i.dm = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !1174, !nonnull !3, !noundef !3 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  store i8 %i.dj, ptr %i.do, align 1, !noalias !1177
  %i.dp = load ptr, ptr %0, align 8, !alias.scope !1178, !noalias !1179, !nonnull !3, !noundef !3
  %.neg.i.i = xor i64 %i.cf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.dr = getelementptr inbounds i8, ptr %i.dm, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dr, ptr noundef nonnull align 1 dereferenceable(24) %i.dq, i64 range(i64 12, 81) 24, i1 false), !noalias !1177
  %i.ds = icmp eq i64 %i.cg, 0
  br i1 %i.ds, label %._crit_edge40.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1z_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0B1H_, i64 noundef 24, ptr noundef null)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa.exit ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE7reserveNCINvNtB8_3map11make_hasherBQ_B1x_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EB1F_(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1x_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0EB1F_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtNtCs4EKqXNOBxpl_8hashlink15linked_hash_map4NodeNtNtCsC8CapfvpQ1_5salsa2id2IduEEEB2M_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryEB1d_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1c_13DisambiguatorEEB1e_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1195, !noalias !1196, !nonnull !3, !noundef !3 ; 3 uses
  %.val4.i = load <16 x i8>, ptr %i.d, align 16, !noalias !1197
  %i.e = icmp sgt <16 x i8> %.val4.i, splat (i8 -1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = bitcast <16 x i1> %i.e to i16
  br label %bb.c

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit
  %.sroa.14.011 = phi i64 [ %i.b, %bb.b ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit ]
  %.sroa.10.010 = phi i16 [ %i.g, %bb.b ], [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit ] ; 2 uses
  %.sroa.6.09 = phi ptr [ %i.f, %bb.b ], [ %.sroa.6.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit ] ; 2 uses
  %.sroa.05.08 = phi ptr [ %i.d, %bb.b ], [ %.sroa.05.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit ] ; 2 uses
  %.not11.i = icmp eq i16 %.sroa.10.010, 0
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i ], [ %.sroa.6.09, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.sroa.05.08, %bb.c ]
  %.val9.i = load <16 x i8>, ptr %i.h, align 16, !noalias !1198
  %i.j = icmp sgt <16 x i8> %.val9.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -384 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit

_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit: ; preds = %.lr.ph.i, %bb.c
  %.sroa.05.1 = phi ptr [ %.sroa.05.08, %bb.c ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.6.09, %bb.c ], [ %i.l, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %.sroa.10.010, %bb.c ], [ %.cast.i, %.lr.ph.i ] ; 3 uses
  %i.m = add i16 %.lcssa.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [24 x i8], ptr %.sroa.05.1, i64 %i.q ; 2 uses
  %i.s = add i64 %.sroa.14.011, -1                ; 2 uses
  %i.t = getelementptr i8, ptr %i.r, i64 -16
  %.val = load ptr, ptr %i.t, align 8             ; 5 uses
  %i.u = getelementptr i8, ptr %i.r, i64 -8
  %.val3 = load ptr, ptr %i.u, align 8, !nonnull !3, !align !10, !noundef !3 ; 5 uses
  %i.v = load ptr, ptr %.val3, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.v(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !12, !invariant.load !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !13, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #29
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !invariant.load !3 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa11accumulator11accumulated14AnyAccumulatedEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !13, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ag) #29
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa11accumulator11accumulated14AnyAccumulatedEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa11accumulator11accumulated14AnyAccumulatedEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.f
  resume { ptr, i32 } %i.ab

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit: ; preds = %bb.e, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i
  %i.ah = icmp eq i64 %i.s, 0
  br i1 %i.ah, label %.loopexit, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsjECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCsC8CapfvpQ1_5salsa14tracked_struct12TrackedEntryNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1P_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct12IdentityHashNtB1f_13DisambiguatorENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1h_11accumulator11accumulated14AnyAccumulatedEL_EENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1206, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1208, !noalias !1209, !nonnull !3, !noundef !3 ; 3 uses
  %.val4.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1210
  %i.h = icmp sgt <16 x i8> %.val4.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i, %bb.c
  %.sroa.14.011.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i ]
  %.sroa.10.010.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i ] ; 2 uses
  %.sroa.6.09.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i ] ; 2 uses
  %.sroa.05.08.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i ] ; 2 uses
  %.not11.i.i = icmp eq i16 %.sroa.10.010.i, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.sroa.6.09.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.05.08.i, %bb.d ]
  %.val9.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1211
  %i.m = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.m to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit.i

_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.05.1.i = phi ptr [ %.sroa.05.08.i, %bb.d ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.09.i, %bb.d ], [ %i.o, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.010.i, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.14.011.i, -1              ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.val.i = load ptr, ptr %i.w, align 8, !noalias !1206 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val3.i = load ptr, ptr %i.x, align 8, !noalias !1206, !nonnull !3, !align !10, !noundef !3 ; 5 uses
  %i.y = load ptr, ptr %.val3.i, align 8, !invariant.load !3, !noalias !1206 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i)
          to label %bb.f unwind label %bb.g, !noalias !1206

bb.f:                                             ; preds = %bb.e, %_RINvMsh_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBZ_11accumulator11accumulated14AnyAccumulatedEL_EEE9next_implKb0_EBZ_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !12, !invariant.load !3, !noalias !1206 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !13, !invariant.load !3, !noalias !1206
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #29, !noalias !1206
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !12, !invariant.load !3, !noalias !1206 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa11accumulator11accumulated14AnyAccumulatedEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !13, !invariant.load !3, !noalias !1206
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #29, !noalias !1206
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa11accumulator11accumulated14AnyAccumulatedEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsC8CapfvpQ1_5salsa11accumulator11accumulated14AnyAccumulatedEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.g
  resume { ptr, i32 } %i.ae

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.f
  %i.ak = icmp eq i64 %i.v, 0
  br i1 %i.ak, label %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_.exit, label %bb.d

_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtBG_11accumulator11accumulated14AnyAccumulatedEL_EEEBG_.exit.i, %bb.b
  %i.al = add i64 %i.b, 1
  %i.am = mul nuw i64 %i.al, %2                   ; 2 uses
  %i.an = add i64 %3, -1
  %i.ao = add i64 %i.am, %i.an                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = sub i64 0, %3
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %i.b, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %3
  %i.aw = icmp ule i64 %i.at, %i.av
  tail call void @llvm.assume(i1 %i.au)
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_.exit
  %i.az = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ba = sub nsw i64 0, %i.ar
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.h, %_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1e_11accumulator11accumulated14AnyAccumulatedEL_EEEB1e_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage14IngredientInfoENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1l_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 8, 145) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.n, label %bb.e, !prof !4

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
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 145) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp ugt i64 %i.n, -16
  br i1 %i.o, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15
  %i.q = and i64 %i.p, -16                        ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.s = add i64 %i.r, %i.q                       ; 6 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !9

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.r, label %_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i

_RNvXs_NtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1214
  %i.w = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1214 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.r
end_hunk_8
begin_hunk_9_@_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_:bb.a
  %i.j = getelementptr inbounds [64 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1024 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [80 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBV_EEE9next_implKb0_EBZ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEE9next_implKb0_EB1G_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -256 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEE9next_implKb0_EB1K_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [24 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1219 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1219, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1221, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1221, !noundef !3 ; 5 uses
  %i.h = add i64 %.val1.i, 1
  %i.i = mul nuw i64 %i.e, %i.h                   ; 2 uses
  %i.j = add i64 %i.g, -1
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub i64 0, %i.g
  %i.n = and i64 %i.k, %i.m                       ; 3 uses
  %i.o = add i64 %.val1.i, 17
  %i.p = add i64 %i.o, %i.n                       ; 4 uses
  %i.q = icmp uge i64 %i.p, %i.n
  %i.r = sub nuw i64 -9223372036854775808, %i.g
  %i.s = icmp ule i64 %i.p, %i.r
  tail call void @llvm.assume(i1 %i.q)
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = icmp eq i64 %i.p, 0
  br i1 %i.u, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.v = sub nsw i64 0, %i.n
  %i.w = getelementptr inbounds i8, ptr %.val.i, i64 %i.v
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.g) #29, !noalias !1221
  br label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit

_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %_RNvMs1_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgMW4BsFgQdt_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1225
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1225
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1225, !nonnull !3, !align !10, !noundef !3 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1225, !noundef !3 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.04.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.04.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.04.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !1225, !noundef !3
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.04.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !1225, !noundef !3
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !1225
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !1225
  %i.q = load i64, ptr %i.e, align 8, !noalias !1225, !noundef !3
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !1225
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.04.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.03.i.i = phi i64 [ %i.s, %bb.e ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.04.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !1225, !noundef !3
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1
  %i.x = add i64 %.sroa.04.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !1225, !noundef !3
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !1225
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !1225
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !1225, !nonnull !3, !noundef !3
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg6.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !1225, !inline_history !1224
  %i.af = load i64, ptr %i.e, align 8, !noalias !1225, !noundef !3
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !1225
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.split.i.i

_RNvXs1_NtCsgMW4BsFgQdt_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !1225, !noundef !3 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.01.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !1225, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.01.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !1225
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1228 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !1228 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !1228, !noundef !3 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !1228
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
  br i1 %i.s, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #29, !noalias !1228
  br label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit

_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1232
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1232, !nonnull !3, !align !10, !noundef !3 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1232, !noundef !3 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !1232, !noundef !3
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !1232, !noundef !3
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !1232
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !1232
  %i.q = load i64, ptr %i.e, align 8, !noalias !1232, !noundef !3
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !1232
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.e ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !1232, !noundef !3
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !1232, !noundef !3
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !1232
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !1232
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !1232, !nonnull !3, !noundef !3
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !1232, !inline_history !1231
  %i.af = load i64, ptr %i.e, align 8, !noalias !1232, !noundef !3
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !1232
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit, label %.lr.ph.split.i.i

_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa.exit: ; preds = %bb.e, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !1232, !noundef !3 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
  %i.ak = lshr i64 %i.aj, 3
  %i.al = mul nuw i64 %i.ak, 7
  %.sroa.04.0.i.i = select i1 %i.ai, i64 %i.ah, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noalias !1232, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ap = sub i64 %.sroa.04.0.i.i, %i.an
  store i64 %i.ap, ptr %i.ao, align 8, !noalias !1232
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -12
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa2id2IdNtNtNtBW_8function4sync9SyncStateEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa2id2IdEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBW_7runtime16dependency_graph8SmallSetBS_Kj4_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -80
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBS_EEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1B_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [40 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -40
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -12
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexEB1Y_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !10, !noundef !3
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.f = tail call noundef i64 @_RINvYNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0E0BW_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 {
end_hunk_9
begin_hunk_10_@_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEE5clearBT_:bb.a
  %i.l = mul nuw i64 %i.k, 7
  %spec.select.i.i.i4 = select i1 %i.i, i64 %i.e, i64 %i.l
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENCNvMs6_B1w_B1t_5clear0EEB1T_.exit5: ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %spec.select.i.i.i4, %bb.d ], [ 0, %bb.c ]
  store i64 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8
  br label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEE14insert_no_growBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !1273
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !3  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

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
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !1273
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growBT_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !1276
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !5

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !3  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

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
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !1276
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [32 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE5drainBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 26), (32, 80)) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1279
  %i.f = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
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
define internal fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 12, 81) %2, ptr noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
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
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i.epil.init ; 2 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i
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

._crit_edge:                                      ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !3
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg12 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %.val15 = load i64, ptr %i.b, align 8, !noundef !3 ; 6 uses
  %.sroa.0.07.i = and i64 %.val15, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !1282
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !5

._crit_edge.i18:                                  ; preds = %.lr.ph.i19, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i19 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i19 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val15                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !3
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.g:                                             ; preds = %._crit_edge.i18
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i19 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i19 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val15           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !1282
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i19, label %._crit_edge.i18, !prof !6

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i18
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i18 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val15
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg13 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg14 = mul i64 %2, %.neg13
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg14 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !3
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val15
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val15, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !3
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
end_hunk_10
begin_hunk_11_@_RNvXsL_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawDrainTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBT_:bb.a
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i
  store i16 %i.p, ptr %i.d, align 8, !alias.scope !1311
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.q ; 2 uses
  %i.s = add i64 %i.b, -1
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -16
  %i.u = load i32, ptr %i.t, align 8, !noundef !3
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.y, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtBZ_5table9PageIndexEE9next_implKb0_EBZ_.exit
  %storemerge = phi i64 [ 1, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtBZ_5table9PageIndexEE9next_implKb0_EBZ_.exit ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1320, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1322, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEB1e_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1322, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1323
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1324
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1024 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [64 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48
  tail call void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w), !noalias !1322
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEB1e_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEB1e_.exit.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_.exit.i.i, %bb.b
  %i.y = shl i64 %i.b, 6                          ; 2 uses
  %i.z = add i64 %i.y, 64                         ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEB1e_.exit.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1320, !nonnull !3, !noundef !3
  %i.ag = sub nuw nsw i64 -64, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1320
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEB1e_.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBT_7runtime16dependency_graph8SmallSetBP_Kj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1333, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1h_7runtime16dependency_graph8SmallSetB1d_Kj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1335, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1e_7runtime16dependency_graph8SmallSetB1a_Kj4_EEEB1e_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1335, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1336
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1337
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1280 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [80 x i8], ptr %.sroa.05.1.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -64
  tail call void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w), !noalias !1335
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1e_7runtime16dependency_graph8SmallSetB1a_Kj4_EEEB1e_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1e_7runtime16dependency_graph8SmallSetB1a_Kj4_EEEB1e_.exit.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE9next_implKb0_EBZ_.exit.i.i, %bb.b
  %i.y = mul i64 %i.b, 80                         ; 2 uses
  %i.z = add i64 %i.y, 80                         ; 2 uses
  %i.aa = add i64 %i.b, 17
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp uge i64 %i.ab, %i.z
  %i.ad = icmp ult i64 %i.ab, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ac)
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.ab, 0
  br i1 %i.ae, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1h_7runtime16dependency_graph8SmallSetB1d_Kj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1e_7runtime16dependency_graph8SmallSetB1a_Kj4_EEEB1e_.exit.i
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1333, !nonnull !3, !noundef !3
  %i.ag = sub i64 -80, %i.y
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1333
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1h_7runtime16dependency_graph8SmallSetB1d_Kj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1h_7runtime16dependency_graph8SmallSetB1d_Kj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtB1e_7runtime16dependency_graph8SmallSetB1a_Kj4_EEEB1e_.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBP_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdB1d_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 40
  %i.d = icmp slt i64 %.val1, 461168601842738790
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 48                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdB1d_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -48, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdB1d_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdB1d_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 12
  %i.d = add i64 %i.c, 24
  %i.e = icmp slt i64 %.val1, 1537228672809129300
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 3 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nsw i64 0, %i.f
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1346, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1h_5table9PageIndexEENtNtB22_5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1348, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1e_5table9PageIndexEEEB1e_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1348, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1349
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5table9PageIndexEEEBG_.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5table9PageIndexEEEBG_.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5table9PageIndexEEEBG_.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5table9PageIndexEEEBG_.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5table9PageIndexEEEBG_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE9next_implKb0_EBZ_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1350
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE9next_implKb0_EBZ_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE9next_implKb0_EBZ_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5table9PageIndexEEEBG_.exit.i.i unwind label %bb.e, !noalias !1348

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE9next_implKb0_EBZ_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexEEB1i_.exit.i.i.i.i unwind label %bb.f, !noalias !1348

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1348
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexEEB1i_.exit.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5table9PageIndexEEEBG_.exit.i.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE9next_implKb0_EBZ_.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1348
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1e_5table9PageIndexEEEB1e_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1e_5table9PageIndexEEEB1e_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_5table9PageIndexEEEBG_.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1h_5table9PageIndexEENtNtB22_5alloc6GlobalEB1h_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1e_5table9PageIndexEEEB1e_.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1346, !nonnull !3, !noundef !3
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1346
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1h_5table9PageIndexEENtNtB22_5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1h_5table9PageIndexEENtNtB22_5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1e_5table9PageIndexEEEB1e_.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1359, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtB22_5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1361, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1e_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1361, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1362
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i.i ] ; 2 uses
  %.sroa.86.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.86.015.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1363
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %.sroa.05.1.i.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i.i unwind label %bb.e, !noalias !1361

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsC8CapfvpQ1_5salsa.exit.i.i.i.i unwind label %bb.f, !noalias !1361

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28, !noalias !1361
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsC8CapfvpQ1_5salsa.exit.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i.i: ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE9next_implKb0_EBZ_.exit.i.i
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1361
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1e_.exit.i, label %bb.d

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1e_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEBG_.exit.i.i, %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtB22_5alloc6GlobalEB1h_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1e_.exit.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !1359, !nonnull !3, !noundef !3
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1359
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtB22_5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEENtNtB22_5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEEB1e_.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtB1h_5table9PageIndexENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtB1h_5table9PageIndexENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtB1h_5table9PageIndexENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtB1h_5table9PageIndexENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdEENtNtNtB1D_3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtBT_8database12memory_usage8PageInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1h_8database12memory_usage8PageInfoENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 72
  %i.d = icmp slt i64 %.val1, 256204778801521550
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 80                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1h_8database12memory_usage8PageInfoENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -80, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1h_8database12memory_usage8PageInfoENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB1h_8database12memory_usage8PageInfoENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1A_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1Y_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 4                        ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1Y_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1Y_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtCsC8CapfvpQ1_5salsa7runtime10WaitResultENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1Y_.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !3 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB22_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB22_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #29
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB22_.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdNtNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph4edge4EdgeENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB22_.exit: ; preds = %bb.a, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 5 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1366
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE15into_allocationBT_.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 576460752303423487
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %i.c, 5                          ; 2 uses
  %i.i = add i64 %i.h, 32                         ; 2 uses
  %i.j = add nsw i64 %i.c, 17
  %i.k = add i64 %i.j, %i.i                       ; 3 uses
  %i.l = icmp uge i64 %i.k, %i.i
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 -32, %i.h
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE15into_allocationBT_.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE15into_allocationBT_.exit: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.o, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.k, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.r = getelementptr i8, ptr %i.a, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.t, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.p, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.q, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1E_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceBZ_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexINtNtNtBZ_7runtime16dependency_graph8SmallSetBV_Kj4_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1E_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceBZ_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1F_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceBZ_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0BW_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexEEB1i_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexEEB1i_.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBW_5table9PageIndexEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0BW_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1F_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceBZ_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0BW_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsC8CapfvpQ1_5salsa.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1C_NtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE0Es_0BW_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRDG_INtB4_2FnTRL0_NtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyEEp6OutputyEL_IBP_TRB12_EE4callB16_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
end_hunk_11
