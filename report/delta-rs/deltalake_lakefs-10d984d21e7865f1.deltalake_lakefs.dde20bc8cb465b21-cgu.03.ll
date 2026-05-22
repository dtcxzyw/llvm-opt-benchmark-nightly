inline.NumInlined: 260
inline.NumDeleted: 121
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@1 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @0, [24 x i8] zeroinitializer }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@3 = private unnamed_addr constant [6 x i8] c"Parsed", align 1
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@5 = private unnamed_addr constant [8 x i8] c"Deferred", align 1
@6 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRbNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRjNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRmNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsjyY8HP3IvQ6_12object_store6configINtB6_11ConfigValuebE5parseNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !3, !alias.scope !4, !noundef !7
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !8 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !15, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !16
  br label %.body

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !8 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !15, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECsj34PGqTgg0L_16deltalake_lakefs.exit

.body:                                            ; preds = %bb.c, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsjyY8HP3IvQ6_12object_store6config11ConfigValuebEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.f, %bb.e, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsfYVtenZkBsn_12arrow_schema(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !23, !noalias !26, !noundef !7 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !23, !noalias !26, !noundef !7 ; 4 uses
  %4 = icmp ult i64 %i.i, 8
  %i.j = add i64 %i.i, 1                          ; 6 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = mul nuw i64 %i.k, 7
  %.sroa.03.0.i = select i1 %4, i64 %i.i, i64 %i.l ; 2 uses
  %i.m = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.m
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !28 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.d:                                             ; preds = %bb.b
  %i.q = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i5 = tail call noundef i64 @llvm.umax.i64(i64 %i.q, i64 %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32
  %i.r = icmp ult i64 %.sroa.0.0.i5, 15
  br i1 %i.r, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %.sroa.0.0.i5, 2305843009213693951
  br i1 %i.s, label %bb.j, label %bb.f, !prof !22

.thread.i:                                        ; preds = %bb.d
  %i.t = icmp samesign ult i64 %.sroa.0.0.i5, 4
  %i.u = and i64 %.sroa.0.0.i5, 8
  %..i.i = add nuw nsw i64 %i.u, 8
  %.sroa.03.0.i.i = select i1 %i.t, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = shl nuw i64 %.sroa.0.0.i5, 3
  %i.w = udiv i64 %i.v, 7
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = lshr i64 -1, %i.y                        ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1
  %i.ab = icmp samesign ugt i64 %i.z, 576460752303423486
  br i1 %i.ab, label %bb.h, label %bb.g, !prof !34

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph16.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.aa, %bb.f ] ; 5 uses
  %i.ac = shl nuw i64 %.sroa.4.0.i.ph16.i, 5      ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.4.0.i.ph16.i, 16 ; 2 uses
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, !prof !35

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !36
  %i.ah = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !36 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !36
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread

bb.i:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.ak = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ae), !noalias !36
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.al = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !41
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.am, i8 -1, i64 %i.ad, i1 false), !noalias !41
  %i.an = add nsw i64 %.sroa.4.0.i.ph16.i, -1     ; 6 uses
  %i.ao = icmp samesign ult i64 %.sroa.4.0.i.ph16.i, 9
  %i.ap = lshr i64 %.sroa.4.0.i.ph16.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.ao, i64 %i.an, i64 %i.aq ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !noalias !32
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !32
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.am, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !32
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %i.an, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  %i.ar = load i64, ptr %i.d, align 8, !alias.scope !42, !noalias !43, !noundef !7 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %._crit_edge48, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.at = load ptr, ptr %0, align 8, !alias.scope !42, !noalias !43, !nonnull !7, !noundef !7 ; 2 uses
  %i.au = load <16 x i8>, ptr %i.at, align 16, !noalias !44
  %i.av = icmp sgt <16 x i8> %i.au, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  br label %.preheader

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.al, %bb.j ], [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %.sroa.7.029 = extractvalue { i64, i64 } %.pn.i.pn, 0
  %.sroa.12.030 = extractvalue { i64, i64 } %.pn.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(56) %i.b) #24
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.015.047 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %.sroa.015.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.046 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.045 = phi i64 [ %i.ar, %.preheader.lr.ph ], [ %i.cc, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.044 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.ca, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i239 = icmp eq i16 %.sroa.13.044, 0
  br i1 %.not.i239, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.015.141 = phi ptr [ %i.ay, %.noexc3 ], [ %.sroa.015.047, %.preheader ] ; 2 uses
  %.sroa.5.140 = phi i64 [ %i.bc, %.noexc3 ], [ %.sroa.5.046, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.141) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.141, i64 16 ; 3 uses
  %i.az = load <16 x i8>, ptr %i.ay, align 16, !noalias !47
  %i.ba = icmp sgt <16 x i8> %i.az, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.140, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.bb, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge48.loopexit:                           ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre61 = load i64, ptr %i.d, align 8, !alias.scope !42, !noalias !43
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.bd = phi i64 [ %.pre61, %._crit_edge48.loopexit ], [ 0, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit ] ; 2 uses
  %i.be = sub i64 %.sroa.07.0.i.i, %i.bd
  store i64 %i.be, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  store i64 %i.bd, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !32
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.l

bb.l:                                             ; preds = %._crit_edge48
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %._crit_edge48
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !56 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !56 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !56, !noundef !7 ; 3 uses
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsj34PGqTgg0L_16deltalake_lakefs.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !56
  %i.bh = add i64 %.val3.i.i, 1
  %i.bi = mul nuw i64 %.val.i.i, %i.bh            ; 2 uses
  %i.bj = add i64 %.val1.i.i, -1
  %i.bk = add i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %i.bi
  call void @llvm.assume(i1 %i.bl)
  %i.bm = sub i64 0, %.val1.i.i
  %i.bn = and i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = add i64 %.val3.i.i, 17
  %i.bp = add i64 %i.bo, %i.bn                    ; 4 uses
  %i.bq = icmp uge i64 %i.bp, %i.bn
  %i.br = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bq)
  call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bu = icmp eq i64 %i.bp, 0
  br i1 %i.bu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bv = sub nsw i64 0, %i.bn
  %i.bw = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bv
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #23, !noalias !56
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3gpiEk3WpjL_9hashbrown3raw13RawTableInnerECsj34PGqTgg0L_16deltalake_lakefs.exit, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.044, %.preheader ], [ %i.bb, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.046, %.preheader ], [ %i.bc, %.noexc3 ] ; 2 uses
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.047, %.preheader ], [ %i.ay, %.noexc3 ]
  %i.bx = add i16 %.sroa.13.1.lcssa, -1
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.sroa.13.1.lcssa
end_hunk_0
begin_hunk_1_@_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs:bb.a

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eh, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i.epil.init ; 2 uses
  %i.dx = load <16 x i8>, ptr %i.dw, align 16, !noalias !73
  %.lobit.i.i.i.epil = ashr <16 x i8> %i.dx, splat (i8 7)
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dz, ptr %i.dw, align 16, !noalias !76
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 16)
  %.27.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 16)
  %i.ec = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull align 1 %.val14.i, i64 %.27.i, i1 false), !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  store ptr @_RNvYNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtBb_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1Y_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0Es_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTOhEE9call_onceCsj34PGqTgg0L_16deltalake_lakefs, ptr %i.ea, align 8, !noalias !70
  store i64 32, ptr %i.eb, align 8, !noalias !70
  store ptr %0, ptr %i.a, align 8, !noalias !70
  br label %.lr.ph.i9

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.07.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.eh, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i ; 2 uses
  %i.ee = load <16 x i8>, ptr %i.ed, align 16, !noalias !73
  %.lobit.i.i.i = ashr <16 x i8> %i.ee, splat (i8 7)
  %i.ef = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.eg = or <2 x i64> %i.ef, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eg, ptr %i.ed, align 16, !noalias !76
  %i.eh = add i64 %.sroa.0.07.i.i, 32             ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.ek = load <16 x i8>, ptr %i.ej, align 16, !noalias !73
  %.lobit.i.i.i.1 = ashr <16 x i8> %i.ek, splat (i8 7)
  %i.el = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.em = or <2 x i64> %i.el, splat (i64 -9187201950435737472)
  store <2 x i64> %i.em, ptr %i.ej, align 16, !noalias !76
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

.lr.ph.i9:                                        ; preds = %bb.w, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ %i.en, %bb.w ], [ 0, %._crit_edge.i.i ] ; 10 uses
  %i.en = add nuw i64 %.sroa.0.06.i, 1
  %i.eo = load ptr, ptr %0, align 8, !alias.scope !70, !nonnull !7, !noundef !7 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.0.06.i
  %i.eq = load i8, ptr %i.ep, align 1, !noundef !7
  %.not.i10 = icmp eq i8 %i.eq, -128
  br i1 %.not.i10, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.lr.ph.i9
  %.neg.i = xor i64 %.sroa.0.06.i, -1
  %.neg12.i = shl i64 %.neg.i, 5
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %.neg12.i ; 2 uses
  %i.es = sub nsw i64 0, %.sroa.0.06.i
  br label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %bb.x, %bb.q
  %i.et = load ptr, ptr %0, align 8, !alias.scope !79, !noalias !82, !nonnull !7, !noundef !7
  %i.eu = getelementptr inbounds [32 x i8], ptr %i.et, i64 %i.es
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -32
  %i.ew = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ev)
          to label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.r ; 3 uses

bb.r:                                             ; preds = %bb.x, %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.a) #24
          to label %common.resume unwind label %bb.y

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.val.i13 = load ptr, ptr %0, align 8, !alias.scope !70, !nonnull !7, !noundef !7 ; 7 uses
  %.val13.i = load i64, ptr %i.h, align 8, !alias.scope !70, !noundef !7 ; 6 uses
  %.sroa.0.07.i16.i = and i64 %.val13.i, %i.ew    ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.07.i16.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !84
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i18.i, label %._crit_edge.i17.i, !prof !65

._crit_edge.i17.i:                                ; preds = %.lr.ph.i18.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i16.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %.sroa.0.0.i.i14, %.lr.ph.i18.i ]
  %.lcssa.i.i = phi i16 [ %i.fa, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %i.fs, %.lr.ph.i18.i ]
  %i.fb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add i64 %.sroa.0.0.lcssa.i.i, %i.fc
  %i.fe = and i64 %i.fd, %.val13.i                ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noundef !7
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.s, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !22

bb.s:                                             ; preds = %._crit_edge.i17.i
  %i.fi = load <16 x i8>, ptr %.val.i13, align 16, !noalias !87
  %i.fj = icmp slt <16 x i8> %i.fi, zeroinitializer
  %i.fk = bitcast <16 x i1> %i.fj to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.fk, 0
  %i.fl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fk, i1 true)
  %i.fm = zext nneg i16 %i.fl to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i18.i:                                     ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i, %.lr.ph.i18.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i14, %.lr.ph.i18.i ], [ %.sroa.0.07.i16.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  %i.fn = phi i64 [ %i.fo, %.lr.ph.i18.i ], [ 0, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0E0Csj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  %i.fo = add i64 %i.fn, 16                       ; 2 uses
  %i.fp = add i64 %i.fo, %.sroa.0.010.i.i
  %.sroa.0.0.i.i14 = and i64 %i.fp, %.val13.i     ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i.i14
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.fq, align 1, !noalias !84
  %i.fr = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fs = bitcast <16 x i1> %i.fr to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fs, 0
  br i1 %.not.i.i.i, label %.lr.ph.i18.i, label %._crit_edge.i17.i, !prof !69

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i17.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.fm, %bb.s ], [ %i.fe, %._crit_edge.i17.i ] ; 4 uses
  %i.ft = sub i64 %.sroa.0.06.i, %.sroa.0.07.i16.i
  %i.fu = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i16.i
  %i.fv = xor i64 %i.fu, %i.ft
  %.unshifted.i = and i64 %i.fv, %.val13.i
  %i.fw = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fw, label %bb.u, label %bb.t, !prof !90

bb.t:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.fx = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.fy = sub nuw nsw i64 -32, %i.fx
  %i.fz = getelementptr inbounds i8, ptr %.val.i13, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !noundef !7
  %i.gc = lshr i64 %i.ew, 57
  %i.gd = trunc nuw nsw i64 %i.gc to i8           ; 2 uses
  %i.ge = add i64 %.sroa.0.0.i5.i.i, -16
  %i.gf = and i64 %i.ge, %.val13.i
  store i8 %i.gd, ptr %i.ga, align 1
  %i.gg = load ptr, ptr %0, align 8, !alias.scope !70, !nonnull !7, !noundef !7
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.gf
  %i.gi = getelementptr i8, ptr %i.gh, i64 16
  store i8 %i.gd, ptr %i.gi, align 1
  %i.gj = icmp eq i8 %i.gb, -1
  br i1 %i.gj, label %bb.v, label %bb.x

bb.u:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.gk = lshr i64 %i.ew, 57
  %i.gl = trunc nuw nsw i64 %i.gk to i8           ; 2 uses
  %i.gm = add i64 %.sroa.0.06.i, -16
  %i.gn = and i64 %.val13.i, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i13, i64 %.sroa.0.06.i
  store i8 %i.gl, ptr %i.go, align 1
  %i.gp = load ptr, ptr %0, align 8, !alias.scope !70, !nonnull !7, !noundef !7
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.gn
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  store i8 %i.gl, ptr %i.gr, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gs = add i64 %.sroa.0.06.i, -16
  %i.gt = load i64, ptr %i.h, align 8, !alias.scope !70, !noundef !7
  %i.gu = and i64 %i.gt, %i.gs
  %i.gv = load ptr, ptr %0, align 8, !alias.scope !70, !nonnull !7, !noundef !7
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gw, align 1
  %i.gx = load ptr, ptr %0, align 8, !alias.scope !70, !nonnull !7, !noundef !7
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.gu
  %i.gz = getelementptr i8, ptr %i.gy, i64 16
  store i8 -1, ptr %i.gz, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fz, ptr noundef nonnull align 1 dereferenceable(32) %i.er, i64 32, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i9
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.i
  br i1 %exitcond.not.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph.i9

bb.x:                                             ; preds = %bb.t
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull %i.er, ptr noundef nonnull %i.fz, i64 noundef 4)
          to label %_RNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes.exit.i unwind label %bb.r

bb.y:                                             ; preds = %bb.r
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.w
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !70
  %.pre.i.fr = freeze i64 %.pre.i                 ; 3 uses
  %.pre13.i = add i64 %.pre.i.fr, 1
  %i.hb = lshr i64 %.pre13.i, 3
  %i.hc = mul nuw i64 %i.hb, 7
  %i.hd = icmp ult i64 %.pre.i.fr, 8
  %spec.select = select i1 %i.hd, i64 %.pre.i.fr, i64 %i.hc
  %.pre = load i64, ptr %i.d, align 8, !alias.scope !70
  br label %bb.z

bb.z:                                             ; preds = %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.he = phi i64 [ %i.e, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.pre, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.hf = phi i64 [ 0, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %spec.select, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hh = sub i64 %i.hf, %i.he
  store i64 %i.hh, ptr %i.hg, align 8, !alias.scope !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  br label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.c, %bb.z
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.c ], [ undef, %bb.z ], [ %.sroa.12.030, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.c ], [ -9223372036854775807, %bb.z ], [ %.sroa.7.029, %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ -9223372036854775807, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs.exit ]
  %i.hi = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.hj = insertvalue { i64, i64 } %i.hi, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.hj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
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
  br i1 %i.q, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #23
  br label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCs2HSpDNxY7OE_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !91
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [56 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !94
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -896 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
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
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !97
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -256 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %.not10 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not10, label %.lr.ph, label %._crit_edge17

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted12 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted12, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !100
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !103 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !103 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !103, !noundef !7 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !103
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
  br i1 %i.s, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #23, !noalias !103
  br label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalE0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.a, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !106, !noundef !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !106
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !106 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !106, !noundef !7 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !106, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !106, !noundef !7
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !106, !noundef !7
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !106
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !106, !nonnull !7, !noundef !7
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !106
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !106, !nonnull !7, !noundef !7
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg7.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !106, !inline_history !109
  %i.s = load i64, ptr %i.e, align 8, !noalias !106, !noundef !7
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !106
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.c

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !106, !noundef !7 ; 3 uses
  %1 = icmp ult i64 %i.v, 8
  %i.w = add i64 %i.v, 1
  %i.x = lshr i64 %i.w, 3
  %i.y = mul nuw i64 %i.x, 7
  %.sroa.04.0.i.i = select i1 %1, i64 %i.v, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !106, !noundef !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ac = sub i64 %.sroa.04.0.i.i, %i.aa
  store i64 %i.ac, ptr %i.ab, align 8, !noalias !106
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3y_4SendEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1s_6marker4SyncNtB3g_4SendEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtB1s_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !7
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val.i.i = load ptr, ptr %i.h, align 8         ; 5 uses
  %i.i = getelementptr i8, ptr %i.g, i64 -8
  %.val6.i.i = load ptr, ptr %i.i, align 8, !nonnull !7, !align !110, !noundef !7 ; 5 uses
  %i.j = load ptr, ptr %.val6.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !111, !invariant.load !7 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !112, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.o) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !111, !invariant.load !7 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit5.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !112, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) %i.u) #23
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit5.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtNtB1u_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit5.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.f
  resume { ptr, i32 } %i.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.e, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1s_6marker4SyncNtB3g_4SendEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtB1s_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB1s_6marker4SyncNtB3g_4SendEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtB1s_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2j_4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !7
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_EEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1Y_14AttributeValueEEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1q_14AttributeValueEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %bb.d ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !7
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBJ_14AttributeValueEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1q_14AttributeValueEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

_RNvXs1_NtCs3gpiEk3WpjL_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1q_14AttributeValueEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !119, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !123, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !123, !nonnull !7, !noundef !7 ; 3 uses
  %i.h = load <16 x i8>, ptr %i.g, align 16, !noalias !124
  %i.i = icmp sgt <16 x i8> %i.h, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, %bb.c
  %.sroa.05.016.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ]
  %.sroa.86.013.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i ] ; 2 uses
  %.not10.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i, 0
  br i1 %.not10.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.l = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %.sroa.6.015.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %.sroa.05.016.i.i.i, %bb.d ]
  %i.n = load <16 x i8>, ptr %i.l, align 16, !noalias !129
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -768 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.o to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.015.i.i.i, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i ]
  %.sroa.05.1.i.i.i = phi ptr [ %.sroa.05.016.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i, %bb.d ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.r = add i16 %.lcssa.i.i.i.i, -1
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
end_hunk_1
begin_hunk_2_@_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !382, !noundef !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !385
  %.promoted2 = load ptr, ptr %i.a, align 8
  %.promoted5 = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %.preheader.i
  %.promoted12.i.i7 = phi ptr [ %.promoted5, %.preheader.i ], [ %.promoted12.i.i6, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i ] ; 2 uses
  %.lcssa14 = phi ptr [ %.promoted2, %.preheader.i ], [ %.lcssa13, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i ] ; 2 uses
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %.not10.i.i = icmp eq i16 %i.g, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.n, ptr %i.f, align 8, !alias.scope !385
  store ptr %i.m, ptr %i.a, align 8, !alias.scope !385
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.promoted12.i.i7, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.lcssa14, %bb.b ]
  %i.k = load <16 x i8>, ptr %i.i, align 16, !noalias !389
  %i.l = icmp sgt <16 x i8> %i.k, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -768 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.l to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %.promoted12.i.i6 = phi ptr [ %i.n, %._crit_edge.i.i ], [ %.promoted12.i.i7, %bb.b ]
  %.lcssa13 = phi ptr [ %i.m, %._crit_edge.i.i ], [ %.lcssa14, %bb.b ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !385
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %.lcssa13, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !382
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(48) %i.v), !noalias !382
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.a
  %i.w = load i64, ptr %0, align 8, !range !3, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !7 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.w) #23
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.d, %bb.c, %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsj34PGqTgg0L_16deltalake_lakefs.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !392, !noundef !7 ; 2 uses
  %.not10.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !392 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted12.i = load ptr, ptr %i.g, align 8, !alias.scope !392
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.m, ptr %i.g, align 8, !alias.scope !392
  store ptr %i.l, ptr %i.d, align 8, !alias.scope !392
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.j = load <16 x i8>, ptr %i.h, align 16, !noalias !395
  %i.k = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.k to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.b, %._crit_edge.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !392
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.b, -1
  store i64 %i.u, ptr %i.a, align 8
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !35

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !398
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !398 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !398
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !398
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %2 = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !413, !noalias !414, !nonnull !7, !noundef !7 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !415
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !413, !noalias !414, !noundef !7 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !416
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.av, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #24
          to label %.body unwind label %bb.m, !noalias !413

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !421
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !415
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %.noexc.i.i unwind label %bb.i, !noalias !415

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.k, !noalias !415

bb.k:                                             ; preds = %.noexc.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #24
          to label %.body.i.i unwind label %bb.l, !noalias !415

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !415
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %.noexc.i.i
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.ae, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48                ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !415
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.as, 0
  br i1 %i.be, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !415
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.b) #24
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !414, !noalias !413
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !413, !noalias !414, !noundef !7
  store i64 %i.bh, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !414, !noalias !413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtBT_5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = add i64 %i.c, 1                          ; 3 uses
  %i.f = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.f, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw i64 %i.e, 5                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17                     ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 5 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !35

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !426
  %i.m = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !426 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !426
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.p = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.i), !noalias !426
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.p, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.m, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.g
  %2 = icmp ult i64 %i.c, 8
  %i.r = lshr i64 %i.e, 3
  %i.s = mul nuw nsw i64 %i.r, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.c, i64 %i.s
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.c, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.q, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !441, !noalias !442, !nonnull !7, !noundef !7 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.t, i64 %.pre-phi, i1 false), !noalias !443
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !441, !noalias !442, !noundef !7 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.x = load <16 x i8>, ptr %i.t, align 16, !noalias !444
  %i.y = icmp sgt <16 x i8> %i.x, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = ptrtoint ptr %i.t to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3y_4SendEL_EEEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.sroa.012.029.i.i, ptr nonnull align 8 dereferenceable(32) %i.a) #24
          to label %.body unwind label %bb.l, !noalias !441

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.012.029.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %bb.k ]
  %.sroa.1015.028.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ %i.aq, %bb.k ]
  %.sroa.013.027.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.k ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.k ] ; 2 uses
  %.sroa.814.025.i.i = phi i16 [ %i.z, %.lr.ph.i.i ], [ %i.as, %bb.k ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.025.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ad = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.j ] ; 2 uses
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.sroa.013.027.i.i, %bb.j ]
  %i.af = load <16 x i8>, ptr %i.ad, align 16, !noalias !449
  %i.ag = icmp sgt <16 x i8> %i.af, splat (i8 -1)
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -512 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ag to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %bb.j ], [ %i.ah, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.025.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.al ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !454, !noalias !443
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -16
  %i.ap = invoke { ptr, ptr } @_RNvXs2_NtCs4j34XAPZOn0_4http10extensionsINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_8AnyCloneNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1s_4SendEL_ENtNtB1u_5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao)
          to label %bb.k unwind label %bb.i, !noalias !443 ; 2 uses

bb.k:                                             ; preds = %.loopexit.i.i
  %i.aq = add i64 %.sroa.1015.028.i.i, -1         ; 2 uses
  %i.ar = add i16 %.lcssa.i.i.i, -1
  %i.as = and i16 %i.ar, %.lcssa.i.i.i
  %i.at = extractvalue { ptr, ptr } %i.ap, 0
  %i.au = extractvalue { ptr, ptr } %i.ap, 1
  %i.av = ptrtoint ptr %i.am to i64
  %i.aw = sub i64 %i.ab, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !noalias !443
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.az, i64 -16
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !443
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.az, i64 -8
  store ptr %i.au, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !443
  unreachable

bb.m:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEENtNtNtBT_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2Z_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.n

.loopexit:                                        ; preds = %bb.k, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtBT_6marker4SyncNtB2H_4SendEL_EEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !442, !noalias !441
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !441, !noalias !442, !noundef !7
  store i64 %i.bf, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !442, !noalias !441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.n:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB2Z_4SendEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.body
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !35

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !461
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #23, !noalias !461 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !461
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !461
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %2 = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %2, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !476, !noalias !477, !nonnull !7, !noundef !7 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !478
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !476, !noalias !477, !noundef !7 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.z = load <16 x i8>, ptr %i.v, align 16, !noalias !479
  %i.aa = icmp sgt <16 x i8> %i.z, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.az, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1Y_14AttributeValueEEENCNvMse_B1D_B1A_15clone_from_impl0EECsj34PGqTgg0L_16deltalake_lakefs(i64 %.sroa.012.029.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #24
          to label %.body unwind label %bb.t, !noalias !476

bb.j:                                             ; preds = %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %.lr.ph.i.i
  %.sroa.012.029.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bh, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.1015.028.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.as, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.013.027.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.814.025.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ap, %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.not10.i.i.i = icmp eq i16 %.sroa.814.025.i.i, 0
  br i1 %.not10.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.013.027.i.i, %bb.j ]
  %i.ai = load <16 x i8>, ptr %i.ag, align 16, !noalias !484
  %i.aj = icmp sgt <16 x i8> %i.ai, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.aj to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.025.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i, -1
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.aq ; 3 uses
  %i.as = add i64 %.sroa.1015.028.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !478
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.au = load i64, ptr %i.at, align 8, !range !227, !alias.scope !499, !noalias !500, !noundef !7 ; 2 uses
  %i.av = add nsw i64 %i.au, 9223372036854775807
  %i.aw = icmp ugt i64 %i.au, -9223372036854775808
  %i.ax = select i1 %i.aw, i64 %i.av, i64 6
  switch i64 %i.ax, label %bb.k [
    i64 0, label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
    i64 5, label %bb.p
    i64 6, label %bb.q
  ]

bb.k:                                             ; preds = %.loopexit.i.i
  unreachable

bb.l:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.m:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.n:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.o:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.p:                                             ; preds = %.loopexit.i.i
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i

bb.q:                                             ; preds = %.loopexit.i.i
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.i, !noalias !478

_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %.loopexit.i.i
  %.sink.i.i = phi i64 [ -9223372036854775802, %bb.p ], [ -9223372036854775803, %bb.o ], [ -9223372036854775804, %bb.n ], [ -9223372036854775805, %bb.m ], [ -9223372036854775806, %bb.l ], [ -9223372036854775807, %.loopexit.i.i ]
  store i64 %.sink.i.i, ptr %i.a, align 8, !alias.scope !501, !noalias !502
  br label %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.sink.split.i.i, %bb.q
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 -24
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.r, !noalias !478

bb.r:                                             ; preds = %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #24
          to label %.body.i.i unwind label %bb.s, !noalias !478

bb.s:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !478
  unreachable

_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RNvXsb_NtCsjyY8HP3IvQ6_12object_store10attributesNtB5_9AttributeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.bb = ptrtoint ptr %i.ar to i64
  %i.bc = sub i64 %i.ae, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 48                ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !478
  %i.bh = add nsw i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.as, 0
  br i1 %i.bi, label %.loopexit, label %bb.j

bb.t:                                             ; preds = %.body.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !478
  unreachable

bb.u:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB1p_14AttributeValueEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32) %i.b) #24
          to label %bb.w unwind label %bb.v

.loopexit:                                        ; preds = %_RNvYTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsj34PGqTgg0L_16deltalake_lakefs.exit
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !477, !noalias !476
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !476, !noalias !477, !noundef !7
  store i64 %i.bl, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !477, !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.v:                                             ; preds = %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !503, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !509, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.c

end_hunk_2
