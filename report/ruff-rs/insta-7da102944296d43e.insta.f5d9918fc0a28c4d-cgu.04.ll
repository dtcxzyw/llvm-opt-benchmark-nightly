inline.NumInlined: 486
inline.NumDeleted: 182
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtB1a_12OffsetLookupmEEEECsl6EuCK7xub1_5insta:bb.a
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBS_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1l_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBS_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1l_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecmEECsl6EuCK7xub1_5insta.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecmEECsl6EuCK7xub1_5insta.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineINtNtB4_5utils12OffsetLookupmEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %.not = icmp ult i64 %5, %6
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not104 = icmp ult i64 %2, %3
  br i1 %.not104, label %bb.e, label %bb.bk

bb.c:                                             ; preds = %bb.a
  %.sroa.034.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !12, !noalias !15, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !8, !alias.scope !12, !noalias !15, !noundef !4
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !15
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit: ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12, !noalias !15, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k ; 4 uses
  store i64 1, ptr %i.p, align 8
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %.sroa.4180.0..sroa_idx, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.034.0, ptr %.sroa.5181.0..sroa_idx, align 8
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %5, ptr %.sroa.6182.0..sroa_idx, align 8
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !12, !noalias !15
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bg

bb.e:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 11 uses
  %i.s = add i64 %i.r, %2                         ; 8 uses
  %i.t = add i64 %i.r, %5                         ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.u = icmp uge i64 %i.s, %3
  %i.v = icmp uge i64 %i.t, %6
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.w = sub nuw i64 %3, %i.s                     ; 2 uses
  %i.x = sub nuw i64 %6, %i.t                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !20, !noalias !17
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !20, !noalias !17 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !20, !noalias !17, !nonnull !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !17, !noalias !20
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !17, !noalias !20 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !17, !noalias !20, !nonnull !4
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ak = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.an, %bb.j ]
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.av, %bb.j ] ; 3 uses
  %i.al = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.am, %bb.j ]
  %i.am = add i64 %i.al, -1                       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.033.i.i.i.i, %i.w
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = add i64 %i.ak, -1                       ; 2 uses
  %i.ao = sub i64 %i.am, %i.z                     ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.ab
  br i1 %i.ap, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20, !noalias !22
  unreachable

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i.i: ; preds = %bb.g
  %i.aq = sub i64 %i.an, %i.af                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ah
  br i1 %i.ar, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !36
  unreachable

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ao
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.aq
  %.val.i.i.i.i.i = load i32, ptr %i.as, align 4, !noalias !39, !noundef !4
  %.val10.i.i.i.i.i = load i32, ptr %i.at, align 4, !noalias !39, !noundef !4
  %i.au = icmp eq i32 %.val.i.i.i.i.i, %.val10.i.i.i.i.i
  br i1 %i.au, label %bb.j, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta.exit

bb.j:                                             ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i
  %i.av = add nuw i64 %.sroa.01.033.i.i.i.i, 1    ; 2 uses
  %exitcond65.not.i.i.i.i = icmp eq i64 %i.av, %i.x
  br i1 %exitcond65.not.i.i.i.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.f

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta.exit: ; preds = %bb.f, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i, %bb.j, %bb.e
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ %i.w, %bb.f ], [ %.sroa.01.033.i.i.i.i, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i ], [ %i.x, %bb.j ] ; 5 uses
  %i.aw = sub nuw i64 %3, %2                      ; 4 uses
  %i.ax = icmp eq i64 %i.r, %i.aw
  %i.ay = sub i64 %6, %5                          ; 4 uses
  %i.az = icmp eq i64 %i.aw, %i.ay
  %or.cond113 = and i1 %i.az, %i.ax
  br i1 %or.cond113, label %bb.bi, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ba = sub i64 %i.aw, %.sroa.0.0.i             ; 2 uses
  %i.bb = sub i64 %i.ay, %.sroa.0.0.i             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %.sroa.013.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !47
  store ptr null, ptr %i.d, align 8, !noalias !47
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.bc, align 8, !noalias !47
  %.not59.not.i = icmp ugt i64 %i.bb, %i.r
  br i1 %.not59.not.i, label %.lr.ph61.i, label %select.unfold._crit_edge.i

.lr.ph61.i:                                       ; preds = %bb.k
  %spec.select.i = sub nuw i64 %i.bb, %i.r        ; 2 uses
  %.not3457.not.i = icmp ugt i64 %i.ba, %i.r
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !45, !noalias !48
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !45, !noalias !48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !43, !noalias !49
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !43, !noalias !49 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !45, !noalias !48, !nonnull !4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !43, !noalias !49, !nonnull !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %.not3457.not.i, label %.lr.ph61.split.i, label %.lr.ph61.split.us.i

.lr.ph61.split.us.i:                              ; preds = %.lr.ph61.i, %.preheader.us.i
  %.sroa.018.160.us.i = phi i64 [ %i.bs, %.preheader.us.i ], [ %spec.select.i, %.lr.ph61.i ]
  %i.bs = add i64 %.sroa.018.160.us.i, -1         ; 2 uses
  %i.bt = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split.us.i, !noalias !47

bb.l:                                             ; preds = %.lr.ph61.split.us.i
  br i1 %i.bt, label %.split.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.l
  %.not.us.i = icmp eq i64 %i.bs, 0
  br i1 %.not.us.i, label %select.unfold._crit_edge.i, label %.lr.ph61.split.us.i

.loopexit.split-lp.loopexit.split.us.i:           ; preds = %.lr.ph61.split.us.i
  %lpad.loopexit45.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.select.unfold.loopexit_crit_edge.i:              ; preds = %bb.v
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %select.unfold._crit_edge.i, label %.lr.ph61.split.i

select.unfold._crit_edge.i:                       ; preds = %.preheader.us.i, %.select.unfold.loopexit_crit_edge.i, %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !50
  store i64 1, ptr %i.h, align 8, !alias.scope !40, !noalias !50
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_ECsl6EuCK7xub1_5insta.exit

.lr.ph61.split.i:                                 ; preds = %.lr.ph61.i, %.select.unfold.loopexit_crit_edge.i
  %.sroa.018.160.i = phi i64 [ %i.bv, %.select.unfold.loopexit_crit_edge.i ], [ %spec.select.i, %.lr.ph61.i ] ; 3 uses
  %i.bv = add i64 %.sroa.018.160.i, -1            ; 5 uses
  %i.bw = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split.i, !noalias !47

.loopexit.i:                                      ; preds = %bb.u, %bb.q, %bb.p, %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split.i:              ; preds = %.lr.ph61.split.i
  %lpad.loopexit45.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp46.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split.i, %.loopexit.i, %.loopexit.split-lp.loopexit.split.us.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp46.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit45.i, %.loopexit.split-lp.loopexit.split.i ], [ %lpad.loopexit45.us.i, %.loopexit.split-lp.loopexit.split.us.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.w, !noalias !47

bb.m:                                             ; preds = %.lr.ph61.split.i
  br i1 %i.bw, label %.split.us.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.bx = sub i64 %i.bv, %i.be                    ; 3 uses
  %i.by = icmp ult i64 %i.bx, %i.bg
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bx
  br i1 %i.by, label %.lr.ph.split.i, label %.invoke.i

.split.us.i:                                      ; preds = %bb.l, %bb.m
  store i64 0, ptr %i.h, align 8, !alias.scope !40, !noalias !50
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !47
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_ECsl6EuCK7xub1_5insta.exit

.lr.ph.split.i:                                   ; preds = %.preheader.i, %bb.v
  %.sroa.026.058.i = phi i64 [ %i.ca, %bb.v ], [ %.sroa.013.0.i, %.preheader.i ] ; 3 uses
  %i.ca = add i64 %.sroa.026.058.i, -1            ; 5 uses
  %i.cb = sub i64 %i.ca, %i.bi                    ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %i.bk
  br i1 %i.cc, label %bb.n, label %.invoke.i

.invoke.i:                                        ; preds = %.preheader.i, %.lr.ph.split.i
  %i.cd = phi i64 [ %i.cb, %.lr.ph.split.i ], [ %i.bx, %.preheader.i ]
  %i.ce = phi i64 [ %i.bk, %.lr.ph.split.i ], [ %i.bg, %.preheader.i ]
  %i.cf = phi ptr [ @8, %.lr.ph.split.i ], [ @7, %.preheader.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf) #20
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !47

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cb
  %.val.i = load i32, ptr %i.bz, align 4, !noalias !47, !noundef !4
  %.val43.i = load i32, ptr %i.cg, align 4, !noalias !47, !noundef !4
  %i.ch = icmp eq i32 %.val.i, %.val43.i
  br i1 %i.ch, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !47
  store i64 %.sroa.018.160.i, ptr %i.b, align 8, !noalias !47
  store i64 %i.ca, ptr %i.bp, align 8, !noalias !47
  %i.ci = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.q unwind label %.loopexit.i, !noalias !47 ; 2 uses

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !47
  store i64 %.sroa.018.160.i, ptr %i.c, align 8, !noalias !47
  store i64 %.sroa.026.058.i, ptr %i.br, align 8, !noalias !47
  %i.cj = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.t unwind label %.loopexit.i, !noalias !47 ; 2 uses

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47
  store i64 %i.bv, ptr %i.a, align 8, !noalias !47
  store i64 %.sroa.026.058.i, ptr %i.bq, align 8, !noalias !47
  %i.ck = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.r unwind label %.loopexit.i, !noalias !47 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not35.i = icmp eq ptr %i.ci, null
  %..i = select i1 %.not35.i, ptr @9, ptr %i.ci
  %.not36.i = icmp eq ptr %i.ck, null
  %.39.i = select i1 %.not36.i, ptr @9, ptr %i.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.cl = load i32, ptr %.39.i, align 4, !alias.scope !61, !noalias !62, !noundef !4
  %i.cm = load i32, ptr %..i, align 4, !alias.scope !63, !noalias !64, !noundef !4
  %i.cn = call i32 @llvm.umax.i32(i32 %i.cl, i32 %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.sroa.02.0.i = phi i32 [ %i.cp, %bb.t ], [ %i.cn, %bb.r ] ; 2 uses
  %.not38.i = icmp eq i32 %.sroa.02.0.i, 0
  br i1 %.not38.i, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.p
  %.not37.i = icmp eq ptr %i.cj, null
  %.40.i = select i1 %.not37.i, ptr @9, ptr %i.cj
  %i.co = load i32, ptr %.40.i, align 4, !noalias !47, !noundef !4
  %i.cp = add i32 %i.co, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !47
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.cq = invoke { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bv, i64 noundef %i.ca, i32 noundef %.sroa.02.0.i)
          to label %bb.v unwind label %.loopexit.i, !noalias !47 ; 0 uses

bb.v:                                             ; preds = %bb.u, %bb.s
  %.not34.i = icmp eq i64 %i.ca, 0
  br i1 %.not34.i, label %.select.unfold.loopexit_crit_edge.i, label %.lr.ph.split.i

bb.w:                                             ; preds = %.loopexit.split-lp.i
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !47
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.ag, %bb.bh, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.thr_comm.split-lp, %bb.bh ], [ %lpad.phi, %bb.ag ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_ECsl6EuCK7xub1_5insta.exit: ; preds = %select.unfold._crit_edge.i, %.split.us.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineINtNtB4_5utils12OffsetLookupmEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta:bb.a
  %.sroa.016.2 = phi i64 [ %i.fp, %bb.at ], [ %i.ew, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit130 ], [ %.sroa.016.0255, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit123 ] ; 3 uses
  %.sroa.0.2 = phi i64 [ %i.fo, %bb.at ], [ %.sroa.0.0256, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit130 ], [ %i.er, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit123 ] ; 3 uses
  %i.fj = icmp ult i64 %.sroa.016.2, %i.cu
  %i.fk = icmp ult i64 %.sroa.0.2, %i.cv
  %or.cond3 = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond3, label %bb.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapTjjEmEECsl6EuCK7xub1_5insta.exit

bb.at:                                            ; preds = %bb.al, %bb.ak
  %i.fl = load ptr, ptr %i.dy, align 8, !alias.scope !80, !noalias !83, !nonnull !4, !noundef !4
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.et ; 4 uses
  store i64 0, ptr %i.fm, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %i.ee, ptr %.sroa.4170.0..sroa_idx, align 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %i.ef, ptr %.sroa.5171.0..sroa_idx, align 8
  %.sroa.6172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 1, ptr %.sroa.6172.0..sroa_idx, align 8
  %i.fn = add i64 %i.et, 1
  store i64 %i.fn, ptr %i.dx, align 8, !alias.scope !80, !noalias !83
  %i.fo = add nuw i64 %.sroa.0.0256, 1
  %i.fp = add nuw i64 %.sroa.016.0255, 1
  br label %bb.as

bb.au:                                            ; preds = %bb.bh, %bb.ag
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.av:                                            ; preds = %bb.ad, %bb.ac
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !75, !noalias !78, !nonnull !4, !noundef !4
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %i.eb ; 4 uses
  store i64 1, ptr %i.ft, align 8
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %i.s, ptr %.sroa.4195.0..sroa_idx, align 8
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 %i.cv, ptr %.sroa.5196.0..sroa_idx, align 8
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 %i.t, ptr %.sroa.6197.0..sroa_idx, align 8
  %i.fu = add i64 %i.eb, 1                        ; 3 uses
  store i64 %i.fu, ptr %i.ea, align 8, !alias.scope !75, !noalias !78
  %i.fv = load i64, ptr %i.dz, align 8, !range !8, !alias.scope !95, !noalias !98, !noundef !4
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.aw, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit128

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dz)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit128

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit128: ; preds = %bb.aw, %bb.av
  %i.fx = load ptr, ptr %i.fr, align 8, !alias.scope !95, !noalias !98, !nonnull !4, !noundef !4
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %i.fx, i64 %i.fu ; 4 uses
  store i64 2, ptr %i.fy, align 8
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i64 %i.s, ptr %.sroa.4210.0..sroa_idx, align 8
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i64 %i.t, ptr %.sroa.5211.0..sroa_idx, align 8
  %.sroa.6212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store i64 %i.cu, ptr %.sroa.6212.0..sroa_idx, align 8
  %i.fz = add i64 %i.eb, 2
  store i64 %i.fz, ptr %i.ea, align 8, !alias.scope !95, !noalias !98
  br label %bb.af

bb.ax:                                            ; preds = %bb.af
  %i.ga = add i64 %.sroa.0.1, %i.s
  %i.gb = sub nuw i64 %i.cv, %.sroa.0.1
  %i.gc = add i64 %.sroa.016.1, %i.t
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !alias.scope !100, !noalias !103, !noundef !4 ; 3 uses
  %i.gg = load i64, ptr %i.gd, align 8, !range !8, !alias.scope !100, !noalias !103, !noundef !4
  %i.gh = icmp eq i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.ay, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gd)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit: ; preds = %bb.ay, %bb.ax
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !100, !noalias !103, !nonnull !4, !noundef !4
  %i.gk = getelementptr inbounds nuw [40 x i8], ptr %i.gj, i64 %i.gf ; 4 uses
  store i64 1, ptr %i.gk, align 8
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 %i.ga, ptr %.sroa.4185.0..sroa_idx, align 8
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i64 %i.gb, ptr %.sroa.5186.0..sroa_idx, align 8
  %.sroa.6187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store i64 %i.gc, ptr %.sroa.6187.0..sroa_idx, align 8
  %i.gl = add i64 %i.gf, 1
  store i64 %i.gl, ptr %i.ge, align 8, !alias.scope !100, !noalias !103
  br label %bb.az

bb.az:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit, %bb.af
  %.sroa.0.3 = phi i64 [ %.sroa.0.1, %bb.af ], [ %i.cv, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit ]
  %i.gm = icmp ult i64 %.sroa.016.1, %i.cu
  br i1 %i.gm, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.gn = add i64 %.sroa.0.3, %i.s
  %i.go = add i64 %.sroa.016.1, %i.t
  %i.gp = sub nuw i64 %i.cu, %.sroa.016.1
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !105, !noalias !108, !noundef !4 ; 3 uses
  %i.gt = load i64, ptr %i.gq, align 8, !range !8, !alias.scope !105, !noalias !108, !noundef !4
  %i.gu = icmp eq i64 %i.gs, %i.gt
  br i1 %i.gu, label %bb.bb, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gq)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit: ; preds = %bb.bb, %bb.ba
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !105, !noalias !108, !nonnull !4, !noundef !4
  %i.gx = getelementptr inbounds nuw [40 x i8], ptr %i.gw, i64 %i.gs ; 4 uses
  store i64 2, ptr %i.gx, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i64 %i.gn, ptr %.sroa.4205.0..sroa_idx, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %i.go, ptr %.sroa.5206.0..sroa_idx, align 8
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i64 %i.gp, ptr %.sroa.6207.0..sroa_idx, align 8
  %i.gy = add i64 %i.gs, 1
  store i64 %i.gy, ptr %i.gr, align 8, !alias.scope !105, !noalias !108
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit, %bb.az
  %.not106 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not106, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit, %bb.bc
  call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.gz = add i64 %i.s, %i.cv
  %i.ha = add i64 %i.t, %i.cu
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !110, !noalias !113, !noundef !4 ; 3 uses
  %i.he = load i64, ptr %i.hb, align 8, !range !8, !alias.scope !110, !noalias !113, !noundef !4
  %i.hf = icmp eq i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.bf, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit

bb.bf:                                            ; preds = %bb.be
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit: ; preds = %bb.bf, %bb.be
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !110, !noalias !113, !nonnull !4, !noundef !4
  %i.hi = getelementptr inbounds nuw [40 x i8], ptr %i.hh, i64 %i.hd ; 4 uses
  store i64 0, ptr %i.hi, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 %i.gz, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store i64 %i.ha, ptr %.sroa.5166.0..sroa_idx, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  store i64 %.sroa.0.0.i, ptr %.sroa.6167.0..sroa_idx, align 8
  %i.hj = add i64 %i.hd, 1
  store i64 %i.hj, ptr %i.hc, align 8, !alias.scope !110, !noalias !113
  br label %bb.bd

bb.bg:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit160, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit159, %bb.bd
  ret void

bb.bh:                                            ; preds = %bb.x
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hk)
          to label %common.resume unwind label %bb.au

bb.bi:                                            ; preds = %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !115, !noalias !118, !noundef !4 ; 3 uses
  %i.ho = load i64, ptr %i.hl, align 8, !range !8, !alias.scope !115, !noalias !118, !noundef !4
  %i.hp = icmp eq i64 %i.hn, %i.ho
  br i1 %i.hp, label %bb.bj, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit159

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hl), !noalias !118
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit159

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit159: ; preds = %bb.bi, %bb.bj
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hr = load ptr, ptr %i.hq, align 8, !alias.scope !115, !noalias !118, !nonnull !4, !noundef !4
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.hr, i64 %i.hn ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ht = add i64 %i.hn, 1
  store i64 %i.ht, ptr %i.hm, align 8, !alias.scope !115, !noalias !118
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bg

bb.bk:                                            ; preds = %bb.b
  %i.hu = sub i64 %6, %5
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !120, !noalias !123, !noundef !4 ; 3 uses
  %i.hy = load i64, ptr %i.hv, align 8, !range !8, !alias.scope !120, !noalias !123, !noundef !4
  %i.hz = icmp eq i64 %i.hx, %i.hy
  br i1 %i.hz, label %bb.bl, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit160

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hv), !noalias !123
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit160

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit160: ; preds = %bb.bk, %bb.bl
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !120, !noalias !123, !nonnull !4, !noundef !4
  %i.ic = getelementptr inbounds nuw [40 x i8], ptr %i.ib, i64 %i.hx ; 4 uses
  store i64 2, ptr %i.ic, align 8
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 %2, ptr %.sroa.4200.0..sroa_idx, align 8
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %5, ptr %.sroa.5201.0..sroa_idx, align 8
  %.sroa.6202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store i64 %i.hu, ptr %.sroa.6202.0..sroa_idx, align 8
  %i.id = add i64 %i.hx, 1
  store i64 %i.id, ptr %i.hw, align 8, !alias.scope !120, !noalias !123
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineINtNtNtB6_4text6inline11MultiLookupeEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %.not = icmp ult i64 %5, %6
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not104 = icmp ult i64 %2, %3
  br i1 %.not104, label %bb.e, label %bb.bk

bb.c:                                             ; preds = %bb.a
  %.sroa.034.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !125, !noalias !128, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !8, !alias.scope !125, !noalias !128, !noundef !4
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !128
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit: ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !125, !noalias !128, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k ; 4 uses
  store i64 1, ptr %i.p, align 8
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %.sroa.4178.0..sroa_idx, align 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.034.0, ptr %.sroa.5179.0..sroa_idx, align 8
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %5, ptr %.sroa.6180.0..sroa_idx, align 8
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !125, !noalias !128
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bg

bb.e:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6) ; 12 uses
  %i.s = add i64 %i.r, %2                         ; 8 uses
  %i.t = add i64 %i.r, %5                         ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.u = icmp uge i64 %i.s, %3
  %i.v = icmp uge i64 %i.t, %6
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.w = sub nuw i64 %3, %i.s                     ; 2 uses
  %i.x = sub nuw i64 %6, %i.t                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val11.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !133, !noalias !130 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val10.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !133, !noalias !130, !nonnull !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !130, !noalias !133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !130, !noalias !133, !nonnull !4
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ac = phi i64 [ %3, %.lr.ph.i.i.i.i ], [ %i.af, %bb.j ]
  %.sroa.01.032.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.as, %bb.j ] ; 4 uses
  %i.ad = phi i64 [ %6, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.j ]
  %i.ae = add i64 %i.ad, -1                       ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.032.i.i.i.i, %i.w
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add i64 %i.ac, -1                       ; 4 uses
  %i.ag = icmp ult i64 %i.ae, %.val11.i.i.i.i.i
  br i1 %i.ag, label %_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef %.val11.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20, !noalias !135
  unreachable

_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %.val10.i.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !144, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !144, !noundef !4 ; 2 uses
  %i.al = icmp ult i64 %i.af, %.val9.i.i.i.i.i
  br i1 %i.al, label %_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %.val9.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !135
  unreachable

_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i: ; preds = %_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %i.af ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noalias !147, !noundef !4
  %i.ap = icmp eq i64 %i.ak, %i.ao
  br i1 %i.ap, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i: ; preds = %_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i
  %i.aq = load ptr, ptr %i.am, align 8, !noalias !147, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.ai, ptr nonnull readonly %i.aq, i64 %i.ak), !alias.scope !150, !noalias !154
  %i.ar = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.j, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta.exit

bb.j:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i
  %i.as = add nuw i64 %.sroa.01.032.i.i.i.i, 1    ; 2 uses
  %exitcond59.not.i.i.i.i = icmp eq i64 %i.as, %i.x
  br i1 %exitcond59.not.i.i.i.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta.exit, label %bb.f

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta.exit: ; preds = %bb.f, %_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i, %bb.j, %bb.e
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ %i.w, %bb.f ], [ %.sroa.01.032.i.i.i.i, %_RNvXs_NtNtCshFZddwsEKsN_7similar4text6inlineINtB4_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i ], [ %.sroa.01.032.i.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i ], [ %i.x, %bb.j ] ; 5 uses
  %i.at = sub nuw i64 %3, %2                      ; 4 uses
  %i.au = icmp eq i64 %i.r, %i.at
  %i.av = sub i64 %6, %5                          ; 4 uses
  %i.aw = icmp eq i64 %i.at, %i.av
  %or.cond113 = and i1 %i.aw, %i.au
  br i1 %or.cond113, label %bb.bi, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ax = sub i64 %i.at, %.sroa.0.0.i             ; 3 uses
  %i.ay = sub i64 %i.av, %.sroa.0.0.i             ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val127 = load ptr, ptr %i.az, align 8         ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val128 = load i64, ptr %i.ba, align 8         ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val129 = load ptr, ptr %i.bb, align 8         ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val130 = load i64, ptr %i.bc, align 8         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %.sroa.013.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ax, i64 %i.r) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !158
  store ptr null, ptr %i.d, align 8, !noalias !158
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.bd, align 8, !noalias !158
  %.not17.not.i = icmp ugt i64 %i.ay, %i.r
  br i1 %.not17.not.i, label %.lr.ph19.i, label %select.unfold._crit_edge.i

.lr.ph19.i:                                       ; preds = %bb.k
  %spec.select.i = sub nuw i64 %i.ay, %i.r        ; 3 uses
  %.not3415.not.i = icmp ugt i64 %i.ax, %i.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %.not3415.not.i, label %.lr.ph19.split.preheader.i, label %.lr.ph19.split.us.i

.lr.ph19.split.preheader.i:                       ; preds = %.lr.ph19.i
  %i.bh = xor i64 %i.r, -1                        ; 2 uses
  %i.bi = add i64 %i.ay, %i.bh
  %.first_iter30.i = icmp ult i64 %i.bi, %.val130
  %.first_iter30.i.fr = freeze i1 %.first_iter30.i
  br i1 %.first_iter30.i.fr, label %.lr.ph19.split.preheader.i.split.us, label %.lr.ph19.split.i

.lr.ph19.split.preheader.i.split.us:              ; preds = %.lr.ph19.split.preheader.i
  %i.bj = add i64 %i.ax, %i.bh
  %.first_iter.i = icmp ult i64 %i.bj, %.val128
  %.first_iter.i.fr = freeze i1 %.first_iter.i
  br i1 %.first_iter.i.fr, label %.lr.ph19.split.i.us.us, label %.lr.ph19.split.i.us

.lr.ph19.split.i.us.us:                           ; preds = %.lr.ph19.split.preheader.i.split.us, %.select.unfold.loopexit_crit_edge.i.split.us.us.us
  %.sroa.018.118.i.us.us = phi i64 [ %i.bk, %.select.unfold.loopexit_crit_edge.i.split.us.us.us ], [ %spec.select.i, %.lr.ph19.split.preheader.i.split.us ] ; 3 uses
  %i.bk = add i64 %.sroa.018.118.i.us.us, -1      ; 5 uses
  %i.bl = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split.i.split.us.split.us, !noalias !158

bb.l:                                             ; preds = %.lr.ph19.split.i.us.us
  br i1 %i.bl, label %.split.us.i, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %.val129, i64 %i.bk ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val129) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val127) ]
  br label %bb.m

bb.m:                                             ; preds = %bb.t, %.preheader.i.us.us
  %.sroa.026.016.i.us.us.us = phi i64 [ %.sroa.013.0.i, %.preheader.i.us.us ], [ %i.bo, %bb.t ] ; 3 uses
  %i.bo = add i64 %.sroa.026.016.i.us.us.us, -1   ; 5 uses
  %i.bp = load i64, ptr %i.bn, align 8, !noalias !161, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %.val127, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !noalias !164, !noundef !4
  %i.bt = icmp eq i64 %i.bp, %i.bs
  br i1 %i.bt, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.us.us.us, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.us.us.us

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.us.us.us: ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bm, align 8, !noalias !161, !nonnull !4, !noundef !4
  %i.bv = load ptr, ptr %i.bq, align 8, !noalias !164, !nonnull !4, !noundef !4
  %bcmp.i.i.us.us.us = call i32 @bcmp(ptr nonnull readonly %i.bu, ptr nonnull readonly %i.bv, i64 %i.bp), !alias.scope !167, !noalias !158
  %i.bw = icmp eq i32 %bcmp.i.i.us.us.us, 0
  br i1 %i.bw, label %bb.p, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.us.us.us

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.us.us.us: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.us.us.us, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !158
  store i64 %.sroa.018.118.i.us.us, ptr %i.b, align 8, !noalias !158
  store i64 %i.bo, ptr %i.be, align 8, !noalias !158
  %i.bx = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.n unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !158 ; 2 uses

bb.n:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  store i64 %i.bk, ptr %i.a, align 8, !noalias !158
  store i64 %.sroa.026.016.i.us.us.us, ptr %i.bf, align 8, !noalias !158
  %i.by = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.o unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !158 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %.not35.i.us.us.us = icmp eq ptr %i.bx, null
  %..i.us.us.us = select i1 %.not35.i.us.us.us, ptr @9, ptr %i.bx
  %.not36.i.us.us.us = icmp eq ptr %i.by, null
  %.39.i.us.us.us = select i1 %.not36.i.us.us.us, ptr @9, ptr %i.by
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.bz = load i32, ptr %.39.i.us.us.us, align 4, !alias.scope !181, !noalias !182, !noundef !4
  %i.ca = load i32, ptr %..i.us.us.us, align 4, !alias.scope !183, !noalias !184, !noundef !4
  %i.cb = call i32 @llvm.umax.i32(i32 %i.bz, i32 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !158
  br label %bb.r

bb.p:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !158
  store i64 %.sroa.018.118.i.us.us, ptr %i.c, align 8, !noalias !158
  store i64 %.sroa.026.016.i.us.us.us, ptr %i.bg, align 8, !noalias !158
  %i.cc = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.q unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !158 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.not37.i.us.us.us = icmp eq ptr %i.cc, null
  %.40.i.us.us.us = select i1 %.not37.i.us.us.us, ptr @9, ptr %i.cc
  %i.cd = load i32, ptr %.40.i.us.us.us, align 4, !noalias !158, !noundef !4
  %i.ce = add i32 %i.cd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.02.0.i.us.us.us = phi i32 [ %i.ce, %bb.q ], [ %i.cb, %bb.o ] ; 2 uses
  %.not38.i.us.us.us = icmp eq i32 %.sroa.02.0.i.us.us.us, 0
  br i1 %.not38.i.us.us.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = invoke { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bk, i64 noundef %i.bo, i32 noundef %.sroa.02.0.i.us.us.us)
          to label %bb.t unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !158 ; 0 uses

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not34.i.us.us.us = icmp eq i64 %i.bo, 0
  br i1 %.not34.i.us.us.us, label %.select.unfold.loopexit_crit_edge.i.split.us.us.us, label %bb.m

.select.unfold.loopexit_crit_edge.i.split.us.us.us: ; preds = %bb.t
  %.not.i.us.us = icmp eq i64 %i.bk, 0
  br i1 %.not.i.us.us, label %select.unfold._crit_edge.i, label %.lr.ph19.split.i.us.us

.loopexit.split-lp.loopexit.split.i.split.us.split.us: ; preds = %.lr.ph19.split.i.us.us
  %lpad.loopexit6.i.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i.split.us.split.us.split.us:           ; preds = %bb.s, %bb.p, %bb.n, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.us.us.us
  %lpad.loopexit.i.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph19.split.i.us:                              ; preds = %.lr.ph19.split.preheader.i.split.us
  %i.cg = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split.i.split.us.split, !noalias !158

bb.u:                                             ; preds = %.lr.ph19.split.i.us
  br i1 %i.cg, label %.split.us.i, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val129) ]
  br label %.invoke.i

.loopexit.split-lp.loopexit.split.i.split.us.split: ; preds = %.lr.ph19.split.i.us
  %lpad.loopexit6.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph19.split.us.i:                              ; preds = %.lr.ph19.i, %.preheader.us.i
  %.sroa.018.118.us.i = phi i64 [ %i.ch, %.preheader.us.i ], [ %spec.select.i, %.lr.ph19.i ]
  %i.ch = add i64 %.sroa.018.118.us.i, -1         ; 2 uses
  %i.ci = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split.us.i, !noalias !158

bb.v:                                             ; preds = %.lr.ph19.split.us.i
  br i1 %i.ci, label %.split.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.v
  %.not.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.us.i, label %select.unfold._crit_edge.i, label %.lr.ph19.split.us.i

.loopexit.split-lp.loopexit.split.us.i:           ; preds = %.lr.ph19.split.us.i
  %lpad.loopexit6.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

select.unfold._crit_edge.i:                       ; preds = %.preheader.us.i, %.select.unfold.loopexit_crit_edge.i.split.us.us.us, %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 1, ptr %i.h, align 8, !alias.scope !158
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtNtB6_4text6inline11MultiLookupeEBU_ECsl6EuCK7xub1_5insta.exit

.lr.ph19.split.i:                                 ; preds = %.lr.ph19.split.preheader.i
  %i.ck = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split.i.split, !noalias !158

.loopexit.split-lp.loopexit.split.i.split:        ; preds = %.lr.ph19.split.i
  %lpad.loopexit6.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

end_hunk_1
begin_hunk_2_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineINtNtNtB6_4text6inline11MultiLookupeEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta:bb.a
  %.sroa.016.2 = phi i64 [ %i.ff, %bb.at ], [ %i.em, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit119 ], [ %.sroa.016.0267, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit116 ] ; 3 uses
  %.sroa.0.2 = phi i64 [ %i.fe, %bb.at ], [ %.sroa.0.0268, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit119 ], [ %i.eh, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit116 ] ; 3 uses
  %i.ez = icmp ult i64 %.sroa.016.2, %i.cr
  %i.fa = icmp ult i64 %.sroa.0.2, %i.cs
  %or.cond3 = select i1 %i.ez, i1 %i.fa, i1 false
  br i1 %or.cond3, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapTjjEmEECsl6EuCK7xub1_5insta.exit

bb.at:                                            ; preds = %bb.al, %bb.ak
  %i.fb = load ptr, ptr %i.dj, align 8, !alias.scope !205, !noalias !208, !nonnull !4, !noundef !4
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %i.fb, i64 %i.ej ; 4 uses
  store i64 0, ptr %i.fc, align 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %i.dp, ptr %.sroa.4168.0..sroa_idx, align 8
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %i.dq, ptr %.sroa.5169.0..sroa_idx, align 8
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i64 1, ptr %.sroa.6170.0..sroa_idx, align 8
  %i.fd = add i64 %i.ej, 1
  store i64 %i.fd, ptr %i.di, align 8, !alias.scope !205, !noalias !208
  %i.fe = add nuw i64 %.sroa.0.0268, 1
  %i.ff = add nuw i64 %.sroa.016.0267, 1
  br label %bb.as

bb.au:                                            ; preds = %bb.bh, %bb.ah
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.av:                                            ; preds = %bb.ae, %bb.ad
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !190, !noalias !193, !nonnull !4, !noundef !4
  %i.fj = getelementptr inbounds nuw [40 x i8], ptr %i.fi, i64 %i.dm ; 4 uses
  store i64 1, ptr %i.fj, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %i.s, ptr %.sroa.4193.0..sroa_idx, align 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %i.cs, ptr %.sroa.5194.0..sroa_idx, align 8
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store i64 %i.t, ptr %.sroa.6195.0..sroa_idx, align 8
  %i.fk = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.fk, ptr %i.dl, align 8, !alias.scope !190, !noalias !193
  %i.fl = load i64, ptr %i.dk, align 8, !range !8, !alias.scope !220, !noalias !223, !noundef !4
  %i.fm = icmp eq i64 %i.fk, %i.fl
  br i1 %i.fm, label %bb.aw, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit118

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dk)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit118

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit118: ; preds = %bb.aw, %bb.av
  %i.fn = load ptr, ptr %i.fh, align 8, !alias.scope !220, !noalias !223, !nonnull !4, !noundef !4
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %i.fn, i64 %i.fk ; 4 uses
  store i64 2, ptr %i.fo, align 8
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %i.s, ptr %.sroa.4208.0..sroa_idx, align 8
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i64 %i.t, ptr %.sroa.5209.0..sroa_idx, align 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store i64 %i.cr, ptr %.sroa.6210.0..sroa_idx, align 8
  %i.fp = add i64 %i.dm, 2
  store i64 %i.fp, ptr %i.dl, align 8, !alias.scope !220, !noalias !223
  br label %bb.ag

bb.ax:                                            ; preds = %bb.ag
  %i.fq = add i64 %.sroa.0.1, %i.s
  %i.fr = sub nuw i64 %i.cs, %.sroa.0.1
  %i.fs = add i64 %.sroa.016.1, %i.t
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !225, !noalias !228, !noundef !4 ; 3 uses
  %i.fw = load i64, ptr %i.ft, align 8, !range !8, !alias.scope !225, !noalias !228, !noundef !4
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.ay, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ft)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit: ; preds = %bb.ay, %bb.ax
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !225, !noalias !228, !nonnull !4, !noundef !4
  %i.ga = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %i.fv ; 4 uses
  store i64 1, ptr %i.ga, align 8
  %.sroa.4183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i64 %i.fq, ptr %.sroa.4183.0..sroa_idx, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i64 %i.fr, ptr %.sroa.5184.0..sroa_idx, align 8
  %.sroa.6185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store i64 %i.fs, ptr %.sroa.6185.0..sroa_idx, align 8
  %i.gb = add i64 %i.fv, 1
  store i64 %i.gb, ptr %i.fu, align 8, !alias.scope !225, !noalias !228
  br label %bb.az

bb.az:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit, %bb.ag
  %.sroa.0.3 = phi i64 [ %.sroa.0.1, %bb.ag ], [ %i.cs, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit ]
  %i.gc = icmp ult i64 %.sroa.016.1, %i.cr
  br i1 %i.gc, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.gd = add i64 %.sroa.0.3, %i.s
  %i.ge = add i64 %.sroa.016.1, %i.t
  %i.gf = sub nuw i64 %i.cr, %.sroa.016.1
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !230, !noalias !233, !noundef !4 ; 3 uses
  %i.gj = load i64, ptr %i.gg, align 8, !range !8, !alias.scope !230, !noalias !233, !noundef !4
  %i.gk = icmp eq i64 %i.gi, %i.gj
  br i1 %i.gk, label %bb.bb, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit: ; preds = %bb.bb, %bb.ba
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !230, !noalias !233, !nonnull !4, !noundef !4
  %i.gn = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %i.gi ; 4 uses
  store i64 2, ptr %i.gn, align 8
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %i.gd, ptr %.sroa.4203.0..sroa_idx, align 8
  %.sroa.5204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 %i.ge, ptr %.sroa.5204.0..sroa_idx, align 8
  %.sroa.6205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store i64 %i.gf, ptr %.sroa.6205.0..sroa_idx, align 8
  %i.go = add i64 %i.gi, 1
  store i64 %i.go, ptr %i.gh, align 8, !alias.scope !230, !noalias !233
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit, %bb.az
  %.not106 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not106, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit, %bb.bc
  call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.gp = add i64 %i.s, %i.cs
  %i.gq = add i64 %i.t, %i.cr
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !235, !noalias !238, !noundef !4 ; 3 uses
  %i.gu = load i64, ptr %i.gr, align 8, !range !8, !alias.scope !235, !noalias !238, !noundef !4
  %i.gv = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.bf, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit

bb.bf:                                            ; preds = %bb.be
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gr)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit: ; preds = %bb.bf, %bb.be
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !235, !noalias !238, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.gt ; 4 uses
  store i64 0, ptr %i.gy, align 8
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %i.gp, ptr %.sroa.4163.0..sroa_idx, align 8
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %i.gq, ptr %.sroa.5164.0..sroa_idx, align 8
  %.sroa.6165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i64 %.sroa.0.0.i, ptr %.sroa.6165.0..sroa_idx, align 8
  %i.gz = add i64 %i.gt, 1
  store i64 %i.gz, ptr %i.gs, align 8, !alias.scope !235, !noalias !238
  br label %bb.bd

bb.bg:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit158, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit157, %bb.bd
  ret void

bb.bh:                                            ; preds = %bb.y
  %i.ha = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %common.resume unwind label %bb.au

bb.bi:                                            ; preds = %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtNtNtB6_4text6inline11MultiLookupeEB13_ECsl6EuCK7xub1_5insta.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !240, !noalias !243, !noundef !4 ; 3 uses
  %i.he = load i64, ptr %i.hb, align 8, !range !8, !alias.scope !240, !noalias !243, !noundef !4
  %i.hf = icmp eq i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.bj, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit157

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb), !noalias !243
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit157

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit157: ; preds = %bb.bi, %bb.bj
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !240, !noalias !243, !nonnull !4, !noundef !4
  %i.hi = getelementptr inbounds nuw [40 x i8], ptr %i.hh, i64 %i.hd ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  %i.hj = add i64 %i.hd, 1
  store i64 %i.hj, ptr %i.hc, align 8, !alias.scope !240, !noalias !243
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bg

bb.bk:                                            ; preds = %bb.b
  %i.hk = sub i64 %6, %5
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !245, !noalias !248, !noundef !4 ; 3 uses
  %i.ho = load i64, ptr %i.hl, align 8, !range !8, !alias.scope !245, !noalias !248, !noundef !4
  %i.hp = icmp eq i64 %i.hn, %i.ho
  br i1 %i.hp, label %bb.bl, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit158

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hl), !noalias !248
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit158

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit158: ; preds = %bb.bk, %bb.bl
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hr = load ptr, ptr %i.hq, align 8, !alias.scope !245, !noalias !248, !nonnull !4, !noundef !4
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.hr, i64 %i.hn ; 4 uses
  store i64 2, ptr %i.hs, align 8
  %.sroa.4198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 %2, ptr %.sroa.4198.0..sroa_idx, align 8
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 %5, ptr %.sroa.5199.0..sroa_idx, align 8
  %.sroa.6200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i64 %i.hk, ptr %.sroa.6200.0..sroa_idx, align 8
  %i.ht = add i64 %i.hn, 1
  store i64 %i.ht, ptr %i.hm, align 8, !alias.scope !245, !noalias !248
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtNtB9_4text6inline11MultiLookupeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineSReBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 576460752303423488) %6, i64 noundef %7, i64 noundef %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %.not = icmp ult i64 %7, %8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not104 = icmp ult i64 %3, %4
  br i1 %.not104, label %bb.e, label %bb.bj

bb.c:                                             ; preds = %bb.a
  %.sroa.034.0 = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !250, !noalias !253, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !8, !alias.scope !250, !noalias !253, !noundef !4
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !253
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit: ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !250, !noalias !253, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k ; 4 uses
  store i64 1, ptr %i.p, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %3, ptr %.sroa.4174.0..sroa_idx, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.034.0, ptr %.sroa.5175.0..sroa_idx, align 8
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %7, ptr %.sroa.6176.0..sroa_idx, align 8
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !250, !noalias !253
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.bf

bb.e:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenSReB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) ; 12 uses
  %i.s = add i64 %i.r, %3                         ; 8 uses
  %i.t = add i64 %i.r, %7                         ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.u = icmp uge i64 %i.s, %4
  %i.v = icmp uge i64 %i.t, %8
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.w = sub nuw i64 %4, %i.s                     ; 2 uses
  %i.x = sub nuw i64 %8, %i.t                     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.y = phi i64 [ %4, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.j ]
  %.sroa.01.034.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ak, %bb.j ] ; 4 uses
  %i.z = phi i64 [ %8, %.lr.ph.i.i.i.i ], [ %i.aa, %bb.j ]
  %i.aa = add i64 %i.z, -1                        ; 4 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.01.034.i.i.i.i, %i.w
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add i64 %i.y, -1                        ; 4 uses
  %i.ac = icmp ult i64 %i.aa, %6
  br i1 %i.ac, label %_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef range(i64 0, 576460752303423488) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20, !noalias !260
  unreachable

_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ad = icmp ult i64 %i.ab, %2
  br i1 %i.ad, label %_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !274
  unreachable

_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i: ; preds = %_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %.val9.i.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !258, !noalias !277, !noundef !4 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.val11.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !255, !noalias !278, !noundef !4
  %i.ai = icmp eq i64 %.val9.i.i.i.i.i, %.val11.i.i.i.i.i
  br i1 %i.ai, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.i.i.i.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit.loopexit

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.i.i.i.i: ; preds = %_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i
  %.val10.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !255, !noalias !278, !nonnull !4, !noundef !4
  %.val.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !258, !noalias !277, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i, ptr nonnull readonly %.val10.i.i.i.i.i, i64 %.val9.i.i.i.i.i), !alias.scope !279, !noalias !283
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %bb.j, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit.loopexit

bb.j:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.i.i.i.i
  %i.ak = add nuw i64 %.sroa.01.034.i.i.i.i, 1    ; 2 uses
  %exitcond63.not.i.i.i.i = icmp eq i64 %i.ak, %i.x
  br i1 %exitcond63.not.i.i.i.i, label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit.loopexit, label %bb.f

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit.loopexit: ; preds = %bb.j, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.i.i.i.i, %_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i, %bb.f
  %.sroa.0.0.i.ph = phi i64 [ %i.x, %bb.j ], [ %.sroa.01.034.i.i.i.i, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.i.i.i.i ], [ %.sroa.01.034.i.i.i.i, %_RNvXs0_NtNtCs4NRVxsYgnAr_4core5slice5indexjINtB5_10SliceIndexSReE5indexCsl6EuCK7xub1_5insta.exit12.i.i.i.i.i ], [ %i.w, %bb.f ]
  %11 = freeze i64 %.sroa.0.0.i.ph
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit

_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit: ; preds = %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit.loopexit, %bb.e
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ %11, %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit.loopexit ] ; 5 uses
  %i.al = sub i64 %4, %3                          ; 4 uses
  %i.am = icmp eq i64 %i.r, %i.al
  %i.an = sub i64 %8, %7                          ; 4 uses
  %i.ao = icmp eq i64 %i.al, %i.an
  %or.cond113 = and i1 %i.ao, %i.am
  br i1 %or.cond113, label %bb.bh, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ap = sub i64 %i.al, %.sroa.0.0.i             ; 3 uses
  %i.aq = sub i64 %i.an, %.sroa.0.0.i             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %.sroa.013.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.r) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !291
  store ptr null, ptr %i.d, align 8, !noalias !291
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ar, align 8, !noalias !291
  %.not59.not.i = icmp ugt i64 %i.aq, %i.r
  br i1 %.not59.not.i, label %.lr.ph61.i, label %select.unfold._crit_edge.i

.lr.ph61.i:                                       ; preds = %bb.k
  %spec.select.i = sub nuw i64 %i.aq, %i.r        ; 3 uses
  %.not3457.not.i = icmp ugt i64 %i.ap, %i.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %.not3457.not.i, label %.lr.ph61.split.preheader.i, label %.lr.ph61.split.us.i

.lr.ph61.split.preheader.i:                       ; preds = %.lr.ph61.i
  %i.av = xor i64 %i.r, -1                        ; 2 uses
  %i.aw = add i64 %i.aq, %i.av
  %.first_iter72.i = icmp ult i64 %i.aw, %6
  br i1 %.first_iter72.i, label %.lr.ph61.split.preheader.i.split.us, label %.lr.ph61.split.i

.lr.ph61.split.preheader.i.split.us:              ; preds = %.lr.ph61.split.preheader.i
  %i.ax = add i64 %i.ap, %i.av
  %.first_iter.i = icmp ult i64 %i.ax, %2
  br i1 %.first_iter.i, label %.lr.ph61.split.i.us.us, label %.lr.ph61.split.i.us

.lr.ph61.split.i.us.us:                           ; preds = %.lr.ph61.split.preheader.i.split.us, %.select.unfold.loopexit_crit_edge.i.split.us.us.us
  %.sroa.018.160.i.us.us = phi i64 [ %i.ay, %.select.unfold.loopexit_crit_edge.i.split.us.us.us ], [ %spec.select.i, %.lr.ph61.split.preheader.i.split.us ] ; 3 uses
  %i.ay = add i64 %.sroa.018.160.i.us.us, -1      ; 5 uses
  %i.az = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split.i.split.us.split.us, !noalias !291

bb.l:                                             ; preds = %.lr.ph61.split.i.us.us
  br i1 %i.az, label %.split.us.i, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ay ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val42.i.us.us.us = load i64, ptr %i.bb, align 8, !alias.scope !289, !noalias !292, !noundef !4 ; 2 uses
  br label %.lr.ph.split.i.us.us.us

.lr.ph.split.i.us.us.us:                          ; preds = %bb.s, %.preheader.i.us.us
  %.sroa.026.058.i.us.us.us = phi i64 [ %i.bc, %bb.s ], [ %.sroa.013.0.i, %.preheader.i.us.us ] ; 3 uses
  %i.bc = add i64 %.sroa.026.058.i.us.us.us, -1   ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val44.i.us.us.us = load i64, ptr %i.be, align 8, !alias.scope !287, !noalias !293, !noundef !4
  %i.bf = icmp eq i64 %.val42.i.us.us.us, %.val44.i.us.us.us
  br i1 %i.bf, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.us.us.us, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.thread.i.us.us.us

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.us.us.us: ; preds = %.lr.ph.split.i.us.us.us
  %.val43.i.us.us.us = load ptr, ptr %i.bd, align 8, !alias.scope !287, !noalias !293, !nonnull !4, !noundef !4
  %.val.i.us.us.us = load ptr, ptr %i.ba, align 8, !alias.scope !289, !noalias !292, !nonnull !4, !noundef !4
  %bcmp.i.i.i.us.us.us = call i32 @bcmp(ptr nonnull readonly %.val.i.us.us.us, ptr nonnull readonly %.val43.i.us.us.us, i64 %.val42.i.us.us.us), !alias.scope !294, !noalias !291
  %i.bg = icmp eq i32 %bcmp.i.i.i.us.us.us, 0
  br i1 %i.bg, label %bb.o, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.thread.i.us.us.us

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.thread.i.us.us.us: ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.us.us.us, %.lr.ph.split.i.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !291
  store i64 %.sroa.018.160.i.us.us, ptr %i.b, align 8, !noalias !291
  store i64 %i.bc, ptr %i.as, align 8, !noalias !291
  %i.bh = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.m unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !291 ; 2 uses

bb.m:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.thread.i.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !291
  store i64 %i.ay, ptr %i.a, align 8, !noalias !291
  store i64 %.sroa.026.058.i.us.us.us, ptr %i.at, align 8, !noalias !291
  %i.bi = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.n unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !291 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %.not35.i.us.us.us = icmp eq ptr %i.bh, null
  %..i.us.us.us = select i1 %.not35.i.us.us.us, ptr @9, ptr %i.bh
  %.not36.i.us.us.us = icmp eq ptr %i.bi, null
  %.39.i.us.us.us = select i1 %.not36.i.us.us.us, ptr @9, ptr %i.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.bj = load i32, ptr %.39.i.us.us.us, align 4, !alias.scope !308, !noalias !309, !noundef !4
  %i.bk = load i32, ptr %..i.us.us.us, align 4, !alias.scope !310, !noalias !311, !noundef !4
  %i.bl = call i32 @llvm.umax.i32(i32 %i.bj, i32 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !291
  br label %bb.q

bb.o:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.i.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !291
  store i64 %.sroa.018.160.i.us.us, ptr %i.c, align 8, !noalias !291
  store i64 %.sroa.026.058.i.us.us.us, ptr %i.au, align 8, !noalias !291
  %i.bm = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.p unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !291 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not37.i.us.us.us = icmp eq ptr %i.bm, null
  %.40.i.us.us.us = select i1 %.not37.i.us.us.us, ptr @9, ptr %i.bm
  %i.bn = load i32, ptr %.40.i.us.us.us, align 4, !noalias !291, !noundef !4
  %i.bo = add i32 %i.bn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !291
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.02.0.i.us.us.us = phi i32 [ %i.bo, %bb.p ], [ %i.bl, %bb.n ] ; 2 uses
  %.not38.i.us.us.us = icmp eq i32 %.sroa.02.0.i.us.us.us, 0
  br i1 %.not38.i.us.us.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = invoke { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ay, i64 noundef %i.bc, i32 noundef %.sroa.02.0.i.us.us.us)
          to label %bb.s unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !291 ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not34.i.us.us.us = icmp eq i64 %i.bc, 0
  br i1 %.not34.i.us.us.us, label %.select.unfold.loopexit_crit_edge.i.split.us.us.us, label %.lr.ph.split.i.us.us.us

.select.unfold.loopexit_crit_edge.i.split.us.us.us: ; preds = %bb.s
  %.not.i.us.us = icmp eq i64 %i.ay, 0
  br i1 %.not.i.us.us, label %select.unfold._crit_edge.i, label %.lr.ph61.split.i.us.us

.loopexit.split-lp.loopexit.split.i.split.us.split.us: ; preds = %.lr.ph61.split.i.us.us
  %lpad.loopexit48.i.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i.split.us.split.us.split.us:           ; preds = %bb.r, %bb.o, %bb.m, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCsl6EuCK7xub1_5insta.exit.thread.i.us.us.us
  %lpad.loopexit.i.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph61.split.i.us:                              ; preds = %.lr.ph61.split.preheader.i.split.us
  %i.bq = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split.i.split.us.split, !noalias !291

bb.t:                                             ; preds = %.lr.ph61.split.i.us
  br i1 %i.bq, label %.split.us.i, label %.invoke.i

.loopexit.split-lp.loopexit.split.i.split.us.split: ; preds = %.lr.ph61.split.i.us
  %lpad.loopexit48.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph61.split.us.i:                              ; preds = %.lr.ph61.i, %.preheader.us.i
  %.sroa.018.160.us.i = phi i64 [ %i.br, %.preheader.us.i ], [ %spec.select.i, %.lr.ph61.i ]
  %i.br = add i64 %.sroa.018.160.us.i, -1         ; 2 uses
  %i.bs = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split.us.i, !noalias !291

bb.u:                                             ; preds = %.lr.ph61.split.us.i
  br i1 %i.bs, label %.split.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.u
  %.not.us.i = icmp eq i64 %i.br, 0
  br i1 %.not.us.i, label %select.unfold._crit_edge.i, label %.lr.ph61.split.us.i

.loopexit.split-lp.loopexit.split.us.i:           ; preds = %.lr.ph61.split.us.i
  %lpad.loopexit48.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

select.unfold._crit_edge.i:                       ; preds = %.preheader.us.i, %.select.unfold.loopexit_crit_edge.i.split.us.us.us, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !312
  store i64 1, ptr %i.h, align 8, !alias.scope !284, !noalias !312
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableSReBU_ECsl6EuCK7xub1_5insta.exit

.lr.ph61.split.i:                                 ; preds = %.lr.ph61.split.preheader.i
  %i.bu = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split.i.split, !noalias !291

.loopexit.split-lp.loopexit.split.i.split:        ; preds = %.lr.ph61.split.i
  %lpad.loopexit48.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp49.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split.i.split, %.loopexit.split-lp.loopexit.split.i.split.us.split.us, %.loopexit.split-lp.loopexit.split.i.split.us.split, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.i.split.us.split.us.split.us, %.loopexit.split-lp.loopexit.split.us.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i.us.us.us, %.loopexit.i.split.us.split.us.split.us ], [ %lpad.loopexit.split-lp49.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit48.us.i, %.loopexit.split-lp.loopexit.split.us.i ], [ %lpad.loopexit48.i, %.loopexit.split-lp.loopexit.split.i.split ], [ %lpad.loopexit48.i.us, %.loopexit.split-lp.loopexit.split.i.split.us.split ], [ %lpad.loopexit48.i.us.us, %.loopexit.split-lp.loopexit.split.i.split.us.split.us ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.w, !noalias !291

bb.v:                                             ; preds = %.lr.ph61.split.i
  br i1 %i.bu, label %.split.us.i, label %.invoke.i

.split.us.i:                                      ; preds = %bb.u, %bb.l, %bb.t, %bb.v
  store i64 0, ptr %i.h, align 8, !alias.scope !284, !noalias !312
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !291
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableSReBU_ECsl6EuCK7xub1_5insta.exit

.invoke.i:                                        ; preds = %bb.v, %bb.t
  %.in = phi i64 [ %.sroa.013.0.i, %bb.t ], [ %spec.select.i, %bb.v ]
  %i.bv = phi i64 [ %2, %bb.t ], [ %6, %bb.v ]
  %i.bw = phi ptr [ @8, %bb.t ], [ @7, %bb.v ]
  %i.bx = add i64 %.in, -1
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw) #20
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !291

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.w:                                             ; preds = %.loopexit.split-lp.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !291
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.ag, %bb.bg, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.thr_comm.split-lp, %bb.bg ], [ %lpad.phi, %bb.ag ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableSReBU_ECsl6EuCK7xub1_5insta.exit: ; preds = %select.unfold._crit_edge.i, %.split.us.i
  %i.bz = phi i1 [ true, %select.unfold._crit_edge.i ], [ false, %.split.us.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !291
  %i.ca = add i64 %.sroa.0.0.i, %i.r              ; 3 uses
  %i.cb = sub i64 %i.an, %i.ca                    ; 5 uses
  %i.cc = sub i64 %i.al, %i.ca                    ; 7 uses
  %.not105 = icmp eq i64 %i.r, 0
  br i1 %.not105, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.aa
end_hunk_2
begin_hunk_3_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineSReBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta:bb.a
  %.sroa.016.2 = phi i64 [ %i.el, %bb.as ], [ %i.ds, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit120 ], [ %.sroa.016.0253, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit117 ] ; 3 uses
  %.sroa.0.2 = phi i64 [ %i.ek, %bb.as ], [ %.sroa.0.0254, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit120 ], [ %i.dn, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit117 ] ; 3 uses
  %i.ef = icmp ult i64 %.sroa.016.2, %i.cb
  %i.eg = icmp ult i64 %.sroa.0.2, %i.cc
  %or.cond3 = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond3, label %bb.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapTjjEmEECsl6EuCK7xub1_5insta.exit

bb.as:                                            ; preds = %bb.ak, %bb.aj
  %i.eh = load ptr, ptr %i.ct, align 8, !alias.scope !327, !noalias !330, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.dp ; 4 uses
  store i64 0, ptr %i.ei, align 8
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %i.cz, ptr %.sroa.4164.0..sroa_idx, align 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %i.da, ptr %.sroa.5165.0..sroa_idx, align 8
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 1, ptr %.sroa.6166.0..sroa_idx, align 8
  %i.ej = add i64 %i.dp, 1
  store i64 %i.ej, ptr %i.cs, align 8, !alias.scope !327, !noalias !330
  %i.ek = add nuw i64 %.sroa.0.0254, 1
  %i.el = add nuw i64 %.sroa.016.0253, 1
  br label %bb.ar

bb.at:                                            ; preds = %bb.bg, %bb.ag
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.au:                                            ; preds = %bb.ad, %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !318, !noalias !321, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.eo, i64 %i.cw ; 4 uses
  store i64 1, ptr %i.ep, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 %i.s, ptr %.sroa.4189.0..sroa_idx, align 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %i.cc, ptr %.sroa.5190.0..sroa_idx, align 8
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i64 %i.t, ptr %.sroa.6191.0..sroa_idx, align 8
  %i.eq = add i64 %i.cw, 1                        ; 3 uses
  store i64 %i.eq, ptr %i.cv, align 8, !alias.scope !318, !noalias !321
  %i.er = load i64, ptr %i.cu, align 8, !range !8, !alias.scope !342, !noalias !345, !noundef !4
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %bb.av, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit119

bb.av:                                            ; preds = %bb.au
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cu)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit119

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit119: ; preds = %bb.av, %bb.au
  %i.et = load ptr, ptr %i.en, align 8, !alias.scope !342, !noalias !345, !nonnull !4, !noundef !4
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.et, i64 %i.eq ; 4 uses
  store i64 2, ptr %i.eu, align 8
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.s, ptr %.sroa.4204.0..sroa_idx, align 8
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 %i.t, ptr %.sroa.5205.0..sroa_idx, align 8
  %.sroa.6206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  store i64 %i.cb, ptr %.sroa.6206.0..sroa_idx, align 8
  %i.ev = add i64 %i.cw, 2
  store i64 %i.ev, ptr %i.cv, align 8, !alias.scope !342, !noalias !345
  br label %bb.af

bb.aw:                                            ; preds = %bb.af
  %i.ew = add i64 %.sroa.0.1, %i.s
  %i.ex = sub nuw i64 %i.cc, %.sroa.0.1
  %i.ey = add i64 %.sroa.016.1, %i.t
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !347, !noalias !350, !noundef !4 ; 3 uses
  %i.fc = load i64, ptr %i.ez, align 8, !range !8, !alias.scope !347, !noalias !350, !noundef !4
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ax, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit: ; preds = %bb.ax, %bb.aw
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !347, !noalias !350, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %i.ff, i64 %i.fb ; 4 uses
  store i64 1, ptr %i.fg, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %i.ew, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 %i.ex, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 %i.ey, ptr %.sroa.6181.0..sroa_idx, align 8
  %i.fh = add i64 %i.fb, 1
  store i64 %i.fh, ptr %i.fa, align 8, !alias.scope !347, !noalias !350
  br label %bb.ay

bb.ay:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit, %bb.af
  %.sroa.0.3 = phi i64 [ %.sroa.0.1, %bb.af ], [ %i.cc, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsl6EuCK7xub1_5insta.exit ]
  %i.fi = icmp ult i64 %.sroa.016.1, %i.cb
  br i1 %i.fi, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.fj = add i64 %.sroa.0.3, %i.s
  %i.fk = add i64 %.sroa.016.1, %i.t
  %i.fl = sub nuw i64 %i.cb, %.sroa.016.1
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !352, !noalias !355, !noundef !4 ; 3 uses
  %i.fp = load i64, ptr %i.fm, align 8, !range !8, !alias.scope !352, !noalias !355, !noundef !4
  %i.fq = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.ba, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit

bb.ba:                                            ; preds = %bb.az
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fm)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit: ; preds = %bb.ba, %bb.az
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !352, !noalias !355, !nonnull !4, !noundef !4
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %i.fo ; 4 uses
  store i64 2, ptr %i.ft, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %i.fj, ptr %.sroa.4199.0..sroa_idx, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 %i.fk, ptr %.sroa.5200.0..sroa_idx, align 8
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i64 %i.fl, ptr %.sroa.6201.0..sroa_idx, align 8
  %i.fu = add i64 %i.fo, 1
  store i64 %i.fu, ptr %i.fn, align 8, !alias.scope !352, !noalias !355
  br label %bb.bb

bb.bb:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsl6EuCK7xub1_5insta.exit, %bb.ay
  %.not106 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not106, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit, %bb.bb
  call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.fv = add i64 %i.s, %i.cc
  %i.fw = add i64 %i.t, %i.cb
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !357, !noalias !360, !noundef !4 ; 3 uses
  %i.ga = load i64, ptr %i.fx, align 8, !range !8, !alias.scope !357, !noalias !360, !noundef !4
  %i.gb = icmp eq i64 %i.fz, %i.ga
  br i1 %i.gb, label %bb.be, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit

bb.be:                                            ; preds = %bb.bd
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fx)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsl6EuCK7xub1_5insta.exit: ; preds = %bb.be, %bb.bd
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !357, !noalias !360, !nonnull !4, !noundef !4
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %i.gd, i64 %i.fz ; 4 uses
  store i64 0, ptr %i.ge, align 8
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 %i.fv, ptr %.sroa.4159.0..sroa_idx, align 8
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i64 %i.fw, ptr %.sroa.5160.0..sroa_idx, align 8
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  store i64 %.sroa.0.0.i, ptr %.sroa.6161.0..sroa_idx, align 8
  %i.gf = add i64 %i.fz, 1
  store i64 %i.gf, ptr %i.fy, align 8, !alias.scope !357, !noalias !360
  br label %bb.bc

bb.bf:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit154, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit153, %bb.bc
  ret void

bb.bg:                                            ; preds = %bb.x
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %common.resume unwind label %bb.at

bb.bh:                                            ; preds = %_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_ECsl6EuCK7xub1_5insta.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !362, !noalias !365, !noundef !4 ; 3 uses
  %i.gk = load i64, ptr %i.gh, align 8, !range !8, !alias.scope !362, !noalias !365, !noundef !4
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.bi, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit153

bb.bi:                                            ; preds = %bb.bh
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gh), !noalias !365
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit153

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit153: ; preds = %bb.bh, %bb.bi
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !362, !noalias !365, !nonnull !4, !noundef !4
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %i.gj ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  %i.gp = add i64 %i.gj, 1
  store i64 %i.gp, ptr %i.gi, align 8, !alias.scope !362, !noalias !365
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.bf

bb.bj:                                            ; preds = %bb.b
  %i.gq = sub i64 %8, %7
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !367, !noalias !370, !noundef !4 ; 3 uses
  %i.gu = load i64, ptr %i.gr, align 8, !range !8, !alias.scope !367, !noalias !370, !noundef !4
  %i.gv = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.bk, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit154

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gr), !noalias !370
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit154

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutCsl6EuCK7xub1_5insta.exit154: ; preds = %bb.bj, %bb.bk
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !367, !noalias !370, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.gt ; 4 uses
  store i64 2, ptr %i.gy, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 %3, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store i64 %7, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i64 %i.gq, ptr %.sroa.6196.0..sroa_idx, align 8
  %i.gz = add i64 %i.gt, 1
  store i64 %i.gz, ptr %i.gs, align 8, !alias.scope !367, !noalias !370
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.bf
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = icmp uge i64 %1, %2
  %i.c = icmp uge i64 %4, %5
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsl6EuCK7xub1_5insta.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEBW_EINtB5_7ZipImplBW_BW_E3newCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %4, i64 noundef %5, i64 noundef %1, i64 noundef %2)
  %.sroa.6.16.copyload = load i64, ptr %i.a, align 8
  %.sroa.82.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.82.16.copyload = load i64, ptr %.sroa.82.16..sroa_idx, align 8
  %.sroa.93.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.93.16.copyload = load i64, ptr %.sroa.93.16..sroa_idx, align 8 ; 3 uses
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.93.16.copyload, %.sroa.10.16.copyload
  br i1 %i.d, label %.lr.ph.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsl6EuCK7xub1_5insta.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !372, !noalias !375, !noundef !4
  %invariant.op.i.i.i = sub i64 %.sroa.6.16.copyload, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !372, !noalias !375, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = sub nuw i64 %.sroa.10.16.copyload, %.sroa.93.16.copyload ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %invariant.op = sub i64 %.sroa.82.16.copyload, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.sroa.01.036.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.r = phi i64 [ %.sroa.93.16.copyload, %.lr.ph.i.i.i ], [ %i.s, %bb.f ] ; 3 uses
  %i.s = add nuw i64 %i.r, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %.reass.i.i.i = add i64 %i.r, %invariant.op.i.i.i ; 3 uses
  %i.t = icmp ult i64 %.reass.i.i.i, %i.h
  br i1 %i.t, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass.i.i.i, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20, !noalias !388
  unreachable

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i: ; preds = %bb.c
  %.reass = add i64 %i.r, %invariant.op           ; 3 uses
  %i.u = icmp ult i64 %.reass, %i.o
  br i1 %i.u, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20, !noalias !389
  unreachable

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i: ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.reass.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.reass
  %.val.i.i.i.i = load i32, ptr %i.v, align 4, !noalias !392, !noundef !4
  %.val10.i.i.i.i = load i32, ptr %i.w, align 4, !noalias !392, !noundef !4
  %i.x = icmp eq i32 %.val.i.i.i.i, %.val10.i.i.i.i
  br i1 %i.x, label %bb.f, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsl6EuCK7xub1_5insta.exit

bb.f:                                             ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i
  %i.y = add nuw i64 %.sroa.01.036.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.y, %i.j
  br i1 %exitcond.not.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsl6EuCK7xub1_5insta.exit, label %bb.c

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB23_12OffsetLookupmEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3y_5count0ECsl6EuCK7xub1_5insta.exit: ; preds = %bb.f, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.01.036.i.i.i, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i ], [ %i.j, %bb.f ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = icmp uge i64 %1, %2
  %i.c = icmp uge i64 %4, %5
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB23_10UniqueItemINtB23_12OffsetLookupmEEEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4p_5count0ECsl6EuCK7xub1_5insta.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEBW_EINtB5_7ZipImplBW_BW_E3newCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %4, i64 noundef %5, i64 noundef %1, i64 noundef %2)
  %.sroa.6.16.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.82.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.82.16.copyload = load i64, ptr %.sroa.82.16..sroa_idx, align 8 ; 2 uses
  %.sroa.93.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.93.16.copyload = load i64, ptr %.sroa.93.16..sroa_idx, align 8 ; 5 uses
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.93.16.copyload, %.sroa.10.16.copyload
  br i1 %i.d, label %.lr.ph.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB23_10UniqueItemINtB23_12OffsetLookupmEEEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4p_5count0ECsl6EuCK7xub1_5insta.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val14.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !393, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = sub nuw i64 %.sroa.10.16.copyload, %.sroa.93.16.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val12.i.i.i.i = load i64, ptr %i.h, align 8   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.i, align 8, !nonnull !4
  %.val13.i.i.i.i = load ptr, ptr %i.f, align 8, !nonnull !4
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.sroa.01.054.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.as, %bb.h ] ; 2 uses
  %i.j = phi i64 [ %.sroa.93.16.copyload, %.lr.ph.i.i.i ], [ %i.k, %bb.h ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1
  %i.l = add nuw i64 %i.j, %.sroa.6.16.copyload   ; 2 uses
  %i.m = add nuw i64 %i.j, %.sroa.82.16.copyload  ; 2 uses
  %i.n = icmp ult i64 %i.l, %.val14.i.i.i.i
  br i1 %i.n, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw i64 %.sroa.93.16.copyload, %.sroa.6.16.copyload
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.val14.i.i.i.i, i64 %i.o)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i.i, i64 noundef range(i64 0, 576460752303423488) %.val14.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20, !noalias !402
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i: ; preds = %bb.c
  %i.p = icmp ult i64 %i.m, %.val12.i.i.i.i
  br i1 %i.p, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit15.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i
  %i.q = add i64 %.sroa.93.16.copyload, %.sroa.82.16.copyload
  %umax = tail call i64 @llvm.umax.i64(i64 %.val12.i.i.i.i, i64 %i.q)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 0, 576460752303423488) %.val12.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20, !noalias !405
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit15.i.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.val13.i.i.i.i, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !408, !noalias !413, !nonnull !4, !align !417, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !408, !noalias !413, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !418, !noalias !421, !noundef !4
  %i.x = sub i64 %i.u, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !418, !noalias !421, !noundef !4 ; 2 uses
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit15.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20, !noalias !423
  unreachable

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit9.i.i.i.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsl6EuCK7xub1_5insta.exit15.i.i.i.i
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.val11.i.i.i.i, i64 %i.m ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !418, !noalias !421, !nonnull !4, !noundef !4
  %i.ae = load ptr, ptr %i.ab, align 8, !alias.scope !411, !noalias !424, !nonnull !4, !align !417, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !411, !noalias !424, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !425, !noalias !428, !noundef !4
  %i.aj = sub i64 %i.ag, %i.ai                    ; 3 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms8patience13diff_deadlineINtNtNtB6_4text6inline11MultiLookupeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta:bb.a
bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %.body unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBS_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBS_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit15 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBS_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit15: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBS_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.d, %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms8patience13diff_deadlineSReB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %6, i64 noundef %7, i64 noundef %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [216 x i8], align 8               ; 21 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils6uniqueSReECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils6uniqueSReECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.d, %bb.b ], [ %i.s, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(24) %i.c) #19
          to label %common.resume unwind label %bb.k

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %5, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %6, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.j, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i64 %i.l, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 %3, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 %4, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 %7, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 %8, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i64 %9, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i32 %10, ptr %.sroa.17.0..sroa_idx, align 8
  store i64 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = icmp ult i64 %i.h, 384307168202282326
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i64 %i.l, 384307168202282326
  tail call void @llvm.assume(i1 %i.q)
  invoke void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5myers13diff_deadlineINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemSReEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1V_B1V_INtNtB4_7compact7CompactB1V_B1V_IB24_NtNtB4_7capture7CaptureEEEEECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.l, i64 %9, i32 noundef %10)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(24) %i.b) #19
          to label %.body unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta.exit unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta.exit15 unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta.exit15: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEEECsl6EuCK7xub1_5insta.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemSReEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.d, %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB16_4text6inline11MultiLookupeEENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es0_0E0INtNtB2H_3vec3VecBZ_EECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nsw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %1, i64 500000)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ugt i64 %.sroa.0.0.i8, 256          ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBT_4text6inline11MultiLookupeEEEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E13with_capacityCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i8)
  %i.f = invoke { ptr, i64 } @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBT_4text6inline11MultiLookupeEEEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E19as_uninit_slice_mutCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %.thread    ; 2 uses

bb.c:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %bb.k, label %common.resume

.thread:                                          ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  %i.j = extractvalue { ptr, i64 } %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.4.0 = phi i64 [ 256, %bb.a ], [ %i.i, %bb.d ]
  %.pn = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.d ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB13_4text6inline11MultiLookupeEENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es0_0E0ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBS_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.n, %bb.k ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtBS_4text6inline11MultiLookupeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.g

bb.k:                                             ; preds = %.thread, %bb.c
  %i.n = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCshFZddwsEKsN_7similar10algorithms5utils10UniqueItemINtNtNtB1e_4text6inline11MultiLookupeEEEECsl6EuCK7xub1_5insta(ptr noalias noundef align 8 dereferenceable(24) %i.a) #19
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB1O_16IdentifyDistinctpE3new3KeyReB35_EECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.d = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.f = xor <2 x i64> %i.e, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.f, ptr %i.c, align 16, !alias.scope !749
  %i.g = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.h = xor <2 x i64> %i.g, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.h, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !749
  store <2 x i64> %i.d, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !749
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !749
  %.val.i = load i64, ptr %1, align 8, !range !731, !noalias !752, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.i, align 8, !noalias !752, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = trunc nuw i64 %.val.i to i1
  %.val2.i.i = load ptr, ptr %.val1.i, align 8, !noalias !755, !nonnull !4, !noundef !4
  %i.k = getelementptr i8, ptr %.val1.i, i64 8
  %.val3.i.i = load i64, ptr %i.k, align 8, !noalias !755, !noundef !4
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i)
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !758
  store i8 -1, ptr %i.b, align 1, !noalias !758
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1), !noalias !770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !758
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtBO_16IdentifyDistinctpE3new3KeyReB24_ENtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsl6EuCK7xub1_5insta.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !771
  store i8 -1, ptr %i.a, align 1, !noalias !771
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !771
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtBO_16IdentifyDistinctpE3new3KeyReB24_ENtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsl6EuCK7xub1_5insta.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNvMs2_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtBO_16IdentifyDistinctpE3new3KeyReB24_ENtB8_4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsl6EuCK7xub1_5insta.exit: ; preds = %bb.b, %bb.c
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 16, !alias.scope !784
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !784
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !784 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !784
  %i.l = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !784, !noundef !4
  %i.m = shl i64 %i.l, 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !784, !noundef !4
  %i.p = or i64 %i.m, %i.o                        ; 2 uses
  %i.q = xor i64 %i.p, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.r = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.s = add i64 %i.q, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.u = xor i64 %i.t, %i.r                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.w = xor i64 %i.v, %i.s                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.y = add i64 %i.s, %i.u                       ; 3 uses
  %i.z = add i64 %i.w, %i.x                       ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 17)
  %i.ab = xor i64 %i.y, %i.aa                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 21)
  %i.ad = xor i64 %i.ac, %i.z                     ; 3 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32)
  %i.af = xor i64 %i.z, %i.p
  %i.ag = xor i64 %i.ae, 255
  %i.ah = add i64 %i.af, %i.ab                    ; 3 uses
  %i.ai = add i64 %i.ad, %i.ag                    ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 13)
  %i.ak = xor i64 %i.ah, %i.aj                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 16)
  %i.am = xor i64 %i.al, %i.ai                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.ao = add i64 %i.ak, %i.ai                    ; 3 uses
  %i.ap = add i64 %i.am, %i.an                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 17)
  %i.ar = xor i64 %i.ao, %i.aq                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 21)
  %i.at = xor i64 %i.as, %i.ap                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  %i.av = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.aw = add i64 %i.at, %i.au                    ; 2 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ay = xor i64 %i.ax, %i.av                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 16)
  %i.ba = xor i64 %i.az, %i.aw                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.bc = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ba, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 13)
  %i.bm = xor i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 16)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 17)
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 21)
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 32)
  %i.bt = xor i64 %i.br, %i.bq
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = xor i64 %i.bu, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.bv
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECsl6EuCK7xub1_5insta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
end_hunk_4
