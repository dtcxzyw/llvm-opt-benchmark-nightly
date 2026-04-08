inline.NumInlined: 10149
inline.NumDeleted: 2791
begin_hunk_0_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.dx = and i64 %i.dw, 56
  %i.dy = shl nuw nsw i64 %.sroa.0.2.i.i, %i.dx
  %i.dz = load i64, ptr %i.dc, align 8, !alias.scope !5429, !noalias !5432, !noundef !3
  %i.ea = or i64 %i.dz, %i.dy                     ; 3 uses
  store i64 %i.ea, ptr %i.dc, align 8, !alias.scope !5429, !noalias !5432
  %notsub = add i64 %i.dt, -9
  %i.eb = icmp ult i64 %notsub, -2
end_hunk_0
begin_hunk_1_@_RINvXs6_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMapINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECs14kWLkQVSKO_14deltalake_core:bb.a
  store ptr %i.br, ptr %i.ar, align 8, !alias.scope !7922
  store i64 %i.bs, ptr %i.as, align 8, !alias.scope !7922
  %i.bw = lshr i64 %i.ba, 2
  %i.bx = sub nuw nsw i64 %i.ba, %i.bw            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7922
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.bx, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc24 unwind label %bb.c
end_hunk_1
begin_hunk_2_@_RINvXs6_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMapINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECs14kWLkQVSKO_14deltalake_core:bb.a

bb.m:                                             ; preds = %.noexc24
  %i.cg = load ptr, ptr %i.cc, align 8, !noalias !7922, !nonnull !3, !noundef !3 ; 2 uses
  %i.ch = icmp samesign ule i64 %i.bx, %i.cb
  call void @llvm.assume(i1 %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7922
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
end_hunk_2
begin_hunk_3_@_RINvXs6_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMapINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECs14kWLkQVSKO_14deltalake_core:bb.a

bb.ag:                                            ; preds = %bb.ae
  %i.fn = lshr i64 %i.fi, 2
  %i.fo = sub nuw i64 %i.fi, %i.fn
  %i.fp = icmp eq i64 %i.fe, %i.fo
  br i1 %i.fp, label %bb.aq, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs14kWLkQVSKO_14deltalake_core.exit.i

end_hunk_3
begin_hunk_4_@_RINvXsgD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19UpdateTableFromKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ak = and i64 %i.aj, 56
  %i.al = shl nuw nsw i64 %.sroa.0.2.i.i, %i.ak
  %i.am = load i64, ptr %i.p, align 8, !alias.scope !22736, !noalias !22739, !noundef !3
  %i.an = or i64 %i.am, %i.al                     ; 3 uses
  store i64 %i.an, ptr %i.p, align 8, !alias.scope !22736, !noalias !22739
  %notsub64 = add i64 %i.ag, -9
  %i.ao = icmp ult i64 %notsub64, -2
end_hunk_4
begin_hunk_5_@_RINvXsgD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19UpdateTableFromKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cl = and i64 %i.ck, 56
  %i.cm = shl nuw nsw i64 %.sroa.0.2.i.i11, %i.cl
  %i.cn = load i64, ptr %i.bq, align 8, !alias.scope !22764, !noalias !22767, !noundef !3
  %i.co = or i64 %i.cn, %i.cm                     ; 3 uses
  store i64 %i.co, ptr %i.bq, align 8, !alias.scope !22764, !noalias !22767
  %notsub = add i64 %i.ch, -9
  %i.cp = icmp ult i64 %notsub, -2
end_hunk_5
begin_hunk_6_@_RINvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6DeleteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ax = and i64 %i.aw, 56
  %i.ay = shl nuw nsw i64 %.sroa.0.2.i.i15, %i.ax
  %i.az = load i64, ptr %i.ac, align 8, !alias.scope !23820, !noalias !23823, !noundef !3
  %i.ba = or i64 %i.az, %i.ay                     ; 3 uses
  store i64 %i.ba, ptr %i.ac, align 8, !alias.scope !23820, !noalias !23823
  %notsub114 = add i64 %i.at, -9
  %i.bb = icmp ult i64 %notsub114, -2
end_hunk_6
begin_hunk_7_@_RINvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6DeleteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cy = and i64 %i.cx, 56
  %i.cz = shl nuw nsw i64 %.sroa.0.2.i.i, %i.cy
  %i.da = load i64, ptr %i.cd, align 8, !alias.scope !23854, !noalias !23857, !noundef !3
  %i.db = or i64 %i.da, %i.cz                     ; 3 uses
  store i64 %i.db, ptr %i.cd, align 8, !alias.scope !23854, !noalias !23857
  %notsub = add i64 %i.cu, -9
  %i.dc = icmp ult i64 %notsub, -2
end_hunk_7
begin_hunk_8_@_RINvXsh_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB6_6DeleteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.fj = and i64 %i.fi, 56
  %i.fk = shl nuw nsw i64 %.sroa.0.2.i.i41, %i.fj
  %i.fl = load i64, ptr %i.eo, align 8, !alias.scope !23887, !noalias !23890, !noundef !3
  %i.fm = or i64 %i.fl, %i.fk                     ; 3 uses
  store i64 %i.fm, ptr %i.eo, align 8, !alias.scope !23887, !noalias !23890
  %notsub115 = add i64 %i.ff, -9
  %i.fn = icmp ult i64 %notsub115, -2
end_hunk_8
begin_hunk_9_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14TableWithJoinsNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.z = and i64 %i.y, 56
  %i.aa = shl nuw nsw i64 %.sroa.0.2.i.i, %i.z
  %i.ab = load i64, ptr %i.f, align 8, !alias.scope !29952, !noalias !29955, !noundef !3
  %i.ac = or i64 %i.ab, %i.aa                     ; 3 uses
  store i64 %i.ac, ptr %i.f, align 8, !alias.scope !29952, !noalias !29955
  %notsub = add i64 %i.v, -9
  %i.ad = icmp ult i64 %notsub, -2
end_hunk_9
