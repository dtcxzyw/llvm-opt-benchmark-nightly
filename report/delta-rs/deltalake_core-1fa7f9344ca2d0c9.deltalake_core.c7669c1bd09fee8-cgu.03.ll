inline.NumInlined: 10149
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs1Z_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  store i64 %i.b, ptr %i.a, align 8, !noalias !3827
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3827
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1Z_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB19_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !491, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBN_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB6_9ScalarUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 16 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !1234, !invariant.load !3
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.k(ptr noundef nonnull %i.i, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @45) #50
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB6_9ScalarUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !1234, !invariant.load !3
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.k(ptr noundef nonnull %i.i, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @46) #50
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB6_9ScalarUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBY_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !1234, !invariant.load !3
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.k(ptr noundef nonnull %i.i, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @47) #50
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1h_NtCs4lawaffTVVK_9sqlparser9tokenizerNtB7_13TokenWithSpanNtNtNtB9_3ast7visitor8VisitMut5visitINtB13_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB39_(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvXsr_NtCs4lawaffTVVK_9sqlparser9tokenizerNtB6_5TokenNtNtNtB8_3ast7visitor8VisitMut5visitINtBT_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2Y_(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !492, !noundef !3 ; 3 uses
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !3838, !noundef !3 ; 4 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.a
  %i.f = zext nneg i8 %i.a to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !3838, !noundef !3 ; 3 uses
  %i.j = or i128 %i.i, %i.h                       ; 2 uses
  store i128 %i.j, ptr %1, align 16, !alias.scope !3838
  %i.k = add nuw i8 %i.d, 64
  store i8 %i.k, ptr %i.c, align 16, !alias.scope !3838
  br i1 %i.b, label %bb.b, label %bb.c

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread: ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !3838, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !3838, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !3838, !nonnull !3, !align !100, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !3838, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128                    ; 2 uses
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 2 uses
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !3838
  %i.ab = zext nneg i8 %i.a to i128
  store i128 %i.ab, ptr %1, align 16, !alias.scope !3838
  store i8 64, ptr %i.c, align 16, !alias.scope !3838
  br i1 %i.b, label %bb.b, label %.thread

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.b:                                             ; preds = %bb.d, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  ret void

bb.c:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3842)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, label %bb.d

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !3845
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre16 = load ptr, ptr %.phi.trans.insert15, align 16, !alias.scope !3845
  %.pre17 = load i64, ptr %.pre16, align 8, !noalias !3845
  %.pre18 = zext i64 %.pre17 to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.d:                                             ; preds = %bb.c
  %i.ag = trunc i128 %i.i to i64
  %i.ah = lshr i128 %i.i, 64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !3850, !noundef !3
  %i.ak = xor i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 16, !alias.scope !3850, !nonnull !3, !align !100, !noundef !3
  %i.an = load i64, ptr %i.am, align 8, !noalias !3850, !noundef !3
  %i.ao = zext i64 %i.ak to i128
  %i.ap = zext i64 %i.an to i128                  ; 2 uses
  %i.aq = xor i128 %i.ah, %i.ap
  %i.ar = mul nuw i128 %i.aq, %i.ao               ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  store i64 %i.au, ptr %i.ai, align 8, !alias.scope !3850
  %i.av = zext i64 %i.af to i128
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !range !2835, !noundef !3 ; 2 uses
  %.not14 = icmp eq i8 %i.ax, 2                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3852)
  %i.ay = select i1 %.not14, i128 0, i128 18446744073709551616
  %i.az = or disjoint i128 %i.ay, %i.av
  store i128 %i.az, ptr %1, align 16, !alias.scope !3845
  store i8 -128, ptr %i.c, align 16, !alias.scope !3845
  br i1 %.not14, label %bb.b, label %bb.f

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, %.thread
  %.pre-phi = phi i128 [ %.pre18, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.v, %.thread ]
  %i.ba = phi i64 [ %.pre, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.aa, %.thread ]
  %i.bb = phi i128 [ %i.j, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ 0, %.thread ] ; 2 uses
  %i.bc = phi i64 [ %i.af, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ], [ %i.ad, %.thread ]
  %i.bd = zext i64 %i.bc to i128
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !range !2835, !noundef !3 ; 2 uses
  %i.bg = icmp ne i8 %i.bf, 2                     ; 2 uses
  %i.bh = trunc i128 %i.bb to i64
  %i.bi = lshr i128 %i.bb, 64
  %i.bj = or i128 %i.bi, %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = xor i64 %i.ba, %i.bh
  %i.bm = zext i64 %i.bl to i128
  %i.bn = xor i128 %i.bj, %.pre-phi
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  store i64 %i.br, ptr %i.bk, align 8, !alias.scope !3845
  %i.bs = zext i1 %i.bg to i128                   ; 2 uses
  store i128 %i.bs, ptr %1, align 16, !alias.scope !3845
  store i8 64, ptr %i.c, align 16, !alias.scope !3845
  br i1 %i.bg, label %bb.e, label %bb.b

bb.e:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.bt = zext nneg i8 %i.bf to i128
  %i.bu = shl nuw nsw i128 %i.bt, 64
  %i.bv = or disjoint i128 %i.bu, %i.bs
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.f:                                             ; preds = %bb.d
  %i.bw = xor i64 %i.af, %i.au
  %i.bx = zext i64 %i.bw to i128
  %i.by = xor i128 %i.ap, 1
  %i.bz = mul nuw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = xor i128 %i.ca, %i.bz
  %i.cc = trunc i128 %i.cb to i64
  store i64 %i.cc, ptr %i.ai, align 8, !alias.scope !3853
  %i.cd = zext nneg i8 %i.ax to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.e, %bb.f
  %storemerge = phi i128 [ %i.cd, %bb.f ], [ %i.bv, %bb.e ]
  %storemerge.i.i = phi i8 [ 64, %bb.f ], [ -128, %bb.e ]
  store i128 %storemerge, ptr %1, align 16, !alias.scope !3853
  store i8 %storemerge.i.i, ptr %i.c, align 16, !alias.scope !3853
  br label %bb.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 8, !range !492, !noundef !3 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = zext nneg i8 %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3858
  store i64 %i.g, ptr %i.d, align 8, !noalias !3858
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3858
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3863
  store i64 %i.i, ptr %i.c, align 8, !noalias !3863
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3863
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !2835, !noundef !3 ; 2 uses
  %i.l = icmp ne i8 %i.k, 2                       ; 2 uses
  %i.m = zext i1 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3866
  store i64 %i.m, ptr %i.b, align 8, !noalias !3866
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3866
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i8 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3871
  store i64 %i.n, ptr %i.a, align 8, !noalias !3871
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3871
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1j_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_15CharacterLengthNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1b_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !492, !noundef !3 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = zext nneg i8 %i.a to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.c)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_u64Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !2835, !noundef !3 ; 2 uses
  %i.h = icmp ne i8 %i.g, 2                       ; 2 uses
  %i.i = zext i1 %i.h to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.i)
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.g to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.j)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs1k_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB7_15TriggerExecBodyNtNtB9_7visitor8VisitMut5visitINtB19_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB22_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB39_(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvXsta_NtCs4lawaffTVVK_9sqlparser3astNtB7_12FunctionDescNtNtB7_7visitor8VisitMut5visitINtBW_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1l_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_20AlterPolicyOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1015, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 70                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3879)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !3882, !noundef !3 ; 4 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.a
  %i.f = zext i1 %i.b to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !3882, !noundef !3
  %i.j = or i128 %i.i, %i.h                       ; 5 uses
  store i128 %i.j, ptr %1, align 16, !alias.scope !3882
  %i.k = add nuw i8 %i.d, 64
  store i8 %i.k, ptr %i.c, align 16, !alias.scope !3882
  br i1 %i.b, label %bb.b, label %bb.d

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread: ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !3882, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !3882, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !3882, !nonnull !3, !align !100, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !3882, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !3882
  %i.ab = zext i1 %i.b to i128                    ; 2 uses
  store i128 %i.ab, ptr %1, align 16, !alias.scope !3882
  store i8 64, ptr %i.c, align 16, !alias.scope !3882
  br i1 %i.b, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ad = load i64, ptr %i.ac, align 8, !range !777, !noundef !3
  %.not23 = icmp eq i64 %i.ad, -9223372036854775808 ; 2 uses
  %i.ae = select i1 %.not23, i128 0, i128 18446744073709551616
  %i.af = or disjoint i128 %i.ae, %i.ab           ; 3 uses
  store i128 %i.af, ptr %1, align 16, !alias.scope !3883
  store i8 -128, ptr %i.c, align 16, !alias.scope !3883
  br i1 %.not23, label %.thread14, label %bb.g

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ah = load i64, ptr %i.ag, align 8, !range !777, !noundef !3
  %.not22 = icmp eq i64 %i.ah, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.c:                                             ; preds = %bb.b
  %i.ai = select i1 %.not22, i128 0, i128 18446744073709551616
  %i.aj = or i128 %i.j, %i.ai                     ; 3 uses
  store i128 %i.aj, ptr %1, align 16, !alias.scope !3883
  store i8 -128, ptr %i.c, align 16, !alias.scope !3883
  %extract.t = trunc i128 %i.j to i64
  br i1 %.not22, label %.thread14, label %bb.g

.thread14:                                        ; preds = %.thread, %bb.c
  %i.ak = phi i128 [ %i.af, %.thread ], [ %i.aj, %bb.c ]
  %i.al = icmp ne i64 %i.a, 69                    ; 2 uses
  %i.am = zext i1 %i.al to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.b
  %i.an = trunc i128 %i.j to i64
  %i.ao = lshr i128 %i.j, 64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !3883, !noundef !3
  %i.ar = xor i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 16, !alias.scope !3883, !nonnull !3, !align !100, !noundef !3
  %i.au = load i64, ptr %i.at, align 8, !noalias !3883, !noundef !3
  %i.av = zext i64 %i.ar to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = xor i128 %i.ao, %i.aw
  %i.ay = mul nuw i128 %i.ax, %i.av               ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = xor i128 %i.az, %i.ay
  %i.bb = trunc i128 %i.ba to i64
  store i64 %i.bb, ptr %i.ap, align 8, !alias.scope !3883
  br i1 %.not22, label %.thread15, label %bb.f
end_hunk_0
begin_hunk_1_@_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.aro, label %bb.ce, label %bb.cd, !prof !2537

bb.cd:                                            ; preds = %bb.cc
  %i.arp = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.arj, i64 noundef range(i64 0, -9223372036854775808) %i.arl, i64 noundef %i.arn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.arg) #54, !noalias !4508
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i

bb.ce:                                            ; preds = %bb.cc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4512)
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
  %i.arr = load i64, ptr %i.arq, align 8, !alias.scope !4512, !noalias !4514, !noundef !3 ; 4 uses
  %i.ars = icmp samesign ugt i64 %i.arl, 7
  br i1 %i.ars, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.art = icmp samesign ugt i64 %i.arl, 3
  br i1 %i.art, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i, label %bb.cg

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i: ; preds = %bb.ce
  %.sroa.014.0.copyload.i.i.i30.i = load i64, ptr %i.arj, align 1, !alias.scope !4515, !noalias !4516
  %i.aru = xor i64 %.sroa.014.0.copyload.i.i.i30.i, %i.arn
  %i.arv = getelementptr i8, ptr %i.arj, i64 %i.arl
  %i.arw = getelementptr i8, ptr %i.arv, i64 -8
  %.sroa.016.0.copyload.i.i.i31.i = load i64, ptr %i.arw, align 1, !alias.scope !4515, !noalias !4516
  %i.arx = xor i64 %.sroa.016.0.copyload.i.i.i31.i, %i.arr
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i22.i = icmp eq i64 %i.arl, 0
  br i1 %.not.i.i.i22.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i, label %bb.ch

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i: ; preds = %bb.cf
  %i.ary = getelementptr i8, ptr %i.arj, i64 %i.arl
  %i.arz = getelementptr i8, ptr %i.ary, i64 -4
  %.sroa.019.0.copyload.i.i.i27.i = load i32, ptr %i.arz, align 1, !alias.scope !4515, !noalias !4516
  %.sroa.018.0.copyload.i.i.i28.i = load i32, ptr %i.arj, align 1, !alias.scope !4515, !noalias !4516
  %i.asa = zext i32 %.sroa.018.0.copyload.i.i.i28.i to i64
  %i.asb = xor i64 %i.arn, %i.asa
  %i.asc = zext i32 %.sroa.019.0.copyload.i.i.i27.i to i64
  %i.asd = xor i64 %i.arr, %i.asc
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

bb.ch:                                            ; preds = %bb.cg
  %i.ase = load i8, ptr %i.arj, align 1, !alias.scope !4515, !noalias !4516, !noundef !3
  %i.asf = lshr i64 %i.arl, 1
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.asf
  %i.ash = load i8, ptr %i.asg, align 1, !alias.scope !4515, !noalias !4516, !noundef !3
  %i.asi = getelementptr i8, ptr %i.arj, i64 %i.arl
  %i.asj = getelementptr i8, ptr %i.asi, i64 -1
  %i.ask = load i8, ptr %i.asj, align 1, !alias.scope !4515, !noalias !4516, !noundef !3
  %i.asl = zext i8 %i.ase to i64
  %i.asm = xor i64 %i.arn, %i.asl
  %i.asn = zext i8 %i.ask to i64
  %i.aso = shl nuw nsw i64 %i.asn, 8
  %i.asp = zext i8 %i.ash to i64
  %i.asq = or disjoint i64 %i.aso, %i.asp
  %i.asr = xor i64 %i.asq, %i.arr
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i: ; preds = %bb.ch, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i, %bb.cg, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i
  %.sroa.04.0.i.i.i24.i = phi i64 [ %i.arx, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i ], [ %i.asd, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i ], [ %i.asr, %bb.ch ], [ %i.arr, %bb.cg ]
  %.sroa.0.0.i.i.i25.i = phi i64 [ %i.aru, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i29.i ], [ %i.asb, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i26.i ], [ %i.asm, %bb.ch ], [ %i.arn, %bb.cg ]
  %i.ass = zext i64 %.sroa.0.0.i.i.i25.i to i128
  %i.ast = zext i64 %.sroa.04.0.i.i.i24.i to i128
  %i.asu = mul nuw i128 %i.ass, %i.ast            ; 2 uses
  %i.asv = lshr i128 %i.asu, 64
  %i.asw = xor i128 %i.asv, %i.asu
  %i.asx = trunc i128 %i.asw to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i, %bb.cd
  %storemerge.i.i19.i = phi i64 [ %i.arp, %bb.cd ], [ %i.asx, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i23.i ] ; 2 uses
  store i64 %storemerge.i.i19.i, ptr %i.arm, align 8, !alias.scope !4455, !noalias !4460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4520)
  %i.asy = icmp ugt i8 %storemerge.i.i39.i, 120
  br i1 %i.asy, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i
  %i.asz = zext nneg i8 %storemerge.i.i39.i to i128
  %i.ata = shl nuw i128 255, %i.asz
  %i.atb = load i128, ptr %1, align 16, !alias.scope !4523, !noalias !4524, !noundef !3
  %i.atc = or i128 %i.atb, %i.ata
  %i.atd = add nuw i8 %storemerge.i.i39.i, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i

bb.cj:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i18.i
  %i.ate = load i128, ptr %1, align 16, !alias.scope !4523, !noalias !4524, !noundef !3 ; 2 uses
  %i.atf = trunc i128 %i.ate to i64
  %i.atg = lshr i128 %i.ate, 64
  %i.ath = xor i64 %storemerge.i.i19.i, %i.atf
  %i.ati = load i64, ptr %i.arg, align 8, !noalias !4525, !noundef !3
  %i.atj = zext i64 %i.ath to i128
  %i.atk = zext i64 %i.ati to i128
  %i.atl = xor i128 %i.atg, %i.atk
  %i.atm = mul nuw i128 %i.atl, %i.atj            ; 2 uses
  %i.atn = lshr i128 %i.atm, 64
  %i.ato = xor i128 %i.atn, %i.atm
  %i.atp = trunc i128 %i.ato to i64
  store i64 %i.atp, ptr %i.arm, align 8, !alias.scope !4523, !noalias !4524
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i: ; preds = %bb.cj, %bb.ci
  %.sink.i20.i = phi i128 [ 255, %bb.cj ], [ %i.atc, %bb.ci ] ; 2 uses
  %storemerge.i.i.i21.i = phi i8 [ 8, %bb.cj ], [ %i.atd, %bb.ci ] ; 2 uses
  store i128 %.sink.i20.i, ptr %1, align 16, !alias.scope !4523, !noalias !4524
  store i8 %storemerge.i.i.i21.i, ptr %i.d, align 16, !alias.scope !4523, !noalias !4524
  br label %bb.ck

bb.ck:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i, %bb.bs
  %i.atq = phi i128 [ %i.amz, %bb.bs ], [ %.sink.i20.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i ] ; 3 uses
  %i.atr = phi i8 [ %i.ana, %bb.bs ], [ %storemerge.i.i.i21.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit32.i ] ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.att = load i8, ptr %i.ats, align 2, !range !492, !alias.scope !4306, !noalias !4309, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4529)
  %i.atu = icmp ugt i8 %i.atr, 120
  br i1 %i.atu, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.thread46.i
  %i.atv = phi i128 [ 0, %.thread46.i ], [ %i.atq, %bb.ck ]
  %i.atw = phi i8 [ %i.ans, %.thread46.i ], [ %i.att, %bb.ck ]
  %i.atx = phi i8 [ 64, %.thread46.i ], [ %i.atr, %bb.ck ] ; 2 uses
  %i.aty = zext nneg i8 %i.atw to i128
  %i.atz = zext nneg i8 %i.atx to i128
  %i.aua = shl nuw nsw i128 %i.aty, %i.atz
  %i.aub = or i128 %i.aua, %i.atv                 ; 2 uses
  store i128 %i.aub, ptr %1, align 16, !alias.scope !4532, !noalias !4306
  %i.auc = add nuw i8 %i.atx, 8
  br label %.sink.split.i

bb.cm:                                            ; preds = %bb.ck
  %i.aud = trunc i128 %i.atq to i64
  %i.aue = lshr i128 %i.atq, 64
  %i.auf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aug = load i64, ptr %i.auf, align 8, !alias.scope !4532, !noalias !4306, !noundef !3
  %i.auh = xor i64 %i.aug, %i.aud
  %i.aui = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.auj = load ptr, ptr %i.aui, align 16, !alias.scope !4532, !noalias !4306, !nonnull !3, !align !100, !noundef !3
  %i.auk = load i64, ptr %i.auj, align 8, !noalias !4533, !noundef !3
  %i.aul = zext i64 %i.auh to i128
  %i.aum = zext i64 %i.auk to i128
  %i.aun = xor i128 %i.aue, %i.aum
  %i.auo = mul nuw i128 %i.aun, %i.aul            ; 2 uses
  %i.aup = lshr i128 %i.auo, 64
  %i.auq = xor i128 %i.aup, %i.auo
  %i.aur = trunc i128 %i.auq to i64
  store i64 %i.aur, ptr %i.auf, align 8, !alias.scope !4532, !noalias !4306
  %i.aus = zext nneg i8 %i.att to i128            ; 2 uses
  store i128 %i.aus, ptr %1, align 16, !alias.scope !4532, !noalias !4306
  br label %.sink.split.i

_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.sink.split.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aut = phi i128 [ %i.ant, %.sink.split.i ], [ %i.abf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ], [ %i.zh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 3 uses
  %i.auu = phi i8 [ %storemerge.i.i7.sink.i, %.sink.split.i ], [ %storemerge.i.i5.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ], [ %i.zi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.auw = load i64, ptr %i.auv, align 8, !range !777, !noundef !3
  %i.aux = icmp ne i64 %i.auw, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4537)
  %i.auy = icmp ugt i8 %i.auu, 64
  br i1 %i.auy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.cn

bb.cn:                                            ; preds = %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.auz = phi i128 [ 0, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aut, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ava = phi i1 [ %i.aac, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aux, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.avb = phi i8 [ 64, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.auu, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.avc = zext i1 %i.ava to i128
  %i.avd = zext nneg i8 %i.avb to i128
  %i.ave = shl nuw nsw i128 %i.avc, %i.avd
  %i.avf = or i128 %i.ave, %i.auz                 ; 4 uses
  store i128 %i.avf, ptr %1, align 16, !alias.scope !4540
  %i.avg = add nuw i8 %i.avb, 64
  store i8 %i.avg, ptr %i.d, align 16, !alias.scope !4540
  br i1 %i.ava, label %bb.cp, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.cn
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.avi = load i64, ptr %i.avh, align 8, !range !859, !noundef !3 ; 2 uses
  %i.avj = icmp ne i64 %i.avi, -9223372036854775807 ; 2 uses
  %i.avk = zext i1 %i.avj to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.avl = trunc i128 %i.aut to i64
  %i.avm = lshr i128 %i.aut, 64
  %i.avn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.avo = load i64, ptr %i.avn, align 8, !alias.scope !4540, !noundef !3
  %i.avp = xor i64 %i.avo, %i.avl
  %i.avq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.avr = load ptr, ptr %i.avq, align 16, !alias.scope !4540, !nonnull !3, !align !100, !noundef !3
  %i.avs = load i64, ptr %i.avr, align 8, !noalias !4540, !noundef !3
  %i.avt = zext i64 %i.avp to i128
  %i.avu = zext i64 %i.avs to i128
  %i.avv = xor i128 %i.avm, %i.avu
  %i.avw = mul nuw i128 %i.avv, %i.avt            ; 2 uses
  %i.avx = lshr i128 %i.avw, 64
  %i.avy = xor i128 %i.avx, %i.avw
  %i.avz = trunc i128 %i.avy to i64
  store i64 %i.avz, ptr %i.avn, align 8, !alias.scope !4540
  %i.awa = zext i1 %i.aux to i128                 ; 2 uses
  store i128 %i.awa, ptr %1, align 16, !alias.scope !4540
  store i8 64, ptr %i.d, align 16, !alias.scope !4540
  br i1 %i.aux, label %bb.co, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.awc = load i64, ptr %i.awb, align 8, !range !859, !noundef !3 ; 2 uses
  %i.awd = icmp ne i64 %i.awc, -9223372036854775807 ; 2 uses
  %i.awe = zext i1 %i.awd to i64
  br label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

bb.co:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.awf = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.awg = load ptr, ptr %i.awf, align 8, !nonnull !3, !noundef !3
  %i.awh = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.awi = load i64, ptr %i.awh, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4547)
  %i.awj = zext i64 %i.awi to i128
  %i.awk = shl nuw i128 %i.awj, 64
  %i.awl = or disjoint i128 %i.awk, %i.awa
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24

bb.cp:                                            ; preds = %bb.cn
  %i.awm = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.awn = load ptr, ptr %i.awm, align 8, !nonnull !3, !noundef !3
  %i.awo = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.awp = load i64, ptr %i.awo, align 8, !noundef !3 ; 2 uses
  %i.awq = trunc i128 %i.avf to i64
  %i.awr = lshr i128 %i.avf, 64
  %i.aws = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.awt = load i64, ptr %i.aws, align 8, !alias.scope !4550, !noundef !3
  %i.awu = xor i64 %i.awt, %i.awq
  %i.awv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aww = load ptr, ptr %i.awv, align 16, !alias.scope !4550, !nonnull !3, !align !100, !noundef !3
  %i.awx = load i64, ptr %i.aww, align 8, !noalias !4550, !noundef !3
  %i.awy = zext i64 %i.awu to i128
  %i.awz = zext i64 %i.awx to i128
  %i.axa = xor i128 %i.awr, %i.awz
  %i.axb = mul nuw i128 %i.axa, %i.awy            ; 2 uses
  %i.axc = lshr i128 %i.axb, 64
  %i.axd = xor i128 %i.axc, %i.axb
  %i.axe = trunc i128 %i.axd to i64
  store i64 %i.axe, ptr %i.aws, align 8, !alias.scope !4550
  %i.axf = zext i64 %i.awp to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24: ; preds = %bb.co, %bb.cp
  %i.axg = phi i64 [ %i.awp, %bb.cp ], [ %i.awi, %bb.co ] ; 2 uses
  %i.axh = phi ptr [ %i.awn, %bb.cp ], [ %i.awg, %bb.co ] ; 2 uses
  %.sink.i22 = phi i128 [ %i.axf, %bb.cp ], [ %i.awl, %bb.co ] ; 2 uses
  %storemerge.i.i.i23 = phi i8 [ 64, %bb.cp ], [ -128, %bb.co ] ; 2 uses
  store i128 %.sink.i22, ptr %1, align 16, !alias.scope !4550
  store i8 %storemerge.i.i.i23, ptr %i.d, align 16, !alias.scope !4550
  %.idx127 = mul nuw nsw i64 %i.axg, 392
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 %.idx127
  %i.axj = icmp eq i64 %i.axg, 0
  br i1 %i.axj, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph123

.lr.ph123:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24, %.lr.ph123
  %.sroa.0.0.i122 = phi ptr [ %i.axk, %.lr.ph123 ], [ %i.axh, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24 ] ; 3 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i122, i64 392 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i122, i64 328
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.axl, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !4551
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %.sroa.0.0.i122, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !4551
  %i.axm = icmp eq ptr %i.axk, %i.axi
  br i1 %i.axm, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %.lr.ph123

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %.lr.ph123
  %.pr104.pre = load i8, ptr %i.d, align 16, !alias.scope !4552
  %.pre142.pre = load i128, ptr %1, align 16, !alias.scope !4552
  br label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24
  %.pre142 = phi i128 [ %.pre142.pre, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %.sink.i22, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24 ] ; 2 uses
  %.pr104 = phi i8 [ %.pr104.pre, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %storemerge.i.i.i23, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24 ] ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.axo = load i64, ptr %i.axn, align 8, !range !859, !noundef !3 ; 3 uses
  %i.axp = icmp ne i64 %i.axo, -9223372036854775807 ; 3 uses
  %i.axq = zext i1 %i.axp to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4558)
  %i.axr = icmp ugt i8 %.pr104, 64
  br i1 %i.axr, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105
  %i.axs = phi i128 [ 0, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105 ], [ %.pre142, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.axt = phi i64 [ %i.awe, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105 ], [ %i.axq, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.axu = phi i1 [ %i.awd, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105 ], [ %i.axp, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.axv = phi i64 [ %i.awc, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105 ], [ %i.axo, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.axw = phi ptr [ %i.awb, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105 ], [ %i.axn, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.axx = phi i8 [ 64, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread105 ], [ %.pr104, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.axy = zext nneg i64 %i.axt to i128
  %i.axz = zext nneg i8 %i.axx to i128
  %i.aya = shl nuw nsw i128 %i.axy, %i.axz
  %i.ayb = or i128 %i.aya, %i.axs                 ; 4 uses
  store i128 %i.ayb, ptr %1, align 16, !alias.scope !4552
  %i.ayc = add nuw i8 %i.axx, 64                  ; 2 uses
  store i8 %i.ayc, ptr %i.d, align 16, !alias.scope !4552
  br i1 %i.axu, label %bb.cq, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.ayd = phi i128 [ %i.avf, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre142, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.aye = phi i64 [ %i.avk, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.axq, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ayf = phi i1 [ %i.avj, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.axp, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ayg = phi i64 [ %i.avi, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.axo, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ayh = phi ptr [ %i.avh, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.axn, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ayi = trunc i128 %i.ayd to i64
  %i.ayj = lshr i128 %i.ayd, 64
  %i.ayk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ayl = load i64, ptr %i.ayk, align 8, !alias.scope !4552, !noundef !3
  %i.aym = xor i64 %i.ayl, %i.ayi
  %i.ayn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ayo = load ptr, ptr %i.ayn, align 16, !alias.scope !4552, !nonnull !3, !align !100, !noundef !3
  %i.ayp = load i64, ptr %i.ayo, align 8, !noalias !4552, !noundef !3
  %i.ayq = zext i64 %i.aym to i128
  %i.ayr = zext i64 %i.ayp to i128
  %i.ays = xor i128 %i.ayj, %i.ayr
  %i.ayt = mul nuw i128 %i.ays, %i.ayq            ; 2 uses
  %i.ayu = lshr i128 %i.ayt, 64
  %i.ayv = xor i128 %i.ayu, %i.ayt
  %i.ayw = trunc i128 %i.ayv to i64
  store i64 %i.ayw, ptr %i.ayk, align 8, !alias.scope !4552
  %i.ayx = zext nneg i64 %i.aye to i128           ; 2 uses
  store i128 %i.ayx, ptr %1, align 16, !alias.scope !4552
  br i1 %i.ayf, label %.thread107, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread185

.thread107:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.ayy = icmp eq i64 %i.ayg, -9223372036854775808 ; 2 uses
  %i.ayz = select i1 %i.ayy, i128 18446744073709551616, i128 0
  %i.aza = or disjoint i128 %i.ayz, %i.ayx
  store i128 %i.aza, ptr %1, align 16, !alias.scope !4559, !noalias !4566
  store i8 -128, ptr %i.d, align 16, !alias.scope !4559, !noalias !4566
  br i1 %i.ayy, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.cs

bb.cq:                                            ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  %i.azb = icmp eq i64 %i.axv, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4570)
  %.not118 = icmp eq i8 %i.axx, 0
  br i1 %.not118, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.azc = trunc i128 %i.ayb to i64
  %i.azd = lshr i128 %i.ayb, 64
  %i.aze = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.azf = load i64, ptr %i.aze, align 8, !alias.scope !4559, !noalias !4566, !noundef !3
  %i.azg = xor i64 %i.azf, %i.azc
  %i.azh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.azi = load ptr, ptr %i.azh, align 16, !alias.scope !4559, !noalias !4566, !nonnull !3, !align !100, !noundef !3
  %i.azj = load i64, ptr %i.azi, align 8, !noalias !4571, !noundef !3
  %i.azk = zext i64 %i.azg to i128
  %i.azl = zext i64 %i.azj to i128
  %i.azm = xor i128 %i.azd, %i.azl
  %i.azn = mul nuw i128 %i.azm, %i.azk            ; 2 uses
  %i.azo = lshr i128 %i.azn, 64
  %i.azp = xor i128 %i.azo, %i.azn
  %i.azq = trunc i128 %i.azp to i64
  store i64 %i.azq, ptr %i.aze, align 8, !alias.scope !4559, !noalias !4566
  %i.azr = zext i1 %i.azb to i128
  store i128 %i.azr, ptr %1, align 16, !alias.scope !4559, !noalias !4566
  store i8 64, ptr %i.d, align 16, !alias.scope !4559, !noalias !4566
  br i1 %i.azb, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread185, label %bb.cs

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25: ; preds = %bb.cq
  %i.azs = select i1 %i.azb, i128 18446744073709551616, i128 0
  %i.azt = or i128 %i.ayb, %i.azs
  store i128 %i.azt, ptr %1, align 16, !alias.scope !4559, !noalias !4566
  store i8 -128, ptr %i.d, align 16, !alias.scope !4559, !noalias !4566
  br i1 %i.azb, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %.thread107, %bb.cr, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25
  %i.azu = phi ptr [ %i.axw, %bb.cr ], [ %i.axw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25 ], [ %i.ayh, %.thread107 ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.azu, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pre143 = load i8, ptr %i.d, align 16, !alias.scope !4572
  br label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25, %.thread107
  %i.azv = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.azw = load ptr, ptr %i.azv, align 8, !nonnull !3, !noundef !3
  %i.azx = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.azy = load i64, ptr %i.azx, align 8, !noundef !3
  br label %bb.cu

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread185: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %bb.cr
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.baa = load ptr, ptr %i.azz, align 8, !nonnull !3, !noundef !3
  %i.bab = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bac = load i64, ptr %i.bab, align 8, !noundef !3
  br label %bb.ct

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cs, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge
  %i.bad = phi i8 [ %.pre143, %bb.cs ], [ %i.ayc, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ] ; 2 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.baf = load ptr, ptr %i.bae, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bah = load i64, ptr %i.bag, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4581)
  %i.bai = icmp ugt i8 %i.bad, 64
  br i1 %i.bai, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread185, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.baj = phi i64 [ %i.bac, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread185 ], [ %i.bah, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bak = phi ptr [ %i.baa, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread185 ], [ %i.baf, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.bal = phi i8 [ 64, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread185 ], [ %i.bad, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bam = zext i64 %i.baj to i128
  %i.ban = zext nneg i8 %i.bal to i128
  %i.bao = shl nuw i128 %i.bam, %i.ban
  %i.bap = load i128, ptr %1, align 16, !alias.scope !4572, !noundef !3
  %i.baq = or i128 %i.bap, %i.bao
  %i.bar = add nuw i8 %i.bal, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit30

bb.cu:                                            ; preds = %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bas = phi i64 [ %i.azy, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bah, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bat = phi ptr [ %i.azw, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.baf, %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.bau = load i128, ptr %1, align 16, !alias.scope !4572, !noundef !3 ; 2 uses
  %i.bav = trunc i128 %i.bau to i64
end_hunk_1
begin_hunk_2_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.aky = load i64, ptr %.sroa.0.0.i54166, align 8, !range !764, !alias.scope !5363, !noalias !5364, !noundef !3
  %i.akz = icmp ne i64 %i.aky, 4                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5368)
  %i.ala = load i8, ptr %i.d, align 16, !alias.scope !5371, !noalias !5363, !noundef !3 ; 3 uses
  %i.alb = icmp ugt i8 %i.ala, 64
  br i1 %i.alb, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.alc = zext i1 %i.akz to i128
  %i.ald = zext nneg i8 %i.ala to i128
  %i.ale = shl nuw nsw i128 %i.alc, %i.ald
  %i.alf = load i128, ptr %1, align 16, !alias.scope !5371, !noalias !5363, !noundef !3
  %i.alg = or i128 %i.alf, %i.ale
  %i.alh = add nuw i8 %i.ala, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i85

bb.bs:                                            ; preds = %bb.bq
  %i.ali = load i128, ptr %1, align 16, !alias.scope !5371, !noalias !5363, !noundef !3 ; 2 uses
  %i.alj = trunc i128 %i.ali to i64
  %i.alk = lshr i128 %i.ali, 64
  %i.all = load i64, ptr %i.aku, align 8, !alias.scope !5371, !noalias !5363, !noundef !3
  %i.alm = xor i64 %i.all, %i.alj
  %i.aln = load ptr, ptr %i.akv, align 16, !alias.scope !5371, !noalias !5363, !nonnull !3, !align !100, !noundef !3
  %i.alo = load i64, ptr %i.aln, align 8, !noalias !5372, !noundef !3
  %i.alp = zext i64 %i.alm to i128
  %i.alq = zext i64 %i.alo to i128
  %i.alr = xor i128 %i.alk, %i.alq
  %i.als = mul nuw i128 %i.alr, %i.alp            ; 2 uses
  %i.alt = lshr i128 %i.als, 64
  %i.alu = xor i128 %i.alt, %i.als
  %i.alv = trunc i128 %i.alu to i64
  store i64 %i.alv, ptr %i.aku, align 8, !alias.scope !5371, !noalias !5363
  %i.alw = zext i1 %i.akz to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i85

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i85: ; preds = %bb.bs, %bb.br
  %.sink181 = phi i128 [ %i.alw, %bb.bs ], [ %i.alg, %bb.br ]
  %storemerge.i.i.i.i86 = phi i8 [ 64, %bb.bs ], [ %i.alh, %bb.br ]
  store i128 %.sink181, ptr %1, align 16, !alias.scope !5371, !noalias !5363
  store i8 %storemerge.i.i.i.i86, ptr %i.d, align 16, !alias.scope !5371, !noalias !5363
  br i1 %i.akz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i85
  tail call fastcc void @_RINvXs7P_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowSpecNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %.sroa.0.0.i54166, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !5373
  br label %_RINvXs3f_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bu:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i85
  %i.alx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i54166, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.alx, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !5373
  br label %_RINvXs3f_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs3f_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bt, %bb.bu
  %i.aly = icmp eq ptr %i.akw, %i.aks
  br i1 %i.aly, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %bb.bq

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %_RINvXs3f_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.pre191 = load i8, ptr %i.d, align 16, !alias.scope !5374
  br label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit53
  %i.alz = phi i8 [ %.pre191, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %storemerge.i.i.i52, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit53 ] ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.amb = load i64, ptr %i.ama, align 8, !range !918, !noundef !3
  %i.amc = icmp ne i64 %i.amb, 69                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5380)
  %i.amd = icmp ugt i8 %i.alz, 64
  br i1 %i.amd, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.ame = zext i1 %i.amc to i128
  %i.amf = zext nneg i8 %i.alz to i128
  %i.amg = shl nuw nsw i128 %i.ame, %i.amf
  %i.amh = load i128, ptr %1, align 16, !alias.scope !5374, !noundef !3
  %i.ami = or i128 %i.amh, %i.amg
  %i.amj = add nuw i8 %i.alz, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.bw:                                            ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.amk = load i128, ptr %1, align 16, !alias.scope !5374, !noundef !3 ; 2 uses
  %i.aml = trunc i128 %i.amk to i64
  %i.amm = lshr i128 %i.amk, 64
  %i.amn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.amo = load i64, ptr %i.amn, align 8, !alias.scope !5374, !noundef !3
  %i.amp = xor i64 %i.amo, %i.aml
  %i.amq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.amr = load ptr, ptr %i.amq, align 16, !alias.scope !5374, !nonnull !3, !align !100, !noundef !3
  %i.ams = load i64, ptr %i.amr, align 8, !noalias !5374, !noundef !3
  %i.amt = zext i64 %i.amp to i128
  %i.amu = zext i64 %i.ams to i128
  %i.amv = xor i128 %i.amm, %i.amu
  %i.amw = mul nuw i128 %i.amv, %i.amt            ; 2 uses
  %i.amx = lshr i128 %i.amw, 64
  %i.amy = xor i128 %i.amx, %i.amw
  %i.amz = trunc i128 %i.amy to i64
  store i64 %i.amz, ptr %i.amn, align 8, !alias.scope !5374
  %i.ana = zext i1 %i.amc to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.bv, %bb.bw
  %.sink182 = phi i128 [ %i.ana, %bb.bw ], [ %i.ami, %bb.bv ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.bw ], [ %i.amj, %bb.bv ] ; 2 uses
  store i128 %.sink182, ptr %1, align 16, !alias.scope !5374
  store i8 %storemerge.i.i3, ptr %i.d, align 16, !alias.scope !5374
  br i1 %i.amc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ama, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  %.pr130 = load i8, ptr %i.d, align 16, !alias.scope !5381
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.anb = phi i8 [ %.pr130, %bb.bx ], [ %storemerge.i.i3, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 4 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 2425
  %i.and = load i8, ptr %i.anc, align 1, !range !492, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5387)
  %i.ane = icmp ugt i8 %i.anb, 120
  br i1 %i.ane, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread: ; preds = %bb.by
  %i.anf = load i128, ptr %1, align 16, !alias.scope !5381, !noundef !3 ; 2 uses
  %i.ang = trunc i128 %i.anf to i64
  %i.anh = lshr i128 %i.anf, 64
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.anj = load i64, ptr %i.ani, align 8, !alias.scope !5381, !noundef !3
  %i.ank = xor i64 %i.anj, %i.ang
  %i.anl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.anm = load ptr, ptr %i.anl, align 16, !alias.scope !5381, !nonnull !3, !align !100, !noundef !3
  %i.ann = load i64, ptr %i.anm, align 8, !noalias !5381, !noundef !3
  %i.ano = zext i64 %i.ank to i128
  %i.anp = zext i64 %i.ann to i128
  %i.anq = xor i128 %i.anh, %i.anp
  %i.anr = mul nuw i128 %i.anq, %i.ano            ; 2 uses
  %i.ans = lshr i128 %i.anr, 64
  %i.ant = xor i128 %i.ans, %i.anr
  %i.anu = trunc i128 %i.ant to i64
  store i64 %i.anu, ptr %i.ani, align 8, !alias.scope !5381
  %i.anv = zext nneg i8 %i.and to i128
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 2427
  %i.anx = load i8, ptr %i.anw, align 1, !range !5388, !noundef !3 ; 2 uses
  %i.any = icmp ne i8 %i.anx, 4
  br label %bb.bz

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.by
  %i.anz = zext nneg i8 %i.and to i128
  %i.aoa = zext nneg i8 %i.anb to i128
  %i.aob = shl nuw nsw i128 %i.anz, %i.aoa
  %i.aoc = load i128, ptr %1, align 16, !alias.scope !5381, !noundef !3
  %i.aod = or i128 %i.aoc, %i.aob                 ; 4 uses
  store i128 %i.aod, ptr %1, align 16, !alias.scope !5381
  %i.aoe = add nuw i8 %i.anb, 8                   ; 2 uses
  store i8 %i.aoe, ptr %i.d, align 16, !alias.scope !5381
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 2427
  %i.aog = load i8, ptr %i.aof, align 1, !range !5388, !noundef !3 ; 3 uses
  %i.aoh = icmp ne i8 %i.aog, 4                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5392)
  %i.aoi = icmp samesign ugt i8 %i.anb, 56
  br i1 %i.aoi, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.bz

bb.bz:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.aoj = phi i128 [ %i.anv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.aod, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %i.aok = phi i1 [ %i.any, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.aoh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.aol = phi i8 [ %i.anx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.aog, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %storemerge.i.i19132 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.aoe, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.aom = zext i1 %i.aok to i128
  %i.aon = zext nneg i8 %storemerge.i.i19132 to i128
  %i.aoo = shl nuw nsw i128 %i.aom, %i.aon
  %i.aop = or i128 %i.aoo, %i.aoj                 ; 4 uses
  store i128 %i.aop, ptr %1, align 16, !alias.scope !5395
  %i.aoq = add nuw i8 %storemerge.i.i19132, 64
  store i8 %i.aoq, ptr %i.d, align 16, !alias.scope !5395
  br i1 %i.aok, label %bb.ca, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge: ; preds = %bb.bz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre192 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !5396
  %.phi.trans.insert193 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre194 = load ptr, ptr %.phi.trans.insert193, align 16, !alias.scope !5396
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.aor = trunc i128 %i.aod to i64
  %i.aos = lshr i128 %i.aod, 64
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aou = load i64, ptr %i.aot, align 8, !alias.scope !5395, !noundef !3
  %i.aov = xor i64 %i.aou, %i.aor
  %i.aow = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aox = load ptr, ptr %i.aow, align 16, !alias.scope !5395, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  %i.aoy = load i64, ptr %i.aox, align 8, !noalias !5395, !noundef !3
  %i.aoz = zext i64 %i.aov to i128
  %i.apa = zext i64 %i.aoy to i128
  %i.apb = xor i128 %i.aos, %i.apa
  %i.apc = mul nuw i128 %i.apb, %i.aoz            ; 2 uses
  %i.apd = lshr i128 %i.apc, 64
  %i.ape = xor i128 %i.apd, %i.apc
  %i.apf = trunc i128 %i.ape to i64               ; 3 uses
  store i64 %i.apf, ptr %i.aot, align 8, !alias.scope !5395
  %i.apg = zext i1 %i.aoh to i128                 ; 2 uses
  store i128 %i.apg, ptr %1, align 16, !alias.scope !5395
  store i8 64, ptr %i.d, align 16, !alias.scope !5395
  br i1 %i.aoh, label %.thread138, label %.thread137

.thread138:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5407)
  %i.aph = zext nneg i8 %i.aog to i128
  %i.api = shl nuw nsw i128 %i.aph, 64
  %i.apj = or disjoint i128 %i.api, %i.apg        ; 2 uses
  store i128 %i.apj, ptr %1, align 16, !alias.scope !5410
  store i8 -128, ptr %i.d, align 16, !alias.scope !5410
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.ca:                                            ; preds = %bb.bz
  %i.apk = trunc i128 %i.aop to i64
  %i.apl = lshr i128 %i.aop, 64
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.apn = load i64, ptr %i.apm, align 8, !alias.scope !5410, !noundef !3
  %i.apo = xor i64 %i.apn, %i.apk
  %i.app = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.apq = load ptr, ptr %i.app, align 16, !alias.scope !5410, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.apr = load i64, ptr %i.apq, align 8, !noalias !5410, !noundef !3
  %i.aps = zext i64 %i.apo to i128
  %i.apt = zext i64 %i.apr to i128
  %i.apu = xor i128 %i.apl, %i.apt
  %i.apv = mul nuw i128 %i.apu, %i.aps            ; 2 uses
  %i.apw = lshr i128 %i.apv, 64
  %i.apx = xor i128 %i.apw, %i.apv
  %i.apy = trunc i128 %i.apx to i64               ; 2 uses
  store i64 %i.apy, ptr %i.apm, align 8, !alias.scope !5410
  %i.apz = zext nneg i8 %i.aol to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5412)
  br label %.thread137

.thread137:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, %bb.ca
  %i.aqa = phi ptr [ %i.aox, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.apq, %bb.ca ]
  %i.aqb = phi i64 [ %i.apf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.apy, %bb.ca ]
  %i.aqc = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %i.apz, %bb.ca ]
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %.in152 = load i64, ptr %i.aqd, align 8, !range !918, !noundef !3
  %.not153 = icmp eq i64 %.in152, 69              ; 2 uses
  %i.aqe = select i1 %.not153, i128 0, i128 18446744073709551616
  %i.aqf = or disjoint i128 %i.aqe, %i.aqc        ; 2 uses
  store i128 %i.aqf, ptr %1, align 16, !alias.scope !5396
  store i8 -128, ptr %i.d, align 16, !alias.scope !5396
  br i1 %.not153, label %.thread142, label %bb.cb

.thread142:                                       ; preds = %.thread137
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22143 = load i8, ptr %i.aqg, align 2, !range !2835, !noundef !3
  br label %bb.cf

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge, %.thread138
  %i.aqh = phi ptr [ %.pre194, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.aox, %.thread138 ]
  %i.aqi = phi i64 [ %.pre192, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.apf, %.thread138 ]
  %i.aqj = phi i128 [ %i.aop, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.apj, %.thread138 ] ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %.in = load i64, ptr %i.aqk, align 8, !range !918, !noundef !3
  %i.aql = icmp ne i64 %.in, 69                   ; 2 uses
  %i.aqm = trunc i128 %i.aqj to i64
  %i.aqn = lshr i128 %i.aqj, 64
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aqp = xor i64 %i.aqi, %i.aqm
  %i.aqq = load i64, ptr %i.aqh, align 8, !noalias !5396, !noundef !3
  %i.aqr = zext i64 %i.aqp to i128
  %i.aqs = zext i64 %i.aqq to i128
  %i.aqt = xor i128 %i.aqn, %i.aqs
  %i.aqu = mul nuw i128 %i.aqt, %i.aqr            ; 2 uses
  %i.aqv = lshr i128 %i.aqu, 64
  %i.aqw = xor i128 %i.aqv, %i.aqu
  %i.aqx = trunc i128 %i.aqw to i64
  store i64 %i.aqx, ptr %i.aqo, align 8, !alias.scope !5396
  %i.aqy = zext i1 %i.aql to i128
  store i128 %i.aqy, ptr %1, align 16, !alias.scope !5396
  store i8 64, ptr %i.d, align 16, !alias.scope !5396
  br i1 %i.aql, label %bb.cb, label %.thread145

.thread145:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.aqz = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22146 = load i8, ptr %i.aqz, align 2, !range !2835, !noundef !3
  br label %._crit_edge

bb.cb:                                            ; preds = %.thread137, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.ara = phi ptr [ %i.aqd, %.thread137 ], [ %i.aqk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.ara, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !5413
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.arc = load ptr, ptr %i.arb, align 8, !alias.scope !5414, !noalias !5417, !nonnull !3, !noundef !3
  %i.ard = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.are = load i64, ptr %i.ard, align 8, !alias.scope !5414, !noalias !5417, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5425)
  %i.arf = load i8, ptr %i.d, align 16, !alias.scope !5428, !noundef !3 ; 3 uses
  %i.arg = icmp ugt i8 %i.arf, 64
  br i1 %i.arg, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.arh = zext i64 %i.are to i128
  %i.ari = zext nneg i8 %i.arf to i128
  %i.arj = shl nuw i128 %i.arh, %i.ari
  %i.ark = load i128, ptr %1, align 16, !alias.scope !5428, !noundef !3
  %i.arl = or i128 %i.ark, %i.arj
  %i.arm = add nuw i8 %i.arf, 64
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.arn = load i128, ptr %1, align 16, !alias.scope !5428, !noundef !3 ; 2 uses
  %i.aro = trunc i128 %i.arn to i64
  %i.arp = lshr i128 %i.arn, 64
  %i.arq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.arr = load i64, ptr %i.arq, align 8, !alias.scope !5428, !noundef !3
  %i.ars = xor i64 %i.arr, %i.aro
  %i.art = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aru = load ptr, ptr %i.art, align 16, !alias.scope !5428, !nonnull !3, !align !100, !noundef !3
  %i.arv = load i64, ptr %i.aru, align 8, !noalias !5428, !noundef !3
  %i.arw = zext i64 %i.ars to i128
  %i.arx = zext i64 %i.arv to i128
  %i.ary = xor i128 %i.arp, %i.arx
  %i.arz = mul nuw i128 %i.ary, %i.arw            ; 2 uses
  %i.asa = lshr i128 %i.arz, 64
  %i.asb = xor i128 %i.asa, %i.arz
  %i.asc = trunc i128 %i.asb to i64
  store i64 %i.asc, ptr %i.arq, align 8, !alias.scope !5428
  %i.asd = zext i64 %i.are to i128
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sink.i87 = phi i128 [ %i.asd, %bb.cd ], [ %i.arl, %bb.cc ]
  %storemerge.i.i.i88 = phi i8 [ 64, %bb.cd ], [ %i.arm, %bb.cc ]
  store i128 %.sink.i87, ptr %1, align 16, !alias.scope !5428
  store i8 %storemerge.i.i.i88, ptr %i.d, align 16, !alias.scope !5428
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.arc, i64 noundef %i.are, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !5413
  %.pr141 = load i8, ptr %i.d, align 16, !alias.scope !5429 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 2426
  %.val22 = load i8, ptr %i.ase, align 2, !range !2835, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5438)
  %i.asf = icmp ugt i8 %.pr141, 64
  %.pre196 = load i128, ptr %1, align 16, !alias.scope !5429 ; 2 uses
  br i1 %i.asf, label %._crit_edge197, label %._crit_edge

._crit_edge197:                                   ; preds = %bb.ce
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre199 = load i64, ptr %.phi.trans.insert198, align 8, !alias.scope !5429
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre201 = load ptr, ptr %.phi.trans.insert200, align 16, !alias.scope !5429
  br label %bb.cf

._crit_edge:                                      ; preds = %bb.ce, %.thread145
  %i.asg = phi i128 [ 0, %.thread145 ], [ %.pre196, %bb.ce ]
  %.val22147 = phi i8 [ %.val22146, %.thread145 ], [ %.val22, %bb.ce ]
  %i.ash = phi i8 [ 64, %.thread145 ], [ %.pr141, %bb.ce ] ; 2 uses
  %i.asi = zext nneg i8 %.val22147 to i128
  %i.asj = zext nneg i8 %i.ash to i128
  %i.ask = shl nuw nsw i128 %i.asi, %i.asj
  %i.asl = or i128 %i.ask, %i.asg
  %i.asm = add nuw i8 %i.ash, 64
  br label %_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.cf:                                            ; preds = %._crit_edge197, %.thread142
  %i.asn = phi ptr [ %i.aqa, %.thread142 ], [ %.pre201, %._crit_edge197 ]
  %i.aso = phi i64 [ %i.aqb, %.thread142 ], [ %.pre199, %._crit_edge197 ]
  %i.asp = phi i128 [ %i.aqf, %.thread142 ], [ %.pre196, %._crit_edge197 ] ; 2 uses
  %.val22144 = phi i8 [ %.val22143, %.thread142 ], [ %.val22, %._crit_edge197 ]
  %i.asq = trunc i128 %i.asp to i64
  %i.asr = lshr i128 %i.asp, 64
  %i.ass = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ast = xor i64 %i.aso, %i.asq
  %i.asu = load i64, ptr %i.asn, align 8, !noalias !5429, !noundef !3
  %i.asv = zext i64 %i.ast to i128
  %i.asw = zext i64 %i.asu to i128
  %i.asx = xor i128 %i.asr, %i.asw
  %i.asy = mul nuw i128 %i.asx, %i.asv            ; 2 uses
  %i.asz = lshr i128 %i.asy, 64
  %i.ata = xor i128 %i.asz, %i.asy
  %i.atb = trunc i128 %i.ata to i64
  store i64 %i.atb, ptr %i.ass, align 8, !alias.scope !5429
  %i.atc = zext nneg i8 %.val22144 to i128
  br label %_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12SelectFlavorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge, %bb.cf
  %.sink.i59 = phi i128 [ %i.atc, %bb.cf ], [ %i.asl, %._crit_edge ]
  %storemerge.i.i.i60 = phi i8 [ 64, %bb.cf ], [ %i.asm, %._crit_edge ]
  store i128 %.sink.i59, ptr %1, align 16, !alias.scope !5429
  store i8 %storemerge.i.i.i60, ptr %i.d, align 16, !alias.scope !5429
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_2
begin_hunk_3_@_RINvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !6425, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6425, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !6425, !nonnull !3, !align !100, !noundef !3
  %i.t = load i64, ptr %i.s, align 8, !noalias !6425, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !6425
  %i.ab = zext i1 %i.b to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.ab, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %storemerge.i.i7 = phi i8 [ 64, %bb.c ], [ %i.k, %bb.b ] ; 5 uses
  store i128 %.sink, ptr %1, align 16, !alias.scope !6425
  store i8 %storemerge.i.i7, ptr %i.c, align 16, !alias.scope !6425
  br i1 %i.b, label %bb.d, label %bb.l

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.ad, align 8, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6437)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !6439, !noalias !6440, !noundef !3 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshr.i64(i64 %i.af, i64 %i.af, i64 %.val9) ; 6 uses
  store i64 %i.ag, ptr %i.ae, align 8, !alias.scope !6439, !noalias !6440
  %i.ah = icmp samesign ult i64 %.val9, 17
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !alias.scope !6439, !noalias !6440, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.e, !prof !2537

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, -9223372036854775808) %.val9, i64 noundef %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj) #54, !noalias !6439
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6444)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !6444, !noalias !6446, !noundef !3 ; 4 uses
  %i.an = icmp samesign ugt i64 %.val9, 7
  br i1 %i.an, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp samesign ugt i64 %.val9, 3
  br i1 %i.ao, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.h

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.f
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %.val, align 1, !alias.scope !6447, !noalias !6448
  %i.ap = xor i64 %.sroa.014.0.copyload.i.i.i.i, %i.ag
  %i.aq = getelementptr i8, ptr %.val, i64 %.val9
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.ar, align 1, !alias.scope !6447, !noalias !6448
  %i.as = xor i64 %.sroa.016.0.copyload.i.i.i.i, %i.am
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i64 %.val9, 0
  br i1 %.not.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, label %bb.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.g
  %i.at = getelementptr i8, ptr %.val, i64 %.val9
  %i.au = getelementptr i8, ptr %i.at, i64 -4
  %.sroa.019.0.copyload.i.i.i.i = load i32, ptr %i.au, align 1, !alias.scope !6447, !noalias !6448
  %.sroa.018.0.copyload.i.i.i.i = load i32, ptr %.val, align 1, !alias.scope !6447, !noalias !6448
  %i.av = zext i32 %.sroa.018.0.copyload.i.i.i.i to i64
  %i.aw = xor i64 %i.ag, %i.av
  %i.ax = zext i32 %.sroa.019.0.copyload.i.i.i.i to i64
  %i.ay = xor i64 %i.am, %i.ax
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.az = load i8, ptr %.val, align 1, !alias.scope !6447, !noalias !6448, !noundef !3
  %i.ba = lshr i64 %.val9, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !6447, !noalias !6448, !noundef !3
  %i.bd = getelementptr i8, ptr %.val, i64 %.val9
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !6447, !noalias !6448, !noundef !3
  %i.bg = zext i8 %i.az to i64
  %i.bh = xor i64 %i.ag, %i.bg
  %i.bi = zext i8 %i.bf to i64
  %i.bj = shl nuw nsw i64 %i.bi, 8
  %i.bk = zext i8 %i.bc to i64
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = xor i64 %i.bl, %i.am
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i: ; preds = %bb.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.h, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.as, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ay, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bm, %bb.i ], [ %i.am, %bb.h ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ap, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.aw, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bh, %bb.i ], [ %i.ag, %bb.h ]
  %i.bn = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.bo = zext i64 %.sroa.04.0.i.i.i.i to i128
  %i.bp = mul nuw i128 %i.bn, %i.bo               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, %bb.e
  %storemerge.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %i.bs, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i, ptr %i.ae, align 8, !alias.scope !6439, !noalias !6440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6452)
  %i.bt = icmp ugt i8 %storemerge.i.i7, 120
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i
  %i.bu = zext nneg i8 %storemerge.i.i7 to i128
  %i.bv = shl nuw i128 255, %i.bu
  %i.bw = load i128, ptr %1, align 16, !alias.scope !6455, !noalias !6432, !noundef !3
  %i.bx = or i128 %i.bw, %i.bv
  %i.by = add nuw i8 %storemerge.i.i7, 8
  br label %_RINvXs4x_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15IlikeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i
  %i.bz = load i128, ptr %1, align 16, !alias.scope !6455, !noalias !6432, !noundef !3 ; 2 uses
  %i.ca = trunc i128 %i.bz to i64
  %i.cb = lshr i128 %i.bz, 64
  %i.cc = xor i64 %storemerge.i.i.i, %i.ca
  %i.cd = load i64, ptr %i.aj, align 8, !noalias !6455, !noundef !3
  %i.ce = zext i64 %i.cc to i128
  %i.cf = zext i64 %i.cd to i128
  %i.cg = xor i128 %i.cb, %i.cf
  %i.ch = mul nuw i128 %i.cg, %i.ce               ; 2 uses
  %i.ci = lshr i128 %i.ch, 64
  %i.cj = xor i128 %i.ci, %i.ch
  %i.ck = trunc i128 %i.cj to i64
  store i64 %i.ck, ptr %i.ae, align 8, !alias.scope !6455, !noalias !6432
  br label %_RINvXs4x_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15IlikeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs4x_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15IlikeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j, %bb.k
  %.sink.i.i = phi i128 [ 255, %bb.k ], [ %i.bx, %bb.j ] ; 2 uses
  %storemerge.i.i.i.i = phi i8 [ 8, %bb.k ], [ %i.by, %bb.j ] ; 2 uses
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !6455, !noalias !6432
  store i8 %storemerge.i.i.i.i, ptr %i.c, align 16, !alias.scope !6455, !noalias !6432
  br label %bb.l

bb.l:                                             ; preds = %_RINvXs4x_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15IlikeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  %i.cl = phi i128 [ %.sink.i.i, %_RINvXs4x_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15IlikeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sink, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8 ] ; 3 uses
  %i.cm = phi i8 [ %storemerge.i.i.i.i, %_RINvXs4x_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15IlikeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ], [ %storemerge.i.i7, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !859, !noundef !3 ; 3 uses
  %i.cp = icmp ne i64 %i.co, -9223372036854775807 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6459)
  %i.cq = icmp ugt i8 %i.cm, 64
  br i1 %i.cq, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.l
  %i.cr = zext i1 %i.cp to i128
  %i.cs = zext nneg i8 %i.cm to i128
  %i.ct = shl nuw nsw i128 %i.cr, %i.cs
  %i.cu = or i128 %i.cl, %i.ct                    ; 4 uses
  store i128 %i.cu, ptr %1, align 16, !alias.scope !6462
  %i.cv = add nuw i8 %i.cm, 64
  store i8 %i.cv, ptr %i.c, align 16, !alias.scope !6462
  br i1 %i.cp, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !range !777, !noundef !3
  %i.cy = icmp ne i64 %i.cx, -9223372036854775808 ; 2 uses
  %i.cz = zext i1 %i.cy to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread: ; preds = %bb.l
  %i.da = trunc i128 %i.cl to i64
  %i.db = lshr i128 %i.cl, 64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !6462, !noundef !3
  %i.de = xor i64 %i.dd, %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 16, !alias.scope !6462, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !6462, !noundef !3
  %i.di = zext i64 %i.de to i128
  %i.dj = zext i64 %i.dh to i128
  %i.dk = xor i128 %i.db, %i.dj
  %i.dl = mul nuw i128 %i.dk, %i.di               ; 2 uses
  %i.dm = lshr i128 %i.dl, 64
  %i.dn = xor i128 %i.dm, %i.dl
  %i.do = trunc i128 %i.dn to i64                 ; 2 uses
  store i64 %i.do, ptr %i.dc, align 8, !alias.scope !6462
  %i.dp = zext i1 %i.cp to i128                   ; 2 uses
  store i128 %i.dp, ptr %1, align 16, !alias.scope !6462
  store i8 64, ptr %i.c, align 16, !alias.scope !6462
  br i1 %i.cp, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread28

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread28: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !range !777, !noundef !3
  %i.ds = icmp ne i64 %i.dr, -9223372036854775808 ; 2 uses
  %i.dt = zext i1 %i.ds to i64
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.du = icmp eq i64 %i.co, -9223372036854775808 ; 2 uses
  %i.dv = select i1 %i.du, i128 18446744073709551616, i128 0
  %2 = or disjoint i128 %i.dv, %i.dp
  store i128 %2, ptr %1, align 16, !alias.scope !6463, !noalias !6470
  store i8 -128, ptr %i.c, align 16, !alias.scope !6463, !noalias !6470
  br i1 %i.du, label %bb.n, label %bb.o

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6472)
  %i.dw = icmp eq i64 %i.co, -9223372036854775808 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6474)
  %i.dx = trunc i128 %i.cu to i64
  %i.dy = lshr i128 %i.cu, 64
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !6463, !noalias !6470, !noundef !3
  %i.eb = xor i64 %i.ea, %i.dx
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load ptr, ptr %i.ec, align 16, !alias.scope !6463, !noalias !6470, !nonnull !3, !align !100, !noundef !3
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !6475, !noundef !3
  %i.ef = zext i64 %i.eb to i128
  %i.eg = zext i64 %i.ee to i128
  %i.eh = xor i128 %i.dy, %i.eg
  %i.ei = mul nuw i128 %i.eh, %i.ef               ; 2 uses
  %i.ej = lshr i128 %i.ei, 64
  %i.ek = xor i128 %i.ej, %i.ei
  %i.el = trunc i128 %i.ek to i64
  store i64 %i.el, ptr %i.dz, align 8, !alias.scope !6463, !noalias !6470
  %i.em = zext i1 %i.dw to i128
  store i128 %i.em, ptr %1, align 16, !alias.scope !6463, !noalias !6470
  store i8 64, ptr %i.c, align 16, !alias.scope !6463, !noalias !6470
  br i1 %i.dw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !6470, !noalias !6472, !nonnull !3, !noundef !3
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !6470, !noalias !6472, !noundef !3 ; 2 uses
  %i.er = zext i64 %i.eq to i128
  %i.es = shl nuw i128 %i.er, 64
  %i.et = or disjoint i128 %i.es, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.n:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !6470, !noalias !6472, !nonnull !3, !noundef !3
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !6470, !noalias !6472, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6482)
  %i.ey = xor i64 %i.do, 1
  %i.ez = load i64, ptr %i.dg, align 8, !noalias !6485, !noundef !3
  %i.fa = zext i64 %i.ey to i128
  %i.fb = xor i64 %i.ez, 1
  %i.fc = zext i64 %i.fb to i128
  %i.fd = mul nuw i128 %i.fc, %i.fa               ; 2 uses
  %i.fe = lshr i128 %i.fd, 64
  %i.ff = xor i128 %i.fe, %i.fd
  %i.fg = trunc i128 %i.ff to i64
  store i64 %i.fg, ptr %i.dc, align 8, !alias.scope !6486, !noalias !6470
  %i.fh = zext i64 %i.ex to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.n, %bb.m
  %i.fi = phi i64 [ %i.ex, %bb.n ], [ %i.eq, %bb.m ]
  %i.fj = phi ptr [ %i.ev, %bb.n ], [ %i.eo, %bb.m ]
  %.sink.i.i12 = phi i128 [ %i.fh, %bb.n ], [ %i.et, %bb.m ]
  %storemerge.i.i.i.i13 = phi i8 [ 64, %bb.n ], [ -128, %bb.m ]
  store i128 %.sink.i.i12, ptr %1, align 16, !alias.scope !6486, !noalias !6470
  store i8 %storemerge.i.i.i.i13, ptr %i.c, align 16, !alias.scope !6486, !noalias !6470
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fj, i64 noundef %i.fi, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !6470
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cn, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.o, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  %.pr = load i8, ptr %i.c, align 16, !alias.scope !6487 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fl = load i64, ptr %i.fk, align 8, !range !777, !noundef !3
  %i.fm = icmp ne i64 %i.fl, -9223372036854775808 ; 3 uses
  %i.fn = zext i1 %i.fm to i64                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6493)
  %i.fo = icmp ugt i8 %.pr, 64
  %.pre48 = load i128, ptr %1, align 16, !alias.scope !6487 ; 2 uses
  br i1 %i.fo, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, label %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread28
  %i.fp = phi i128 [ 0, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread28 ], [ %.pre48, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.fq = phi i64 [ %i.dt, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread28 ], [ %i.fn, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.fr = phi i1 [ %i.ds, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread28 ], [ %i.fm, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.fs = phi ptr [ %i.dq, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread28 ], [ %i.fk, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ft = phi i8 [ 64, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread28 ], [ %.pr, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.fu = zext nneg i64 %i.fq to i128
  %i.fv = zext nneg i8 %i.ft to i128
  %i.fw = shl nuw nsw i128 %i.fu, %i.fv
  %i.fx = or i128 %i.fw, %i.fp                    ; 2 uses
  store i128 %i.fx, ptr %1, align 16, !alias.scope !6487
  %i.fy = add nuw i8 %i.ft, 64                    ; 2 uses
  store i8 %i.fy, ptr %i.c, align 16, !alias.scope !6487
  br i1 %i.fr, label %bb.p, label %bb.s

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.fz = phi i128 [ %i.cu, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre48, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ga = phi i64 [ %i.cz, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.fn, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.gb = phi i1 [ %i.cy, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.fm, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.gc = phi ptr [ %i.cw, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.fk, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.gd = trunc i128 %i.fz to i64
  %i.ge = lshr i128 %i.fz, 64
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !6487, !noundef !3
  %i.gh = xor i64 %i.gg, %i.gd
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load ptr, ptr %i.gi, align 16, !alias.scope !6487, !nonnull !3, !align !100, !noundef !3
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !6487, !noundef !3
  %i.gl = zext i64 %i.gh to i128
  %i.gm = zext i64 %i.gk to i128
  %i.gn = xor i128 %i.ge, %i.gm
  %i.go = mul nuw i128 %i.gn, %i.gl               ; 2 uses
  %i.gp = lshr i128 %i.go, 64
  %i.gq = xor i128 %i.gp, %i.go
  %i.gr = trunc i128 %i.gq to i64
  store i64 %i.gr, ptr %i.gf, align 8, !alias.scope !6487
  %i.gs = zext nneg i64 %i.ga to i128             ; 2 uses
  store i128 %i.gs, ptr %1, align 16, !alias.scope !6487
  store i8 64, ptr %i.c, align 16, !alias.scope !6487
  br i1 %i.gb, label %bb.p, label %.thread30

.thread30:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gu = load i64, ptr %i.gt, align 8, !range !777, !noundef !3
  %i.gv = icmp ne i64 %i.gu, -9223372036854775808
  br label %bb.t

bb.p:                                             ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.gw = phi ptr [ %i.fs, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %i.gc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6497)
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.gw, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 72
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !6494, !noalias !6497, !nonnull !3, !noundef !3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 80
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !6494, !noalias !6497, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6505)
  %i.hb = load i8, ptr %i.c, align 16, !alias.scope !6508, !noalias !6494, !noundef !3 ; 3 uses
  %i.hc = icmp ugt i8 %i.hb, 64
  br i1 %i.hc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hd = zext i64 %i.ha to i128
  %i.he = zext nneg i8 %i.hb to i128
  %i.hf = shl nuw i128 %i.hd, %i.he
  %i.hg = load i128, ptr %1, align 16, !alias.scope !6508, !noalias !6494, !noundef !3
  %i.hh = or i128 %i.hg, %i.hf
  %i.hi = add nuw i8 %i.hb, 64
  br label %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.p
  %i.hj = load i128, ptr %1, align 16, !alias.scope !6508, !noalias !6494, !noundef !3 ; 2 uses
  %i.hk = trunc i128 %i.hj to i64
  %i.hl = lshr i128 %i.hj, 64
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !6508, !noalias !6494, !noundef !3
  %i.ho = xor i64 %i.hn, %i.hk
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hq = load ptr, ptr %i.hp, align 16, !alias.scope !6508, !noalias !6494, !nonnull !3, !align !100, !noundef !3
  %i.hr = load i64, ptr %i.hq, align 8, !noalias !6509, !noundef !3
  %i.hs = zext i64 %i.ho to i128
  %i.ht = zext i64 %i.hr to i128
  %i.hu = xor i128 %i.hl, %i.ht
  %i.hv = mul nuw i128 %i.hu, %i.hs               ; 2 uses
  %i.hw = lshr i128 %i.hv, 64
  %i.hx = xor i128 %i.hw, %i.hv
  %i.hy = trunc i128 %i.hx to i64
  store i64 %i.hy, ptr %i.hm, align 8, !alias.scope !6508, !noalias !6494
  %i.hz = zext i64 %i.ha to i128
  br label %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.q, %bb.r
  %.sink.i.i15 = phi i128 [ %i.hz, %bb.r ], [ %i.hh, %bb.q ]
  %storemerge.i.i.i.i16 = phi i8 [ 64, %bb.r ], [ %i.hi, %bb.q ]
  store i128 %.sink.i.i15, ptr %1, align 16, !alias.scope !6508, !noalias !6494
  store i8 %storemerge.i.i.i.i16, ptr %i.c, align 16, !alias.scope !6508, !noalias !6494
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.gy, i64 noundef %i.ha, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr29 = load i8, ptr %i.c, align 16, !alias.scope !6510
  %.pre.pre = load i128, ptr %1, align 16, !alias.scope !6510
  br label %bb.s

bb.s:                                             ; preds = %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.pre = phi i128 [ %i.fx, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.pre.pre, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.ia = phi i8 [ %i.fy, %_RINvXs4H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.pr29, %_RINvXs51_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ic = load i64, ptr %i.ib, align 8, !range !777, !noundef !3
  %i.id = icmp ne i64 %i.ic, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6516)
  %i.ie = icmp ugt i8 %i.ia, 64
  br i1 %i.ie, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.t
end_hunk_3
begin_hunk_4_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.yf = zext nneg i8 %i.yc to i128
  %i.yg = shl nuw nsw i128 %i.ye, %i.yf
  %i.yh = load i128, ptr %1, align 16, !alias.scope !8751, !noundef !3
  %i.yi = or i128 %i.yh, %i.yg
  %i.yj = add nuw i8 %i.yc, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30

bb.by:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit78
  %i.yk = load i128, ptr %1, align 16, !alias.scope !8751, !noundef !3 ; 2 uses
  %i.yl = trunc i128 %i.yk to i64
  %i.ym = lshr i128 %i.yk, 64
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.yo = load i64, ptr %i.yn, align 8, !alias.scope !8751, !noundef !3
  %i.yp = xor i64 %i.yo, %i.yl
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yr = load ptr, ptr %i.yq, align 16, !alias.scope !8751, !nonnull !3, !align !100, !noundef !3
  %i.ys = load i64, ptr %i.yr, align 8, !noalias !8751, !noundef !3
  %i.yt = zext i64 %i.yp to i128
  %i.yu = zext i64 %i.ys to i128
  %i.yv = xor i128 %i.ym, %i.yu
  %i.yw = mul nuw i128 %i.yv, %i.yt               ; 2 uses
  %i.yx = lshr i128 %i.yw, 64
  %i.yy = xor i128 %i.yx, %i.yw
  %i.yz = trunc i128 %i.yy to i64
  store i64 %i.yz, ptr %i.yn, align 8, !alias.scope !8751
  %i.za = zext i1 %i.yb to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit30: ; preds = %bb.bx, %bb.by
  %.sink264 = phi i128 [ %i.za, %bb.by ], [ %i.yi, %bb.bx ]
  %storemerge.i.i29 = phi i8 [ 64, %bb.by ], [ %i.yj, %bb.bx ] ; 2 uses
  store i128 %.sink264, ptr %1, align 16, !alias.scope !8751
  store i8 %storemerge.i.i29, ptr %i.c, align 16, !alias.scope !8751
  br i1 %i.yb, label %bb.fl, label %bb.fm

bb.bz:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ze = load ptr, ptr %i.zd, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.ze, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.zb, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.zc, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.zg = load ptr, ptr %i.zf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.zi = load i64, ptr %i.zh, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8758)
  %i.zj = load i8, ptr %i.c, align 16, !alias.scope !8761, !noundef !3 ; 3 uses
  %i.zk = icmp ugt i8 %i.zj, 64
  br i1 %i.zk, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.zl = zext i64 %i.zi to i128
  %i.zm = zext nneg i8 %i.zj to i128
  %i.zn = shl nuw i128 %i.zl, %i.zm
  %i.zo = load i128, ptr %1, align 16, !alias.scope !8761, !noundef !3
  %i.zp = or i128 %i.zo, %i.zn
  %i.zq = add nuw i8 %i.zj, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit81

bb.cb:                                            ; preds = %bb.bz
  %i.zr = load i128, ptr %1, align 16, !alias.scope !8761, !noundef !3 ; 2 uses
  %i.zs = trunc i128 %i.zr to i64
  %i.zt = lshr i128 %i.zr, 64
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.zv = load i64, ptr %i.zu, align 8, !alias.scope !8761, !noundef !3
  %i.zw = xor i64 %i.zv, %i.zs
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zy = load ptr, ptr %i.zx, align 16, !alias.scope !8761, !nonnull !3, !align !100, !noundef !3
  %i.zz = load i64, ptr %i.zy, align 8, !noalias !8761, !noundef !3
  %i.aaa = zext i64 %i.zw to i128
  %i.aab = zext i64 %i.zz to i128
  %i.aac = xor i128 %i.zt, %i.aab
  %i.aad = mul nuw i128 %i.aac, %i.aaa            ; 2 uses
  %i.aae = lshr i128 %i.aad, 64
  %i.aaf = xor i128 %i.aae, %i.aad
  %i.aag = trunc i128 %i.aaf to i64
  store i64 %i.aag, ptr %i.zu, align 8, !alias.scope !8761
  %i.aah = zext i64 %i.zi to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit81

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit81: ; preds = %bb.ca, %bb.cb
  %.sink.i79 = phi i128 [ %i.aah, %bb.cb ], [ %i.zp, %bb.ca ]
  %storemerge.i.i.i80 = phi i8 [ 64, %bb.cb ], [ %i.zq, %bb.ca ] ; 2 uses
  store i128 %.sink.i79, ptr %1, align 16, !alias.scope !8761
  store i8 %storemerge.i.i.i80, ptr %i.c, align 16, !alias.scope !8761
  %.idx251 = mul nuw nsw i64 %i.zi, 392
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zg, i64 %.idx251
  %i.aaj = icmp eq i64 %i.zi, 0
  br i1 %i.aaj, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83, label %.lr.ph241

.lr.ph241:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit81
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph241, %_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit154
  %.sroa.0.0.i82240 = phi ptr [ %i.zg, %.lr.ph241 ], [ %i.aam, %_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit154 ] ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82240, i64 392 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8765)
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %.sroa.0.0.i82240, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !8726
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82240, i64 328 ; 2 uses
  %i.aao = load i64, ptr %i.aan, align 8, !range !777, !alias.scope !8762, !noalias !8765, !noundef !3
  %i.aap = icmp ne i64 %i.aao, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8770)
  %i.aaq = load i8, ptr %i.c, align 16, !alias.scope !8773, !noalias !8762, !noundef !3 ; 3 uses
  %i.aar = icmp ugt i8 %i.aaq, 64
  br i1 %i.aar, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aas = zext i1 %i.aap to i128
  %i.aat = zext nneg i8 %i.aaq to i128
  %i.aau = shl nuw nsw i128 %i.aas, %i.aat
  %i.aav = load i128, ptr %1, align 16, !alias.scope !8773, !noalias !8762, !noundef !3
  %i.aaw = or i128 %i.aav, %i.aau
  %i.aax = add nuw i8 %i.aaq, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i152

bb.ce:                                            ; preds = %bb.cc
  %i.aay = load i128, ptr %1, align 16, !alias.scope !8773, !noalias !8762, !noundef !3 ; 2 uses
  %i.aaz = trunc i128 %i.aay to i64
  %i.aba = lshr i128 %i.aay, 64
  %i.abb = load i64, ptr %i.aak, align 8, !alias.scope !8773, !noalias !8762, !noundef !3
  %i.abc = xor i64 %i.abb, %i.aaz
  %i.abd = load ptr, ptr %i.aal, align 16, !alias.scope !8773, !noalias !8762, !nonnull !3, !align !100, !noundef !3
  %i.abe = load i64, ptr %i.abd, align 8, !noalias !8774, !noundef !3
  %i.abf = zext i64 %i.abc to i128
  %i.abg = zext i64 %i.abe to i128
  %i.abh = xor i128 %i.aba, %i.abg
  %i.abi = mul nuw i128 %i.abh, %i.abf            ; 2 uses
  %i.abj = lshr i128 %i.abi, 64
  %i.abk = xor i128 %i.abj, %i.abi
  %i.abl = trunc i128 %i.abk to i64
  store i64 %i.abl, ptr %i.aak, align 8, !alias.scope !8773, !noalias !8762
  %i.abm = zext i1 %i.aap to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i152

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i152: ; preds = %bb.ce, %bb.cd
  %.sink265 = phi i128 [ %i.abm, %bb.ce ], [ %i.aaw, %bb.cd ]
  %storemerge.i.i.i153 = phi i8 [ 64, %bb.ce ], [ %i.aax, %bb.cd ]
  store i128 %.sink265, ptr %1, align 16, !alias.scope !8773, !noalias !8762
  store i8 %storemerge.i.i.i153, ptr %i.c, align 16, !alias.scope !8773, !noalias !8762
  br i1 %i.aap, label %bb.cf, label %_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit154

bb.cf:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i152
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aan, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !8726
  br label %_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit154

_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit154: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i152, %bb.cf
  %i.abn = icmp eq ptr %i.aam, %i.aai
  br i1 %i.abn, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83.loopexit, label %bb.cc

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83.loopexit: ; preds = %_RINvXs5Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit154
  %.pre278 = load i8, ptr %i.c, align 16, !alias.scope !8775
  br label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit81
  %i.abo = phi i8 [ %.pre278, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83.loopexit ], [ %storemerge.i.i.i80, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit81 ] ; 4 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.abq = load i8, ptr %i.abp, align 8, !range !2835, !noundef !3 ; 3 uses
  %i.abr = icmp ne i8 %i.abq, 2                   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8781)
  %i.abs = icmp ugt i8 %i.abo, 64
  br i1 %i.abs, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83
  %i.abt = zext i1 %i.abr to i128
  %i.abu = zext nneg i8 %i.abo to i128
  %i.abv = shl nuw nsw i128 %i.abt, %i.abu
  %i.abw = load i128, ptr %1, align 16, !alias.scope !8775, !noundef !3
  %i.abx = or i128 %i.abw, %i.abv                 ; 5 uses
  store i128 %i.abx, ptr %1, align 16, !alias.scope !8775
  %i.aby = add nuw i8 %i.abo, 64                  ; 2 uses
  store i8 %i.aby, ptr %i.c, align 16, !alias.scope !8775
  br i1 %i.abr, label %bb.fq, label %bb.fs

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query13ExprWithAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit83
  %i.abz = load i128, ptr %1, align 16, !alias.scope !8775, !noundef !3 ; 2 uses
  %i.aca = trunc i128 %i.abz to i64
  %i.acb = lshr i128 %i.abz, 64
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.acd = load i64, ptr %i.acc, align 8, !alias.scope !8775, !noundef !3
  %i.ace = xor i64 %i.acd, %i.aca
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acg = load ptr, ptr %i.acf, align 16, !alias.scope !8775, !nonnull !3, !align !100, !noundef !3
  %i.ach = load i64, ptr %i.acg, align 8, !noalias !8775, !noundef !3
  %i.aci = zext i64 %i.ace to i128
  %i.acj = zext i64 %i.ach to i128
  %i.ack = xor i128 %i.acb, %i.acj
  %i.acl = mul nuw i128 %i.ack, %i.aci            ; 2 uses
  %i.acm = lshr i128 %i.acl, 64
  %i.acn = xor i128 %i.acm, %i.acl
  %i.aco = trunc i128 %i.acn to i64
  store i64 %i.aco, ptr %i.acc, align 8, !alias.scope !8775
  %i.acp = zext i1 %i.abr to i128                 ; 2 uses
  store i128 %i.acp, ptr %1, align 16, !alias.scope !8775
  store i8 64, ptr %i.c, align 16, !alias.scope !8775
  br i1 %i.abr, label %.thread207, label %.thread210

.thread210:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit28.thread
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.acr = load i64, ptr %i.acq, align 8, !range !777, !noundef !3
  %.not351 = icmp eq i64 %i.acr, -9223372036854775808 ; 2 uses
  %i.acs = select i1 %.not351, i128 0, i128 18446744073709551616
  %2 = or disjoint i128 %i.acs, %i.acp
  store i128 %2, ptr %1, align 16, !alias.scope !8782
  store i8 -128, ptr %i.c, align 16, !alias.scope !8782
  br i1 %.not351, label %bb.ep, label %bb.fu

bb.cg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.acv = load ptr, ptr %i.acu, align 8, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.acv, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.acx = load ptr, ptr %i.acw, align 8, !nonnull !3, !noundef !3
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.acz = load i64, ptr %i.acy, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8793)
  %i.ada = load i8, ptr %i.c, align 16, !alias.scope !8796, !noundef !3 ; 3 uses
  %i.adb = icmp ugt i8 %i.ada, 64
  br i1 %i.adb, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.adc = zext i64 %i.acz to i128
  %i.add = zext nneg i8 %i.ada to i128
  %i.ade = shl nuw i128 %i.adc, %i.add
  %i.adf = load i128, ptr %1, align 16, !alias.scope !8796, !noundef !3
  %i.adg = or i128 %i.adf, %i.ade
  %i.adh = add nuw i8 %i.ada, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit86

bb.ci:                                            ; preds = %bb.cg
  %i.adi = load i128, ptr %1, align 16, !alias.scope !8796, !noundef !3 ; 2 uses
  %i.adj = trunc i128 %i.adi to i64
  %i.adk = lshr i128 %i.adi, 64
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !alias.scope !8796, !noundef !3
  %i.adn = xor i64 %i.adm, %i.adj
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adp = load ptr, ptr %i.ado, align 16, !alias.scope !8796, !nonnull !3, !align !100, !noundef !3
  %i.adq = load i64, ptr %i.adp, align 8, !noalias !8796, !noundef !3
  %i.adr = zext i64 %i.adn to i128
  %i.ads = zext i64 %i.adq to i128
  %i.adt = xor i128 %i.adk, %i.ads
  %i.adu = mul nuw i128 %i.adt, %i.adr            ; 2 uses
  %i.adv = lshr i128 %i.adu, 64
  %i.adw = xor i128 %i.adv, %i.adu
  %i.adx = trunc i128 %i.adw to i64
  store i64 %i.adx, ptr %i.adl, align 8, !alias.scope !8796
  %i.ady = zext i64 %i.acz to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit86

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit86: ; preds = %bb.ch, %bb.ci
  %.sink.i84 = phi i128 [ %i.ady, %bb.ci ], [ %i.adg, %bb.ch ]
  %storemerge.i.i.i85 = phi i8 [ 64, %bb.ci ], [ %i.adh, %bb.ch ]
  store i128 %.sink.i84, ptr %1, align 16, !alias.scope !8796
  store i8 %storemerge.i.i.i85, ptr %i.c, align 16, !alias.scope !8796
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.acx, i64 noundef %i.acz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aea = load ptr, ptr %i.adz, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aec = load i64, ptr %i.aeb, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8803)
  %i.aed = load i8, ptr %i.c, align 16, !alias.scope !8806, !noundef !3 ; 3 uses
  %i.aee = icmp ugt i8 %i.aed, 64
  br i1 %i.aee, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit86
  %i.aef = zext i64 %i.aec to i128
  %i.aeg = zext nneg i8 %i.aed to i128
  %i.aeh = shl nuw i128 %i.aef, %i.aeg
  %i.aei = load i128, ptr %1, align 16, !alias.scope !8806, !noundef !3
  %i.aej = or i128 %i.aei, %i.aeh
  %i.aek = add nuw i8 %i.aed, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit89

bb.ck:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit86
  %i.ael = load i128, ptr %1, align 16, !alias.scope !8806, !noundef !3 ; 2 uses
  %i.aem = trunc i128 %i.ael to i64
  %i.aen = lshr i128 %i.ael, 64
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aep = load i64, ptr %i.aeo, align 8, !alias.scope !8806, !noundef !3
  %i.aeq = xor i64 %i.aep, %i.aem
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aes = load ptr, ptr %i.aer, align 16, !alias.scope !8806, !nonnull !3, !align !100, !noundef !3
  %i.aet = load i64, ptr %i.aes, align 8, !noalias !8806, !noundef !3
  %i.aeu = zext i64 %i.aeq to i128
  %i.aev = zext i64 %i.aet to i128
  %i.aew = xor i128 %i.aen, %i.aev
  %i.aex = mul nuw i128 %i.aew, %i.aeu            ; 2 uses
  %i.aey = lshr i128 %i.aex, 64
  %i.aez = xor i128 %i.aey, %i.aex
  %i.afa = trunc i128 %i.aez to i64
  store i64 %i.afa, ptr %i.aeo, align 8, !alias.scope !8806
  %i.afb = zext i64 %i.aec to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit89

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit89: ; preds = %bb.cj, %bb.ck
  %.sink.i87 = phi i128 [ %i.afb, %bb.ck ], [ %i.aej, %bb.cj ]
  %storemerge.i.i.i88 = phi i8 [ 64, %bb.ck ], [ %i.aek, %bb.cj ] ; 2 uses
  store i128 %.sink.i87, ptr %1, align 16, !alias.scope !8806
  store i8 %storemerge.i.i.i88, ptr %i.c, align 16, !alias.scope !8806
  %.idx248 = mul nuw nsw i64 %i.aec, 1320
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aea, i64 %.idx248
  %i.afd = icmp eq i64 %i.aec, 0
  br i1 %i.afd, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph235

.lr.ph235:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit89
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph235, %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0.i90234 = phi ptr [ %i.aea, %.lr.ph235 ], [ %i.afg, %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 5 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i90234, i64 1320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8810)
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1320) %.sroa.0.0.i90234, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !5326
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i90234, i64 1312
  %.val.i = load i8, ptr %i.afh, align 1, !range !2835, !alias.scope !8807, !noalias !8810, !noundef !3
  %i.afi = getelementptr i8, ptr %.sroa.0.0.i90234, i64 1313
  %.val1.i = load i8, ptr %i.afi, align 1, !alias.scope !8807, !noalias !8810
  tail call fastcc void @_RINvXsc9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14OrderByOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !5326
  %i.afj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i90234, i64 328 ; 2 uses
  %i.afk = load i64, ptr %i.afj, align 8, !range !1015, !alias.scope !8807, !noalias !8810, !noundef !3
  %i.afl = icmp ne i64 %i.afk, 70                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8815)
  %i.afm = load i8, ptr %i.c, align 16, !alias.scope !8818, !noalias !8807, !noundef !3 ; 3 uses
  %i.afn = icmp ugt i8 %i.afm, 64
  br i1 %i.afn, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afo = zext i1 %i.afl to i128
  %i.afp = zext nneg i8 %i.afm to i128
  %i.afq = shl nuw nsw i128 %i.afo, %i.afp
  %i.afr = load i128, ptr %1, align 16, !alias.scope !8818, !noalias !8807, !noundef !3
  %i.afs = or i128 %i.afr, %i.afq
  %i.aft = add nuw i8 %i.afm, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i155

bb.cn:                                            ; preds = %bb.cl
  %i.afu = load i128, ptr %1, align 16, !alias.scope !8818, !noalias !8807, !noundef !3 ; 2 uses
  %i.afv = trunc i128 %i.afu to i64
  %i.afw = lshr i128 %i.afu, 64
  %i.afx = load i64, ptr %i.afe, align 8, !alias.scope !8818, !noalias !8807, !noundef !3
  %i.afy = xor i64 %i.afx, %i.afv
  %i.afz = load ptr, ptr %i.aff, align 16, !alias.scope !8818, !noalias !8807, !nonnull !3, !align !100, !noundef !3
  %i.aga = load i64, ptr %i.afz, align 8, !noalias !8819, !noundef !3
  %i.agb = zext i64 %i.afy to i128
  %i.agc = zext i64 %i.aga to i128
  %i.agd = xor i128 %i.afw, %i.agc
  %i.age = mul nuw i128 %i.agd, %i.agb            ; 2 uses
  %i.agf = lshr i128 %i.age, 64
  %i.agg = xor i128 %i.agf, %i.age
  %i.agh = trunc i128 %i.agg to i64
  store i64 %i.agh, ptr %i.afe, align 8, !alias.scope !8818, !noalias !8807
  %i.agi = zext i1 %i.afl to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i155

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i155: ; preds = %bb.cn, %bb.cm
  %.sink266 = phi i128 [ %i.agi, %bb.cn ], [ %i.afs, %bb.cm ]
  %storemerge.i.i.i156 = phi i8 [ 64, %bb.cn ], [ %i.aft, %bb.cm ]
  store i128 %.sink266, ptr %1, align 16, !alias.scope !8818, !noalias !8807
  store i8 %storemerge.i.i.i156, ptr %i.c, align 16, !alias.scope !8818, !noalias !8807
  br i1 %i.afl, label %bb.co, label %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.co:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i155
  tail call fastcc void @_RINvXsbD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8WithFillNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(984) %i.afj, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !5326
  br label %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i155, %bb.co
  %i.agj = icmp eq ptr %i.afg, %i.afc
  br i1 %i.agj, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %bb.cl

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.pre275 = load i8, ptr %i.c, align 16, !alias.scope !8820
  br label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit89
  %i.agk = phi i8 [ %.pre275, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %storemerge.i.i.i88, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit89 ] ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.agm = load ptr, ptr %i.agl, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ago = load i64, ptr %i.agn, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8829)
  %i.agp = icmp ugt i8 %i.agk, 64
  br i1 %i.agp, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.agq = zext i64 %i.ago to i128
  %i.agr = zext nneg i8 %i.agk to i128
  %i.ags = shl nuw i128 %i.agq, %i.agr
  %i.agt = load i128, ptr %1, align 16, !alias.scope !8820, !noundef !3
  %i.agu = or i128 %i.agt, %i.ags
  %i.agv = add nuw i8 %i.agk, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit93

bb.cq:                                            ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
end_hunk_4
begin_hunk_5_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bsn = icmp ugt i8 %i.bsj, 64
  br i1 %i.bsn, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bso = select i1 %i.bsm, i128 18446744073709551616, i128 0
  %i.bsp = or i128 %i.bso, %i.bsi
  store i128 %i.bsp, ptr %1, align 16, !alias.scope !8782
  store i8 -128, ptr %i.c, align 16, !alias.scope !8782
  br i1 %i.bsm, label %bb.fu, label %bb.ep

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.fs
  %i.bsq = trunc i128 %i.bsi to i64
  %i.bsr = lshr i128 %i.bsi, 64
  %i.bss = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bst = load i64, ptr %i.bss, align 8, !alias.scope !8782, !noundef !3
  %i.bsu = xor i64 %i.bst, %i.bsq
  %i.bsv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bsw = load ptr, ptr %i.bsv, align 16, !alias.scope !8782, !nonnull !3, !align !100, !noundef !3
  %i.bsx = load i64, ptr %i.bsw, align 8, !noalias !8782, !noundef !3
  %i.bsy = zext i64 %i.bsu to i128
  %i.bsz = zext i64 %i.bsx to i128
  %i.bta = xor i128 %i.bsr, %i.bsz
  %i.btb = mul nuw i128 %i.bta, %i.bsy            ; 2 uses
  %i.btc = lshr i128 %i.btb, 64
  %i.btd = xor i128 %i.btc, %i.btb
  %i.bte = trunc i128 %i.btd to i64
  store i64 %i.bte, ptr %i.bss, align 8, !alias.scope !8782
  %i.btf = zext i1 %i.bsm to i128
  store i128 %i.btf, ptr %1, align 16, !alias.scope !8782
  store i8 64, ptr %i.c, align 16, !alias.scope !8782
  br i1 %i.bsm, label %bb.fu, label %bb.ep

bb.fu:                                            ; preds = %.thread210, %bb.ft, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.btg = phi ptr [ %i.bsk, %bb.ft ], [ %i.bsk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.acq, %.thread210 ]
  tail call fastcc void @_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.btg, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  br label %bb.ep

bb.fv:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9170)
  %.not345 = icmp eq i8 %i.ahu, 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9172)
  %.not = icmp eq i8 %i.ahs, 0
  br i1 %.not, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %bb.fv
  %i.bth = select i1 %.not345, i128 0, i128 18446744073709551616
  %i.bti = or i128 %i.aib, %i.bth                 ; 3 uses
  store i128 %i.bti, ptr %1, align 16, !alias.scope !8838
  store i8 -128, ptr %i.c, align 16, !alias.scope !8838
  br i1 %.not345, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %extract.t = trunc i128 %i.aib to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !9173
  %.phi.trans.insert364 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre365 = load ptr, ptr %.phi.trans.insert364, align 16, !alias.scope !9173
  %i.btj = lshr i128 %i.bti, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i: ; preds = %bb.fv
  %i.btk = trunc i128 %i.aib to i64
  %i.btl = lshr i128 %i.aib, 64
  %i.btm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.btn = load i64, ptr %i.btm, align 8, !alias.scope !8838, !noundef !3
  %i.bto = xor i64 %i.btn, %i.btk
  %i.btp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.btq = load ptr, ptr %i.btp, align 16, !alias.scope !8838, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.btr = load i64, ptr %i.btq, align 8, !noalias !8838, !noundef !3
  %i.bts = zext i64 %i.bto to i128
  %i.btt = zext i64 %i.btr to i128                ; 2 uses
  %i.btu = xor i128 %i.btl, %i.btt
  %i.btv = mul nuw i128 %i.btu, %i.bts            ; 2 uses
  %i.btw = lshr i128 %i.btv, 64
  %i.btx = xor i128 %i.btw, %i.btv
  %i.bty = trunc i128 %i.btx to i64               ; 3 uses
  store i64 %i.bty, ptr %i.btm, align 8, !alias.scope !8838
  br i1 %.not345, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i
  %.not8.i = icmp eq i8 %i.ahu, 3                 ; 2 uses
  %i.btz = select i1 %.not8.i, i128 1, i128 18446744073709551617
  store i128 %i.btz, ptr %1, align 16, !alias.scope !9173
  store i8 -128, ptr %i.c, align 16, !alias.scope !9173
  br i1 %.not8.i, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217, label %bb.fx

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge, %.thread213
  %i.bua = phi ptr [ %i.aik, %.thread213 ], [ %.pre365, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ] ; 2 uses
  %i.bub = phi i64 [ %i.ais, %.thread213 ], [ %.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %i.buc = phi i128 [ 1, %.thread213 ], [ %i.btj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.off0 = phi i64 [ 1, %.thread213 ], [ %extract.t, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.not347 = icmp eq i8 %i.ahu, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9179)
  %i.bud = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bue = xor i64 %i.bub, %.off0
  %i.buf = load i64, ptr %i.bua, align 8, !noalias !9173, !noundef !3
  %i.bug = zext i64 %i.bue to i128
  %i.buh = zext i64 %i.buf to i128
  %i.bui = xor i128 %i.buc, %i.buh
  %i.buj = mul nuw i128 %i.bui, %i.bug            ; 2 uses
  %i.buk = lshr i128 %i.buj, 64
  %i.bul = xor i128 %i.buk, %i.buj
  %i.bum = trunc i128 %i.bul to i64               ; 2 uses
  store i64 %i.bum, ptr %i.bud, align 8, !alias.scope !9173
  br i1 %.not347, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.fw

bb.fw:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.bun = zext nneg i8 %i.ahu to i128
  %i.buo = shl nuw nsw i128 %i.bun, 64
  %i.bup = or disjoint i128 %i.buo, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i140

bb.fx:                                            ; preds = %.thread.i
  %i.buq = xor i64 %i.bty, 1
  %i.bur = zext i64 %i.buq to i128
  %i.bus = xor i128 %i.btt, 1
  %i.but = mul nuw i128 %i.bus, %i.bur            ; 2 uses
  %i.buu = lshr i128 %i.but, 64
  %i.buv = xor i128 %i.buu, %i.but
  %i.buw = trunc i128 %i.buv to i64
  store i64 %i.buw, ptr %i.btm, align 8, !alias.scope !9180
  %i.bux = zext nneg i8 %i.ahu to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i140

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i140: ; preds = %bb.fx, %bb.fw
  %storemerge.i = phi i128 [ %i.bup, %bb.fw ], [ %i.bux, %bb.fx ] ; 2 uses
  %storemerge.i.i.i141 = phi i8 [ -128, %bb.fw ], [ 64, %bb.fx ] ; 2 uses
  store i128 %storemerge.i, ptr %1, align 16, !alias.scope !9180
  store i8 %storemerge.i.i.i141, ptr %i.c, align 16, !alias.scope !9180
  br label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread
  %i.buy = phi ptr [ %i.bua, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ], [ %i.btq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i ], [ %i.aik, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread ]
  %i.buz = phi i64 [ %i.bum, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ], [ %i.bty, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i ], [ %i.ais, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread ]
  %i.bva = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bvb = load i64, ptr %i.bva, align 8, !range !764, !noundef !3 ; 2 uses
  %.not348 = icmp eq i64 %i.bvb, 4                ; 2 uses
  %i.bvc = select i1 %.not348, i128 0, i128 18446744073709551616
  store i128 %i.bvc, ptr %1, align 16, !alias.scope !9185
  store i8 -128, ptr %i.c, align 16, !alias.scope !9185
  br i1 %.not348, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ga

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217: ; preds = %.thread213, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, %.thread.i
  %i.bvd = phi i128 [ %i.bti, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ 1, %.thread.i ], [ 1, %.thread213 ]
  %i.bve = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bvf = load i64, ptr %i.bve, align 8, !range !764, !noundef !3 ; 2 uses
  %i.bvg = icmp ne i64 %i.bvf, 4
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i140, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26
  %i.bvh = phi i128 [ %storemerge.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i140 ], [ %i.aib, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26 ] ; 3 uses
  %i.bvi = phi i8 [ %storemerge.i.i.i141, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i140 ], [ %i.aic, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26 ]
  %i.bvj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bvk = load i64, ptr %i.bvj, align 8, !range !764, !noundef !3 ; 3 uses
  %i.bvl = icmp ne i64 %i.bvk, 4                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9191)
  %i.bvm = icmp ugt i8 %i.bvi, 64
  br i1 %i.bvm, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, label %bb.fy

bb.fy:                                            ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bvn = select i1 %i.bvl, i128 18446744073709551616, i128 0
  %i.bvo = or i128 %i.bvn, %i.bvh                 ; 2 uses
  store i128 %i.bvo, ptr %1, align 16, !alias.scope !9185
  store i8 -128, ptr %i.c, align 16, !alias.scope !9185
  br i1 %i.bvl, label %._crit_edge, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

._crit_edge:                                      ; preds = %bb.fy
  %extract.t350 = trunc i128 %i.bvh to i64
  %.phi.trans.insert366 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre367 = load i64, ptr %.phi.trans.insert366, align 8, !alias.scope !9192, !noalias !9199
  %.phi.trans.insert368 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre369 = load ptr, ptr %.phi.trans.insert368, align 16, !alias.scope !9192, !noalias !9199
  %i.bvp = lshr i128 %i.bvo, 64
  %i.bvq = xor i64 %.pre367, %extract.t350
  br label %bb.ga

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217
  %i.bvr = phi i128 [ %i.bvd, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217 ], [ %i.bvh, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bvs = phi i1 [ %i.bvg, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217 ], [ %i.bvl, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bvt = phi i64 [ %i.bvf, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217 ], [ %i.bvk, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.bvu = phi ptr [ %i.bve, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217 ], [ %i.bvj, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.bvv = trunc i128 %i.bvr to i64
  %i.bvw = lshr i128 %i.bvr, 64
  %i.bvx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bvy = load i64, ptr %i.bvx, align 8, !alias.scope !9185, !noundef !3
  %i.bvz = xor i64 %i.bvy, %i.bvv
  %i.bwa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bwb = load ptr, ptr %i.bwa, align 16, !alias.scope !9185, !nonnull !3, !align !100, !noundef !3
  %i.bwc = load i64, ptr %i.bwb, align 8, !noalias !9185, !noundef !3
  %i.bwd = zext i64 %i.bvz to i128
  %i.bwe = zext i64 %i.bwc to i128
  %i.bwf = xor i128 %i.bvw, %i.bwe
  %i.bwg = mul nuw i128 %i.bwf, %i.bwd            ; 2 uses
  %i.bwh = lshr i128 %i.bwg, 64
  %i.bwi = xor i128 %i.bwh, %i.bwg
  %i.bwj = trunc i128 %i.bwi to i64
  store i64 %i.bwj, ptr %i.bvx, align 8, !alias.scope !9185
  %i.bwk = zext i1 %i.bvs to i128                 ; 2 uses
  store i128 %i.bwk, ptr %1, align 16, !alias.scope !9185
  store i8 64, ptr %i.c, align 16, !alias.scope !9185
  br i1 %i.bvs, label %bb.fz, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.fz:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9203)
  %i.bwl = zext nneg i64 %i.bvt to i128
  %i.bwm = shl nuw nsw i128 %i.bwl, 64
  %i.bwn = or disjoint i128 %i.bwm, %i.bwk
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i142

bb.ga:                                            ; preds = %._crit_edge, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.bwo = phi ptr [ %i.buy, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre369, %._crit_edge ]
  %i.bwp = phi i64 [ %i.buz, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bvq, %._crit_edge ]
  %i.bwq = phi i128 [ 1, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bvp, %._crit_edge ]
  %i.bwr = phi ptr [ %i.bva, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bvj, %._crit_edge ]
  %i.bws = phi i64 [ %i.bvb, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bvk, %._crit_edge ] ; 2 uses
  %i.bwt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bwu = load i64, ptr %i.bwo, align 8, !noalias !9204, !noundef !3
  %i.bwv = zext i64 %i.bwp to i128
  %i.bww = zext i64 %i.bwu to i128
  %i.bwx = xor i128 %i.bwq, %i.bww
  %i.bwy = mul nuw i128 %i.bwx, %i.bwv            ; 2 uses
  %i.bwz = lshr i128 %i.bwy, 64
  %i.bxa = xor i128 %i.bwz, %i.bwy
  %i.bxb = trunc i128 %i.bxa to i64
  store i64 %i.bxb, ptr %i.bwt, align 8, !alias.scope !9192, !noalias !9199
  %i.bxc = zext nneg i64 %i.bws to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i142

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i142: ; preds = %bb.ga, %bb.fz
  %i.bxd = phi i64 [ %i.bws, %bb.ga ], [ %i.bvt, %bb.fz ]
  %i.bxe = phi ptr [ %i.bwr, %bb.ga ], [ %i.bvu, %bb.fz ]
  %.sink.i143 = phi i128 [ %i.bxc, %bb.ga ], [ %i.bwn, %bb.fz ]
  %storemerge.i.i.i144 = phi i8 [ 64, %bb.ga ], [ -128, %bb.fz ]
  store i128 %.sink.i143, ptr %1, align 16, !alias.scope !9192, !noalias !9199
  store i8 %storemerge.i.i.i144, ptr %i.c, align 16, !alias.scope !9192, !noalias !9199
  %switch.not.i = icmp samesign ult i64 %i.bxd, 2
  br i1 %switch.not.i, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i142
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bxf, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %.sink.split.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i142, %bb.fy, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs9R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_21MatchRecognizePatternNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.act, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  %i.bxg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bxh = load ptr, ptr %i.bxg, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bxi = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bxj = load i64, ptr %i.bxi, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9211)
  %i.bxk = load i8, ptr %i.c, align 16, !alias.scope !9214, !noundef !3 ; 3 uses
  %i.bxl = icmp ugt i8 %i.bxk, 64
  br i1 %i.bxl, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bxm = zext i64 %i.bxj to i128
  %i.bxn = zext nneg i8 %i.bxk to i128
  %i.bxo = shl nuw i128 %i.bxm, %i.bxn
  %i.bxp = load i128, ptr %1, align 16, !alias.scope !9214, !noundef !3
  %i.bxq = or i128 %i.bxp, %i.bxo
  %i.bxr = add nuw i8 %i.bxk, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit147

bb.gc:                                            ; preds = %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bxs = load i128, ptr %1, align 16, !alias.scope !9214, !noundef !3 ; 2 uses
  %i.bxt = trunc i128 %i.bxs to i64
  %i.bxu = lshr i128 %i.bxs, 64
  %i.bxv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bxw = load i64, ptr %i.bxv, align 8, !alias.scope !9214, !noundef !3
  %i.bxx = xor i64 %i.bxw, %i.bxt
  %i.bxy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bxz = load ptr, ptr %i.bxy, align 16, !alias.scope !9214, !nonnull !3, !align !100, !noundef !3
  %i.bya = load i64, ptr %i.bxz, align 8, !noalias !9214, !noundef !3
  %i.byb = zext i64 %i.bxx to i128
  %i.byc = zext i64 %i.bya to i128
  %i.byd = xor i128 %i.bxu, %i.byc
  %i.bye = mul nuw i128 %i.byd, %i.byb            ; 2 uses
  %i.byf = lshr i128 %i.bye, 64
  %i.byg = xor i128 %i.byf, %i.bye
  %i.byh = trunc i128 %i.byg to i64
  store i64 %i.byh, ptr %i.bxv, align 8, !alias.scope !9214
  %i.byi = zext i64 %i.bxj to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit147

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit147: ; preds = %bb.gb, %bb.gc
  %.sink.i145 = phi i128 [ %i.byi, %bb.gc ], [ %i.bxq, %bb.gb ]
  %storemerge.i.i.i146 = phi i8 [ 64, %bb.gc ], [ %i.bxr, %bb.gb ] ; 2 uses
  store i128 %.sink.i145, ptr %1, align 16, !alias.scope !9214
  store i8 %storemerge.i.i.i146, ptr %i.c, align 16, !alias.scope !9214
  %.idx250 = mul nuw nsw i64 %i.bxj, 392
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %.idx250
  %i.byk = icmp eq i64 %i.bxj, 0
  br i1 %i.byk, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph239

.lr.ph239:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit147, %.lr.ph239
  %.sroa.0.0.i148238 = phi ptr [ %i.byl, %.lr.ph239 ], [ %i.bxh, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit147 ] ; 3 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148238, i64 392 ; 2 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148238, i64 328
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bym, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !9215
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %.sroa.0.0.i148238, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !9215
  %i.byn = icmp eq ptr %i.byl, %i.byj
  br i1 %i.byn, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %.lr.ph239

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %.lr.ph239
  %.pre277 = load i8, ptr %i.c, align 16, !alias.scope !9216
  br label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit147
  %i.byo = phi i8 [ %.pre277, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ %storemerge.i.i.i146, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit147 ] ; 3 uses
  %i.byp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.byq = load i64, ptr %i.byp, align 8, !range !777, !noundef !3
  %i.byr = icmp ne i64 %i.byq, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9222)
  %i.bys = icmp ugt i8 %i.byo, 64
  br i1 %i.bys, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.byt = zext i1 %i.byr to i128
  %i.byu = zext nneg i8 %i.byo to i128
  %i.byv = shl nuw nsw i128 %i.byt, %i.byu
  %i.byw = load i128, ptr %1, align 16, !alias.scope !9216, !noundef !3
  %i.byx = or i128 %i.byw, %i.byv
  %i.byy = add nuw i8 %i.byo, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.ge:                                            ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query16SymbolDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.byz = load i128, ptr %1, align 16, !alias.scope !9216, !noundef !3 ; 2 uses
  %i.bza = trunc i128 %i.byz to i64
  %i.bzb = lshr i128 %i.byz, 64
  %i.bzc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bzd = load i64, ptr %i.bzc, align 8, !alias.scope !9216, !noundef !3
  %i.bze = xor i64 %i.bzd, %i.bza
  %i.bzf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bzg = load ptr, ptr %i.bzf, align 16, !alias.scope !9216, !nonnull !3, !align !100, !noundef !3
  %i.bzh = load i64, ptr %i.bzg, align 8, !noalias !9216, !noundef !3
  %i.bzi = zext i64 %i.bze to i128
  %i.bzj = zext i64 %i.bzh to i128
  %i.bzk = xor i128 %i.bzb, %i.bzj
  %i.bzl = mul nuw i128 %i.bzk, %i.bzi            ; 2 uses
  %i.bzm = lshr i128 %i.bzl, 64
  %i.bzn = xor i128 %i.bzm, %i.bzl
  %i.bzo = trunc i128 %i.bzn to i64
  store i64 %i.bzo, ptr %i.bzc, align 8, !alias.scope !9216
  %i.bzp = zext i1 %i.byr to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.gd, %bb.ge
  %.sink272 = phi i128 [ %i.bzp, %bb.ge ], [ %i.byx, %bb.gd ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.ge ], [ %i.byy, %bb.gd ]
  store i128 %.sink272, ptr %1, align 16, !alias.scope !9216
  store i8 %storemerge.i.i1, ptr %i.c, align 16, !alias.scope !9216
  br i1 %i.byr, label %bb.gf, label %bb.ep

bb.gf:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call fastcc void @_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.byp, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  br label %bb.ep

bb.gg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit24
  tail call fastcc void @_RINvXsab_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_10TableAliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aon, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  br label %bb.ep

bb.gh:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit22
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.att, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  %.pr221 = load i8, ptr %i.c, align 16, !alias.scope !9223
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit22
  %i.bzq = phi i8 [ %.pr221, %bb.gh ], [ %storemerge.i.i21, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit22 ] ; 3 uses
  %i.bzr = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.bzs = load i64, ptr %i.bzr, align 8, !range !777, !noundef !3
  %i.bzt = icmp ne i64 %i.bzs, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9229)
  %i.bzu = icmp ugt i8 %i.bzq, 64
  br i1 %i.bzu, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bzv = zext i1 %i.bzt to i128
  %i.bzw = zext nneg i8 %i.bzq to i128
  %i.bzx = shl nuw nsw i128 %i.bzv, %i.bzw
  %i.bzy = load i128, ptr %1, align 16, !alias.scope !9223, !noundef !3
  %i.bzz = or i128 %i.bzy, %i.bzx
  %i.caa = add nuw i8 %i.bzq, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.gk:                                            ; preds = %bb.gi
  %i.cab = load i128, ptr %1, align 16, !alias.scope !9223, !noundef !3 ; 2 uses
  %i.cac = trunc i128 %i.cab to i64
  %i.cad = lshr i128 %i.cab, 64
  %i.cae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.caf = load i64, ptr %i.cae, align 8, !alias.scope !9223, !noundef !3
  %i.cag = xor i64 %i.caf, %i.cac
  %i.cah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cai = load ptr, ptr %i.cah, align 16, !alias.scope !9223, !nonnull !3, !align !100, !noundef !3
  %i.caj = load i64, ptr %i.cai, align 8, !noalias !9223, !noundef !3
  %i.cak = zext i64 %i.cag to i128
  %i.cal = zext i64 %i.caj to i128
  %i.cam = xor i128 %i.cad, %i.cal
  %i.can = mul nuw i128 %i.cam, %i.cak            ; 2 uses
  %i.cao = lshr i128 %i.can, 64
  %i.cap = xor i128 %i.cao, %i.can
  %i.caq = trunc i128 %i.cap to i64
  store i64 %i.caq, ptr %i.cae, align 8, !alias.scope !9223
  %i.car = zext i1 %i.bzt to i128
end_hunk_5
begin_hunk_6_@_RINvXs7_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6InsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.an:                                            ; preds = %bb.al
  %i.aah = trunc i128 %i.yw to i64
  %i.aai = lshr i128 %i.yw, 64
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aak = load i64, ptr %i.aaj, align 8, !alias.scope !10870, !noundef !3
  %i.aal = xor i64 %i.aak, %i.aah
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aan = load ptr, ptr %i.aam, align 16, !alias.scope !10870, !nonnull !3, !align !100, !noundef !3
  %i.aao = load i64, ptr %i.aan, align 8, !noalias !10870, !noundef !3
  %i.aap = zext i64 %i.aal to i128
  %i.aaq = zext i64 %i.aao to i128
  %i.aar = xor i128 %i.aai, %i.aaq
  %i.aas = mul nuw i128 %i.aar, %i.aap            ; 2 uses
  %i.aat = lshr i128 %i.aas, 64
  %i.aau = xor i128 %i.aat, %i.aas
  %i.aav = trunc i128 %i.aau to i64
  store i64 %i.aav, ptr %i.aaj, align 8, !alias.scope !10870
  %i.aaw = zext i64 %i.aaa to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45: ; preds = %bb.am, %bb.an
  %i.aax = phi i64 [ %i.aaa, %bb.an ], [ %i.aac, %bb.am ]
  %i.aay = phi ptr [ %i.zy, %bb.an ], [ %i.aad, %bb.am ]
  %.sink.i43 = phi i128 [ %i.aaw, %bb.an ], [ %i.aag, %bb.am ]
  %storemerge.i.i.i44 = phi i8 [ 64, %bb.an ], [ -128, %bb.am ]
  store i128 %.sink.i43, ptr %1, align 16, !alias.scope !10870
  store i8 %storemerge.i.i.i44, ptr %i.d, align 16, !alias.scope !10870
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aay, i64 noundef %i.aax, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr120 = load i8, ptr %i.d, align 16, !alias.scope !10871
  %.pre164.pre = load i128, ptr %1, align 16, !alias.scope !10871
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45
  %.pre164 = phi i128 [ %i.yw, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.pre164.pre, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45 ] ; 3 uses
  %i.aaz = phi i8 [ %i.yx, %_RINvXsdN_NtCs4lawaffTVVK_9sqlparser3astNtB7_8OnInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge ], [ %.pr120, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit45 ] ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.abb = load i8, ptr %i.aba, align 4, !range !492, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10877)
  %i.abc = icmp ugt i8 %i.aaz, 120
  br i1 %i.abc, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread: ; preds = %bb.ao
  %i.abd = trunc i128 %.pre164 to i64
  %i.abe = lshr i128 %.pre164, 64
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.abg = load i64, ptr %i.abf, align 8, !alias.scope !10871, !noundef !3
  %i.abh = xor i64 %i.abg, %i.abd
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abj = load ptr, ptr %i.abi, align 16, !alias.scope !10871, !nonnull !3, !align !100, !noundef !3
  %i.abk = load i64, ptr %i.abj, align 8, !noalias !10871, !noundef !3
  %i.abl = zext i64 %i.abh to i128
  %i.abm = zext i64 %i.abk to i128
  %i.abn = xor i128 %i.abe, %i.abm
  %i.abo = mul nuw i128 %i.abn, %i.abl            ; 2 uses
  %i.abp = lshr i128 %i.abo, 64
  %i.abq = xor i128 %i.abp, %i.abo
  %i.abr = trunc i128 %i.abq to i64
  store i64 %i.abr, ptr %i.abf, align 8, !alias.scope !10871
  %i.abs = zext nneg i8 %i.abb to i128
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 1069
  %i.abu = load i8, ptr %i.abt, align 1, !range !2644, !noundef !3 ; 2 uses
  %i.abv = icmp ne i8 %i.abu, 3
  br label %bb.ap

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.ao, %.thread121
  %i.abw = phi i128 [ %i.zq, %.thread121 ], [ %.pre164, %bb.ao ]
  %i.abx = phi i8 [ %i.zs, %.thread121 ], [ %i.abb, %bb.ao ]
  %i.aby = phi i8 [ 64, %.thread121 ], [ %i.aaz, %bb.ao ] ; 3 uses
  %i.abz = zext nneg i8 %i.abx to i128
  %i.aca = zext nneg i8 %i.aby to i128
  %i.acb = shl nuw nsw i128 %i.abz, %i.aca
  %i.acc = or i128 %i.acb, %i.abw                 ; 4 uses
  store i128 %i.acc, ptr %1, align 16, !alias.scope !10871
  %i.acd = add nuw i8 %i.aby, 8                   ; 2 uses
  store i8 %i.acd, ptr %i.d, align 16, !alias.scope !10871
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 1069
  %i.acf = load i8, ptr %i.ace, align 1, !range !2644, !noundef !3 ; 3 uses
  %i.acg = icmp ne i8 %i.acf, 3                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10881)
  %i.ach = icmp samesign ugt i8 %i.aby, 56
  br i1 %i.ach, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.aci = phi i128 [ %i.abs, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.acc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %i.acj = phi i1 [ %i.abv, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.acg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.ack = phi i8 [ %i.abu, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.acf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ]
  %storemerge.i.i19123 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.thread ], [ %i.acd, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit ] ; 2 uses
  %i.acl = zext i1 %i.acj to i128
  %i.acm = zext nneg i8 %storemerge.i.i19123 to i128
  %i.acn = shl nuw nsw i128 %i.acl, %i.acm
  %i.aco = or i128 %i.acn, %i.aci                 ; 4 uses
  store i128 %i.aco, ptr %1, align 16, !alias.scope !10884
  %i.acp = add nuw i8 %storemerge.i.i19123, 64
  store i8 %i.acp, ptr %i.d, align 16, !alias.scope !10884
  br i1 %i.acj, label %bb.aq, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge: ; preds = %bb.ap
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre165 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !10885
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre167 = load ptr, ptr %.phi.trans.insert166, align 16, !alias.scope !10885
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit
  %i.acq = trunc i128 %i.acc to i64
  %i.acr = lshr i128 %i.acc, 64
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.act = load i64, ptr %i.acs, align 8, !alias.scope !10884, !noundef !3
  %i.acu = xor i64 %i.act, %i.acq
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acw = load ptr, ptr %i.acv, align 16, !alias.scope !10884, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  %i.acx = load i64, ptr %i.acw, align 8, !noalias !10884, !noundef !3
  %i.acy = zext i64 %i.acu to i128
  %i.acz = zext i64 %i.acx to i128
  %i.ada = xor i128 %i.acr, %i.acz
  %i.adb = mul nuw i128 %i.ada, %i.acy            ; 2 uses
  %i.adc = lshr i128 %i.adb, 64
  %i.add = xor i128 %i.adc, %i.adb
  %i.ade = trunc i128 %i.add to i64               ; 3 uses
  store i64 %i.ade, ptr %i.acs, align 8, !alias.scope !10884
  %i.adf = zext i1 %i.acg to i128                 ; 2 uses
  store i128 %i.adf, ptr %1, align 16, !alias.scope !10884
  store i8 64, ptr %i.d, align 16, !alias.scope !10884
  br i1 %i.acg, label %.thread129, label %.thread128

.thread129:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10896)
  %i.adg = zext nneg i8 %i.acf to i128
  %i.adh = shl nuw nsw i128 %i.adg, 64
  %i.adi = or disjoint i128 %i.adh, %i.adf        ; 2 uses
  store i128 %i.adi, ptr %1, align 16, !alias.scope !10899
  store i8 -128, ptr %i.d, align 16, !alias.scope !10899
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.aq:                                            ; preds = %bb.ap
  %i.adj = trunc i128 %i.aco to i64
  %i.adk = lshr i128 %i.aco, 64
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !alias.scope !10899, !noundef !3
  %i.adn = xor i64 %i.adm, %i.adj
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adp = load ptr, ptr %i.ado, align 16, !alias.scope !10899, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.adq = load i64, ptr %i.adp, align 8, !noalias !10899, !noundef !3
  %i.adr = zext i64 %i.adn to i128
  %i.ads = zext i64 %i.adq to i128
  %i.adt = xor i128 %i.adk, %i.ads
  %i.adu = mul nuw i128 %i.adt, %i.adr            ; 2 uses
  %i.adv = lshr i128 %i.adu, 64
  %i.adw = xor i128 %i.adv, %i.adu
  %i.adx = trunc i128 %i.adw to i64               ; 2 uses
  store i64 %i.adx, ptr %i.adl, align 8, !alias.scope !10899
  %i.ady = zext nneg i8 %i.ack to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10901)
  br label %.thread128

.thread128:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %bb.aq
  %i.adz = phi ptr [ %i.acw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.adp, %bb.aq ] ; 2 uses
  %i.aea = phi i64 [ %i.ade, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.adx, %bb.aq ] ; 2 uses
  %i.aeb = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ], [ %i.ady, %bb.aq ] ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.in154 = load i64, ptr %i.aec, align 8, !range !777, !noundef !3
  %.not155 = icmp eq i64 %.in154, -9223372036854775808 ; 2 uses
  %i.aed = select i1 %.not155, i128 0, i128 18446744073709551616
  %i.aee = or disjoint i128 %i.aed, %i.aeb        ; 2 uses
  store i128 %i.aee, ptr %1, align 16, !alias.scope !10885
  store i8 -128, ptr %i.d, align 16, !alias.scope !10885
  br i1 %.not155, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142, label %bb.as

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142: ; preds = %.thread128
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aeg = load i64, ptr %i.aef, align 8, !range !777, !noundef !3
  %i.aeh = icmp ne i64 %i.aeg, -9223372036854775808 ; 2 uses
  %i.aei = zext i1 %i.aeh to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, %.thread129
  %i.aej = phi ptr [ %.pre167, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.acw, %.thread129 ]
  %i.aek = phi i64 [ %.pre165, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.ade, %.thread129 ]
  %i.ael = phi i128 [ %i.aco, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ], [ %i.adi, %.thread129 ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 896
  %.in = load i64, ptr %i.aem, align 8, !range !777, !noundef !3
  %i.aen = icmp ne i64 %.in, -9223372036854775808 ; 2 uses
  %i.aeo = trunc i128 %i.ael to i64
  %i.aep = lshr i128 %i.ael, 64
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aer = xor i64 %i.aek, %i.aeo
  %i.aes = load i64, ptr %i.aej, align 8, !noalias !10885, !noundef !3
  %i.aet = zext i64 %i.aer to i128
  %i.aeu = zext i64 %i.aes to i128
  %i.aev = xor i128 %i.aep, %i.aeu
  %i.aew = mul nuw i128 %i.aev, %i.aet            ; 2 uses
  %i.aex = lshr i128 %i.aew, 64
  %i.aey = xor i128 %i.aex, %i.aew
  %i.aez = trunc i128 %i.aey to i64
  store i64 %i.aez, ptr %i.aeq, align 8, !alias.scope !10885
  %i.afa = zext i1 %i.aen to i128                 ; 2 uses
  store i128 %i.afa, ptr %1, align 16, !alias.scope !10885
  store i8 64, ptr %i.d, align 16, !alias.scope !10885
  br i1 %i.aen, label %bb.ar, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ar:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10905)
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.val.i49 = load ptr, ptr %i.afb, align 8, !alias.scope !10902, !noalias !10905, !nonnull !3, !noundef !3
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.val1.i50 = load i64, ptr %i.afc, align 8, !alias.scope !10902, !noalias !10905, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10919)
  %i.afd = zext i64 %.val1.i50 to i128
  %i.afe = shl nuw i128 %i.afd, 64
  %i.aff = or disjoint i128 %i.afe, %i.afa
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.as:                                            ; preds = %.thread128
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.val.i49135 = load ptr, ptr %i.afg, align 8, !alias.scope !10922, !noalias !10924, !nonnull !3, !noundef !3
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.val1.i50136 = load i64, ptr %i.afh, align 8, !alias.scope !10922, !noalias !10924, !noundef !3 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.afj = load i64, ptr %i.adz, align 8, !noalias !10926, !noundef !3
  %i.afk = zext i64 %i.aea to i128
  %i.afl = xor i128 %i.aeb, %i.afk
  %i.afm = xor i64 %i.afj, 1
  %i.afn = zext i64 %i.afm to i128
  %i.afo = mul nuw i128 %i.afl, %i.afn            ; 2 uses
  %i.afp = lshr i128 %i.afo, 64
  %i.afq = xor i128 %i.afp, %i.afo
  %i.afr = trunc i128 %i.afq to i64
  store i64 %i.afr, ptr %i.afi, align 8, !alias.scope !10927, !noalias !10902
  %i.afs = zext i64 %.val1.i50136 to i128
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.as, %bb.ar
  %.val1.i50139 = phi i64 [ %.val1.i50136, %bb.as ], [ %.val1.i50, %bb.ar ]
  %.val.i49137 = phi ptr [ %.val.i49135, %bb.as ], [ %.val.i49, %bb.ar ]
  %.sink.i.i.i.i = phi i128 [ %i.afs, %bb.as ], [ %i.aff, %bb.ar ]
  %storemerge.i.i.i.i.i.i = phi i8 [ 64, %bb.as ], [ -128, %bb.ar ]
  store i128 %.sink.i.i.i.i, ptr %1, align 16, !alias.scope !10927, !noalias !10902
  store i8 %storemerge.i.i.i.i.i.i, ptr %i.d, align 16, !alias.scope !10927, !noalias !10902
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i49137, i64 noundef %.val1.i50139, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !10902
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.afu = load i64, ptr %i.aft, align 8, !range !777, !alias.scope !10902, !noalias !10905, !noundef !3
  %i.afv = icmp ne i64 %i.afu, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10931)
  %i.afw = load i8, ptr %i.d, align 16, !alias.scope !10934, !noalias !10902, !noundef !3 ; 4 uses
  %i.afx = icmp ugt i8 %i.afw, 64
  br i1 %i.afx, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51: ; preds = %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.afy = zext i1 %i.afv to i128
  %i.afz = zext nneg i8 %i.afw to i128
  %i.aga = shl nuw nsw i128 %i.afy, %i.afz
  %i.agb = load i128, ptr %1, align 16, !alias.scope !10934, !noalias !10902, !noundef !3
  %i.agc = or i128 %i.agb, %i.aga                 ; 5 uses
  store i128 %i.agc, ptr %1, align 16, !alias.scope !10934, !noalias !10902
  %i.agd = add nuw i8 %i.afw, 64                  ; 2 uses
  store i8 %i.agd, ptr %i.d, align 16, !alias.scope !10934, !noalias !10902
  br i1 %i.afv, label %bb.at, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i: ; preds = %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.age = load i128, ptr %1, align 16, !alias.scope !10934, !noalias !10902, !noundef !3 ; 2 uses
  %i.agf = trunc i128 %i.age to i64
  %i.agg = lshr i128 %i.age, 64
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.agi = load i64, ptr %i.agh, align 8, !alias.scope !10934, !noalias !10902, !noundef !3
  %i.agj = xor i64 %i.agi, %i.agf
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.agl = load ptr, ptr %i.agk, align 16, !alias.scope !10934, !noalias !10902, !nonnull !3, !align !100, !noundef !3
  %i.agm = load i64, ptr %i.agl, align 8, !noalias !10935, !noundef !3
  %i.agn = zext i64 %i.agj to i128
  %i.ago = zext i64 %i.agm to i128
  %i.agp = xor i128 %i.agg, %i.ago
  %i.agq = mul nuw i128 %i.agp, %i.agn            ; 2 uses
  %i.agr = lshr i128 %i.agq, 64
  %i.ags = xor i128 %i.agr, %i.agq
  %i.agt = trunc i128 %i.ags to i64
  store i64 %i.agt, ptr %i.agh, align 8, !alias.scope !10934, !noalias !10902
  %i.agu = zext i1 %i.afv to i128
  store i128 %i.agu, ptr %1, align 16, !alias.scope !10934, !noalias !10902
  store i8 64, ptr %i.d, align 16, !alias.scope !10934, !noalias !10902
  br i1 %i.afv, label %.thread.i, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.agw = load ptr, ptr %i.agv, align 8, !alias.scope !10902, !noalias !10905, !nonnull !3, !noundef !3
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.agy = load i64, ptr %i.agx, align 8, !alias.scope !10902, !noalias !10905, !noundef !3
  br label %bb.au

bb.at:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.aha = load ptr, ptr %i.agz, align 8, !alias.scope !10902, !noalias !10905, !nonnull !3, !noundef !3 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ahc = load i64, ptr %i.ahb, align 8, !alias.scope !10902, !noalias !10905, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10942)
  %.not.i = icmp eq i8 %i.afw, 0
  br i1 %.not.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %.thread.i
  %i.ahd = phi i128 [ 1, %.thread.i ], [ %i.agc, %bb.at ]
  %i.ahe = phi i64 [ %i.agy, %.thread.i ], [ %i.ahc, %bb.at ] ; 2 uses
  %i.ahf = phi ptr [ %i.agw, %.thread.i ], [ %i.aha, %bb.at ]
  %i.ahg = zext i64 %i.ahe to i128
  %i.ahh = shl nuw i128 %i.ahg, 64
  %i.ahi = or i128 %i.ahh, %i.ahd
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.av:                                            ; preds = %bb.at
  %i.ahj = trunc i128 %i.agc to i64
  %i.ahk = lshr i128 %i.agc, 64
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ahm = load i64, ptr %i.ahl, align 8, !alias.scope !10945, !noalias !10902, !noundef !3
  %i.ahn = xor i64 %i.ahm, %i.ahj
  %i.aho = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ahp = load ptr, ptr %i.aho, align 16, !alias.scope !10945, !noalias !10902, !nonnull !3, !align !100, !noundef !3
  %i.ahq = load i64, ptr %i.ahp, align 8, !noalias !10946, !noundef !3
  %i.ahr = zext i64 %i.ahn to i128
  %i.ahs = zext i64 %i.ahq to i128
  %i.aht = xor i128 %i.ahk, %i.ahs
  %i.ahu = mul nuw i128 %i.aht, %i.ahr            ; 2 uses
  %i.ahv = lshr i128 %i.ahu, 64
  %i.ahw = xor i128 %i.ahv, %i.ahu
  %i.ahx = trunc i128 %i.ahw to i64
  store i64 %i.ahx, ptr %i.ahl, align 8, !alias.scope !10945, !noalias !10902
  %i.ahy = zext i64 %i.ahc to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.av, %bb.au
  %i.ahz = phi i64 [ %i.ahc, %bb.av ], [ %i.ahe, %bb.au ]
  %i.aia = phi ptr [ %i.aha, %bb.av ], [ %i.ahf, %bb.au ]
  %.sink.i.i = phi i128 [ %i.ahy, %bb.av ], [ %i.ahi, %bb.au ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.av ], [ -128, %bb.au ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !10945, !noalias !10902
  store i8 %storemerge.i.i.i.i, ptr %i.d, align 16, !alias.scope !10945, !noalias !10902
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aia, i64 noundef %i.ahz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !10902
  %.pr141 = load i8, ptr %i.d, align 16, !alias.scope !10947
  %.pre169.pre = load i128, ptr %1, align 16, !alias.scope !10947
  br label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aic = load i64, ptr %i.aib, align 8, !range !777, !noundef !3
  %i.aid = icmp ne i64 %i.aic, -9223372036854775808 ; 2 uses
  %i.aie = zext i1 %i.aid to i64
  br label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51
  %.pre169 = phi i128 [ %.pre169.pre, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.agc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51 ] ; 2 uses
  %i.aif = phi i8 [ %.pr141, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.agd, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i51 ] ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aih = load i64, ptr %i.aig, align 8, !range !777, !noundef !3
  %i.aii = icmp ne i64 %i.aih, -9223372036854775808 ; 3 uses
  %i.aij = zext i1 %i.aii to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10953)
  %i.aik = icmp ugt i8 %i.aif, 64
  br i1 %i.aik, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, label %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre171 = load i64, ptr %.phi.trans.insert170, align 8, !alias.scope !10947
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre173 = load ptr, ptr %.phi.trans.insert172, align 16, !alias.scope !10947
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.ail = phi i128 [ 0, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre169, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.aim = phi i64 [ %i.aie, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aij, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ain = phi i1 [ %i.aid, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aii, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.aio = phi i8 [ 64, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.aif, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.aip = zext nneg i64 %i.aim to i128
  %i.aiq = zext nneg i8 %i.aio to i128
  %i.air = shl nuw nsw i128 %i.aip, %i.aiq
  %i.ais = or i128 %i.air, %i.ail                 ; 5 uses
  store i128 %i.ais, ptr %1, align 16, !alias.scope !10947
  %i.ait = add nuw i8 %i.aio, 64                  ; 2 uses
  store i8 %i.ait, ptr %i.d, align 16, !alias.scope !10947
  br i1 %i.ain, label %bb.aw, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142
  %i.aiu = phi ptr [ %i.adz, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %.pre173, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.aiv = phi i64 [ %i.aea, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %.pre171, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.aiw = phi i128 [ %i.aee, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %.pre169, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ] ; 2 uses
  %i.aix = phi i64 [ %i.aei, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %i.aij, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.aiy = phi i1 [ %i.aeh, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread142 ], [ %i.aii, %_RINvXsdX_NtCs4lawaffTVVK_9sqlparser3astNtB7_13InsertAliasesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2_crit_edge ]
  %i.aiz = trunc i128 %i.aiw to i64
  %i.aja = lshr i128 %i.aiw, 64
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ajc = xor i64 %i.aiv, %i.aiz
  %i.ajd = load i64, ptr %i.aiu, align 8, !noalias !10947, !noundef !3
  %i.aje = zext i64 %i.ajc to i128
  %i.ajf = zext i64 %i.ajd to i128
  %i.ajg = xor i128 %i.aja, %i.ajf
  %i.ajh = mul nuw i128 %i.ajg, %i.aje            ; 2 uses
  %i.aji = lshr i128 %i.ajh, 64
  %i.ajj = xor i128 %i.aji, %i.ajh
  %i.ajk = trunc i128 %i.ajj to i64
  store i64 %i.ajk, ptr %i.ajb, align 8, !alias.scope !10947
  %i.ajl = zext nneg i64 %i.aix to i128           ; 3 uses
  store i128 %i.ajl, ptr %1, align 16, !alias.scope !10947
  store i8 64, ptr %i.d, align 16, !alias.scope !10947
  br i1 %i.aiy, label %.thread144, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.ajn = load i64, ptr %i.ajm, align 8, !range !777, !noundef !3
  %i.ajo = icmp ne i64 %i.ajn, -9223372036854775808
  br label %bb.az
end_hunk_6
begin_hunk_7_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.nk = load i64, ptr %i.nj, align 8, !noalias !14045, !noundef !3
  %i.nl = zext i64 %i.nh to i128
  %i.nm = zext i64 %i.nk to i128
  %i.nn = xor i128 %i.ne, %i.nm
  %i.no = mul nuw i128 %i.nn, %i.nl               ; 2 uses
  %i.np = lshr i128 %i.no, 64
  %i.nq = xor i128 %i.np, %i.no
  %i.nr = trunc i128 %i.nq to i64
  store i64 %i.nr, ptr %i.nf, align 8, !alias.scope !14045
  %i.ns = zext nneg i8 %i.lx to i128
  br label %_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread83, %bb.z
  %.sink.i37 = phi i128 [ %i.ns, %bb.z ], [ %i.nc, %.thread83 ] ; 2 uses
  %storemerge.i.i.i38 = phi i8 [ 64, %bb.z ], [ -128, %.thread83 ] ; 2 uses
  store i128 %.sink.i37, ptr %1, align 16, !alias.scope !14045
  store i8 %storemerge.i.i.i38, ptr %i.c, align 16, !alias.scope !14045
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.nt = phi i128 [ %i.mc, %bb.x ], [ %.sink.i37, %_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.nu = phi i8 [ %i.md, %bb.x ], [ %storemerge.i.i.i38, %_RINvXstC_NtCs4lawaffTVVK_9sqlparser3astNtB7_16FunctionBehaviorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 2686
  %i.nw = load i8, ptr %i.nv, align 2, !range !2644, !noundef !3 ; 3 uses
  %i.nx = icmp ne i8 %i.nw, 3                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14047)
  %i.ny = icmp ugt i8 %i.nu, 64
  br i1 %i.ny, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nz = select i1 %i.nx, i128 18446744073709551616, i128 0
  %i.oa = or i128 %i.nt, %i.nz                    ; 3 uses
  store i128 %i.oa, ptr %1, align 16, !alias.scope !14031
  store i8 -128, ptr %i.c, align 16, !alias.scope !14031
  %extract.t = trunc i128 %i.nt to i64
  br i1 %i.nx, label %bb.ac, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge: ; preds = %.thread86, %bb.ab
  %i.ob = phi i128 [ %i.mx, %.thread86 ], [ %i.oa, %bb.ab ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre155 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !14048
  %.phi.trans.insert156 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre157 = load ptr, ptr %.phi.trans.insert156, align 16, !alias.scope !14048
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12: ; preds = %bb.aa
  %i.oc = trunc i128 %i.nt to i64
  %i.od = lshr i128 %i.nt, 64
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !alias.scope !14031, !noundef !3
  %i.og = xor i64 %i.of, %i.oc
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oi = load ptr, ptr %i.oh, align 16, !alias.scope !14031, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  %i.oj = load i64, ptr %i.oi, align 8, !noalias !14031, !noundef !3
  %i.ok = zext i64 %i.og to i128
  %i.ol = zext i64 %i.oj to i128
  %i.om = xor i128 %i.od, %i.ol
  %i.on = mul nuw i128 %i.om, %i.ok               ; 2 uses
  %i.oo = lshr i128 %i.on, 64
  %i.op = xor i128 %i.oo, %i.on
  %i.oq = trunc i128 %i.op to i64                 ; 3 uses
  store i64 %i.oq, ptr %i.oe, align 8, !alias.scope !14031
  %i.or = zext i1 %i.nx to i128                   ; 2 uses
  store i128 %i.or, ptr %1, align 16, !alias.scope !14031
  store i8 64, ptr %i.c, align 16, !alias.scope !14031
  br i1 %i.nx, label %.thread92, label %.thread91

.thread92:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14059)
  %i.os = zext nneg i8 %i.nw to i128
  %i.ot = shl nuw nsw i128 %i.os, 64
  %i.ou = or disjoint i128 %i.ot, %i.or           ; 2 uses
  store i128 %i.ou, ptr %1, align 16, !alias.scope !14062
  store i8 -128, ptr %i.c, align 16, !alias.scope !14062
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10

bb.ac:                                            ; preds = %.thread86, %bb.ab
  %i.ov = phi i128 [ %i.mx, %.thread86 ], [ %i.oa, %bb.ab ]
  %i.ow = phi i8 [ %i.mv, %.thread86 ], [ %i.nw, %bb.ab ]
  %.off0 = phi i64 [ 0, %.thread86 ], [ %extract.t, %bb.ab ]
  %i.ox = lshr i128 %i.ov, 64
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !14062, !noundef !3
  %i.pa = xor i64 %i.oz, %.off0
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pc = load ptr, ptr %i.pb, align 16, !alias.scope !14062, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !noalias !14062, !noundef !3
  %i.pe = zext i64 %i.pa to i128
  %i.pf = zext i64 %i.pd to i128
  %i.pg = xor i128 %i.ox, %i.pf
  %i.ph = mul nuw i128 %i.pg, %i.pe               ; 2 uses
  %i.pi = lshr i128 %i.ph, 64
  %i.pj = xor i128 %i.pi, %i.ph
  %i.pk = trunc i128 %i.pj to i64                 ; 2 uses
  store i64 %i.pk, ptr %i.oy, align 8, !alias.scope !14062
  %i.pl = zext nneg i8 %i.ow to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14064)
  br label %.thread91

.thread91:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12, %bb.ac
  %i.pm = phi ptr [ %i.oi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12 ], [ %i.pc, %bb.ac ] ; 3 uses
  %i.pn = phi i64 [ %i.oq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12 ], [ %i.pk, %bb.ac ] ; 2 uses
  %i.po = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit12 ], [ %i.pl, %bb.ac ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 2687
  %i.pp = load i8, ptr %.in, align 1, !range !2644, !noundef !3 ; 2 uses
  %.not137 = icmp eq i8 %i.pp, 3                  ; 2 uses
  %i.pq = select i1 %.not137, i128 0, i128 18446744073709551616
  %i.pr = or disjoint i128 %i.pq, %i.po           ; 2 uses
  store i128 %i.pr, ptr %1, align 16, !alias.scope !14048
  store i8 -128, ptr %i.c, align 16, !alias.scope !14048
  br i1 %.not137, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8, label %bb.ad

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge, %.thread92
  %i.ps = phi ptr [ %.pre157, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge ], [ %i.oi, %.thread92 ] ; 3 uses
  %i.pt = phi i64 [ %.pre155, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge ], [ %i.oq, %.thread92 ]
  %i.pu = phi i128 [ %i.ob, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge ], [ %i.ou, %.thread92 ] ; 2 uses
  %.in140 = getelementptr inbounds nuw i8, ptr %0, i64 2687
  %i.pv = load i8, ptr %.in140, align 1, !range !2644, !noundef !3 ; 2 uses
  %i.pw = icmp ne i8 %i.pv, 3                     ; 2 uses
  %i.px = trunc i128 %i.pu to i64
  %i.py = lshr i128 %i.pu, 64
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qa = xor i64 %i.pt, %i.px
  %i.qb = load i64, ptr %i.ps, align 8, !noalias !14048, !noundef !3
  %i.qc = zext i64 %i.qa to i128
  %i.qd = zext i64 %i.qb to i128
  %i.qe = xor i128 %i.py, %i.qd
  %i.qf = mul nuw i128 %i.qe, %i.qc               ; 2 uses
  %i.qg = lshr i128 %i.qf, 64
  %i.qh = xor i128 %i.qg, %i.qf
  %i.qi = trunc i128 %i.qh to i64                 ; 3 uses
  store i64 %i.qi, ptr %i.pz, align 8, !alias.scope !14048
  %i.qj = zext i1 %i.pw to i128                   ; 2 uses
  store i128 %i.qj, ptr %1, align 16, !alias.scope !14048
  store i8 64, ptr %i.c, align 16, !alias.scope !14048
  br i1 %i.pw, label %.thread100, label %.thread99

.thread100:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14071)
  %i.qk = zext nneg i8 %i.pv to i128
  %i.ql = shl nuw nsw i128 %i.qk, 64
  %i.qm = or disjoint i128 %i.ql, %i.qj           ; 2 uses
  store i128 %i.qm, ptr %1, align 16, !alias.scope !14074
  store i8 -128, ptr %i.c, align 16, !alias.scope !14074
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8

bb.ad:                                            ; preds = %.thread91
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qo = load i64, ptr %i.pm, align 8, !noalias !14074, !noundef !3
  %i.qp = zext i64 %i.pn to i128
  %i.qq = xor i128 %i.po, %i.qp
  %i.qr = xor i64 %i.qo, 1
  %i.qs = zext i64 %i.qr to i128
  %i.qt = mul nuw i128 %i.qq, %i.qs               ; 2 uses
  %i.qu = lshr i128 %i.qt, 64
  %i.qv = xor i128 %i.qu, %i.qt
  %i.qw = trunc i128 %i.qv to i64                 ; 2 uses
  store i64 %i.qw, ptr %i.qn, align 8, !alias.scope !14074
  %i.qx = zext nneg i8 %i.pp to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14078)
  br label %.thread99

.thread99:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10, %bb.ad
  %i.qy = phi ptr [ %i.ps, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ], [ %i.pm, %bb.ad ] ; 3 uses
  %i.qz = phi i64 [ %i.qi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ], [ %i.qw, %bb.ad ] ; 2 uses
  %i.ra = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ], [ %i.qx, %bb.ad ] ; 2 uses
  %i.rb = load i64, ptr %0, align 8, !range !781, !noundef !3 ; 3 uses
  %.not143 = icmp eq i64 %i.rb, 3                 ; 2 uses
  %i.rc = select i1 %.not143, i128 0, i128 18446744073709551616
  %i.rd = or disjoint i128 %i.rc, %i.ra           ; 2 uses
  store i128 %i.rd, ptr %1, align 16, !alias.scope !14081
  store i8 -128, ptr %i.c, align 16, !alias.scope !14081
  br i1 %.not143, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, label %bb.af

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8: ; preds = %.thread91, %.thread100
  %i.re = phi ptr [ %i.pm, %.thread91 ], [ %i.ps, %.thread100 ] ; 2 uses
  %i.rf = phi i64 [ %i.pn, %.thread91 ], [ %i.qi, %.thread100 ]
  %i.rg = phi i128 [ %i.pr, %.thread91 ], [ %i.qm, %.thread100 ] ; 2 uses
  %i.rh = load i64, ptr %0, align 8, !range !781, !noundef !3 ; 3 uses
  %i.ri = icmp ne i64 %i.rh, 3                    ; 2 uses
  %i.rj = trunc i128 %i.rg to i64
  %i.rk = lshr i128 %i.rg, 64
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.rm = xor i64 %i.rf, %i.rj
  %i.rn = load i64, ptr %i.re, align 8, !noalias !14081, !noundef !3
  %i.ro = zext i64 %i.rm to i128
  %i.rp = zext i64 %i.rn to i128
  %i.rq = xor i128 %i.rk, %i.rp
  %i.rr = mul nuw i128 %i.rq, %i.ro               ; 2 uses
  %i.rs = lshr i128 %i.rr, 64
  %i.rt = xor i128 %i.rs, %i.rr
  %i.ru = trunc i128 %i.rt to i64                 ; 3 uses
  store i64 %i.ru, ptr %i.rl, align 8, !alias.scope !14081
  %i.rv = zext i1 %i.ri to i128                   ; 2 uses
  store i128 %i.rv, ptr %1, align 16, !alias.scope !14081
  store i8 64, ptr %i.c, align 16, !alias.scope !14081
  br i1 %i.ri, label %bb.ae, label %.thread107

bb.ae:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14090)
  %i.rw = zext nneg i64 %i.rh to i128
  %i.rx = shl nuw nsw i128 %i.rw, 64
  %i.ry = or disjoint i128 %i.rx, %i.rv
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45

bb.af:                                            ; preds = %.thread99
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.sa = load i64, ptr %i.qy, align 8, !noalias !14093, !noundef !3
  %i.sb = zext i64 %i.qz to i128
  %i.sc = xor i128 %i.ra, %i.sb
  %i.sd = xor i64 %i.sa, 1
  %i.se = zext i64 %i.sd to i128
  %i.sf = mul nuw i128 %i.sc, %i.se               ; 2 uses
  %i.sg = lshr i128 %i.sf, 64
  %i.sh = xor i128 %i.sg, %i.sf
  %i.si = trunc i128 %i.sh to i64                 ; 2 uses
  store i64 %i.si, ptr %i.rz, align 8, !alias.scope !14094, !noalias !14082
  %i.sj = zext nneg i64 %i.rb to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45: ; preds = %bb.af, %bb.ae
  %i.sk = phi ptr [ %i.qy, %bb.af ], [ %i.re, %bb.ae ] ; 7 uses
  %i.sl = phi i64 [ %i.si, %bb.af ], [ %i.ru, %bb.ae ] ; 2 uses
  %i.sm = phi i64 [ %i.rb, %bb.af ], [ %i.rh, %bb.ae ]
  %i.sn = phi i128 [ %i.sj, %bb.af ], [ %i.ry, %bb.ae ] ; 4 uses
  %i.so = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 3 uses
  %storemerge.i.i.i46 = phi i8 [ 64, %bb.af ], [ -128, %bb.ae ] ; 2 uses
  store i128 %i.sn, ptr %1, align 16, !alias.scope !14094, !noalias !14082
  store i8 %storemerge.i.i.i46, ptr %i.c, align 16, !alias.scope !14094, !noalias !14082
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !alias.scope !14082, !noalias !14085, !nonnull !3, !noundef !3 ; 24 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ss = load i64, ptr %i.sr, align 8, !alias.scope !14082, !noalias !14085, !noundef !3 ; 26 uses
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.su = icmp samesign ult i64 %i.ss, 17         ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sw = tail call noundef i64 @llvm.fshr.i64(i64 %i.sl, i64 %i.sl, i64 %i.ss) ; 18 uses
  switch i64 %i.sm, label %default.unreachable [
    i64 0, label %bb.ag
    i64 1, label %bb.am
    i64 2, label %bb.as
  ]

default.unreachable:                              ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45
  unreachable

bb.ag:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14103)
  store i64 %i.sw, ptr %i.st, align 8, !alias.scope !14105, !noalias !14106
  br i1 %i.su, label %bb.ai, label %bb.ah, !prof !2537

bb.ah:                                            ; preds = %bb.ag
  %i.sx = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sq, i64 noundef range(i64 0, -9223372036854775808) %i.ss, i64 noundef %i.sw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sk) #54, !noalias !14107
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14111)
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sz = load i64, ptr %i.sy, align 8, !alias.scope !14111, !noalias !14113, !noundef !3 ; 4 uses
  %i.ta = icmp samesign ugt i64 %i.ss, 7
  br i1 %i.ta, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.tb = icmp samesign ugt i64 %i.ss, 3
  br i1 %i.tb, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.ak

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ai
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.sq, align 1, !alias.scope !14114, !noalias !14115
  %i.tc = xor i64 %.sroa.014.0.copyload.i.i.i.i, %i.sw
  %i.td = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.te = getelementptr i8, ptr %i.td, i64 -8
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.te, align 1, !alias.scope !14114, !noalias !14115
  %i.tf = xor i64 %.sroa.016.0.copyload.i.i.i.i, %i.sz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, label %bb.al

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aj
  %i.tg = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.th = getelementptr i8, ptr %i.tg, i64 -4
  %.sroa.019.0.copyload.i.i.i.i = load i32, ptr %i.th, align 1, !alias.scope !14114, !noalias !14115
  %.sroa.018.0.copyload.i.i.i.i = load i32, ptr %i.sq, align 1, !alias.scope !14114, !noalias !14115
  %i.ti = zext i32 %.sroa.018.0.copyload.i.i.i.i to i64
  %i.tj = xor i64 %i.sw, %i.ti
  %i.tk = zext i32 %.sroa.019.0.copyload.i.i.i.i to i64
  %i.tl = xor i64 %i.sz, %i.tk
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.tm = load i8, ptr %i.sq, align 1, !alias.scope !14114, !noalias !14115, !noundef !3
  %i.tn = lshr i64 %i.ss, 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1, !alias.scope !14114, !noalias !14115, !noundef !3
  %i.tq = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.tr = getelementptr i8, ptr %i.tq, i64 -1
  %i.ts = load i8, ptr %i.tr, align 1, !alias.scope !14114, !noalias !14115, !noundef !3
  %i.tt = zext i8 %i.tm to i64
  %i.tu = xor i64 %i.sw, %i.tt
  %i.tv = zext i8 %i.ts to i64
  %i.tw = shl nuw nsw i64 %i.tv, 8
  %i.tx = zext i8 %i.tp to i64
  %i.ty = or disjoint i64 %i.tw, %i.tx
  %i.tz = xor i64 %i.ty, %i.sz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i: ; preds = %bb.al, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ak, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.tf, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.tl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.tz, %bb.al ], [ %i.sz, %bb.ak ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.tc, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.tj, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.tu, %bb.al ], [ %i.sw, %bb.ak ]
  %i.ua = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.ub = zext i64 %.sroa.04.0.i.i.i.i to i128
  %i.uc = mul nuw i128 %i.ua, %i.ub               ; 2 uses
  %i.ud = lshr i128 %i.uc, 64
  %i.ue = xor i128 %i.ud, %i.uc
  %i.uf = trunc i128 %i.ue to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, %bb.ah
  %storemerge.i.i1.i = phi i64 [ %i.sx, %bb.ah ], [ %i.uf, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i ] ; 3 uses
  store i64 %storemerge.i.i1.i, ptr %i.st, align 8, !alias.scope !14105, !noalias !14106
  br i1 %i.so, label %bb.ay, label %.thread108

bb.am:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i45
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14124)
  store i64 %i.sw, ptr %i.st, align 8, !alias.scope !14126, !noalias !14127
  br i1 %i.su, label %bb.ao, label %bb.an, !prof !2537

bb.an:                                            ; preds = %bb.am
  %i.ug = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sq, i64 noundef range(i64 0, -9223372036854775808) %i.ss, i64 noundef %i.sw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sk) #54, !noalias !14128
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i

bb.ao:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14132)
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !alias.scope !14132, !noalias !14134, !noundef !3 ; 4 uses
  %i.uj = icmp samesign ugt i64 %i.ss, 7
  br i1 %i.uj, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.uk = icmp samesign ugt i64 %i.ss, 3
  br i1 %i.uk, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i, label %bb.aq

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i: ; preds = %bb.ao
  %.sroa.014.0.copyload.i.i.i14.i = load i64, ptr %i.sq, align 1, !alias.scope !14135, !noalias !14136
  %i.ul = xor i64 %.sroa.014.0.copyload.i.i.i14.i, %i.sw
  %i.um = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.un = getelementptr i8, ptr %i.um, i64 -8
  %.sroa.016.0.copyload.i.i.i15.i = load i64, ptr %i.un, align 1, !alias.scope !14135, !noalias !14136
  %i.uo = xor i64 %.sroa.016.0.copyload.i.i.i15.i, %i.ui
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i.i6.i = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i.i6.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i, label %bb.ar

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i: ; preds = %bb.ap
  %i.up = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.uq = getelementptr i8, ptr %i.up, i64 -4
  %.sroa.019.0.copyload.i.i.i11.i = load i32, ptr %i.uq, align 1, !alias.scope !14135, !noalias !14136
  %.sroa.018.0.copyload.i.i.i12.i = load i32, ptr %i.sq, align 1, !alias.scope !14135, !noalias !14136
  %i.ur = zext i32 %.sroa.018.0.copyload.i.i.i12.i to i64
  %i.us = xor i64 %i.sw, %i.ur
  %i.ut = zext i32 %.sroa.019.0.copyload.i.i.i11.i to i64
  %i.uu = xor i64 %i.ui, %i.ut
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i

bb.ar:                                            ; preds = %bb.aq
  %i.uv = load i8, ptr %i.sq, align 1, !alias.scope !14135, !noalias !14136, !noundef !3
  %i.uw = lshr i64 %i.ss, 1
  %i.ux = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !alias.scope !14135, !noalias !14136, !noundef !3
  %i.uz = getelementptr i8, ptr %i.sq, i64 %i.ss
  %i.va = getelementptr i8, ptr %i.uz, i64 -1
  %i.vb = load i8, ptr %i.va, align 1, !alias.scope !14135, !noalias !14136, !noundef !3
  %i.vc = zext i8 %i.uv to i64
  %i.vd = xor i64 %i.sw, %i.vc
  %i.ve = zext i8 %i.vb to i64
  %i.vf = shl nuw nsw i64 %i.ve, 8
  %i.vg = zext i8 %i.uy to i64
  %i.vh = or disjoint i64 %i.vf, %i.vg
  %i.vi = xor i64 %i.vh, %i.ui
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i: ; preds = %bb.ar, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i, %bb.aq, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i
  %.sroa.04.0.i.i.i8.i = phi i64 [ %i.uo, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i ], [ %i.uu, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i ], [ %i.vi, %bb.ar ], [ %i.ui, %bb.aq ]
  %.sroa.0.0.i.i.i9.i = phi i64 [ %i.ul, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i ], [ %i.us, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i ], [ %i.vd, %bb.ar ], [ %i.sw, %bb.aq ]
  %i.vj = zext i64 %.sroa.0.0.i.i.i9.i to i128
  %i.vk = zext i64 %.sroa.04.0.i.i.i8.i to i128
  %i.vl = mul nuw i128 %i.vj, %i.vk               ; 2 uses
  %i.vm = lshr i128 %i.vl, 64
  %i.vn = xor i128 %i.vm, %i.vl
  %i.vo = trunc i128 %i.vn to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i

end_hunk_7
begin_hunk_8_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  store i128 %i.xs, ptr %1, align 16, !alias.scope !14158
  %i.xt = add nuw i8 %i.xm, 64
  store i8 %i.xt, ptr %i.c, align 16, !alias.scope !14158
  br i1 %i.xo, label %bb.az, label %.thread112

.thread112:                                       ; preds = %.thread107
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.xv = load i8, ptr %i.xu, align 4, !range !2835, !noundef !3 ; 2 uses
  %i.xw = icmp ne i8 %i.xv, 2                     ; 2 uses
  %i.xx = zext i1 %i.xw to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %.thread99, %.thread108
  %i.xy = phi ptr [ %i.qy, %.thread99 ], [ %.pre159, %.thread108 ]
  %i.xz = phi i64 [ %i.qz, %.thread99 ], [ %i.wy, %.thread108 ]
  %i.ya = phi i128 [ %i.rd, %.thread99 ], [ %.sink.i19.sink.i.ph, %.thread108 ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 2 uses
  %.in147 = load i64, ptr %i.yb, align 8, !range !777, !noundef !3
  %i.yc = icmp ne i64 %.in147, -9223372036854775808 ; 2 uses
  %i.yd = trunc i128 %i.ya to i64
  %i.ye = lshr i128 %i.ya, 64
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yg = xor i64 %i.xz, %i.yd
  %i.yh = load i64, ptr %i.xy, align 8, !noalias !14158, !noundef !3
  %i.yi = zext i64 %i.yg to i128
  %i.yj = zext i64 %i.yh to i128
  %i.yk = xor i128 %i.ye, %i.yj
  %i.yl = mul nuw i128 %i.yk, %i.yi               ; 2 uses
  %i.ym = lshr i128 %i.yl, 64
  %i.yn = xor i128 %i.ym, %i.yl
  %i.yo = trunc i128 %i.yn to i64
  store i64 %i.yo, ptr %i.yf, align 8, !alias.scope !14158
  %i.yp = zext i1 %i.yc to i128
  store i128 %i.yp, ptr %1, align 16, !alias.scope !14158
  store i8 64, ptr %i.c, align 16, !alias.scope !14158
  br i1 %i.yc, label %bb.az, label %.thread113

.thread113:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.yr = load i8, ptr %i.yq, align 4, !range !2835, !noundef !3 ; 2 uses
  %i.ys = icmp ne i8 %i.yr, 2                     ; 2 uses
  %i.yt = zext i1 %i.ys to i64
  br label %._crit_edge

bb.az:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, %.thread107
  %i.yu = phi ptr [ %i.xn, %.thread107 ], [ %i.yb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6 ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.yu, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr111 = load i8, ptr %i.c, align 16, !alias.scope !14166 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.yw = load i8, ptr %i.yv, align 4, !range !2835, !noundef !3 ; 3 uses
  %i.yx = icmp ne i8 %i.yw, 2                     ; 3 uses
  %i.yy = zext i1 %i.yx to i64                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14172)
  %i.yz = icmp ugt i8 %.pr111, 64
  %.pre161 = load i128, ptr %1, align 16, !alias.scope !14166 ; 2 uses
  br i1 %i.yz, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, label %._crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge: ; preds = %bb.az
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre163 = load i64, ptr %.phi.trans.insert162, align 8, !alias.scope !14166
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

._crit_edge:                                      ; preds = %bb.az, %.thread113
  %i.za = phi i128 [ 0, %.thread113 ], [ %.pre161, %bb.az ]
  %i.zb = phi i64 [ %i.yt, %.thread113 ], [ %i.yy, %bb.az ]
  %i.zc = phi i1 [ %i.ys, %.thread113 ], [ %i.yx, %bb.az ]
  %i.zd = phi i8 [ %i.yr, %.thread113 ], [ %i.yw, %bb.az ] ; 2 uses
  %i.ze = phi i8 [ 64, %.thread113 ], [ %.pr111, %bb.az ] ; 3 uses
  %i.zf = zext nneg i64 %i.zb to i128
  %i.zg = zext nneg i8 %i.ze to i128
  %i.zh = shl nuw nsw i128 %i.zf, %i.zg
  %i.zi = or i128 %i.zh, %i.za                    ; 5 uses
  store i128 %i.zi, ptr %1, align 16, !alias.scope !14166
  %i.zj = add nuw i8 %i.ze, 64                    ; 2 uses
  store i8 %i.zj, ptr %i.c, align 16, !alias.scope !14166
  br i1 %i.zc, label %bb.ba, label %bb.bc

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge, %.thread112
  %i.zk = phi i64 [ %i.xk, %.thread112 ], [ %.pre163, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.zl = phi i128 [ %i.xs, %.thread112 ], [ %.pre161, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ] ; 2 uses
  %i.zm = phi i64 [ %i.xx, %.thread112 ], [ %i.yy, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ] ; 2 uses
  %i.zn = phi i1 [ %i.xw, %.thread112 ], [ %i.yx, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.zo = phi i8 [ %i.xv, %.thread112 ], [ %i.yw, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4_crit_edge ]
  %i.zp = trunc i128 %i.zl to i64
  %i.zq = lshr i128 %i.zl, 64
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zs = xor i64 %i.zk, %i.zp
  %i.zt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zu = load ptr, ptr %i.zt, align 16, !alias.scope !14166, !nonnull !3, !align !100, !noundef !3
  %i.zv = load i64, ptr %i.zu, align 8, !noalias !14166, !noundef !3
  %i.zw = zext i64 %i.zs to i128
  %i.zx = zext i64 %i.zv to i128
  %i.zy = xor i128 %i.zq, %i.zx
  %i.zz = mul nuw i128 %i.zy, %i.zw               ; 2 uses
  %i.aaa = lshr i128 %i.zz, 64
  %i.aab = xor i128 %i.aaa, %i.zz
  %i.aac = trunc i128 %i.aab to i64
  store i64 %i.aac, ptr %i.zr, align 8, !alias.scope !14166
  %i.aad = zext nneg i64 %i.zm to i128            ; 3 uses
  store i128 %i.aad, ptr %1, align 16, !alias.scope !14166
  store i8 64, ptr %i.c, align 16, !alias.scope !14166
  br i1 %i.zn, label %.thread115, label %.thread118

.thread118:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.aaf = load i64, ptr %i.aae, align 8, !range !777, !noundef !3
  %.not190 = icmp eq i64 %i.aaf, -9223372036854775808 ; 2 uses
  %i.aag = select i1 %.not190, i128 0, i128 18446744073709551616
  %i.aah = or disjoint i128 %i.aag, %i.aad        ; 3 uses
  store i128 %i.aah, ptr %1, align 16, !alias.scope !14173
  store i8 -128, ptr %i.c, align 16, !alias.scope !14173
  br i1 %.not190, label %.thread123, label %bb.bf

bb.ba:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14184)
  %.not150 = icmp eq i8 %i.ze, 0
  br i1 %.not150, label %.thread115, label %bb.bb

.thread115:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %bb.ba
  %i.aai = phi i128 [ %i.zi, %bb.ba ], [ %i.aad, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.aaj = phi i8 [ %i.zd, %bb.ba ], [ %i.zo, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.aak = zext nneg i8 %i.aaj to i128
  %i.aal = shl nuw nsw i128 %i.aak, 64
  %i.aam = or i128 %i.aal, %i.aai
  br label %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bb:                                            ; preds = %bb.ba
  %i.aan = trunc i128 %i.zi to i64
  %i.aao = lshr i128 %i.zi, 64
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aaq = load i64, ptr %i.aap, align 8, !alias.scope !14187, !noundef !3
  %i.aar = xor i64 %i.aaq, %i.aan
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aat = load ptr, ptr %i.aas, align 16, !alias.scope !14187, !nonnull !3, !align !100, !noundef !3
  %i.aau = load i64, ptr %i.aat, align 8, !noalias !14187, !noundef !3
  %i.aav = zext i64 %i.aar to i128
  %i.aaw = zext i64 %i.aau to i128
  %i.aax = xor i128 %i.aao, %i.aaw
  %i.aay = mul nuw i128 %i.aax, %i.aav            ; 2 uses
  %i.aaz = lshr i128 %i.aay, 64
  %i.aba = xor i128 %i.aaz, %i.aay
  %i.abb = trunc i128 %i.aba to i64
  store i64 %i.abb, ptr %i.aap, align 8, !alias.scope !14187
  %i.abc = zext nneg i8 %i.zd to i128
  br label %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread115, %bb.bb
  %.sink.i48 = phi i128 [ %i.abc, %bb.bb ], [ %i.aam, %.thread115 ] ; 2 uses
  %storemerge.i.i.i49 = phi i8 [ 64, %bb.bb ], [ -128, %.thread115 ] ; 2 uses
  store i128 %.sink.i48, ptr %1, align 16, !alias.scope !14187
  store i8 %storemerge.i.i.i49, ptr %i.c, align 16, !alias.scope !14187
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.abd = phi i128 [ %i.zi, %._crit_edge ], [ %.sink.i48, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.abe = phi i8 [ %i.zj, %._crit_edge ], [ %storemerge.i.i.i49, %_RINvXsu6_NtCs4lawaffTVVK_9sqlparser3astNtB7_28FunctionDeterminismSpecifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.abg = load i64, ptr %i.abf, align 8, !range !777, !noundef !3
  %i.abh = icmp ne i64 %i.abg, -9223372036854775808 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14189)
  %i.abi = icmp ugt i8 %i.abe, 64
  br i1 %i.abi, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.abj = select i1 %i.abh, i128 18446744073709551616, i128 0
  %i.abk = or i128 %i.abd, %i.abj                 ; 3 uses
  store i128 %i.abk, ptr %1, align 16, !alias.scope !14173
  store i8 -128, ptr %i.c, align 16, !alias.scope !14173
  %extract.t193 = trunc i128 %i.abd to i64
  br i1 %i.abh, label %bb.bf, label %.thread123

.thread123:                                       ; preds = %.thread118, %bb.bd
  %i.abl = phi i128 [ %i.aah, %.thread118 ], [ %i.abk, %bb.bd ]
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.abn = load i64, ptr %i.abm, align 8, !range !777, !noundef !3
  %i.abo = icmp ne i64 %i.abn, -9223372036854775808 ; 2 uses
  %i.abp = zext i1 %i.abo to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.bc
  %i.abq = trunc i128 %i.abd to i64
  %i.abr = lshr i128 %i.abd, 64
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.abt = load i64, ptr %i.abs, align 8, !alias.scope !14173, !noundef !3
  %i.abu = xor i64 %i.abt, %i.abq
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abw = load ptr, ptr %i.abv, align 16, !alias.scope !14173, !nonnull !3, !align !100, !noundef !3
  %i.abx = load i64, ptr %i.abw, align 8, !noalias !14173, !noundef !3
  %i.aby = zext i64 %i.abu to i128
  %i.abz = zext i64 %i.abx to i128
  %i.aca = xor i128 %i.abr, %i.abz
  %i.acb = mul nuw i128 %i.aca, %i.aby            ; 2 uses
  %i.acc = lshr i128 %i.acb, 64
  %i.acd = xor i128 %i.acc, %i.acb
  %i.ace = trunc i128 %i.acd to i64
  store i64 %i.ace, ptr %i.abs, align 8, !alias.scope !14173
  %i.acf = zext i1 %i.abh to i128                 ; 2 uses
  store i128 %i.acf, ptr %1, align 16, !alias.scope !14173
  store i8 64, ptr %i.c, align 16, !alias.scope !14173
  br i1 %i.abh, label %bb.be, label %.thread124

.thread124:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.ach = load i64, ptr %i.acg, align 8, !range !777, !noundef !3
  %i.aci = icmp ne i64 %i.ach, -9223372036854775808 ; 2 uses
  %i.acj = zext i1 %i.aci to i64
  br label %._crit_edge164

bb.be:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.acl = load ptr, ptr %i.ack, align 8, !nonnull !3, !noundef !3
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.acn = load i64, ptr %i.acm, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14196)
  %i.aco = zext i64 %i.acn to i128
  %i.acp = shl nuw i128 %i.aco, 64
  %i.acq = or disjoint i128 %i.acp, %i.acf
  br label %bb.bg

bb.bf:                                            ; preds = %.thread118, %bb.bd
  %i.acr = phi i128 [ %i.aah, %.thread118 ], [ %i.abk, %bb.bd ]
  %.off0191 = phi i64 [ %i.zm, %.thread118 ], [ %extract.t193, %bb.bd ]
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.act = load ptr, ptr %i.acs, align 8, !nonnull !3, !noundef !3
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.acv = load i64, ptr %i.acu, align 8, !noundef !3 ; 2 uses
  %i.acw = lshr i128 %i.acr, 64
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.acy = load i64, ptr %i.acx, align 8, !alias.scope !14199, !noundef !3
  %i.acz = xor i64 %i.acy, %.off0191
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adb = load ptr, ptr %i.ada, align 16, !alias.scope !14199, !nonnull !3, !align !100, !noundef !3
  %i.adc = load i64, ptr %i.adb, align 8, !noalias !14199, !noundef !3
  %i.add = zext i64 %i.acz to i128
  %i.ade = zext i64 %i.adc to i128
  %i.adf = xor i128 %i.acw, %i.ade
  %i.adg = mul nuw i128 %i.adf, %i.add            ; 2 uses
  %i.adh = lshr i128 %i.adg, 64
  %i.adi = xor i128 %i.adh, %i.adg
  %i.adj = trunc i128 %i.adi to i64
  store i64 %i.adj, ptr %i.acx, align 8, !alias.scope !14199
  %i.adk = zext i64 %i.acv to i128
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.adl = phi i64 [ %i.acv, %bb.bf ], [ %i.acn, %bb.be ]
  %i.adm = phi ptr [ %i.act, %bb.bf ], [ %i.acl, %bb.be ]
  %.sink.i50 = phi i128 [ %i.adk, %bb.bf ], [ %i.acq, %bb.be ]
  %storemerge.i.i.i51 = phi i8 [ 64, %bb.bf ], [ -128, %bb.be ]
  store i128 %.sink.i50, ptr %1, align 16, !alias.scope !14199
  store i8 %storemerge.i.i.i51, ptr %i.c, align 16, !alias.scope !14199
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.adm, i64 noundef %i.adl, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %.pr122 = load i8, ptr %i.c, align 16, !alias.scope !14200 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.ado = load i64, ptr %i.adn, align 8, !range !777, !noundef !3
  %i.adp = icmp ne i64 %i.ado, -9223372036854775808 ; 3 uses
  %i.adq = zext i1 %i.adp to i64                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14206)
  %i.adr = icmp ugt i8 %.pr122, 64
  %.pre166 = load i128, ptr %1, align 16, !alias.scope !14200 ; 2 uses
  br i1 %i.adr, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.bg, %.thread124
  %i.ads = phi i128 [ 0, %.thread124 ], [ %.pre166, %bb.bg ]
  %i.adt = phi i64 [ %i.acj, %.thread124 ], [ %i.adq, %bb.bg ]
  %i.adu = phi i1 [ %i.aci, %.thread124 ], [ %i.adp, %bb.bg ]
  %i.adv = phi i8 [ 64, %.thread124 ], [ %.pr122, %bb.bg ] ; 3 uses
  %i.adw = zext nneg i64 %i.adt to i128
  %i.adx = zext nneg i8 %i.adv to i128
  %i.ady = shl nuw nsw i128 %i.adw, %i.adx
  %i.adz = or i128 %i.ady, %i.ads                 ; 4 uses
  store i128 %i.adz, ptr %1, align 16, !alias.scope !14200
  %i.aea = add nuw i8 %i.adv, 64
  store i8 %i.aea, ptr %i.c, align 16, !alias.scope !14200
  br i1 %i.adu, label %bb.bh, label %bb.bk

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.bg, %.thread123
  %i.aeb = phi i128 [ %i.abl, %.thread123 ], [ %.pre166, %bb.bg ] ; 2 uses
  %i.aec = phi i64 [ %i.abp, %.thread123 ], [ %i.adq, %bb.bg ]
  %i.aed = phi i1 [ %i.abo, %.thread123 ], [ %i.adp, %bb.bg ]
  %i.aee = trunc i128 %i.aeb to i64
  %i.aef = lshr i128 %i.aeb, 64
  %i.aeg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8, !alias.scope !14200, !noundef !3
  %i.aei = xor i64 %i.aeh, %i.aee
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aek = load ptr, ptr %i.aej, align 16, !alias.scope !14200, !nonnull !3, !align !100, !noundef !3
  %i.ael = load i64, ptr %i.aek, align 8, !noalias !14200, !noundef !3
  %i.aem = zext i64 %i.aei to i128
  %i.aen = zext i64 %i.ael to i128
  %i.aeo = xor i128 %i.aef, %i.aen
  %i.aep = mul nuw i128 %i.aeo, %i.aem            ; 2 uses
  %i.aeq = lshr i128 %i.aep, 64
  %i.aer = xor i128 %i.aeq, %i.aep
  %i.aes = trunc i128 %i.aer to i64
  store i64 %i.aes, ptr %i.aeg, align 8, !alias.scope !14200
  %i.aet = zext nneg i64 %i.aec to i128           ; 2 uses
  store i128 %i.aet, ptr %1, align 16, !alias.scope !14200
  store i8 64, ptr %i.c, align 16, !alias.scope !14200
  br i1 %i.aed, label %.thread126, label %bb.bk

.thread126:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %.val128 = load ptr, ptr %i.aeu, align 8, !nonnull !3, !noundef !3
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %.val28129 = load i64, ptr %i.aev, align 8, !noundef !3
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge164
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %.val = load ptr, ptr %i.aew, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %.val28 = load i64, ptr %i.aex, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14219)
  %.not152 = icmp eq i8 %i.adv, 0
  br i1 %.not152, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread126, %bb.bh
  %i.aey = phi i128 [ %i.aet, %.thread126 ], [ %i.adz, %bb.bh ]
  %.val28133 = phi i64 [ %.val28129, %.thread126 ], [ %.val28, %bb.bh ] ; 2 uses
  %.val132 = phi ptr [ %.val128, %.thread126 ], [ %.val, %bb.bh ]
  %i.aez = zext i64 %.val28133 to i128
  %i.afa = shl nuw i128 %i.aez, 64
  %i.afb = or i128 %i.aey, %i.afa
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit55

bb.bj:                                            ; preds = %bb.bh
  %i.afc = trunc i128 %i.adz to i64
  %i.afd = lshr i128 %i.adz, 64
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aff = load i64, ptr %i.afe, align 8, !alias.scope !14222, !noundef !3
  %i.afg = xor i64 %i.aff, %i.afc
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.afi = load ptr, ptr %i.afh, align 16, !alias.scope !14222, !nonnull !3, !align !100, !noundef !3
  %i.afj = load i64, ptr %i.afi, align 8, !noalias !14222, !noundef !3
  %i.afk = zext i64 %i.afg to i128
  %i.afl = zext i64 %i.afj to i128
  %i.afm = xor i128 %i.afd, %i.afl
  %i.afn = mul nuw i128 %i.afm, %i.afk            ; 2 uses
  %i.afo = lshr i128 %i.afn, 64
  %i.afp = xor i128 %i.afo, %i.afn
  %i.afq = trunc i128 %i.afp to i64
  store i64 %i.afq, ptr %i.afe, align 8, !alias.scope !14222
  %i.afr = zext i64 %.val28 to i128
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit55

_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit55: ; preds = %bb.bi, %bb.bj
  %.val28134 = phi i64 [ %.val28, %bb.bj ], [ %.val28133, %bb.bi ]
  %.val131 = phi ptr [ %.val, %bb.bj ], [ %.val132, %bb.bi ]
  %.sink.i.i.i53 = phi i128 [ %i.afr, %bb.bj ], [ %i.afb, %bb.bi ]
  %storemerge.i.i.i.i.i54 = phi i8 [ 64, %bb.bj ], [ -128, %bb.bi ]
  store i128 %.sink.i.i.i53, ptr %1, align 16, !alias.scope !14222
  store i8 %storemerge.i.i.i.i.i54, ptr %i.c, align 16, !alias.scope !14222
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val131, i64 noundef %.val28134, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge164, %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit55, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [1 x i8], align 1                ; 4 uses
  %i.ab = alloca [1 x i8], align 1                ; 4 uses
  %i.ac = alloca [1 x i8], align 1                ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.ae = load i8, ptr %i.ad, align 8, !range !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14223
  store i8 %i.ae, ptr %i.ac, align 1, !noalias !14223
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14223
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2681
  %i.ag = load i8, ptr %i.af, align 1, !range !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14226
  store i8 %i.ag, ptr %i.ab, align 1, !noalias !14226
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 1) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14226
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2682
  %i.ai = load i8, ptr %i.ah, align 2, !range !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14229
  store i8 %i.ai, ptr %i.aa, align 1, !noalias !14229
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 1) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14229
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2683
  %i.ak = load i8, ptr %i.aj, align 1, !range !492, !noundef !3
end_hunk_8
begin_hunk_9_@_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.xa = load i64, ptr %i.wz, align 8, !alias.scope !15302, !noundef !3
  %i.xb = xor i64 %i.xa, %i.wx
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xd = load ptr, ptr %i.xc, align 16, !alias.scope !15302, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  %i.xe = load i64, ptr %i.xd, align 8, !noalias !15302, !noundef !3
  %i.xf = zext i64 %i.xb to i128
  %i.xg = zext i64 %i.xe to i128
  %i.xh = xor i128 %i.wy, %i.xg
  %i.xi = mul nuw i128 %i.xh, %i.xf               ; 2 uses
  %i.xj = lshr i128 %i.xi, 64
  %i.xk = xor i128 %i.xj, %i.xi
  %i.xl = trunc i128 %i.xk to i64                 ; 3 uses
  store i64 %i.xl, ptr %i.wz, align 8, !alias.scope !15302
  %i.xm = zext nneg i64 %i.wt to i128             ; 2 uses
  store i128 %i.xm, ptr %1, align 16, !alias.scope !15302
  store i8 64, ptr %i.c, align 16, !alias.scope !15302
  br i1 %i.wu, label %.thread90, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread90:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %.not101 = icmp eq i8 %i.wv, 2                  ; 2 uses
  %i.xn = select i1 %.not101, i128 0, i128 18446744073709551616
  %i.xo = or disjoint i128 %i.xn, %i.xm           ; 2 uses
  br i1 %.not101, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge

bb.x:                                             ; preds = %._crit_edge123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15312)
  %.not99 = icmp eq i8 %i.wk, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15317)
  %.not98 = icmp eq i8 %i.wm, 0
  %.phi.trans.insert132 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre133 = load i64, ptr %.phi.trans.insert132, align 8, !alias.scope !15312, !noalias !15309 ; 3 uses
  br i1 %.not98, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i: ; preds = %bb.x
  %i.xp = select i1 %.not99, i128 0, i128 18446744073709551616
  %i.xq = or i128 %i.wq, %i.xp                    ; 2 uses
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre135 = load ptr, ptr %.phi.trans.insert134, align 16, !alias.scope !15312, !noalias !15309 ; 2 uses
  br i1 %.not99, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i: ; preds = %bb.x
  %i.xr = trunc i128 %i.wq to i64
  %i.xs = lshr i128 %i.wq, 64
  %i.xt = xor i64 %.pre133, %i.xr
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xv = load ptr, ptr %i.xu, align 16, !alias.scope !15320, !noalias !15309, !nonnull !3, !align !100, !noundef !3 ; 4 uses
  %i.xw = load i64, ptr %i.xv, align 8, !noalias !15321, !noundef !3
  %i.xx = zext i64 %i.xt to i128
  %i.xy = zext i64 %i.xw to i128
  %i.xz = xor i128 %i.xs, %i.xy
  %i.ya = mul nuw i128 %i.xz, %i.xx               ; 2 uses
  %i.yb = lshr i128 %i.ya, 64
  %i.yc = xor i128 %i.yb, %i.ya
  %i.yd = trunc i128 %i.yc to i64                 ; 4 uses
  store i64 %i.yd, ptr %.phi.trans.insert132, align 8, !alias.scope !15320, !noalias !15309
  br i1 %.not99, label %.thread14.i, label %.thread.i

.thread14.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 713
  %i.yf = load i8, ptr %i.ye, align 1, !range !2835, !alias.scope !15309, !noalias !15312, !noundef !3 ; 2 uses
  %.not100 = icmp eq i8 %i.yf, 2
  br i1 %.not100, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i, label %bb.y

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread.i
  %i.yg = zext nneg i8 %i.wk to i128
  %i.yh = shl nuw nsw i128 %i.yg, 64
  %i.yi = or disjoint i128 %i.yh, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %.thread90
  %i.yj = phi ptr [ %i.xd, %.thread90 ], [ %.pre135, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %i.yk = phi i64 [ %i.xl, %.thread90 ], [ %.pre133, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %i.yl = phi i128 [ %i.xo, %.thread90 ], [ %i.xq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 2 uses
  %i.ym = phi ptr [ %i.ww, %.thread90 ], [ %i.wl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %i.yn = phi i8 [ %i.wv, %.thread90 ], [ %i.wk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15325)
  %i.yo = trunc i128 %i.yl to i64
  %i.yp = lshr i128 %i.yl, 64
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yr = xor i64 %i.yk, %i.yo
  %i.ys = load i64, ptr %i.yj, align 8, !noalias !15328, !noundef !3
  %i.yt = zext i64 %i.yr to i128
  %i.yu = zext i64 %i.ys to i128
  %i.yv = xor i128 %i.yp, %i.yu
  %i.yw = mul nuw i128 %i.yv, %i.yt               ; 2 uses
  %i.yx = lshr i128 %i.yw, 64
  %i.yy = xor i128 %i.yx, %i.yw
  %i.yz = trunc i128 %i.yy to i64                 ; 3 uses
  store i64 %i.yz, ptr %i.yq, align 8, !alias.scope !15329, !noalias !15309
  %i.za = zext nneg i8 %i.yn to i128
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  %i.zc = load i8, ptr %i.zb, align 1, !range !2835, !alias.scope !15309, !noalias !15312, !noundef !3 ; 2 uses
  %.not103 = icmp eq i8 %i.zc, 2                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15333)
  %i.zd = select i1 %.not103, i128 0, i128 256
  %i.ze = or disjoint i128 %i.zd, %i.za           ; 2 uses
  br i1 %.not103, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i, label %bb.y

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i: ; preds = %.thread14.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge
  %.pre29.i = phi ptr [ %i.xv, %.thread14.i ], [ %i.yj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %.pre.i = phi i64 [ %i.yd, %.thread14.i ], [ %i.yz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.zf = phi i128 [ 0, %.thread14.i ], [ %i.ze, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.zg = phi ptr [ %i.wl, %.thread14.i ], [ %i.ym, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %.pre30.i = load i64, ptr %.pre29.i, align 8, !noalias !15336
  %.pre31.i = zext i64 %.pre30.i to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, %.thread.i, %.thread90
  %i.zh = phi ptr [ %i.xd, %.thread90 ], [ %i.xv, %.thread.i ], [ %.pre135, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %i.zi = phi i64 [ %i.xl, %.thread90 ], [ %i.yd, %.thread.i ], [ %.pre133, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ]
  %.ph = phi ptr [ %i.ww, %.thread90 ], [ %i.wl, %.thread.i ], [ %i.wl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 3 uses
  %.ph94 = phi i128 [ %i.xo, %.thread90 ], [ %i.yi, %.thread.i ], [ %i.xq, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.ph, i64 1
  %i.zk = load i8, ptr %i.zj, align 1, !range !2835, !alias.scope !15309, !noalias !15312, !noundef !3 ; 2 uses
  %.not102 = icmp eq i8 %i.zk, 2
  %i.zl = trunc i128 %.ph94 to i64
  %i.zm = lshr i128 %.ph94, 64
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zo = xor i64 %i.zi, %i.zl
  %i.zp = load i64, ptr %i.zh, align 8, !noalias !15341, !noundef !3 ; 2 uses
  %i.zq = zext i64 %i.zo to i128
  %i.zr = zext i64 %i.zp to i128                  ; 2 uses
  %i.zs = xor i128 %i.zm, %i.zr
  %i.zt = mul nuw i128 %i.zs, %i.zq               ; 2 uses
  %i.zu = lshr i128 %i.zt, 64
  %i.zv = xor i128 %i.zu, %i.zt
  %i.zw = trunc i128 %i.zv to i64                 ; 3 uses
  store i64 %i.zw, ptr %i.zn, align 8, !alias.scope !15342, !noalias !15309
  br i1 %.not102, label %.thread19.i, label %.thread20.i

.thread20.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15346)
  %i.zx = zext nneg i8 %i.zk to i128
  %i.zy = shl nuw nsw i128 %i.zx, 64
  %i.zz = or disjoint i128 %i.zy, 1
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

bb.y:                                             ; preds = %.thread14.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge
  %i.aaa = phi ptr [ %i.xv, %.thread14.i ], [ %i.yj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aab = phi i64 [ %i.yd, %.thread14.i ], [ %i.yz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aac = phi i128 [ 18446744073709551616, %.thread14.i ], [ %i.ze, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ] ; 2 uses
  %i.aad = phi i8 [ %i.yf, %.thread14.i ], [ %i.zc, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aae = phi ptr [ %i.wl, %.thread14.i ], [ %i.ym, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i._crit_edge ]
  %i.aaf = trunc i128 %i.aac to i64
  %i.aag = lshr i128 %i.aac, 64
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aai = xor i64 %i.aab, %i.aaf
  %i.aaj = load i64, ptr %i.aaa, align 8, !noalias !15349, !noundef !3 ; 2 uses
  %i.aak = zext i64 %i.aai to i128
  %i.aal = zext i64 %i.aaj to i128
  %i.aam = xor i128 %i.aag, %i.aal
  %i.aan = mul nuw i128 %i.aam, %i.aak            ; 2 uses
  %i.aao = lshr i128 %i.aan, 64
  %i.aap = xor i128 %i.aao, %i.aan
  %i.aaq = trunc i128 %i.aap to i64               ; 2 uses
  store i64 %i.aaq, ptr %i.aah, align 8, !alias.scope !15350, !noalias !15309
  %i.aar = zext nneg i8 %i.aad to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15352)
  br label %.thread19.i

.thread19.i:                                      ; preds = %bb.y, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i
  %i.aas = phi ptr [ %.ph, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aae, %bb.y ]
  %i.aat = phi i64 [ %i.zp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aaj, %bb.y ]
  %i.aau = phi i64 [ %i.zw, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aaq, %bb.y ]
  %i.aav = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ %i.aar, %bb.y ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.aaw = load i8, ptr %.in.i, align 1, !range !2835, !alias.scope !15309, !noalias !15312, !noundef !3 ; 2 uses
  %.not.i42 = icmp eq i8 %i.aaw, 2                ; 2 uses
  %i.aax = select i1 %.not.i42, i128 0, i128 18446744073709551616
  %i.aay = or disjoint i128 %i.aax, %i.aav
  store i128 %i.aay, ptr %1, align 16, !alias.scope !15353, !noalias !15309
  store i8 -128, ptr %i.c, align 16, !alias.scope !15353, !noalias !15309
  br i1 %.not.i42, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aa

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %.thread20.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i
  %i.aaz = phi ptr [ %i.zg, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %.ph, %.thread20.i ]
  %.pre-phi.i = phi i128 [ %.pre31.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.zr, %.thread20.i ]
  %i.aba = phi i64 [ %.pre.i, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.zw, %.thread20.i ]
  %i.abb = phi i128 [ %i.zf, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge.i ], [ %i.zz, %.thread20.i ] ; 2 uses
  %.in27.i = getelementptr inbounds nuw i8, ptr %i.aaz, i64 2
  %i.abc = load i8, ptr %.in27.i, align 1, !range !2835, !alias.scope !15309, !noalias !15312, !noundef !3 ; 2 uses
  %i.abd = icmp ne i8 %i.abc, 2                   ; 2 uses
  %i.abe = trunc i128 %i.abb to i64
  %i.abf = lshr i128 %i.abb, 64
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abh = xor i64 %i.aba, %i.abe
  %i.abi = zext i64 %i.abh to i128
  %i.abj = xor i128 %i.abf, %.pre-phi.i
  %i.abk = mul nuw i128 %i.abj, %i.abi            ; 2 uses
  %i.abl = lshr i128 %i.abk, 64
  %i.abm = xor i128 %i.abl, %i.abk
  %i.abn = trunc i128 %i.abm to i64
  store i64 %i.abn, ptr %i.abg, align 8, !alias.scope !15353, !noalias !15309
  %i.abo = zext i1 %i.abd to i128                 ; 2 uses
  store i128 %i.abo, ptr %1, align 16, !alias.scope !15353, !noalias !15309
  store i8 64, ptr %i.c, align 16, !alias.scope !15353, !noalias !15309
  br i1 %i.abd, label %bb.z, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.abp = zext nneg i8 %i.abc to i128
  %i.abq = shl nuw nsw i128 %i.abp, 64
  %i.abr = or disjoint i128 %i.abq, %i.abo
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i

bb.aa:                                            ; preds = %.thread19.i
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abt = zext i64 %i.aau to i128
  %i.abu = xor i128 %i.aav, %i.abt
  %i.abv = xor i64 %i.aat, 1
  %i.abw = zext i64 %i.abv to i128
  %i.abx = mul nuw i128 %i.abu, %i.abw            ; 2 uses
  %i.aby = lshr i128 %i.abx, 64
  %i.abz = xor i128 %i.aby, %i.abx
  %i.aca = trunc i128 %i.abz to i64
  store i64 %i.aca, ptr %i.abs, align 8, !alias.scope !15354, !noalias !15309
  %i.acb = zext nneg i8 %i.aaw to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i: ; preds = %bb.aa, %bb.z
  %storemerge.i = phi i128 [ %i.acb, %bb.aa ], [ %i.abr, %bb.z ]
  %storemerge.i.i7.i = phi i8 [ 8, %bb.aa ], [ 72, %bb.z ]
  store i128 %storemerge.i, ptr %1, align 16, !alias.scope !15354, !noalias !15309
  store i8 %storemerge.i.i7.i, ptr %i.c, align 16, !alias.scope !15354, !noalias !15309
  br label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, %.thread19.i, %._crit_edge123, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs9K_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13CreateTriggerNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [1 x i8], align 1                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [1 x i8], align 1                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [1 x i8], align 1                ; 4 uses
  %i.ai = alloca [1 x i8], align 1                ; 4 uses
  %i.aj = alloca [1 x i8], align 1                ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.al = load i8, ptr %i.ak, align 8, !range !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !15359
  store i8 %i.al, ptr %i.aj, align 1, !noalias !15359
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef 1) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !15359
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 705
  %i.an = load i8, ptr %i.am, align 1, !range !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !15362
  store i8 %i.an, ptr %i.ai, align 1, !noalias !15362
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 1) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !15362
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 706
  %i.ap = load i8, ptr %i.ao, align 2, !range !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !15365
  store i8 %i.ap, ptr %i.ah, align 1, !noalias !15365
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef 1) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15365
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val4 = load ptr, ptr %i.aq, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val5 = load i64, ptr %i.ar, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !15368
  store i64 %.val5, ptr %i.ag, align 8, !noalias !15368
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15368
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val4, i64 noundef %.val5, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 711
  %.val6 = load i8, ptr %i.as, align 1, !range !2644, !noundef !3
  %i.at = zext nneg i8 %.val6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !15377
  store i64 %i.at, ptr %i.af, align 8, !noalias !15377
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !15377
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 707
  %i.av = load i8, ptr %i.au, align 1, !range !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !15384
  store i8 %i.av, ptr %i.ae, align 1, !noalias !15384
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 1) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !15384
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.az = load i64, ptr %i.ay, align 8, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !15387
  store i64 %i.az, ptr %i.ad, align 8, !noalias !15387
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !15387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15392)
  %.idx.i = mul nuw nsw i64 %i.az, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB6_12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.0.03.i = phi ptr [ %i.bc, %_RINvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB6_12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ax, %bb.a ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15395)
  %i.bd = load i64, ptr %.sroa.0.03.i, align 8, !range !3411, !alias.scope !15398, !noalias !15399, !noundef !3 ; 3 uses
  %i.be = icmp ne i64 %i.bd, -9223372036854775807
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = xor i64 %i.bd, -9223372036854775808
  %i.bg = icmp slt i64 %i.bd, 0
  %i.bh = select i1 %i.bg, i64 %i.bf, i64 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !15402
  store i64 %i.bh, ptr %i.ac, align 8, !noalias !15402
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 8) #50, !noalias !15398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !15402
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.b, label %_RINvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB6_12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !15398, !noalias !15399, !nonnull !3, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !15398, !noalias !15399, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !15407
  store i64 %i.bm, ptr %i.ab, align 8, !noalias !15407
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8) #50, !noalias !15398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !15407
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bk, i64 noundef %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !15398
  br label %_RINvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB6_12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB6_12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.bn = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bn, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast7triggerNtB6_12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val2 = load ptr, ptr %i.bo, align 8, !nonnull !3, !noundef !3
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val3 = load i64, ptr %i.bp, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !15412
  store i64 %.val3, ptr %i.aa, align 8, !noalias !15412
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !15412
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val2, i64 noundef %.val3, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.br = load i64, ptr %i.bq, align 8, !range !777, !noundef !3
  %i.bs = icmp ne i64 %i.br, -9223372036854775808 ; 2 uses
  %i.bt = zext i1 %i.bs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !15421
  store i64 %i.bt, ptr %i.z, align 8, !noalias !15421
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !15421
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.val = load ptr, ptr %i.bu, align 8, !nonnull !3, !noundef !3
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val1 = load i64, ptr %i.bv, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !15426
  store i64 %.val1, ptr %i.y, align 8, !noalias !15426
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !15426
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bz = load i64, ptr %i.by, align 8, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15435
  store i64 %i.bz, ptr %i.x, align 8, !noalias !15435
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15440)
  %.idx.i8 = shl nuw nsw i64 %i.bz, 5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i8
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger18TriggerReferencingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i9

end_hunk_9
begin_hunk_10_@_RINvXsbR_NtCs4lawaffTVVK_9sqlparser3astNtB7_3SetNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jt = load ptr, ptr %i.js, align 16, !alias.scope !18038, !noalias !18010, !nonnull !3, !align !100, !noundef !3
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !18039, !noundef !3
  %i.jv = zext i64 %i.jr to i128
  %i.jw = zext i64 %i.ju to i128
  %i.jx = xor i128 %i.jo, %i.jw
  %i.jy = mul nuw i128 %i.jx, %i.jv               ; 2 uses
  %i.jz = lshr i128 %i.jy, 64
  %i.ka = xor i128 %i.jz, %i.jy
  %i.kb = trunc i128 %i.ka to i64
  store i64 %i.kb, ptr %i.jp, align 8, !alias.scope !18038, !noalias !18010
  %i.kc = zext nneg i8 %.val2.i.i to i128
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ag:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18043)
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !18045, !noalias !18046, !nonnull !3, !noundef !3
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !18045, !noalias !18046, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18053)
  br i1 %i.ee, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kh = zext i64 %i.kg to i128
  %i.ki = shl nuw i128 %i.kh, 64
  %i.kj = or i128 %i.ki, %i.ey
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i

bb.ai:                                            ; preds = %bb.ag
  %i.kk = trunc i128 %i.ey to i64
  %i.kl = lshr i128 %i.ey, 64
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !alias.scope !18056, !noalias !18045, !noundef !3
  %i.ko = xor i64 %i.kn, %i.kk
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kq = load ptr, ptr %i.kp, align 16, !alias.scope !18056, !noalias !18045, !nonnull !3, !align !100, !noundef !3
  %i.kr = load i64, ptr %i.kq, align 8, !noalias !18057, !noundef !3
  %i.ks = zext i64 %i.ko to i128
  %i.kt = zext i64 %i.kr to i128
  %i.ku = xor i128 %i.kl, %i.kt
  %i.kv = mul nuw i128 %i.ku, %i.ks               ; 2 uses
  %i.kw = lshr i128 %i.kv, 64
  %i.kx = xor i128 %i.kw, %i.kv
  %i.ky = trunc i128 %i.kx to i64
  store i64 %i.ky, ptr %i.km, align 8, !alias.scope !18056, !noalias !18045
  %i.kz = zext i64 %i.kg to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i: ; preds = %bb.ai, %bb.ah
  %.sink.i.i5.i = phi i128 [ %i.kz, %bb.ai ], [ %i.kj, %bb.ah ]
  %storemerge.i.i.i.i6.i = phi i8 [ 64, %bb.ai ], [ -128, %bb.ah ]
  store i128 %.sink.i.i5.i, ptr %1, align 16, !alias.scope !18056, !noalias !18045
  store i8 %storemerge.i.i.i.i6.i, ptr %i.f, align 16, !alias.scope !18056, !noalias !18045
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ke, i64 noundef %i.kg, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !18045
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lb = load i8, ptr %i.la, align 8, !range !492, !alias.scope !18045, !noalias !18046, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18061)
  %i.lc = load i8, ptr %i.f, align 16, !alias.scope !18064, !noalias !18045, !noundef !3 ; 3 uses
  %i.ld = icmp ugt i8 %i.lc, 64
  br i1 %i.ld, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i
  %i.le = zext nneg i8 %i.lb to i128
  %i.lf = zext nneg i8 %i.lc to i128
  %i.lg = shl nuw nsw i128 %i.le, %i.lf
  %i.lh = load i128, ptr %1, align 16, !alias.scope !18064, !noalias !18045, !noundef !3
  %i.li = or i128 %i.lh, %i.lg
  %i.lj = add nuw i8 %i.lc, 64
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ak:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i4.i
  %i.lk = load i128, ptr %1, align 16, !alias.scope !18064, !noalias !18045, !noundef !3 ; 2 uses
  %i.ll = trunc i128 %i.lk to i64
  %i.lm = lshr i128 %i.lk, 64
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !18064, !noalias !18045, !noundef !3
  %i.lp = xor i64 %i.lo, %i.ll
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lr = load ptr, ptr %i.lq, align 16, !alias.scope !18064, !noalias !18045, !nonnull !3, !align !100, !noundef !3
  %i.ls = load i64, ptr %i.lr, align 8, !noalias !18065, !noundef !3
  %i.lt = zext i64 %i.lp to i128
  %i.lu = zext i64 %i.ls to i128
  %i.lv = xor i128 %i.lm, %i.lu
  %i.lw = mul nuw i128 %i.lv, %i.lt               ; 2 uses
  %i.lx = lshr i128 %i.lw, 64
  %i.ly = xor i128 %i.lx, %i.lw
  %i.lz = trunc i128 %i.ly to i64
  store i64 %i.lz, ptr %i.ln, align 8, !alias.scope !18064, !noalias !18045
  %i.ma = zext nneg i8 %i.lb to i128
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.al:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i8, ptr %i.mb, align 8, !alias.scope !17944, !noalias !17947 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 17
  %.val1.i = load i8, ptr %i.mc, align 1, !range !2644, !alias.scope !17944, !noalias !17947, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18072)
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.md = trunc i128 %i.ey to i64
  %i.me = lshr i128 %i.ey, 64
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !alias.scope !18075, !noalias !17944, !noundef !3
  %i.mh = xor i64 %i.mg, %i.md
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mj = load ptr, ptr %i.mi, align 16, !alias.scope !18075, !noalias !17944, !nonnull !3, !align !100, !noundef !3
  %i.mk = load i64, ptr %i.mj, align 8, !noalias !18076, !noundef !3
  %i.ml = zext i64 %i.mh to i128
  %i.mm = zext i64 %i.mk to i128
  %i.mn = xor i128 %i.me, %i.mm
  %i.mo = mul nuw i128 %i.mn, %i.ml               ; 2 uses
  %i.mp = lshr i128 %i.mo, 64
  %i.mq = xor i128 %i.mp, %i.mo
  %i.mr = trunc i128 %i.mq to i64
  store i64 %i.mr, ptr %i.mf, align 8, !alias.scope !18075, !noalias !17944
  %i.ms = zext nneg i8 %.val1.i to i128
  %i.mt = zext i8 %.val.i to i128
  %i.mu = shl nuw nsw i128 %i.mt, 64
  %i.mv = or disjoint i128 %i.mu, %i.ms
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.an:                                            ; preds = %bb.al
  %i.mw = zext nneg i8 %.val1.i to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18080)
  %i.mx = trunc i128 %i.ey to i64
  %i.my = lshr i128 %i.ey, 64
  %i.mz = or i128 %i.my, %i.mw
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !alias.scope !18083, !noalias !17944, !noundef !3
  %i.nc = xor i64 %i.nb, %i.mx
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ne = load ptr, ptr %i.nd, align 16, !alias.scope !18083, !noalias !17944, !nonnull !3, !align !100, !noundef !3
  %i.nf = load i64, ptr %i.ne, align 8, !noalias !18084, !noundef !3
  %i.ng = zext i64 %i.nc to i128
  %i.nh = zext i64 %i.nf to i128
  %i.ni = xor i128 %i.mz, %i.nh
  %i.nj = mul nuw i128 %i.ni, %i.ng               ; 2 uses
  %i.nk = lshr i128 %i.nj, 64
  %i.nl = xor i128 %i.nk, %i.nj
  %i.nm = trunc i128 %i.nl to i64
  store i64 %i.nm, ptr %i.na, align 8, !alias.scope !18083, !noalias !17944
  %i.nn = zext i8 %.val.i to i128
  br label %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.z, %bb.aa, %bb.ae, %bb.af, %bb.aj, %bb.ak, %bb.am, %bb.an
  %storemerge.i.sink.i = phi i128 [ %i.li, %bb.aj ], [ %i.jk, %bb.ae ], [ %i.hu, %bb.z ], [ 255, %bb.aa ], [ %i.kc, %bb.af ], [ %i.ma, %bb.ak ], [ %i.nn, %bb.an ], [ %i.mv, %bb.am ]
  %storemerge.i.i.i8.sink.i = phi i8 [ %i.lj, %bb.aj ], [ %i.jl, %bb.ae ], [ %i.hv, %bb.z ], [ 8, %bb.aa ], [ 64, %bb.af ], [ 64, %bb.ak ], [ 64, %bb.an ], [ -128, %bb.am ]
  store i128 %storemerge.i.sink.i, ptr %1, align 16, !alias.scope !17947, !noalias !17944
  store i8 %storemerge.i.i.i8.sink.i, ptr %i.f, align 16, !alias.scope !17947, !noalias !17944
  br label %bb.ba

bb.ao:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.np = load i8, ptr %i.no, align 8, !range !2644, !noundef !3 ; 3 uses
  %i.nq = icmp ne i8 %i.np, 3                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18088)
  %i.nr = icmp ugt i8 %storemerge.i.i9, 64
  br i1 %i.nr, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %bb.ao
  %i.ns = select i1 %i.nq, i128 18446744073709551616, i128 0
  %i.nt = or i128 %i.af, %i.ns                    ; 3 uses
  store i128 %i.nt, ptr %1, align 16, !alias.scope !18091
  store i8 -128, ptr %i.f, align 16, !alias.scope !18091
  br i1 %i.nq, label %bb.be, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !18092
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 16, !alias.scope !18092
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread: ; preds = %bb.ao
  %i.nu = trunc i128 %i.af to i64
  %i.nv = lshr i128 %i.af, 64
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !18091, !noundef !3
  %i.ny = xor i64 %i.nx, %i.nu
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oa = load ptr, ptr %i.nz, align 16, !alias.scope !18091, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !noalias !18091, !noundef !3
  %i.oc = zext i64 %i.ny to i128
  %i.od = zext i64 %i.ob to i128
  %i.oe = xor i128 %i.nv, %i.od
  %i.of = mul nuw i128 %i.oe, %i.oc               ; 2 uses
  %i.og = lshr i128 %i.of, 64
  %i.oh = xor i128 %i.og, %i.of
  %i.oi = trunc i128 %i.oh to i64                 ; 2 uses
  store i64 %i.oi, ptr %i.nw, align 8, !alias.scope !18091
  %i.oj = zext i1 %i.nq to i128                   ; 2 uses
  store i128 %i.oj, ptr %1, align 16, !alias.scope !18091
  store i8 64, ptr %i.f, align 16, !alias.scope !18091
  br i1 %i.nq, label %.thread67, label %.thread66

bb.ap:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ol = load i8, ptr %i.ok, align 8, !range !492, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18100)
  %i.om = icmp ugt i8 %storemerge.i.i9, 120
  br i1 %i.om, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.on = zext nneg i8 %i.ol to i128
  %i.oo = zext nneg i8 %storemerge.i.i9 to i128
  %i.op = shl nuw nsw i128 %i.on, %i.oo
  %i.oq = or i128 %i.af, %i.op
  %i.or = add nuw i8 %storemerge.i.i9, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15

bb.ar:                                            ; preds = %bb.ap
  %i.os = trunc i128 %i.af to i64
  %i.ot = lshr i128 %i.af, 64
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !18103, !noundef !3
  %i.ow = xor i64 %i.ov, %i.os
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oy = load ptr, ptr %i.ox, align 16, !alias.scope !18103, !nonnull !3, !align !100, !noundef !3
  %i.oz = load i64, ptr %i.oy, align 8, !noalias !18103, !noundef !3
  %i.pa = zext i64 %i.ow to i128
  %i.pb = zext i64 %i.oz to i128
  %i.pc = xor i128 %i.ot, %i.pb
  %i.pd = mul nuw i128 %i.pc, %i.pa               ; 2 uses
  %i.pe = lshr i128 %i.pd, 64
  %i.pf = xor i128 %i.pe, %i.pd
  %i.pg = trunc i128 %i.pf to i64
  store i64 %i.pg, ptr %i.ou, align 8, !alias.scope !18103
  %i.ph = zext nneg i8 %i.ol to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15: ; preds = %bb.aq, %bb.ar
  %.sink74 = phi i128 [ %i.ph, %bb.ar ], [ %i.oq, %bb.aq ]
  %storemerge.i.i14 = phi i8 [ 8, %bb.ar ], [ %i.or, %bb.aq ]
  store i128 %.sink74, ptr %1, align 16, !alias.scope !18103
  store i8 %storemerge.i.i14, ptr %i.f, align 16, !alias.scope !18103
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  br label %bb.ba

bb.as:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.pi, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.pk = load i64, ptr %i.pj, align 8, !range !777, !noundef !3
  %i.pl = icmp ne i64 %i.pk, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18107)
  %i.pm = load i8, ptr %i.f, align 16, !alias.scope !18110, !noundef !3 ; 3 uses
  %i.pn = icmp ugt i8 %i.pm, 64
  br i1 %i.pn, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.po = zext i1 %i.pl to i128
  %i.pp = zext nneg i8 %i.pm to i128
  %i.pq = shl nuw nsw i128 %i.po, %i.pp
  %i.pr = load i128, ptr %1, align 16, !alias.scope !18110, !noundef !3
  %i.ps = or i128 %i.pr, %i.pq
  %i.pt = add nuw i8 %i.pm, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.au:                                            ; preds = %bb.as
  %i.pu = load i128, ptr %1, align 16, !alias.scope !18110, !noundef !3 ; 2 uses
  %i.pv = trunc i128 %i.pu to i64
  %i.pw = lshr i128 %i.pu, 64
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !alias.scope !18110, !noundef !3
  %i.pz = xor i64 %i.py, %i.pv
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qb = load ptr, ptr %i.qa, align 16, !alias.scope !18110, !nonnull !3, !align !100, !noundef !3
  %i.qc = load i64, ptr %i.qb, align 8, !noalias !18110, !noundef !3
  %i.qd = zext i64 %i.pz to i128
  %i.qe = zext i64 %i.qc to i128
  %i.qf = xor i128 %i.pw, %i.qe
  %i.qg = mul nuw i128 %i.qf, %i.qd               ; 2 uses
  %i.qh = lshr i128 %i.qg, 64
  %i.qi = xor i128 %i.qh, %i.qg
  %i.qj = trunc i128 %i.qi to i64
  store i64 %i.qj, ptr %i.px, align 8, !alias.scope !18110
  %i.qk = zext i1 %i.pl to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.at, %bb.au
  %.sink75 = phi i128 [ %i.qk, %bb.au ], [ %i.ps, %bb.at ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.au ], [ %i.pt, %bb.at ] ; 4 uses
  store i128 %.sink75, ptr %1, align 16, !alias.scope !18110
  store i8 %storemerge.i.i3, ptr %i.f, align 16, !alias.scope !18110
  br i1 %i.pl, label %bb.bg, label %bb.ba

bb.av:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !nonnull !3, !noundef !3
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qo = load i64, ptr %i.qn, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18117)
  %i.qp = icmp ugt i8 %storemerge.i.i9, 64
  br i1 %i.qp, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qq = zext i64 %i.qo to i128
  %i.qr = shl nuw i128 %i.qq, 64
  %i.qs = or i128 %i.af, %i.qr
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28

bb.ax:                                            ; preds = %bb.av
  %i.qt = trunc i128 %i.af to i64
  %i.qu = lshr i128 %i.af, 64
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qw = load i64, ptr %i.qv, align 8, !alias.scope !18120, !noundef !3
  %i.qx = xor i64 %i.qw, %i.qt
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qz = load ptr, ptr %i.qy, align 16, !alias.scope !18120, !nonnull !3, !align !100, !noundef !3
  %i.ra = load i64, ptr %i.qz, align 8, !noalias !18120, !noundef !3
  %i.rb = zext i64 %i.qx to i128
  %i.rc = zext i64 %i.ra to i128
  %i.rd = xor i128 %i.qu, %i.rc
  %i.re = mul nuw i128 %i.rd, %i.rb               ; 2 uses
  %i.rf = lshr i128 %i.re, 64
  %i.rg = xor i128 %i.rf, %i.re
  %i.rh = trunc i128 %i.rg to i64
  store i64 %i.rh, ptr %i.qv, align 8, !alias.scope !18120
  %i.ri = zext i64 %i.qo to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %bb.aw, %bb.ax
  %.sink.i26 = phi i128 [ %i.ri, %bb.ax ], [ %i.qs, %bb.aw ]
  %storemerge.i.i.i27 = phi i8 [ 64, %bb.ax ], [ -128, %bb.aw ]
  store i128 %.sink.i26, ptr %1, align 16, !alias.scope !18120
  store i8 %storemerge.i.i.i27, ptr %i.f, align 16, !alias.scope !18120
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qm, i64 noundef %i.qo, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !range !1033, !noundef !3
  %i.rl = icmp ne i64 %i.rk, -9223372036854775787 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18124)
  %i.rm = load i8, ptr %i.f, align 16, !alias.scope !18127, !noundef !3 ; 3 uses
  %i.rn = icmp ugt i8 %i.rm, 64
  br i1 %i.rn, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28
  %i.ro = zext i1 %i.rl to i128
  %i.rp = zext nneg i8 %i.rm to i128
  %i.rq = shl nuw nsw i128 %i.ro, %i.rp
  %i.rr = load i128, ptr %1, align 16, !alias.scope !18127, !noundef !3
  %i.rs = or i128 %i.rr, %i.rq
  %i.rt = add nuw i8 %i.rm, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.az:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit28
  %i.ru = load i128, ptr %1, align 16, !alias.scope !18127, !noundef !3 ; 2 uses
  %i.rv = trunc i128 %i.ru to i64
  %i.rw = lshr i128 %i.ru, 64
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ry = load i64, ptr %i.rx, align 8, !alias.scope !18127, !noundef !3
  %i.rz = xor i64 %i.ry, %i.rv
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sb = load ptr, ptr %i.sa, align 16, !alias.scope !18127, !nonnull !3, !align !100, !noundef !3
  %i.sc = load i64, ptr %i.sb, align 8, !noalias !18127, !noundef !3
  %i.sd = zext i64 %i.rz to i128
  %i.se = zext i64 %i.sc to i128
  %i.sf = xor i128 %i.rw, %i.se
  %i.sg = mul nuw i128 %i.sf, %i.sd               ; 2 uses
  %i.sh = lshr i128 %i.sg, 64
  %i.si = xor i128 %i.sh, %i.sg
  %i.sj = trunc i128 %i.si to i64
  store i64 %i.sj, ptr %i.rx, align 8, !alias.scope !18127
  %i.sk = zext i1 %i.rl to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.ay, %bb.az
  %.sink76 = phi i128 [ %i.sk, %bb.az ], [ %i.rs, %bb.ay ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.az ], [ %i.rt, %bb.ay ] ; 2 uses
  store i128 %.sink76, ptr %1, align 16, !alias.scope !18127
  store i8 %storemerge.i.i1, ptr %i.f, align 16, !alias.scope !18127
  br i1 %i.rl, label %bb.bo, label %bb.bp

bb.ba:                                            ; preds = %.thread66, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, %bb.bf, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit15, %_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit24, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit21, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  ret void

.thread50:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread
  %i.sl = zext nneg i8 %i.ah to i128
  %i.sm = shl nuw nsw i128 %i.sl, 64
  %i.sn = or disjoint i128 %i.sm, 1               ; 2 uses
  store i128 %i.sn, ptr %1, align 16, !alias.scope !18128
  store i8 -128, ptr %i.f, align 16, !alias.scope !18128
  br label %.thread48

bb.bb:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18137)
  %i.so = trunc i128 %i.af to i64
  %i.sp = lshr i128 %i.ak, 64
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 8, !alias.scope !18128, !noundef !3
  %i.ss = xor i64 %i.sr, %i.so
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.su = load ptr, ptr %i.st, align 16, !alias.scope !18128, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.sv = load i64, ptr %i.su, align 8, !noalias !18128, !noundef !3
  %i.sw = zext i64 %i.ss to i128
  %i.sx = zext i64 %i.sv to i128
  %i.sy = xor i128 %i.sp, %i.sx
  %i.sz = mul nuw i128 %i.sy, %i.sw               ; 2 uses
  %i.ta = lshr i128 %i.sz, 64
  %i.tb = xor i128 %i.ta, %i.sz
  %i.tc = trunc i128 %i.tb to i64                 ; 2 uses
  store i64 %i.tc, ptr %i.sq, align 8, !alias.scope !18128
  %i.td = zext nneg i8 %i.ah to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18139)
  br label %.thread49

.thread48:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread48_crit_edge, %.thread50
  %i.te = phi ptr [ %.pre83, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread48_crit_edge ], [ %i.ar, %.thread50 ]
  %i.tf = phi i64 [ %.pre81, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread48_crit_edge ], [ %i.az, %.thread50 ]
  %i.tg = phi i128 [ %i.ak, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8..thread48_crit_edge ], [ %i.sn, %.thread50 ] ; 2 uses
  %.in73 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.th = load i8, ptr %.in73, align 8, !range !492, !noundef !3
  %i.ti = trunc i128 %i.tg to i64
  %i.tj = lshr i128 %i.tg, 64
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.tl = xor i64 %i.tf, %i.ti
  %i.tm = load i64, ptr %i.te, align 8, !noalias !17909, !noundef !3
  %i.tn = zext i64 %i.tl to i128
  %i.to = zext i64 %i.tm to i128
  %i.tp = xor i128 %i.tj, %i.to
  %i.tq = mul nuw i128 %i.tp, %i.tn               ; 2 uses
  %i.tr = lshr i128 %i.tq, 64
  %i.ts = xor i128 %i.tr, %i.tq
  %i.tt = trunc i128 %i.ts to i64
  store i64 %i.tt, ptr %i.tk, align 8, !alias.scope !17909
  %i.tu = zext nneg i8 %i.th to i128
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.tv, align 8, !nonnull !3, !noundef !3
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val16 = load i64, ptr %i.tw, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18152)
  %i.tx = zext i64 %.val16 to i128
  %i.ty = shl nuw nsw i128 %i.tx, 8
  %i.tz = or disjoint i128 %i.ty, %i.tu
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread49:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread, %bb.bb
  %i.ua = phi ptr [ %i.ar, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.su, %bb.bb ]
  %i.ub = phi i64 [ %i.az, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.tc, %bb.bb ]
  %i.uc = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8.thread ], [ %i.td, %bb.bb ] ; 2 uses
  %.in72 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ud = load i8, ptr %.in72, align 8, !range !492, !noundef !3
  %i.ue = zext nneg i8 %i.ud to i128              ; 2 uses
  %i.uf = shl nuw nsw i128 %i.ue, 64
  %i.ug = or disjoint i128 %i.uf, %i.uc
  store i128 %i.ug, ptr %1, align 16, !alias.scope !17909
  store i8 72, ptr %i.f, align 16, !alias.scope !17909
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val54 = load ptr, ptr %i.uh, align 8, !nonnull !3, !noundef !3
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1655 = load i64, ptr %i.ui, align 8, !noundef !3 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.uk = load i64, ptr %i.ua, align 8, !noalias !18155, !noundef !3
  %i.ul = zext i64 %i.ub to i128
  %i.um = xor i128 %i.uc, %i.ul
  %i.un = zext i64 %i.uk to i128
  %i.uo = xor i128 %i.ue, %i.un
  %i.up = mul nuw i128 %i.uo, %i.um               ; 2 uses
  %i.uq = lshr i128 %i.up, 64
  %i.ur = xor i128 %i.uq, %i.up
  %i.us = trunc i128 %i.ur to i64
  store i64 %i.us, ptr %i.uj, align 8, !alias.scope !18155
  %i.ut = zext i64 %.val1655 to i128
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread48, %.thread49
  %.val1658 = phi i64 [ %.val1655, %.thread49 ], [ %.val16, %.thread48 ]
  %.val56 = phi ptr [ %.val54, %.thread49 ], [ %.val, %.thread48 ]
  %.sink.i.i.i32 = phi i128 [ %i.ut, %.thread49 ], [ %i.tz, %.thread48 ]
  %storemerge.i.i.i.i.i33 = phi i8 [ 64, %.thread49 ], [ 72, %.thread48 ]
  store i128 %.sink.i.i.i32, ptr %1, align 16, !alias.scope !18155
  store i8 %storemerge.i.i.i.i.i33, ptr %i.f, align 16, !alias.scope !18155
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val56, i64 noundef %.val1658, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uv = load ptr, ptr %i.uu, align 8, !nonnull !3, !noundef !3
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ux = load i64, ptr %i.uw, align 8, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18162)
  %i.uy = load i8, ptr %i.f, align 16, !alias.scope !18165, !noundef !3 ; 3 uses
  %i.uz = icmp ugt i8 %i.uy, 64
  br i1 %i.uz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.va = zext i64 %i.ux to i128
  %i.vb = zext nneg i8 %i.uy to i128
  %i.vc = shl nuw i128 %i.va, %i.vb
  %i.vd = load i128, ptr %1, align 16, !alias.scope !18165, !noundef !3
  %i.ve = or i128 %i.vd, %i.vc
  %i.vf = add nuw i8 %i.uy, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36

bb.bd:                                            ; preds = %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.vg = load i128, ptr %1, align 16, !alias.scope !18165, !noundef !3 ; 2 uses
  %i.vh = trunc i128 %i.vg to i64
  %i.vi = lshr i128 %i.vg, 64
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.vk = load i64, ptr %i.vj, align 8, !alias.scope !18165, !noundef !3
  %i.vl = xor i64 %i.vk, %i.vh
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.vn = load ptr, ptr %i.vm, align 16, !alias.scope !18165, !nonnull !3, !align !100, !noundef !3
  %i.vo = load i64, ptr %i.vn, align 8, !noalias !18165, !noundef !3
  %i.vp = zext i64 %i.vl to i128
  %i.vq = zext i64 %i.vo to i128
  %i.vr = xor i128 %i.vi, %i.vq
  %i.vs = mul nuw i128 %i.vr, %i.vp               ; 2 uses
  %i.vt = lshr i128 %i.vs, 64
  %i.vu = xor i128 %i.vt, %i.vs
  %i.vv = trunc i128 %i.vu to i64
  store i64 %i.vv, ptr %i.vj, align 8, !alias.scope !18165
  %i.vw = zext i64 %i.ux to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit36: ; preds = %bb.bc, %bb.bd
  %.sink.i34 = phi i128 [ %i.vw, %bb.bd ], [ %i.ve, %bb.bc ]
  %storemerge.i.i.i35 = phi i8 [ 64, %bb.bd ], [ %i.vf, %bb.bc ]
  store i128 %.sink.i34, ptr %1, align 16, !alias.scope !18165
  store i8 %storemerge.i.i.i35, ptr %i.f, align 16, !alias.scope !18165
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.uv, i64 noundef %i.ux, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %bb.ba

.thread67:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.vx = zext nneg i8 %i.np to i128
  %i.vy = shl nuw nsw i128 %i.vx, 64
  %i.vz = or disjoint i128 %i.vy, %i.oj           ; 2 uses
  store i128 %i.vz, ptr %1, align 16, !alias.scope !18166
  store i8 -128, ptr %i.f, align 16, !alias.scope !18166
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.be:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18175)
  %i.wa = trunc i128 %i.af to i64
  %i.wb = lshr i128 %i.nt, 64
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.wd = load i64, ptr %i.wc, align 8, !alias.scope !18166, !noundef !3
  %i.we = xor i64 %i.wd, %i.wa
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.wg = load ptr, ptr %i.wf, align 16, !alias.scope !18166, !nonnull !3, !align !100, !noundef !3
  %i.wh = load i64, ptr %i.wg, align 8, !noalias !18166, !noundef !3
  %i.wi = zext i64 %i.we to i128
  %i.wj = zext i64 %i.wh to i128
  %i.wk = xor i128 %i.wb, %i.wj
  %i.wl = mul nuw i128 %i.wk, %i.wi               ; 2 uses
  %i.wm = lshr i128 %i.wl, 64
  %i.wn = xor i128 %i.wm, %i.wl
  %i.wo = trunc i128 %i.wn to i64
  store i64 %i.wo, ptr %i.wc, align 8, !alias.scope !18166
  %i.wp = zext nneg i8 %i.np to i128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18177)
  br label %.thread66

.thread66:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread, %bb.be
  %i.wq = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread ], [ %i.wp, %bb.be ]
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.in = load i64, ptr %i.wr, align 8, !range !777, !noundef !3
  %.not = icmp eq i64 %.in, -9223372036854775808  ; 2 uses
  %i.ws = select i1 %.not, i128 0, i128 18446744073709551616
  %i.wt = or disjoint i128 %i.ws, %i.wq
  store i128 %i.wt, ptr %1, align 16, !alias.scope !18092
  store i8 -128, ptr %i.f, align 16, !alias.scope !18092
  br i1 %.not, label %bb.ba, label %bb.bf

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge, %.thread67
  %i.wu = phi ptr [ %.pre79, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.oa, %.thread67 ]
  %i.wv = phi i64 [ %.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.oi, %.thread67 ]
  %i.ww = phi i128 [ %i.nt, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge ], [ %i.vz, %.thread67 ] ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.in71 = load i64, ptr %i.wx, align 8, !range !777, !noundef !3
  %i.wy = icmp ne i64 %.in71, -9223372036854775808 ; 2 uses
  %i.wz = trunc i128 %i.ww to i64
  %i.xa = lshr i128 %i.ww, 64
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xc = xor i64 %i.wv, %i.wz
  %i.xd = load i64, ptr %i.wu, align 8, !noalias !18092, !noundef !3
  %i.xe = zext i64 %i.xc to i128
  %i.xf = zext i64 %i.xd to i128
  %i.xg = xor i128 %i.xa, %i.xf
  %i.xh = mul nuw i128 %i.xg, %i.xe               ; 2 uses
  %i.xi = lshr i128 %i.xh, 64
  %i.xj = xor i128 %i.xi, %i.xh
  %i.xk = trunc i128 %i.xj to i64
  store i64 %i.xk, ptr %i.xb, align 8, !alias.scope !18092
  %i.xl = zext i1 %i.wy to i128
  store i128 %i.xl, ptr %1, align 16, !alias.scope !18092
  store i8 64, ptr %i.f, align 16, !alias.scope !18092
  br i1 %i.wy, label %bb.bf, label %bb.ba

bb.bf:                                            ; preds = %.thread66, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.xm = phi ptr [ %i.wr, %.thread66 ], [ %i.wx, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit ]
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.xm, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %bb.ba

bb.bg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.xo = load ptr, ptr %i.xn, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.xq = load i64, ptr %i.xp, align 8, !noundef !3 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18186)
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.xs = load i64, ptr %i.xr, align 8, !alias.scope !18188, !noalias !18189, !noundef !3 ; 2 uses
  %i.xt = tail call noundef i64 @llvm.fshr.i64(i64 %i.xs, i64 %i.xs, i64 %i.xq) ; 6 uses
  store i64 %i.xt, ptr %i.xr, align 8, !alias.scope !18188, !noalias !18189
  %i.xu = icmp samesign ult i64 %i.xq, 17
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xw = load ptr, ptr %i.xv, align 16, !alias.scope !18188, !noalias !18189, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  br i1 %i.xu, label %bb.bi, label %bb.bh, !prof !2537

bb.bh:                                            ; preds = %bb.bg
  %i.xx = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.xo, i64 noundef range(i64 0, -9223372036854775808) %i.xq, i64 noundef %i.xt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xw) #54, !noalias !18188
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

bb.bi:                                            ; preds = %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18193)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !18193, !noalias !18195, !noundef !3 ; 4 uses
  %i.ya = icmp samesign ugt i64 %i.xq, 7
  br i1 %i.ya, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.yb = icmp samesign ugt i64 %i.xq, 3
  br i1 %i.yb, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.bk

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bi
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.xo, align 1, !alias.scope !18196, !noalias !18197
  %i.yc = xor i64 %.sroa.014.0.copyload.i.i.i, %i.xt
  %i.yd = getelementptr i8, ptr %i.xo, i64 %i.xq
  %i.ye = getelementptr i8, ptr %i.yd, i64 -8
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.ye, align 1, !alias.scope !18196, !noalias !18197
  %i.yf = xor i64 %.sroa.016.0.copyload.i.i.i, %i.xz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %.not.i.i.i = icmp eq i64 %i.xq, 0
  br i1 %.not.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, label %bb.bl

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.bj
  %i.yg = getelementptr i8, ptr %i.xo, i64 %i.xq
  %i.yh = getelementptr i8, ptr %i.yg, i64 -4
  %.sroa.019.0.copyload.i.i.i = load i32, ptr %i.yh, align 1, !alias.scope !18196, !noalias !18197
  %.sroa.018.0.copyload.i.i.i = load i32, ptr %i.xo, align 1, !alias.scope !18196, !noalias !18197
  %i.yi = zext i32 %.sroa.018.0.copyload.i.i.i to i64
  %i.yj = xor i64 %i.xt, %i.yi
  %i.yk = zext i32 %.sroa.019.0.copyload.i.i.i to i64
  %i.yl = xor i64 %i.xz, %i.yk
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ym = load i8, ptr %i.xo, align 1, !alias.scope !18196, !noalias !18197, !noundef !3
  %i.yn = lshr i64 %i.xq, 1
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.yn
  %i.yp = load i8, ptr %i.yo, align 1, !alias.scope !18196, !noalias !18197, !noundef !3
  %i.yq = getelementptr i8, ptr %i.xo, i64 %i.xq
  %i.yr = getelementptr i8, ptr %i.yq, i64 -1
  %i.ys = load i8, ptr %i.yr, align 1, !alias.scope !18196, !noalias !18197, !noundef !3
  %i.yt = zext i8 %i.ym to i64
  %i.yu = xor i64 %i.xt, %i.yt
  %i.yv = zext i8 %i.ys to i64
  %i.yw = shl nuw nsw i64 %i.yv, 8
  %i.yx = zext i8 %i.yp to i64
  %i.yy = or disjoint i64 %i.yw, %i.yx
  %i.yz = xor i64 %i.yy, %i.xz
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i: ; preds = %bb.bl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.bk, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.yf, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.yl, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.yz, %bb.bl ], [ %i.xz, %bb.bk ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.yc, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.yj, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.yu, %bb.bl ], [ %i.xt, %bb.bk ]
  %i.za = zext i64 %.sroa.0.0.i.i.i to i128
  %i.zb = zext i64 %.sroa.04.0.i.i.i to i128
  %i.zc = mul nuw i128 %i.za, %i.zb               ; 2 uses
  %i.zd = lshr i128 %i.zc, 64
  %i.ze = xor i128 %i.zd, %i.zc
  %i.zf = trunc i128 %i.ze to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, %bb.bh
  %storemerge.i.i41 = phi i64 [ %i.xx, %bb.bh ], [ %i.zf, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i ] ; 2 uses
  store i64 %storemerge.i.i41, ptr %i.xr, align 8, !alias.scope !18188, !noalias !18189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18201)
  %i.zg = icmp ugt i8 %storemerge.i.i3, 120
  br i1 %i.zg, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.zh = zext nneg i8 %storemerge.i.i3 to i128
  %i.zi = shl nuw i128 255, %i.zh
  %i.zj = load i128, ptr %1, align 16, !alias.scope !18204, !noalias !18181, !noundef !3
  %i.zk = or i128 %i.zj, %i.zi
  %i.zl = add nuw i8 %storemerge.i.i3, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

bb.bn:                                            ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.zm = load i128, ptr %1, align 16, !alias.scope !18204, !noalias !18181, !noundef !3 ; 2 uses
  %i.zn = trunc i128 %i.zm to i64
  %i.zo = lshr i128 %i.zm, 64
  %i.zp = xor i64 %storemerge.i.i41, %i.zn
  %i.zq = load i64, ptr %i.xw, align 8, !noalias !18204, !noundef !3
  %i.zr = zext i64 %i.zp to i128
  %i.zs = zext i64 %i.zq to i128
  %i.zt = xor i128 %i.zo, %i.zs
  %i.zu = mul nuw i128 %i.zt, %i.zr               ; 2 uses
  %i.zv = lshr i128 %i.zu, 64
  %i.zw = xor i128 %i.zv, %i.zu
  %i.zx = trunc i128 %i.zw to i64
  store i64 %i.zx, ptr %i.xr, align 8, !alias.scope !18204, !noalias !18181
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bm, %bb.bn
  %.sink.i42 = phi i128 [ 255, %bb.bn ], [ %i.zk, %bb.bm ]
  %storemerge.i.i.i43 = phi i8 [ 8, %bb.bn ], [ %i.zl, %bb.bm ]
  store i128 %.sink.i42, ptr %1, align 16, !alias.scope !18204, !noalias !18181
  store i8 %storemerge.i.i.i43, ptr %i.f, align 16, !alias.scope !18204, !noalias !18181
  br label %bb.ba

bb.bo:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call fastcc void @_RINvXsr_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_5ValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rj, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  %.pr = load i8, ptr %i.f, align 16, !alias.scope !18205
  br label %bb.bp

end_hunk_10
begin_hunk_11_@_RINvXsit_NtCs4lawaffTVVK_9sqlparser3astNtB7_8FunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  switch i64 %i.cu, label %bb.k [
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 0, label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10
  ]

bb.k:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8
  unreachable

bb.l:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !25464, !noalias !25467, !nonnull !3, !noundef !3
  tail call fastcc void @_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.dv, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !noalias !25464, !inline_history !25463
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8
  tail call fastcc void @_RINvXsiN_NtCs4lawaffTVVK_9sqlparser3astNtB7_20FunctionArgumentListNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !25463
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split

_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split: ; preds = %bb.m, %bb.l
  %.pr = load i8, ptr %i.c, align 16, !alias.scope !25477
  br label %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10

_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10: ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8
  %i.dw = phi i8 [ %.pr, %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10thread-pre-split ], [ %storemerge.i.i.i9, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i8 ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dy = load ptr, ptr %i.dx, align 8, !align !100, !noundef !3 ; 2 uses
  %i.dz = icmp ne ptr %i.dy, null                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25483)
  %i.ea = icmp ugt i8 %i.dw, 64
  br i1 %i.ea, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10
  %i.eb = zext i1 %i.dz to i128
  %i.ec = zext nneg i8 %i.dw to i128
  %i.ed = shl nuw nsw i128 %i.eb, %i.ec
  %i.ee = load i128, ptr %1, align 16, !alias.scope !25477, !noundef !3
  %i.ef = or i128 %i.ee, %i.ed
  %i.eg = add nuw i8 %i.dw, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

bb.o:                                             ; preds = %_RINvXsiD_NtCs4lawaffTVVK_9sqlparser3astNtB7_17FunctionArgumentsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit10
  %i.eh = load i128, ptr %1, align 16, !alias.scope !25477, !noundef !3 ; 2 uses
  %i.ei = trunc i128 %i.eh to i64
  %i.ej = lshr i128 %i.eh, 64
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !25477, !noundef !3
  %i.em = xor i64 %i.el, %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load ptr, ptr %i.en, align 16, !alias.scope !25477, !nonnull !3, !align !100, !noundef !3
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !25477, !noundef !3
  %i.eq = zext i64 %i.em to i128
  %i.er = zext i64 %i.ep to i128
  %i.es = xor i128 %i.ej, %i.er
  %i.et = mul nuw i128 %i.es, %i.eq               ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = xor i128 %i.eu, %i.et
  %i.ew = trunc i128 %i.ev to i64
  store i64 %i.ew, ptr %i.ek, align 8, !alias.scope !25477
  %i.ex = zext i1 %i.dz to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %bb.n, %bb.o
  %.sink31 = phi i128 [ %i.ex, %bb.o ], [ %i.ef, %bb.n ]
  %storemerge.i.i3 = phi i8 [ 64, %bb.o ], [ %i.eg, %bb.n ] ; 2 uses
  store i128 %.sink31, ptr %1, align 16, !alias.scope !25477
  store i8 %storemerge.i.i3, ptr %i.c, align 16, !alias.scope !25477
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dy, ptr noalias noundef align 16 dereferenceable(48) %1) #50
  %.pr21 = load i8, ptr %i.c, align 16, !alias.scope !25484
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ey = phi i8 [ %.pr21, %bb.p ], [ %storemerge.i.i3, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.fa = load i8, ptr %i.ez, align 1, !range !2835, !noundef !3 ; 3 uses
  %i.fb = icmp ne i8 %i.fa, 2                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25490)
  %i.fc = icmp ugt i8 %i.ey, 64
  br i1 %i.fc, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.q
  %i.fd = zext i1 %i.fb to i128
  %i.fe = zext nneg i8 %i.ey to i128
  %i.ff = shl nuw nsw i128 %i.fd, %i.fe
  %i.fg = load i128, ptr %1, align 16, !alias.scope !25484, !noundef !3
  %i.fh = or i128 %i.fg, %i.ff                    ; 5 uses
  store i128 %i.fh, ptr %1, align 16, !alias.scope !25484
  %i.fi = add nuw i8 %i.ey, 64                    ; 2 uses
  store i8 %i.fi, ptr %i.c, align 16, !alias.scope !25484
  br i1 %i.fb, label %bb.r, label %bb.t

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread: ; preds = %bb.q
  %i.fj = load i128, ptr %1, align 16, !alias.scope !25484, !noundef !3 ; 2 uses
  %i.fk = trunc i128 %i.fj to i64
  %i.fl = lshr i128 %i.fj, 64
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !25484, !noundef !3
  %i.fo = xor i64 %i.fn, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fq = load ptr, ptr %i.fp, align 16, !alias.scope !25484, !nonnull !3, !align !100, !noundef !3
  %i.fr = load i64, ptr %i.fq, align 8, !noalias !25484, !noundef !3
  %i.fs = zext i64 %i.fo to i128
  %i.ft = zext i64 %i.fr to i128
  %i.fu = xor i128 %i.fl, %i.ft
  %i.fv = mul nuw i128 %i.fu, %i.fs               ; 2 uses
  %i.fw = lshr i128 %i.fv, 64
  %i.fx = xor i128 %i.fw, %i.fv
  %i.fy = trunc i128 %i.fx to i64
  store i64 %i.fy, ptr %i.fm, align 8, !alias.scope !25484
  br i1 %i.fb, label %.thread, label %.thread26

.thread26:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread
  %i.fz = load i64, ptr %0, align 8, !range !858, !noundef !3 ; 2 uses
  %.not43 = icmp eq i64 %i.fz, 5                  ; 2 uses
  %i.ga = select i1 %.not43, i128 0, i128 18446744073709551616 ; 2 uses
  store i128 %i.ga, ptr %1, align 16, !alias.scope !25491
  store i8 -128, ptr %i.c, align 16, !alias.scope !25491
  br i1 %.not43, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13

bb.r:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25502)
  %.not = icmp eq i8 %i.ey, 0
  br i1 %.not, label %.thread, label %bb.s

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread, %bb.r
  %i.gb = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread ], [ %i.fh, %bb.r ]
  %i.gc = zext nneg i8 %i.fa to i128
  %i.gd = shl nuw nsw i128 %i.gc, 64
  %i.ge = or i128 %i.gb, %i.gd
  br label %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.r
  %i.gf = trunc i128 %i.fh to i64
  %i.gg = lshr i128 %i.fh, 64
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !25505, !noundef !3
  %i.gj = xor i64 %i.gi, %i.gf
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gl = load ptr, ptr %i.gk, align 16, !alias.scope !25505, !nonnull !3, !align !100, !noundef !3
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !25505, !noundef !3
  %i.gn = zext i64 %i.gj to i128
  %i.go = zext i64 %i.gm to i128
  %i.gp = xor i128 %i.gg, %i.go
  %i.gq = mul nuw i128 %i.gp, %i.gn               ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = xor i128 %i.gr, %i.gq
  %i.gt = trunc i128 %i.gs to i64
  store i64 %i.gt, ptr %i.gh, align 8, !alias.scope !25505
  %i.gu = zext nneg i8 %i.fa to i128
  br label %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread, %bb.s
  %.sink.i = phi i128 [ %i.gu, %bb.s ], [ %i.ge, %.thread ] ; 2 uses
  %storemerge.i.i.i12 = phi i8 [ 64, %bb.s ], [ -128, %.thread ] ; 2 uses
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !25505
  store i8 %storemerge.i.i.i12, ptr %i.c, align 16, !alias.scope !25505
  br label %bb.t

bb.t:                                             ; preds = %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.gv = phi i128 [ %i.fh, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %.sink.i, %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 4 uses
  %i.gw = phi i8 [ %i.fi, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ], [ %storemerge.i.i.i12, %_RINvXs8n_NtCs4lawaffTVVK_9sqlparser3astNtB7_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.gx = load i64, ptr %0, align 8, !range !858, !noundef !3 ; 3 uses
  %i.gy = icmp ne i64 %i.gx, 5                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25507)
  %i.gz = icmp ugt i8 %i.gw, 64
  br i1 %i.gz, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ha = select i1 %i.gy, i128 18446744073709551616, i128 0
  %i.hb = or i128 %i.gv, %i.ha                    ; 2 uses
  store i128 %i.hb, ptr %1, align 16, !alias.scope !25491
  store i8 -128, ptr %i.c, align 16, !alias.scope !25491
  %extract.t = trunc i128 %i.gv to i64
  br i1 %i.gy, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.t
  %i.hc = trunc i128 %i.gv to i64
  %i.hd = lshr i128 %i.gv, 64
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !25491, !noundef !3
  %i.hg = xor i64 %i.hf, %i.hc
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hi = load ptr, ptr %i.hh, align 16, !alias.scope !25491, !nonnull !3, !align !100, !noundef !3
  %i.hj = load i64, ptr %i.hi, align 8, !noalias !25491, !noundef !3
  %i.hk = zext i64 %i.hg to i128
  %i.hl = zext i64 %i.hj to i128
  %i.hm = xor i128 %i.hd, %i.hl
  %i.hn = mul nuw i128 %i.hm, %i.hk               ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = xor i128 %i.ho, %i.hn
  %i.hq = trunc i128 %i.hp to i64
  store i64 %i.hq, ptr %i.he, align 8, !alias.scope !25491
  %i.hr = zext i1 %i.gy to i128                   ; 2 uses
  store i128 %i.hr, ptr %1, align 16, !alias.scope !25491
  store i8 64, ptr %i.c, align 16, !alias.scope !25491
  br i1 %i.gy, label %bb.v, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25508)
  %i.hs = icmp eq i64 %i.gx, 4                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25514)
  %i.ht = select i1 %i.hs, i128 18446744073709551616, i128 0
  %2 = or disjoint i128 %i.ht, %i.hr
  store i128 %2, ptr %1, align 16, !alias.scope !25517, !noalias !25518
  store i8 -128, ptr %i.c, align 16, !alias.scope !25517, !noalias !25518
  br i1 %i.hs, label %bb.w, label %bb.x

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13: ; preds = %.thread26, %bb.u
  %i.hu = phi i128 [ %i.ga, %.thread26 ], [ %i.hb, %bb.u ]
  %i.hv = phi i64 [ %i.fz, %.thread26 ], [ %i.gx, %bb.u ]
  %.off0 = phi i64 [ 0, %.thread26 ], [ %extract.t, %bb.u ]
  %i.hw = icmp eq i64 %i.hv, 4                    ; 2 uses
  %i.hx = lshr i128 %i.hu, 64
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !25517, !noalias !25518, !noundef !3
  %i.ia = xor i64 %i.hz, %.off0
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ic = load ptr, ptr %i.ib, align 16, !alias.scope !25517, !noalias !25518, !nonnull !3, !align !100, !noundef !3
  %i.id = load i64, ptr %i.ic, align 8, !noalias !25520, !noundef !3
  %i.ie = zext i64 %i.ia to i128
  %i.if = zext i64 %i.id to i128
  %i.ig = xor i128 %i.hx, %i.if
  %i.ih = mul nuw i128 %i.ig, %i.ie               ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = xor i128 %i.ii, %i.ih
  %i.ik = trunc i128 %i.ij to i64
  store i64 %i.ik, ptr %i.hy, align 8, !alias.scope !25517, !noalias !25518
  %i.il = zext i1 %i.hw to i128
  store i128 %i.il, ptr %1, align 16, !alias.scope !25517, !noalias !25518
  store i8 64, ptr %i.c, align 16, !alias.scope !25517, !noalias !25518
  br i1 %i.hw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.im, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !25521
  br label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.v, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13
  tail call fastcc void @_RINvXs7P_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowSpecNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !25521
  br label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread26, %bb.x, %bb.w, %bb.u, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.io = load ptr, ptr %i.in, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.iq = load i64, ptr %i.ip, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25528)
  %i.ir = load i8, ptr %i.c, align 16, !alias.scope !25531, !noundef !3 ; 3 uses
  %i.is = icmp ugt i8 %i.ir, 64
  br i1 %i.is, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.it = zext i64 %i.iq to i128
  %i.iu = zext nneg i8 %i.ir to i128
  %i.iv = shl nuw i128 %i.it, %i.iu
  %i.iw = load i128, ptr %1, align 16, !alias.scope !25531, !noundef !3
  %i.ix = or i128 %i.iw, %i.iv
  %i.iy = add nuw i8 %i.ir, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.iz = load i128, ptr %1, align 16, !alias.scope !25531, !noundef !3 ; 2 uses
  %i.ja = trunc i128 %i.iz to i64
  %i.jb = lshr i128 %i.iz, 64
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !25531, !noundef !3
  %i.je = xor i64 %i.jd, %i.ja
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jg = load ptr, ptr %i.jf, align 16, !alias.scope !25531, !nonnull !3, !align !100, !noundef !3
  %i.jh = load i64, ptr %i.jg, align 8, !noalias !25531, !noundef !3
  %i.ji = zext i64 %i.je to i128
  %i.jj = zext i64 %i.jh to i128
  %i.jk = xor i128 %i.jb, %i.jj
  %i.jl = mul nuw i128 %i.jk, %i.ji               ; 2 uses
  %i.jm = lshr i128 %i.jl, 64
  %i.jn = xor i128 %i.jm, %i.jl
  %i.jo = trunc i128 %i.jn to i64
  store i64 %i.jo, ptr %i.jc, align 8, !alias.scope !25531
  %i.jp = zext i64 %i.iq to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.y, %bb.z
  %.sink.i15 = phi i128 [ %i.jp, %bb.z ], [ %i.ix, %bb.y ]
  %storemerge.i.i.i16 = phi i8 [ 64, %bb.z ], [ %i.iy, %bb.y ]
  store i128 %.sink.i15, ptr %1, align 16, !alias.scope !25531
  store i8 %storemerge.i.i.i16, ptr %i.c, align 16, !alias.scope !25531
  %.idx = mul nuw nsw i64 %i.iq, 1320
  %i.jq = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx
  %i.jr = icmp eq i64 %i.iq, 0
  br i1 %i.jr, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0.i30 = phi ptr [ %i.io, %.lr.ph ], [ %i.ju, %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 1320 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25535)
  tail call fastcc void @_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1320) %.sroa.0.0.i30, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !5326
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 1312
  %.val.i = load i8, ptr %i.jv, align 1, !range !2835, !alias.scope !25532, !noalias !25535, !noundef !3
  %i.jw = getelementptr i8, ptr %.sroa.0.0.i30, i64 1313
  %.val1.i = load i8, ptr %i.jw, align 1, !alias.scope !25532, !noalias !25535
  tail call fastcc void @_RINvXsc9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14OrderByOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !5326
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30, i64 328 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !range !1015, !alias.scope !25532, !noalias !25535, !noundef !3
  %i.jz = icmp ne i64 %i.jy, 70                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25540)
  %i.ka = load i8, ptr %i.c, align 16, !alias.scope !25543, !noalias !25532, !noundef !3 ; 3 uses
  %i.kb = icmp ugt i8 %i.ka, 64
  br i1 %i.kb, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kc = zext i1 %i.jz to i128
  %i.kd = zext nneg i8 %i.ka to i128
  %i.ke = shl nuw nsw i128 %i.kc, %i.kd
  %i.kf = load i128, ptr %1, align 16, !alias.scope !25543, !noalias !25532, !noundef !3
  %i.kg = or i128 %i.kf, %i.ke
  %i.kh = add nuw i8 %i.ka, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17

bb.ac:                                            ; preds = %bb.aa
  %i.ki = load i128, ptr %1, align 16, !alias.scope !25543, !noalias !25532, !noundef !3 ; 2 uses
  %i.kj = trunc i128 %i.ki to i64
  %i.kk = lshr i128 %i.ki, 64
  %i.kl = load i64, ptr %i.js, align 8, !alias.scope !25543, !noalias !25532, !noundef !3
  %i.km = xor i64 %i.kl, %i.kj
  %i.kn = load ptr, ptr %i.jt, align 16, !alias.scope !25543, !noalias !25532, !nonnull !3, !align !100, !noundef !3
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !25544, !noundef !3
  %i.kp = zext i64 %i.km to i128
  %i.kq = zext i64 %i.ko to i128
  %i.kr = xor i128 %i.kk, %i.kq
  %i.ks = mul nuw i128 %i.kr, %i.kp               ; 2 uses
  %i.kt = lshr i128 %i.ks, 64
  %i.ku = xor i128 %i.kt, %i.ks
  %i.kv = trunc i128 %i.ku to i64
  store i64 %i.kv, ptr %i.js, align 8, !alias.scope !25543, !noalias !25532
  %i.kw = zext i1 %i.jz to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17: ; preds = %bb.ac, %bb.ab
  %.sink32 = phi i128 [ %i.kw, %bb.ac ], [ %i.kg, %bb.ab ]
  %storemerge.i.i.i18 = phi i8 [ 64, %bb.ac ], [ %i.kh, %bb.ab ]
  store i128 %.sink32, ptr %1, align 16, !alias.scope !25543, !noalias !25532
  store i8 %storemerge.i.i.i18, ptr %i.c, align 16, !alias.scope !25543, !noalias !25532
  br i1 %i.jz, label %bb.ad, label %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ad:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17
  tail call fastcc void @_RINvXsbD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8WithFillNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(984) %i.jx, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #50, !inline_history !5326
  br label %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17, %bb.ad
  %i.kx = icmp eq ptr %i.ju, %i.jq
  br i1 %i.kx, label %_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aa

_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsbt_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11OrderByExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsit_NtCs4lawaffTVVK_9sqlparser3astNtB7_8FunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1 = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !25545
  store i64 %.val1, ptr %i.r, align 8, !noalias !25545
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !25545
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.v = load i8, ptr %i.u, align 8, !range !492, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !25554
  store i8 %i.v, ptr %i.q, align 1, !noalias !25554
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 1) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !25554
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25557)
  %i.x = load i64, ptr %i.w, align 8, !range !859, !alias.scope !25557, !noalias !25560, !noundef !3 ; 2 uses
end_hunk_11
