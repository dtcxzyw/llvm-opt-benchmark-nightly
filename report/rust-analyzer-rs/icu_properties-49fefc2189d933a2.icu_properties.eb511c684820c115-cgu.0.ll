Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_properties-49fefc2189d933a2.icu_properties.eb511c684820c115-cgu.0?download=true
inline.NumInlined: 137
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed10has_script:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !50, !nonnull !4
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.v ; 2 uses
  br i1 %.not.i, label %bb.f, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed12has_script32.exit

bb.f:                                             ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i
  %.sroa.06.0.copyload.i = load i16, ptr %i.y, align 1, !noalias !49 ; 2 uses
  %.not7.i = icmp ult i16 %.sroa.06.0.copyload.i, 1024
  br i1 %.not7.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq i16 %2, %.sroa.06.0.copyload.i
  br label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed12has_script32.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call { ptr, i64 } @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed26get_scx_val_using_trie_val(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.y) ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %.idx = shl nuw nsw i64 %i.ac, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %.not11.not.i.not3 = icmp eq i64 %i.ac, 0
  br i1 %.not11.not.i.not3, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed12has_script32.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.h
  %i.ae = phi ptr [ %i.ag, %.lr.ph ], [ %i.ab, %bb.h ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load i16, ptr %i.ae, align 1, !noalias !53
  %i.af = icmp eq i16 %.sroa.05.0.copyload.i.i.i, %2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2 ; 2 uses
  %.not11.not.i.not = icmp eq ptr %i.ag, %i.ad
  %or.cond = select i1 %i.af, i1 true, i1 %.not11.not.i.not
  br i1 %or.cond, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed12has_script32.exit, label %.lr.ph

_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed12has_script32.exit: ; preds = %.lr.ph, %bb.h, %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i, %bb.g
  %.sroa.0.0.i = phi i1 [ false, %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i ], [ %i.z, %bb.g ], [ false, %bb.h ], [ %i.af, %.lr.ph ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed12has_script32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, i16 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !5, !alias.scope !63, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %..i = select i1 %i.d, i32 4095, i32 65535
  %.not.i = icmp ugt i32 %1, %..i
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %1, 1114112
  br i1 %i.e, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.f = lshr i32 %1, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !64, !noundef !4
  %i.i = zext nneg i32 %i.f to i64                ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !64, !noundef !4
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, -1
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !64, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.i
  %.sroa.02.0.copyload.i = load i16, ptr %i.p, align 1, !noalias !64
  %i.q = and i32 %1, 63
  %i.r = zext i16 %.sroa.02.0.copyload.i to i32
  %i.s = add nuw nsw i32 %i.q, %i.r
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !63, !noundef !4
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, -1
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit

bb.g:                                             ; preds = %bb.b
  %i.x = tail call fastcc noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE11small_indexB1o_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, i32 noundef %1)
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit

_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.g
  %.sroa.02.0.i = phi i32 [ %i.w, %bb.f ], [ %i.x, %bb.g ], [ %i.s, %bb.e ], [ %i.n, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !63, !noundef !4
  %i.aa = zext i32 %.sroa.02.0.i to i64           ; 2 uses
  %.not = icmp ugt i64 %i.z, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !63, !nonnull !4
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  br i1 %.not, label %bb.h, label %_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_.exit

bb.h:                                             ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit
  %.sroa.06.0.copyload = load i16, ptr %i.ad, align 1 ; 2 uses
  %.not7 = icmp ult i16 %.sroa.06.0.copyload, 1024
  br i1 %.not7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i16 %2, %.sroa.06.0.copyload
  br label %_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_.exit

bb.j:                                             ; preds = %bb.h
  %i.af = tail call { ptr, i64 } @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed26get_scx_val_using_trie_val(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.ad) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %.idx = shl nuw nsw i64 %i.ah, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %.not11.not14 = icmp eq i64 %i.ah, 0
  br i1 %.not11.not14, label %_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.j
  %i.aj = phi ptr [ %i.al, %.lr.ph ], [ %i.ag, %bb.j ] ; 2 uses
  %.sroa.05.0.copyload.i.i = load i16, ptr %i.aj, align 1, !noalias !65
  %i.ak = icmp eq i16 %.sroa.05.0.copyload.i.i, %2 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %.not11.not = icmp eq ptr %i.al, %i.ai
  %or.cond = select i1 %i.ak, i1 true, i1 %.not11.not
  br i1 %or.cond, label %_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_.exit, label %.lr.ph

_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_.exit: ; preds = %.lr.ph, %bb.j, %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit, %bb.i
  %.sroa.0.0 = phi i1 [ false, %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit ], [ %i.ae, %bb.i ], [ false, %bb.j ], [ %i.ak, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i16 @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed14get_script_val(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !5, !alias.scope !79, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %..i.i = select i1 %i.d, i32 4095, i32 65535
  %.not.i.i = icmp samesign ugt i32 %1, %..i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %1, 6
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !79, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !79, !noundef !4
  %i.j = icmp ugt i64 %i.i, %i.f
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.f
  %.sroa.04.0.copyload.i.i = load i16, ptr %i.k, align 1, !noalias !79
  %i.l = zext i16 %.sroa.04.0.copyload.i.i to i64
  %i.m = and i32 %1, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.l, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !79, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !79, !noundef !4
  %i.t = icmp ult i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.o
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.u, align 1, !noalias !79
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef i16 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE20get32_by_small_indexB1o_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, i32 noundef range(i32 0, 1114112) %1) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i16 [ %.sroa.02.0.copyload.i.i, %bb.b ], [ %i.v, %bb.c ] ; 3 uses
  %i.w = lshr i16 %.sroa.01.0.i, 10
  switch i16 %i.w, label %bb.k [
    i16 3, label %bb.e
    i16 1, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit
    i16 2, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = and i16 %.sroa.01.0.i, 1023              ; 3 uses
  %i.y = load ptr, ptr %0, align 8, !alias.scope !77, !nonnull !4, !noundef !4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !77, !noundef !4 ; 2 uses
  %i.ab = zext nneg i16 %i.x to i64               ; 5 uses
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.y, align 1, !alias.scope !80, !noalias !81 ; 3 uses
  %i.ad = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.ad, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit.i

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit.i: ; preds = %bb.f
  %i.ae = zext i16 %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.af = add nsw i64 %i.aa, -2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ah = add nuw nsw i64 %i.ae, 4294967295
  %2 = and i64 %i.ah, 4294967295                  ; 3 uses
  %i.ai = shl nuw nsw i64 %2, 1                   ; 2 uses
  %i.aj = sub i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %.not.i15.i = icmp ugt i16 %.sroa.0.0.copyload.i.i, %i.x
  br i1 %.not.i15.i, label %bb.g, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit

bb.g:                                             ; preds = %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit.i
  %i.al = icmp eq i16 %i.x, 0
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = add nsw i64 %i.ab, -1
  %i.an = icmp samesign ult i64 %i.am, %2
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr [2 x i8], ptr %i.y, i64 %i.ab
  %.sroa.02.0.copyload.i.i.i = load i16, ptr %i.ao, align 1, !noalias !82
  %i.ap = zext i16 %.sroa.02.0.copyload.i.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i = phi i64 [ %i.ap, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.aq = add nuw nsw i64 %i.ab, 1
  %i.ar = icmp eq i64 %i.aq, %i.ae
  br i1 %i.ar, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = icmp samesign ugt i64 %2, %i.ab
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ab
  %.sroa.05.0.copyload.i.i.i = load i16, ptr %i.at, align 1, !noalias !82
  %i.au = zext i16 %.sroa.05.0.copyload.i.i.i to i64
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.i

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.au, %bb.j ], [ %i.aj, %bb.i ]
  %i.av = sub nuw i64 %.sroa.04.0.i.i.i, %.sroa.0.0.i.i.i
  %.not14.i = icmp ult i64 %i.av, 2
  br i1 %.not14.i, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit, label %bb.m

bb.k:                                             ; preds = %bb.d
  br label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit

bb.l:                                             ; preds = %bb.d
  br label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit

bb.m:                                             ; preds = %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.0.i.i.i
  %.sroa.012.0.copyload.i = load i16, ptr %i.aw, align 1, !noalias !77
  br label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit

_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32.exit: ; preds = %bb.d, %bb.e, %bb.f, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit.i, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.i, %bb.k, %bb.l, %bb.m
  %.sroa.0.0.i = phi i16 [ 0, %bb.d ], [ %.sroa.01.0.i, %bb.k ], [ 1, %bb.l ], [ %.sroa.012.0.copyload.i, %bb.m ], [ 103, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.i ], [ 103, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit.i ], [ 103, %bb.e ], [ 103, %bb.f ]
  ret i16 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i16 @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed16get_script_val32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !5, !alias.scope !92, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %..i = select i1 %i.d, i32 4095, i32 65535
  %.not.i = icmp ugt i32 %1, %..i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %1, 6
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !92, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !92, !noundef !4
  %i.j = icmp ugt i64 %i.i, %i.f
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.f
  %.sroa.04.0.copyload.i = load i16, ptr %i.k, align 1, !noalias !92
  %i.l = zext i16 %.sroa.04.0.copyload.i to i64
  %i.m = and i32 %1, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.l, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !92, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !92, !noundef !4
  %i.t = icmp ult i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.o
  %.sroa.02.0.copyload.i = load i16, ptr %i.u, align 1, !noalias !92
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = icmp ult i32 %1, 1114112
  br i1 %i.v, label %bb.f, label %bb.e, !prof !93

bb.d:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sroa.01.0 = phi i16 [ %.sroa.02.0.copyload.i, %bb.b ], [ %i.z, %bb.f ], [ %i.y, %bb.e ] ; 3 uses
  %i.w = lshr i16 %.sroa.01.0, 10
  switch i16 %i.w, label %bb.m [
    i16 3, label %bb.g
    i16 1, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread
    i16 2, label %bb.n
  ]

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.y = load i16, ptr %i.x, align 4, !noundef !4
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.z = tail call noundef i16 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE20get32_by_small_indexB1o_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, i32 noundef range(i32 0, 1114112) %1) #20
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.aa = and i16 %.sroa.01.0, 1023               ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %i.ae = zext nneg i16 %i.aa to i64              ; 5 uses
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i = load i16, ptr %i.ab, align 1, !alias.scope !94, !noalias !95 ; 3 uses
  %i.ag = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.ag, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit: ; preds = %bb.h
  %i.ah = zext i16 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.ai = add nsw i64 %i.ad, -2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ak = add nuw nsw i64 %i.ah, 4294967295
  %2 = and i64 %i.ak, 4294967295                  ; 3 uses
  %i.al = shl nuw nsw i64 %2, 1                   ; 2 uses
  %i.am = sub i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %.not.i15 = icmp ugt i16 %.sroa.0.0.copyload.i, %i.aa
  br i1 %.not.i15, label %bb.i, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread

bb.i:                                             ; preds = %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit
  %i.ao = icmp eq i16 %i.aa, 0
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i64 %i.ae, -1
  %i.aq = icmp samesign ult i64 %i.ap, %2
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr [2 x i8], ptr %i.ab, i64 %i.ae
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.ar, align 1, !noalias !96
  %i.as = zext i16 %.sroa.02.0.copyload.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i = phi i64 [ %i.as, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.at = add nuw nsw i64 %i.ae, 1
  %i.au = icmp eq i64 %i.at, %i.ah
  br i1 %i.au, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = icmp samesign ugt i64 %2, %i.ae
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ae
  %.sroa.05.0.copyload.i.i = load i16, ptr %i.aw, align 1, !noalias !96
  %i.ax = zext i16 %.sroa.05.0.copyload.i.i to i64
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit: ; preds = %bb.l, %bb.k
  %.sroa.04.0.i.i = phi i64 [ %i.ax, %bb.l ], [ %i.am, %bb.k ]
  %i.ay = sub nuw i64 %.sroa.04.0.i.i, %.sroa.0.0.i.i
  %.not14 = icmp ult i64 %i.ay, 2
  br i1 %.not14, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread, label %bb.o

bb.m:                                             ; preds = %bb.d
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread

bb.n:                                             ; preds = %bb.d
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread: ; preds = %bb.h, %bb.g, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit, %bb.o, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit, %bb.d, %bb.n, %bb.m
  %.sroa.0.0 = phi i16 [ 0, %bb.d ], [ %.sroa.01.0, %bb.m ], [ 1, %bb.n ], [ %.sroa.012.0.copyload, %bb.o ], [ 103, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit ], [ 103, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit ], [ 103, %bb.g ], [ 103, %bb.h ]
  ret i16 %.sroa.0.0

bb.o:                                             ; preds = %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.i.i
  %.sroa.012.0.copyload = load i16, ptr %i.az, align 1
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed25get_script_extensions_val(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !5, !alias.scope !104, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %..i.i = select i1 %i.d, i32 4095, i32 65535
  %.not.i.i = icmp samesign ugt i32 %1, %..i.i
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE11small_indexB1o_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, i32 noundef %1)
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.f = lshr i32 %1, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !106, !noundef !4
  %i.i = zext nneg i32 %i.f to i64                ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !106, !noundef !4
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, -1
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.i
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.p, align 1, !noalias !106
  %i.q = and i32 %1, 63
  %i.r = zext i16 %.sroa.02.0.copyload.i.i to i32
  %i.s = add nuw nsw i32 %i.q, %i.r
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i

_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i: ; preds = %bb.b, %bb.e, %bb.d
  %.sroa.02.0.i.i = phi i32 [ %i.n, %bb.d ], [ %i.e, %bb.b ], [ %i.s, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !104, !noundef !4
  %i.v = zext i32 %.sroa.02.0.i.i to i64          ; 2 uses
  %.not.i = icmp ugt i64 %i.u, %i.v
  br i1 %.not.i, label %bb.f, label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed27get_script_extensions_val32.exit

bb.f:                                             ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !104, !nonnull !4
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.v
  %i.z = tail call { ptr, i64 } @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed26get_scx_val_using_trie_val(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.y) ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  br label %_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed27get_script_extensions_val32.exit

_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed27get_script_extensions_val32.exit: ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i, %bb.f
  %.sroa.3.0.i = phi i64 [ %i.ab, %bb.f ], [ 0, %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i ]
  %.sroa.02.0.i = phi ptr [ %i.aa, %bb.f ], [ inttoptr (i64 1 to ptr), %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ]
  %i.ac = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0.i, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define { ptr, i64 } @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed26get_scx_val_using_trie_val(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #5 {
bb.a:
  %.sroa.011.0.copyload = load i16, ptr %1, align 1 ; 3 uses
  %i.a = lshr i16 %.sroa.011.0.copyload, 10
  switch i16 %i.a, label %bb.h [
    i16 3, label %bb.b
    i16 1, label %bb.i
    i16 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i16 %.sroa.011.0.copyload, 1023      ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = zext nneg i16 %i.b to i64                ; 5 uses
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i16, ptr %i.c, align 1, !alias.scope !121, !noalias !122 ; 3 uses
  %i.h = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.h, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit: ; preds = %bb.c
  %i.i = zext i16 %.sroa.0.0.copyload.i to i64    ; 2 uses
  %i.j = add nsw i64 %i.e, -2
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.l = add nuw nsw i64 %i.i, 4294967295
  %2 = and i64 %i.l, 4294967295                   ; 3 uses
  %i.m = shl nuw nsw i64 %2, 1                    ; 2 uses
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %.not.i = icmp ugt i16 %.sroa.0.0.copyload.i, %i.b
  br i1 %.not.i, label %bb.d, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit

bb.d:                                             ; preds = %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit
  %i.p = icmp eq i16 %i.b, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i64 %i.f, -1
  %i.r = icmp samesign ult i64 %i.q, %2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr [2 x i8], ptr %i.c, i64 %i.f
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.s, align 1, !noalias !123
  %i.t = zext i16 %.sroa.02.0.copyload.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %i.t, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.u = add nuw nsw i64 %i.f, 1
  %i.v = icmp eq i64 %i.u, %i.i
  br i1 %i.v, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp samesign ugt i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.f
  %.sroa.05.0.copyload.i.i = load i16, ptr %i.x, align 1, !noalias !123
  %i.y = zext i16 %.sroa.05.0.copyload.i.i to i64
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i: ; preds = %bb.f, %bb.g
  %.sroa.04.0.i.i = phi i64 [ %i.y, %bb.g ], [ %i.n, %bb.f ]
  %i.z = sub nuw i64 %.sroa.04.0.i.i, %.sroa.0.0.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i.i
  %i.ab = lshr i64 %i.z, 1
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit: ; preds = %bb.c, %bb.b, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i
  %.sroa.3.0.i = phi i64 [ %i.ab, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i ], [ undef, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit ], [ undef, %bb.b ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.aa, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i ], [ null, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit ], [ null, %bb.b ], [ null, %bb.c ] ; 2 uses
  %.not12 = icmp eq ptr %.sroa.0.0.i, null
  %i.ac = icmp eq i64 %.sroa.3.0.i, 0
  %or.cond = select i1 %.not12, i1 true, i1 %i.ac ; 2 uses
  %i.ad = add nsw i64 %.sroa.3.0.i, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %.sroa.3.0 = select i1 %or.cond, i64 0, i64 %i.ad
  %.sroa.05.0 = select i1 %or.cond, ptr inttoptr (i64 1 to ptr), ptr %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit28, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit
  %.sroa.5.0 = phi i64 [ %.sroa.5.1, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit28 ], [ %.sroa.3.0, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit ], [ 1, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit28 ], [ %.sroa.05.0, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit ], [ %1, %bb.a ]
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.ag

bb.i:                                             ; preds = %bb.a, %bb.a
  %i.ah = and i16 %.sroa.011.0.copyload, 1023     ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4 ; 2 uses
  %i.al = zext nneg i16 %i.ah to i64              ; 5 uses
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i13 = load i16, ptr %i.ai, align 1, !alias.scope !124, !noalias !125 ; 3 uses
  %i.an = icmp eq i16 %.sroa.0.0.copyload.i13, 0
  br i1 %i.an, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit28, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit19

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit19: ; preds = %bb.j
  %i.ao = zext i16 %.sroa.0.0.copyload.i13 to i64 ; 2 uses
  %i.ap = add nsw i64 %i.ak, -2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 2 ; 2 uses
  %i.ar = add nuw nsw i64 %i.ao, 4294967295
  %3 = and i64 %i.ar, 4294967295                  ; 3 uses
  %i.as = shl nuw nsw i64 %3, 1                   ; 2 uses
  %i.at = sub i64 %i.ap, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %.not.i20 = icmp ugt i16 %.sroa.0.0.copyload.i13, %i.ah
  br i1 %.not.i20, label %bb.k, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit28

bb.k:                                             ; preds = %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit19
  %i.av = icmp eq i16 %i.ah, 0
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = add nsw i64 %i.al, -1
  %i.ax = icmp samesign ult i64 %i.aw, %3
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr [2 x i8], ptr %i.ai, i64 %i.al
  %.sroa.02.0.copyload.i.i23 = load i16, ptr %i.ay, align 1, !noalias !126
  %i.az = zext i16 %.sroa.02.0.copyload.i.i23 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i24 = phi i64 [ %i.az, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ba = add nuw nsw i64 %i.al, 1
  %i.bb = icmp eq i64 %i.ba, %i.ao
  br i1 %i.bb, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i26, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = icmp samesign ugt i64 %3, %i.al
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.al
  %.sroa.05.0.copyload.i.i25 = load i16, ptr %i.bd, align 1, !noalias !126
  %i.be = zext i16 %.sroa.05.0.copyload.i.i25 to i64
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i26

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i26: ; preds = %bb.m, %bb.n
  %.sroa.04.0.i.i27 = phi i64 [ %i.be, %bb.n ], [ %i.at, %bb.m ]
  %i.bf = sub nuw i64 %.sroa.04.0.i.i27, %.sroa.0.0.i.i24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.0.i.i24
  %i.bh = lshr i64 %i.bf, 1
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit28

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E3getB1X_.exit28: ; preds = %bb.j, %bb.i, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit19, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i26
  %.sroa.3.0.i21 = phi i64 [ %i.bh, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i26 ], [ undef, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit19 ], [ undef, %bb.i ], [ undef, %bb.j ]
  %.sroa.0.0.i22 = phi ptr [ %i.bg, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E16get_things_rangeB1X_.exit.i26 ], [ null, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentsINtNtNtB9_7zerovec5slice9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtB5_7Index16E20from_bytes_uncheckedB1X_.exit19 ], [ null, %bb.i ], [ null, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i22, null        ; 2 uses
  %.sroa.5.1 = select i1 %.not, i64 0, i64 %.sroa.3.0.i21
  %.sroa.0.1 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.0.i22
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed27get_script_extensions_val32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !5, !alias.scope !131, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %..i = select i1 %i.d, i32 4095, i32 65535
  %.not.i = icmp ugt i32 %1, %..i
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %1, 1114112
  br i1 %i.e, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.f = lshr i32 %1, 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !132, !noundef !4
  %i.i = zext nneg i32 %i.f to i64                ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !132, !noundef !4
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, -1
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !132, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.i
  %.sroa.02.0.copyload.i = load i16, ptr %i.p, align 1, !noalias !132
  %i.q = and i32 %1, 63
  %i.r = zext i16 %.sroa.02.0.copyload.i to i32
  %i.s = add nuw nsw i32 %i.q, %i.r
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !131, !noundef !4
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, -1
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit

bb.g:                                             ; preds = %bb.b
  %i.x = tail call fastcc noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE11small_indexB1o_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, i32 noundef %1)
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit

_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.g
  %.sroa.02.0.i = phi i32 [ %i.w, %bb.f ], [ %i.x, %bb.g ], [ %i.s, %bb.e ], [ %i.n, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !131, !noundef !4
  %i.aa = zext i32 %.sroa.02.0.i to i64           ; 2 uses
  %.not = icmp ugt i64 %i.z, %i.aa
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !131, !nonnull !4
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = tail call { ptr, i64 } @_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed26get_scx_val_using_trie_val(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.ad) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit, %bb.h
  %.sroa.3.0 = phi i64 [ %i.ag, %bb.h ], [ 0, %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit ]
  %.sroa.02.0 = phi ptr [ %i.af, %bb.h ], [ inttoptr (i64 1 to ptr), %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0) ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE11small_indexB1o_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.c = lshr i32 %1, 14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i8, ptr %i.d, align 8, !range !5, !alias.scope !135, !noundef !4
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %i.b, 4096
  br i1 %i.g, label %bb.e, label %bb.d, !prof !136

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #19, !noalias !135
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1020, %bb.b ], [ 64, %bb.c ]
  %i.h = add nuw nsw i32 %.sink.i, %i.c
  %i.i = load ptr, ptr %0, align 8, !alias.scope !135, !nonnull !4, !noundef !4 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !135, !noundef !4 ; 5 uses
  %i.l = zext nneg i32 %i.h to i64                ; 2 uses
  %i.m = icmp ugt i64 %i.k, %i.l
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !135, !noundef !4
  %i.p = trunc i64 %i.o to i32
  %i.q = add i32 %i.p, -1
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE20internal_small_indexB1o_.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.l
  %.sroa.047.0.copyload.i = load i16, ptr %i.r, align 1, !noalias !135
  %i.s = zext i16 %.sroa.047.0.copyload.i to i32
  %i.t = lshr i32 %1, 9
  %i.u = and i32 %i.t, 31
  %i.v = add nuw nsw i32 %i.u, %i.s
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = icmp ugt i64 %i.k, %i.w
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !135, !noundef !4
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.aa, -1
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE20internal_small_indexB1o_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.w
  %.sroa.049.0.copyload.i = load i16, ptr %i.ac, align 1, !noalias !135 ; 2 uses
  %i.ad = zext i16 %.sroa.049.0.copyload.i to i32 ; 2 uses
  %i.ae = lshr i32 %1, 4                          ; 3 uses
  %i.af = and i32 %i.ae, 31                       ; 2 uses
  %i.ag = icmp sgt i16 %.sroa.049.0.copyload.i, -1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = add nuw nsw i32 %i.af, %i.ad
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = icmp ugt i64 %i.k, %i.ai
  br i1 %i.aj, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ak = and i32 %i.ae, 24
  %i.al = lshr i32 %i.af, 3
  %i.am = and i32 %i.ad, 32767
  %i.an = or disjoint i32 %i.al, %i.ak
  %i.ao = add nuw nsw i32 %i.am, %i.an            ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = icmp ugt i64 %i.k, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !135, !noundef !4
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, -1
  br label %_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE20internal_small_indexB1o_.exit

bb.m:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ai
  %.sroa.051.0.copyload.i = load i16, ptr %i.av, align 1, !noalias !135
  %i.aw = zext i16 %.sroa.051.0.copyload.i to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.sroa.039.0.i = phi i32 [ %i.aw, %bb.m ], [ %i.bu, %bb.r ]
  %i.ax = and i32 %1, 15
  %i.ay = add nuw nsw i32 %.sroa.039.0.i, %i.ax
end_hunk_0
begin_hunk_1_@_RNvNvNtCskcAkE2pR8X1_14icu_properties5names13get_loose_u167recurse:bb.a

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECskcAkE2pR8X1_14icu_properties(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c, i8 noundef %.sroa.019.0) #21
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.d, align 8, !noundef !4
  %i.ad = tail call fastcc { i64, i64 } @_RNvNvNtCskcAkE2pR8X1_14icu_properties5names13get_loose_u167recurse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.o) ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  br label %bb.g

.sink.split:                                      ; preds = %bb.c, %bb.k
  %.sroa.9.2.ph = phi i64 [ %.sroa.9.0, %bb.c ], [ undef, %bb.k ]
  %.sroa.011.2.ph = phi i64 [ %.sroa.011.0, %bb.c ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a
  %.sroa.9.2 = phi i64 [ undef, %bb.a ], [ %.sroa.9.2.ph, %.sink.split ]
  %.sroa.011.2 = phi i64 [ 0, %bb.a ], [ %.sroa.011.2.ph, %.sink.split ]
  %i.af = insertvalue { i64, i64 } poison, i64 %.sroa.011.2, 0
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.sroa.9.2, 1
  ret { i64, i64 } %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define range(i64 1, 2207613190144) i64 @_RNvXs0_NtCskcAkE2pR8X1_14icu_properties4bidiNtB5_18BidiMirroringGlyphNtNtCsgTMNKkQstJd_7zerovec3ule5AsULE14from_unaligned(i24 %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.05.0.insert.insert = zext i24 %0 to i32  ; 3 uses
  %i.a = and i32 %.sroa.05.0.insert.insert, 2097151 ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %i.a, 55296
  %i.d = add nsw i32 %i.c, -1114112
  %i.e = icmp ult i32 %i.d, -1112064
  br i1 %i.e, label %_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %.sroa.01.0.i = phi i64 [ %i.i, %bb.d ], [ 4294967295, %bb.a ]
  %i.f = lshr i32 %.sroa.05.0.insert.insert, 22
  %i.g = trunc nuw nsw i32 %i.f to i8
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit.thread
  ]

bb.d:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.a, 1114112
  tail call void @llvm.assume(i1 %i.h)
  %i.i = zext nneg i32 %i.a to i64
  br label %bb.c

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  br label %_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit

bb.f:                                             ; preds = %bb.c
  br label %_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit

_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.08.0.i = phi i32 [ 256, %bb.f ], [ 0, %bb.e ], [ 512, %bb.c ]
  %i.j = lshr i32 %.sroa.05.0.insert.insert, 21
  %.sroa.410.4.insert.ext.i = and i32 %i.j, 1
  %.sroa.410.5.insert.insert.i = or disjoint i32 %.sroa.08.0.i, %.sroa.410.4.insert.ext.i
  %.sroa.4.0.insert.ext.i = zext nneg i32 %.sroa.410.5.insert.insert.i to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.01.0.i
  br label %_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit.thread

_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit.thread: ; preds = %bb.b, %bb.c, %_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit
  %i.k = phi i64 [ %.sroa.0.0.insert.insert.i, %_RNvXsf_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_4bidi18BidiMirroringGlyphNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32.exit ], [ 2203318222847, %bb.c ], [ 2203318222847, %bb.b ]
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @_RNvXs9_NtCskcAkE2pR8X1_14icu_properties5propsNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptINtNtCshzWfHUSfYae_4core7convert4FromNtB5_6ScriptE4from(i16 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i16 %0, 213
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @106, i64 %i.b
  %.sroa.03.0.copyload = load i32, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i32 [ %.sroa.03.0.copyload, %bb.b ], [ 2054847066, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef i16 @_RNvXsa_NtCskcAkE2pR8X1_14icu_properties5propsNtB5_6ScriptINtNtCshzWfHUSfYae_4core7convert4FromNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptE4from(i32 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 false)
  %i.c = lshr i32 %i.b, 3
  %i.d = sub nuw nsw i32 4, %i.c
  %i.e = zext nneg i32 %i.d to i64
  %i.f = call { i16, i16 } @_RNvNtCskcAkE2pR8X1_14icu_properties5names14get_strict_u16(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @108, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 5) %i.e) ; 2 uses
  %i.g = extractvalue { i16, i16 } %i.f, 0
  %i.h = trunc i16 %i.g to i1
  %i.i = extractvalue { i16, i16 } %i.f, 1
  %.sroa.01.0 = select i1 %i.h, i16 %i.i, i16 103
  ret i16 %.sroa.01.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 0, 821559297) i32 @_RNvXsd_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_5props20GeneralCategoryGroupNtNtCsgTMNKkQstJd_7zerovec3ule5AsULE14from_unaligned(i16 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i16 %0, -9
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i16 %0, 32
  br i1 %i.b, label %bb.c, label %_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i16 %0, 30
  %i.d = zext nneg i16 %0 to i32
  %i.e = shl nuw nsw i32 1, %i.d
  %.sroa.0.1.i = select i1 %i.c, i32 %i.e, i32 0
  br label %_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add i16 %0, 8
  %i.f = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvXsd_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_5props20GeneralCategoryGroupNtNtCsgTMNKkQstJd_7zerovec3ule5AsULE14from_unaligned, i64 %i.f
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit

_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit: ; preds = %switch.lookup, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i, %bb.c ], [ %switch.load, %switch.lookup ], [ 0, %bb.b ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i64 512, 4611686018427388928) i64 @_RNvXse_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_5props20GeneralCategoryGroupNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32(i32 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i32 %0, 65535
  br i1 %i.a, label %_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 65527
  br i1 %i.b, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 32
  br i1 %i.c, label %bb.d, label %_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 30
  %i.e = shl nuw nsw i32 1, %0
  %.sroa.0.1.i = select i1 %i.d, i32 %i.e, i32 0
  %i.f = zext nneg i32 %.sroa.0.1.i to i64
  %i.g = shl nuw nsw i64 %i.f, 32
  %i.h = or disjoint i64 %i.g, 512
  br label %_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit

switch.lookup:                                    ; preds = %bb.b
  %narrow = add nuw nsw i32 %0, 8
  %i.i = and i32 %narrow, 65535
  %i.j = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXse_NtCskcAkE2pR8X1_14icu_properties9trievalueNtNtB7_5props20GeneralCategoryGroupNtNtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrie9TrieValue12try_from_u32, i64 %i.j
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit

_RNvNtCskcAkE2pR8X1_14icu_properties9trievalue17packed_u16_to_gcg.exit: ; preds = %switch.lookup, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.insert.insert = phi i64 [ 513, %bb.a ], [ %i.h, %bb.d ], [ %switch.load, %switch.lookup ], [ 512, %bb.c ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define { ptr, i64 } @_RNvXsj_NtCskcAkE2pR8X1_14icu_properties5namesNtNtNtB7_8provider5names32PropertyEnumToValueNameLinearMapNtB5_29PropertyEnumToValueNameLookup3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = zext i32 %1 to i64                       ; 6 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E3getCskcAkE2pR8X1_14icu_properties.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i16, ptr %i.a, align 1, !alias.scope !173, !noalias !174 ; 2 uses
  %i.f = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %i.f, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E3getCskcAkE2pR8X1_14icu_properties.exit, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E20from_bytes_uncheckedCskcAkE2pR8X1_14icu_properties.exit

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E20from_bytes_uncheckedCskcAkE2pR8X1_14icu_properties.exit: ; preds = %bb.b
  %i.g = zext i16 %.sroa.0.0.copyload.i to i64    ; 3 uses
  %i.h = add nsw i64 %i.c, -2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.j = add nuw nsw i64 %i.g, 4294967295
  %2 = and i64 %i.j, 4294967295                   ; 3 uses
  %i.k = shl nuw nsw i64 %2, 1                    ; 2 uses
  %i.l = sub i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %.not.i = icmp samesign ugt i64 %i.g, %i.d
  br i1 %.not.i, label %bb.c, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E3getCskcAkE2pR8X1_14icu_properties.exit

bb.c:                                             ; preds = %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E20from_bytes_uncheckedCskcAkE2pR8X1_14icu_properties.exit
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i64 %i.d, -1
  %i.p = icmp samesign ult i64 %i.o, %2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr [2 x i8], ptr %i.a, i64 %i.d
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.q, align 1, !noalias !175
  %i.r = zext i16 %.sroa.02.0.copyload.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.s = add nuw nsw i64 %i.d, 1
  %i.t = icmp eq i64 %i.s, %i.g
  br i1 %i.t, label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E16get_things_rangeCskcAkE2pR8X1_14icu_properties.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ugt i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.d
  %.sroa.05.0.copyload.i.i = load i16, ptr %i.v, align 1, !noalias !175
  %i.w = zext i16 %.sroa.05.0.copyload.i.i to i64
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E16get_things_rangeCskcAkE2pR8X1_14icu_properties.exit.i

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E16get_things_rangeCskcAkE2pR8X1_14icu_properties.exit.i: ; preds = %bb.e, %bb.f
  %.sroa.04.0.i.i = phi i64 [ %i.w, %bb.f ], [ %i.l, %bb.e ]
  %i.x = sub nuw i64 %.sroa.04.0.i.i, %.sroa.0.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i
  br label %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E3getCskcAkE2pR8X1_14icu_properties.exit

_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E3getCskcAkE2pR8X1_14icu_properties.exit: ; preds = %bb.b, %bb.a, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E20from_bytes_uncheckedCskcAkE2pR8X1_14icu_properties.exit, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E16get_things_rangeCskcAkE2pR8X1_14icu_properties.exit.i
  %.sroa.3.0.i = phi i64 [ %i.x, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E16get_things_rangeCskcAkE2pR8X1_14icu_properties.exit.i ], [ undef, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E20from_bytes_uncheckedCskcAkE2pR8X1_14icu_properties.exit ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.y, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E16get_things_rangeCskcAkE2pR8X1_14icu_properties.exit.i ], [ null, %_RNvMs8_NtNtCsgTMNKkQstJd_7zerovec10varzerovec10componentsINtB5_20VarZeroVecComponentseNtB5_7Index16E20from_bytes_uncheckedCskcAkE2pR8X1_14icu_properties.exit ], [ null, %bb.a ], [ null, %bb.b ]
  %i.z = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.aa = insertvalue { ptr, i64 } %i.z, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_RNvXsk_NtCskcAkE2pR8X1_14icu_properties5namesNtNtNtB7_8provider5names28PropertyScriptToIcuScriptMapNtB5_29PropertyEnumToValueNameLookup3get(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !noundef !4 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 false)
  %i.j = lshr i32 %i.i, 3
  %i.k = sub nuw nsw i32 4, %i.j
  %i.l = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.3.0 = phi i64 [ %i.l, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.m = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsu_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB5_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtEINtNtCseizbxpKYfu7_8zerofrom9zero_from8ZeroFromB10_E9zero_fromB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 54)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %i.c, i64 20, i1 false)
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1 = load i64, ptr %i.h, align 8, !noundef !4
  %.val2 = load i16, ptr %i.b, align 4, !noundef !4
  store ptr %i.e, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 %.val2, ptr %i.l, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCsl2c274gG30Y_8zerotrie6reader10take_value(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nonlazybind "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noinline noreturn }
attributes #20 = { noinline }
attributes #21 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = distinct !{!6, !"_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3"}
!7 = distinct !{!7, !6, !"_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3: argument 1"}
!8 = distinct !{!8, !6, !"_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3: argument 0"}
!9 = distinct !{!9, !"_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2"}
!10 = distinct !{!10, !9, !"_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2: argument 1"}
!11 = distinct !{!11, !9, !"_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2: argument 0"}
!12 = distinct !{!12, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh16binary_search_byNCNvB2_13binary_search0ECskcAkE2pR8X1_14icu_properties"}
!13 = distinct !{!13, !12, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh16binary_search_byNCNvB2_13binary_search0ECskcAkE2pR8X1_14icu_properties: argument 0"}
!14 = distinct !{!14, !12, !"_RINvMNtCshzWfHUSfYae_4core5sliceSh16binary_search_byNCNvB2_13binary_search0ECskcAkE2pR8X1_14icu_properties: argument 1"}
!15 = distinct !{!15, !"_RNvNtCsl2c274gG30Y_8zerotrie6reader13get_branch_w0"}
!16 = distinct !{!16, !15, !"_RNvNtCsl2c274gG30Y_8zerotrie6reader13get_branch_w0: argument 0"}
!17 = !{!"address", !"read_provenance"}
!18 = !{!7}
!19 = !{!8}
!20 = !{!10}
!21 = !{!11}
!22 = !{!13}
!23 = !{!14}
!24 = !{!16}
!25 = distinct !{!25, !"_RNvMs8_NtCs6QFUeBF2qRm_4yoke4yokeINtB5_4YokeNtNtCskcAkE2pR8X1_14icu_properties8provider20PropertyCodePointSetINtNtCshzWfHUSfYae_4core6option6OptionRuEE32convert_cart_into_option_pointerBK_"}
!26 = distinct !{!26, !25, !"_RNvMs8_NtCs6QFUeBF2qRm_4yoke4yokeINtB5_4YokeNtNtCskcAkE2pR8X1_14icu_properties8provider20PropertyCodePointSetINtNtCshzWfHUSfYae_4core6option6OptionRuEE32convert_cart_into_option_pointerBK_: argument 1"}
!27 = distinct !{!27, !25, !"_RNvMs8_NtCs6QFUeBF2qRm_4yoke4yokeINtB5_4YokeNtNtCskcAkE2pR8X1_14icu_properties8provider20PropertyCodePointSetINtNtCshzWfHUSfYae_4core6option6OptionRuEE32convert_cart_into_option_pointerBK_: argument 0"}
!28 = !{!27, !26}
!29 = distinct !{!29, !"_RNvMs8_NtCs6QFUeBF2qRm_4yoke4yokeINtB5_4YokeNtNtCskcAkE2pR8X1_14icu_properties8provider18PropertyUnicodeSetINtNtCshzWfHUSfYae_4core6option6OptionRuEE32convert_cart_into_option_pointerBK_"}
!30 = distinct !{!30, !29, !"_RNvMs8_NtCs6QFUeBF2qRm_4yoke4yokeINtB5_4YokeNtNtCskcAkE2pR8X1_14icu_properties8provider18PropertyUnicodeSetINtNtCshzWfHUSfYae_4core6option6OptionRuEE32convert_cart_into_option_pointerBK_: argument 1"}
!31 = distinct !{!31, !29, !"_RNvMs8_NtCs6QFUeBF2qRm_4yoke4yokeINtB5_4YokeNtNtCskcAkE2pR8X1_14icu_properties8provider18PropertyUnicodeSetINtNtCshzWfHUSfYae_4core6option6OptionRuEE32convert_cart_into_option_pointerBK_: argument 0"}
!32 = !{!31, !30}
!33 = distinct !{!33, !"_RINvMNtCshzWfHUSfYae_4core5sliceSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj2_E16binary_search_byNCNvMs3_NtNtBC_7zerovec5sliceINtB1Q_9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptE13binary_search0EB2w_"}
!34 = distinct !{!34, !33, !"_RINvMNtCshzWfHUSfYae_4core5sliceSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj2_E16binary_search_byNCNvMs3_NtNtBC_7zerovec5sliceINtB1Q_9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptE13binary_search0EB2w_: argument 0"}
!35 = distinct !{!35, !33, !"_RINvMNtCshzWfHUSfYae_4core5sliceSINtNtNtCsgTMNKkQstJd_7zerovec3ule5plain11RawBytesULEKj2_E16binary_search_byNCNvMs3_NtNtBC_7zerovec5sliceINtB1Q_9ZeroSliceNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptE13binary_search0EB2w_: argument 1"}
!36 = !{!34}
!37 = !{!35}
!38 = distinct !{!38, !"_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed12has_script32"}
!39 = distinct !{!39, !38, !"_RNvMs5_NtCskcAkE2pR8X1_14icu_properties6scriptNtB5_28ScriptWithExtensionsBorrowed12has_script32: argument 0"}
!40 = distinct !{!40, !"_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_"}
!41 = distinct !{!41, !40, !"_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_: argument 0"}
!42 = distinct !{!42, !"_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE10fast_indexB1o_"}
!43 = distinct !{!43, !42, !"_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE10fast_indexB1o_: argument 0"}
!44 = distinct !{!44, !"_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_"}
!45 = distinct !{!45, !44, !"_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_: argument 1"}
!46 = distinct !{!46, !44, !"_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_: argument 0"}
!47 = distinct !{!47, !"_RNvXs0_NtNtCsgTMNKkQstJd_7zerovec7zerovec5sliceINtB5_13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB18_"}
!48 = distinct !{!48, !47, !"_RNvXs0_NtNtCsgTMNKkQstJd_7zerovec7zerovec5sliceINtB5_13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB18_: argument 0"}
!49 = !{!39}
!50 = !{!41, !39}
!51 = !{!43}
!52 = !{!43, !39}
!53 = !{!48, !46, !45, !39}
!54 = distinct !{!54, !"_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_"}
!55 = distinct !{!55, !54, !"_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE9get32_uleB1o_: argument 0"}
!56 = distinct !{!56, !"_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE10fast_indexB1o_"}
!57 = distinct !{!57, !56, !"_RNvMs_NtNtCs20C9KvGHlPa_15icu_collections13codepointtrie6cptrieINtB4_13CodePointTrieNtNtCskcAkE2pR8X1_14icu_properties6script13ScriptWithExtE10fast_indexB1o_: argument 0"}
!58 = distinct !{!58, !"_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_"}
!59 = distinct !{!59, !58, !"_RINvYINtNtNtCsgTMNKkQstJd_7zerovec7zerovec5slice13ZeroSliceIterNtNtCskcAkE2pR8X1_14icu_properties5props6ScriptENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBZ_NCNvMs5_NtB13_6scriptNtB3n_28ScriptWithExtensionsBorrowed12has_script320E0INtNtNtB1T_3ops12control_flow11ControlFlowBZ_EEB13_: argument 1"}
end_hunk_1
