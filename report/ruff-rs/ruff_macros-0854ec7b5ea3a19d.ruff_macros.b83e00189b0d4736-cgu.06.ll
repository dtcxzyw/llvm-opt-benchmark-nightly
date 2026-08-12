inline.NumInlined: 339
inline.NumDeleted: 142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@1 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @0, [24 x i8] zeroinitializer }>, align 8
@2 = private unnamed_addr constant [6 x i8] c"Pylint", align 1
@3 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @2, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfOIrz68VyyU_11ruff_macros, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsfOIrz68VyyU_11ruff_macros }>, align 8
@6 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@7 = private unnamed_addr constant [76 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/alloc/src/string.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"K\00\00\00\00\00\00\00q\0B\00\00\0E\00\00\00" }>, align 8
@9 = private unnamed_addr constant [5 x i8] c"Error", align 1

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3, !noalias !6, !noundef !9 ; 2 uses
  %2 = add i64 %i.g, 1                            ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3, !noalias !6, !noundef !9 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !11
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef i64 @llvm.umax.i64(i64 %3, i64 %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15
  call fastcc void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 4, 33) 24, i64 noundef %.sroa.0.0.i9)
  %i.r = load ptr, ptr %i.a, align 8, !noalias !15, !noundef !9 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !15 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !15 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

bb.f:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 dereferenceable(56) %i.b) #23, !noalias !18
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  store ptr %i.e, ptr %i.b, align 8, !noalias !15
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !15
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.r, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  %i.y = load i64, ptr %i.f, align 8, !alias.scope !19, !noalias !20, !noundef !9 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge29, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !19, !noalias !20, !nonnull !9, !noundef !9 ; 2 uses
  %.val618 = load <16 x i8>, ptr %i.aa, align 16
  %i.ab = icmp sgt <16 x i8> %.val618, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.028 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.027 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.026 = phi i64 [ %i.y, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.025 = phi i16 [ %i.ac, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i220 = icmp eq i16 %.sroa.13.025, 0
  br i1 %.not.i220, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.122 = phi ptr [ %i.ad, %.noexc3 ], [ %.sroa.0.028, %.preheader ] ; 2 uses
  %.sroa.5.121 = phi i64 [ %i.ag, %.noexc3 ], [ %.sroa.5.027, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.122) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.122, i64 16 ; 3 uses
  %.val519 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val519, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.121, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.af, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge29.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !19, !noalias !20
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.g
  %i.ah = phi i64 [ %.pre, %._crit_edge29.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ai = sub i64 %i.w, %i.ah
  store i64 %i.ai, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  store i64 %i.ah, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !15
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfOIrz68VyyU_11ruff_macros(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit unwind label %bb.h, !noalias !18

bb.h:                                             ; preds = %._crit_edge29
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #24, !noalias !18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %._crit_edge29
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !24), !noalias !18
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !27, !noalias !18 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !27, !noalias !18 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !27, !noalias !18, !noundef !9 ; 3 uses
  %i.ak = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !27, !noalias !18
  %i.al = add i64 %.val3.i.i, 1
  %i.am = mul nuw i64 %.val.i.i, %i.al            ; 2 uses
  %i.an = add i64 %.val1.i.i, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !18
  %i.aq = sub i64 0, %.val1.i.i
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !18
  call void @llvm.assume(i1 %i.aw), !noalias !18
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !18
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.az
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #25, !noalias !28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.025, %.preheader ], [ %i.af, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.027, %.preheader ], [ %i.ag, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.028, %.preheader ], [ %i.ad, %.noexc3 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.026, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !29, !noalias !32, !nonnull !9, !noundef !9
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -24
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !34, !nonnull !9, !align !35, !noundef !9
  %i.bl = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.u, %i.bl             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !36
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !39

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bo, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit ], [ %i.cf, %.lr.ph.i ]
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.0.0.lcssa.i, %i.bq
  %i.bs = and i64 %i.br, %i.u                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !9
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.j, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !10

bb.j:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.r, align 16
  %i.bw = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bx, 0
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit ]
  %i.ca = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit ]
  %i.cb = add i64 %i.ca, 16                       ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.cc, %i.u            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !36
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !40

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bz, %bb.j ], [ %i.bs, %._crit_edge.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i5.i
  %i.ch = lshr i64 %i.bl, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
  %i.ck = and i64 %i.cj, %i.u
  store i8 %i.ci, ptr %i.cg, align 1, !noalias !18
  %i.cl = getelementptr i8, ptr %i.r, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store i8 %i.ci, ptr %i.cm, align 1, !noalias !18
  %i.cn = load ptr, ptr %0, align 8, !alias.scope !19, !noalias !20, !nonnull !9, !noundef !9
  %.neg.i.i = xor i64 %i.bf, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.cp = getelementptr inbounds i8, ptr %i.r, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cp, ptr noundef nonnull align 1 dereferenceable(24) %i.co, i64 range(i64 4, 33) 24, i1 false), !noalias !18
  %i.cq = icmp eq i64 %i.bg, 0
  br i1 %i.cq, label %._crit_edge29.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros, i64 noundef 24, ptr noundef nonnull @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceCsfOIrz68VyyU_11ruff_macros)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit, %bb.c, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.k ], [ %i.u, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1n_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0EB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !41, !noalias !44, !noundef !9 ; 2 uses
  %2 = add i64 %i.g, 1                            ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !41, !noalias !44, !noundef !9 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !47
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef i64 @llvm.umax.i64(i64 %3, i64 %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  call fastcc void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 4, 33) 32, i64 noundef %.sroa.0.0.i9)
  %i.r = load ptr, ptr %i.a, align 8, !noalias !51, !noundef !9 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !51 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !51 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

bb.f:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 dereferenceable(56) %i.b) #23, !noalias !54
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  store ptr %i.e, ptr %i.b, align 8, !noalias !51
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.r, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  %i.y = load i64, ptr %i.f, align 8, !alias.scope !55, !noalias !56, !noundef !9 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge29, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !55, !noalias !56, !nonnull !9, !noundef !9 ; 2 uses
  %.val618 = load <16 x i8>, ptr %i.aa, align 16
  %i.ab = icmp sgt <16 x i8> %.val618, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.028 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.027 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.026 = phi i64 [ %i.y, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.025 = phi i16 [ %i.ac, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i220 = icmp eq i16 %.sroa.13.025, 0
  br i1 %.not.i220, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.122 = phi ptr [ %i.ad, %.noexc3 ], [ %.sroa.0.028, %.preheader ] ; 2 uses
  %.sroa.5.121 = phi i64 [ %i.ag, %.noexc3 ], [ %.sroa.5.027, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.122) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.122, i64 16 ; 3 uses
  %.val519 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val519, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.121, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.af, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge29.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !55, !noalias !56
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.g
  %i.ah = phi i64 [ %.pre, %._crit_edge29.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ai = sub i64 %i.w, %i.ah
  store i64 %i.ai, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  store i64 %i.ah, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !51
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfOIrz68VyyU_11ruff_macros(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit unwind label %bb.h, !noalias !54

bb.h:                                             ; preds = %._crit_edge29
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #24, !noalias !54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %._crit_edge29
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !60), !noalias !54
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !63, !noalias !54 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !63, !noalias !54 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !63, !noalias !54, !noundef !9 ; 3 uses
  %i.ak = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !63, !noalias !54
  %i.al = add i64 %.val3.i.i, 1
  %i.am = mul nuw i64 %.val.i.i, %i.al            ; 2 uses
  %i.an = add i64 %.val1.i.i, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !54
  %i.aq = sub i64 0, %.val1.i.i
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !54
  call void @llvm.assume(i1 %i.aw), !noalias !54
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !54
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !54
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.az
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #25, !noalias !64
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.025, %.preheader ], [ %i.af, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.027, %.preheader ], [ %i.ag, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.028, %.preheader ], [ %i.ad, %.noexc3 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.026, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !65, !noalias !68, !nonnull !9, !noundef !9
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -32
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !70, !nonnull !9, !align !35, !noundef !9
  %i.bl = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRRNtNtCsfq6Q4Do6HaX_3syn4path4PathECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.u, %i.bl             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !71
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !39

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_.exit ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bo, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_.exit ], [ %i.cf, %.lr.ph.i ]
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.0.0.lcssa.i, %i.bq
  %i.bs = and i64 %i.br, %i.u                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !9
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.j, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !10

bb.j:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.r, align 16
  %i.bw = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bx, 0
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_.exit ]
  %i.ca = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_.exit ]
  %i.cb = add i64 %i.ca, 16                       ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.cc, %i.u            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !71
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !40

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bz, %bb.j ], [ %i.bs, %._crit_edge.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i5.i
  %i.ch = lshr i64 %i.bl, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
  %i.ck = and i64 %i.cj, %i.u
  store i8 %i.ci, ptr %i.cg, align 1, !noalias !54
  %i.cl = getelementptr i8, ptr %i.r, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store i8 %i.ci, ptr %i.cm, align 1, !noalias !54
  %i.cn = load ptr, ptr %0, align 8, !alias.scope !55, !noalias !56, !nonnull !9, !noundef !9
  %.neg.i.i = xor i64 %i.bf, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 5
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 5
  %i.cp = getelementptr inbounds i8, ptr %i.r, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cp, ptr noundef nonnull align 1 dereferenceable(32) %i.co, i64 range(i64 4, 33) 32, i1 false), !noalias !54
  %i.cq = icmp eq i64 %i.bg, 0
  br i1 %i.cq, label %._crit_edge29.loopexit, label %.preheader

bb.k:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr nonnull @_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1p_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0B20_, i64 noundef 32, ptr noundef nonnull @_RNvYNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtBb_8RawTableTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1s_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0Es_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOhEE9call_onceB23_)
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit, %bb.c, %bb.k
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.k ], [ %i.u, %bb.e ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTcuEE14reserve_rehashNCINvNtB8_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0ECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !74, !noalias !77, !noundef !9 ; 2 uses
  %2 = add i64 %i.g, 1                            ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !74, !noalias !77, !noundef !9 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.o
  br i1 %.not.i, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !80
  %i.q = extractvalue { i64, i64 } %i.p, 0
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef i64 @llvm.umax.i64(i64 %3, i64 %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  call fastcc void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef range(i64 4, 33) 4, i64 noundef %.sroa.0.0.i9)
  %i.r = load ptr, ptr %i.a, align 8, !noalias !84, !noundef !9 ; 9 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !84 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !84 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

bb.f:                                             ; preds = %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 dereferenceable(56) %i.b) #23, !noalias !87
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.d
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  store ptr %i.e, ptr %i.b, align 8, !noalias !84
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 4, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !84
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !84
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.r, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !84
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.u, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.w, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %i.y = load i64, ptr %i.f, align 8, !alias.scope !88, !noalias !89, !noundef !9 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge29, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !88, !noalias !89, !nonnull !9, !noundef !9 ; 2 uses
  %.val618 = load <16 x i8>, ptr %i.aa, align 16
  %i.ab = icmp sgt <16 x i8> %.val618, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.0.028 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.027 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.026 = phi i64 [ %i.y, %.preheader.lr.ph ], [ %i.bg, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.025 = phi i16 [ %i.ac, %.preheader.lr.ph ], [ %i.be, %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i220 = icmp eq i16 %.sroa.13.025, 0
  br i1 %.not.i220, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.122 = phi ptr [ %i.ad, %.noexc3 ], [ %.sroa.0.028, %.preheader ] ; 2 uses
  %.sroa.5.121 = phi i64 [ %i.ag, %.noexc3 ], [ %.sroa.5.027, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.122) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.122, i64 16 ; 3 uses
  %.val519 = load <16 x i8>, ptr %i.ad, align 16
  %i.ae = icmp sgt <16 x i8> %.val519, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16          ; 2 uses
  %i.ag = add i64 %.sroa.5.121, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.af, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge29.loopexit:                           ; preds = %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !88, !noalias !89
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.g
  %i.ah = phi i64 [ %.pre, %._crit_edge29.loopexit ], [ 0, %bb.g ] ; 2 uses
  %i.ai = sub i64 %i.w, %i.ah
  store i64 %i.ai, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  store i64 %i.ah, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfOIrz68VyyU_11ruff_macros(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit unwind label %bb.h, !noalias !87

bb.h:                                             ; preds = %._crit_edge29
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #24, !noalias !87
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %._crit_edge29
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93), !noalias !87
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !96, !noalias !87 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !96, !noalias !87 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !96, !noalias !87, !noundef !9 ; 3 uses
  %i.ak = icmp eq i64 %.val3.i.i, 0
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !96, !noalias !87
  %i.al = add i64 %.val3.i.i, 1
  %i.am = mul nuw i64 %.val.i.i, %i.al            ; 2 uses
  %i.an = add i64 %.val1.i.i, -1
  %i.ao = add i64 %i.an, %i.am                    ; 2 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  call void @llvm.assume(i1 %i.ap), !noalias !87
  %i.aq = sub i64 0, %.val1.i.i
  %i.ar = and i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = add i64 %.val3.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.au), !noalias !87
  call void @llvm.assume(i1 %i.aw), !noalias !87
  %i.ax = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.ax), !noalias !87
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !87
  %i.ay = icmp eq i64 %i.at, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.az = sub nsw i64 0, %i.ar
  %i.ba = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.az
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #25, !noalias !97
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCscdodAO9FK5_5alloc5alloc6GlobalE0EECsfOIrz68VyyU_11ruff_macros.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtCsgQfI1edjipl_9hashbrown3raw13RawTableInnerECsfOIrz68VyyU_11ruff_macros.exit, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  br label %_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCscdodAO9FK5_5alloc5alloc6GlobalECsfOIrz68VyyU_11ruff_macros.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.025, %.preheader ], [ %i.af, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.027, %.preheader ], [ %i.ag, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.028, %.preheader ], [ %i.ad, %.noexc3 ]
  %i.bb = add i16 %.sroa.13.1.lcssa, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.sroa.13.1.lcssa
  %i.bf = add i64 %.sroa.5.1.lcssa, %i.bd         ; 2 uses
  %i.bg = add i64 %.sroa.9.026, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !98, !noalias !101, !nonnull !9, !noundef !9
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !103, !nonnull !9, !align !35, !noundef !9
  %i.bl = invoke noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRcECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bk)
          to label %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTcuEE14reserve_rehashNCINvNtBa_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit unwind label %bb.f ; 2 uses

_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTcuEE14reserve_rehashNCINvNtBa_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.u, %i.bl             ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !104
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !39

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTcuEE14reserve_rehashNCINvNtBa_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTcuEE14reserve_rehashNCINvNtBa_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit ], [ %.sroa.0.0.i11, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.bo, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTcuEE14reserve_rehashNCINvNtBa_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit ], [ %i.cf, %.lr.ph.i ]
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.0.0.lcssa.i, %i.bq
  %i.bs = and i64 %i.br, %i.u                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !9
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.j, label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !10

bb.j:                                             ; preds = %._crit_edge.i
  %.val72.i.i = load <16 x i8>, ptr %i.r, align 16
  %i.bw = icmp slt <16 x i8> %.val72.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bx, 0
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTcuEE14reserve_rehashNCINvNtBa_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i11, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTcuEE14reserve_rehashNCINvNtBa_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit ]
  %i.ca = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB8_8RawTableTcuEE14reserve_rehashNCINvNtBa_3map11make_hashercuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0CsfOIrz68VyyU_11ruff_macros.exit ]
  %i.cb = add i64 %i.ca, 16                       ; 2 uses
  %i.cc = add i64 %i.cb, %.sroa.0.010.i
  %.sroa.0.0.i11 = and i64 %i.cc, %i.u            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i11
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cd, align 1, !noalias !104
  %i.ce = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cf = bitcast <16 x i1> %i.ce to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !40

_RNvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.j, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bz, %bb.j ], [ %i.bs, %._crit_edge.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i5.i
  %i.ch = lshr i64 %i.bl, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8           ; 2 uses
  %i.cj = add i64 %.sroa.0.0.i5.i, -16
end_hunk_0
