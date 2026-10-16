Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.07?download=true
inline.NumInlined: 9996
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs4O_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16RenameSelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a

bb.h:                                             ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %exitcond.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.t = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 72057594037927936) %i.o, i64 range(i64 0, 72057594037927936) %i.s)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i6 = phi i64 [ %i.u, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.u = add nuw nsw i64 %.sroa.01.0.i6, 1        ; 2 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.0.i6 ; 2 uses
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %.sroa.01.0.i6 ; 2 uses
  %i.x = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.w) ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ab = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %.lr.ph
  %.sroa.0.0.i.i.i = phi i8 [ %i.ab, %bb.i ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.ac = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.ac, label %bb.h, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @222, i64 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4, !noundef !34 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.n, align 8, !nonnull !34, !noundef !34 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.o, align 8, !noundef !34 ; 8 uses
  %i.p = zext i32 %i.m to i64                     ; 5 uses
  %i.q = icmp eq i32 %i.m, 0
  br i1 %i.q, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp ugt i64 %.val1, %i.p
  br i1 %.not.i.i.i.i, label %bb.c, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.b
  %i.r = icmp eq i64 %.val1, %i.p
  br i1 %i.r, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !16931, !noundef !34
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #55
  unreachable

_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %.split.i.i.i.i, %bb.c
  store ptr %.val, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.p, ptr %i.v, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.x = add i32 %i.m, 1                          ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 6 uses
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url16cannot_be_a_base.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit
  %.not.i.i.i.i.i = icmp ugt i64 %.val1, %i.y
  br i1 %.not.i.i.i.i.i, label %bb.f, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.e
  %i.aa = icmp eq i64 %.val1, %i.y
  br i1 %i.aa, label %_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url16cannot_be_a_base.exit, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %i.y
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !16932, !noalias !16933, !noundef !34
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url16cannot_be_a_base.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.i.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef range(i64 0, 4294967296) %i.y, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #55, !noalias !16933
  unreachable

_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url16cannot_be_a_base.exit: ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit, %.split.i.i.i.i.i, %bb.f
  %i.ae = sub nuw i64 %.val1, %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16933
  store i32 47, ptr %i.a, align 4, !noalias !16933
  %i.ag = call noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !16933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16933
  %i.ah = xor i1 %i.ag, true
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.i, align 1
  %i.aj = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) @225, i64 noundef 16, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ak = call { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8username(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  %i.am = extractvalue { ptr, i64 } %i.ak, 1
  store ptr %i.al, ptr %i.h, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 8, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ap = call { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8password(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  store ptr %i.aq, ptr %i.g, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 8, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4host(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0)
  %i.au = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at, ptr noalias noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load <2 x i16>, ptr %i.av, align 8
  store <2 x i16> %i.aw, ptr %i.e, align 4
  %i.ax = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au, ptr noalias noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 4, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ay = call { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4path(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1
  store ptr %i.az, ptr %i.d, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noalias noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bd = call { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url5query(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  store ptr %i.be, ptr %i.c, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = call { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url8fragment(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1
  store ptr %i.bj, ptr %i.b, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @227)
  %i.bn = call noundef zeroext i1 @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret i1 %i.bn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore15fmt_for_explain(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !34, !noundef !34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !34, !align !41, !noundef !34
  %i.f = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @236, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore21with_exprs_and_inputs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 16 captures(none) dereferenceable(352) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [48 x i8], align 16               ; 10 uses
  %.sroa.7.sroa.0 = alloca [6 x i8], align 2      ; 4 uses
  %.sroa.12 = alloca [5 x i8], align 1            ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [112 x i8], align 16              ; 24 uses
  %.sroa.03.i.i.i.i = alloca [56 x i8], align 8   ; 5 uses
  %.sroa.5.i.i.i.sroa.15.i.sroa.0 = alloca [6 x i8], align 2 ; 4 uses
  %.sroa.5.i.i.i.sroa.20.i = alloca [5 x i8], align 1 ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 18 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.10 = alloca [5 x i8], align 1 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 12 uses
  %i.w = alloca [56 x i8], align 8                ; 12 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [56 x i8], align 8               ; 14 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [56 x i8], align 8               ; 14 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [56 x i8], align 8               ; 14 uses
  %i.am = alloca [48 x i8], align 8               ; 9 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [48 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 16              ; 9 uses
  %i.ar = alloca [48 x i8], align 8               ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 9 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [56 x i8], align 8               ; 14 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.12 = alloca [5 x i8], align 1 ; 3 uses
  %i.az = alloca [56 x i8], align 8               ; 9 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [24 x i8], align 8               ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 5 uses
  %i.bn = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.0.i.i = alloca [48 x i8], align 8        ; 5 uses
  %i.bo = alloca [48 x i8], align 8               ; 5 uses
  %i.bp = alloca [112 x i8], align 16             ; 4 uses
  %i.bq = alloca [112 x i8], align 16             ; 4 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [56 x i8], align 8               ; 9 uses
  %i.bt = alloca [24 x i8], align 8               ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 7 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %i.bx = alloca [24 x i8], align 16              ; 7 uses
  %i.by = alloca [8 x i8], align 8                ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 11 uses
  %i.ca = alloca [16 x i8], align 8               ; 6 uses
  %i.cb = alloca [56 x i8], align 8               ; 12 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [32 x i8], align 8               ; 11 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [112 x i8], align 16             ; 20 uses
  %.sroa.5.i.i.sroa.14.sroa.0 = alloca [6 x i8], align 2 ; 4 uses
  %.sroa.5.i.i.sroa.19 = alloca [5 x i8], align 1 ; 4 uses
  %i.cg = alloca [24 x i8], align 8               ; 7 uses
  %i.ch = alloca [8 x i8], align 8                ; 4 uses
  %i.ci = alloca [8 x i8], align 8                ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 6 uses
  %i.ck = alloca [24 x i8], align 8               ; 5 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [8 x i8], align 8                ; 4 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [112 x i8], align 16             ; 20 uses
  %i.cq = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.47.i.sroa.0 = alloca [6 x i8], align 2   ; 10 uses
  %.sroa.51.sroa.0.i = alloca [5 x i8], align 1   ; 9 uses
  %.sroa.56.i = alloca [15 x i8], align 1         ; 2 uses
  %.sroa.58.i = alloca [64 x i8], align 8         ; 6 uses
  %.sroa.65.i = alloca [22 x i8], align 2         ; 2 uses
  %i.cr = alloca [56 x i8], align 8               ; 18 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cu, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %3) #54
          to label %.body22 unwind label %bb.pz

bb.c:                                             ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !34
  %.not = icmp eq i64 %i.cw, 0
  br i1 %.not, label %bb.pp, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !34, !noundef !34 ; 251 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17171)
  %i.cz = load i64, ptr %i.cy, align 16, !range !84, !alias.scope !17171, !noundef !34 ; 5 uses
  %i.da = icmp ne i64 %i.cz, 31
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add nsw i64 %i.cz, -11
  %i.dc = icmp samesign ugt i64 %i.cz, 10
  %i.dd = select i1 %i.dc, i64 %i.db, i64 20
  switch i64 %i.dd, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.k
    i64 2, label %bb.m
    i64 3, label %bb.u
    i64 4, label %bb.af
    i64 5, label %bb.ah
    i64 6, label %bb.ax
    i64 7, label %bb.bh
    i64 8, label %bb.bj
    i64 9, label %bb.cl
    i64 10, label %bb.cn
    i64 11, label %bb.cw
    i64 12, label %bb.do
    i64 13, label %bb.dy
    i64 14, label %bb.ep
    i64 15, label %bb.ev
    i64 16, label %bb.fd
    i64 17, label %bb.fh
    i64 18, label %bb.fj
    i64 19, label %bb.fy
    i64 20, label %bb.gr
    i64 21, label %bb.nv
    i64 22, label %bb.om
    i64 23, label %bb.oq
    i64 24, label %bb.pl
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !17173
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.de)
          to label %.noexc unwind label %bb.pq

.noexc:                                           ; preds = %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dg = load ptr, ptr %i.df, align 16, !alias.scope !17174, !nonnull !34, !noundef !34 ; 2 uses
  %i.dh = atomicrmw add ptr %i.dg, i64 1 monotonic, align 8, !noalias !17175
  %i.di = icmp slt i64 %i.dh, 0
  br i1 %i.di, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !17174, !nonnull !34, !noundef !34 ; 2 uses
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !17175
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %bb.j, label %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %.noexc
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.h
  %.sroa.28.8.copyload37 = load i64, ptr %i.cq, align 8, !noalias !17171
  %.sroa.51.8..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.51.8.copyload59 = load i64, ptr %.sroa.51.8..sroa_idx58, align 8, !noalias !17171 ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc238 = trunc i64 %.sroa.51.8.copyload59 to i8
  %.sroa.51.sroa.28.0.extract.shift273 = and i64 %.sroa.51.8.copyload59, -256
  %.sroa.62.8..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.62.8.copyload81 = load i64, ptr %.sroa.62.8..sroa_idx80, align 8, !noalias !17171 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc178 = trunc i64 %.sroa.62.8.copyload81 to i8
  %.sroa.62.sroa.25.0.extract.shift210 = and i64 %.sroa.62.8.copyload81, -256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !17173
  %i.dn = ptrtoint ptr %i.dg to i64
  %i.do = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.dk, i64 0
  br label %bb.ps

bb.k:                                             ; preds = %bb.e
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !17177
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.cp, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.dp) #56
          to label %.noexc5 unwind label %bb.pq

.noexc5:                                          ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.dr = load ptr, ptr %i.dq, align 16, !alias.scope !17178, !nonnull !34, !noundef !34 ; 2 uses
  %i.ds = atomicrmw add ptr %i.dr, i64 1 monotonic, align 8, !noalias !17179
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.l, label %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %.noexc5
  tail call void @llvm.trap()
  unreachable

_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc5
  %.sroa.51.16.copyload = load i64, ptr %i.cp, align 16, !noalias !17171 ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc248 = trunc i64 %.sroa.51.16.copyload to i8
  %.sroa.51.sroa.28.0.extract.shift293 = and i64 %.sroa.51.16.copyload, -256
  %.sroa.62.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.62.16.copyload = load i64, ptr %.sroa.62.16..sroa_idx, align 8, !noalias !17171 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc179 = trunc i64 %.sroa.62.16.copyload to i8
  %.sroa.62.sroa.25.0.extract.shift212 = and i64 %.sroa.62.16.copyload, -256
  %.sroa.69.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.69.16.copyload = load i64, ptr %.sroa.69.16..sroa_idx, align 16, !noalias !17171
  %.sroa.77.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.du = load <2 x ptr>, ptr %.sroa.77.16..sroa_idx, align 8, !noalias !17171
  %.sroa.91.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %.sroa.91.16.copyload = load i64, ptr %.sroa.91.16..sroa_idx, align 8, !noalias !17171
  %.sroa.95.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %.sroa.95.16.copyload = load i64, ptr %.sroa.95.16..sroa_idx, align 16, !noalias !17171
  %.sroa.101.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %.sroa.101.16.copyload = load ptr, ptr %.sroa.101.16..sroa_idx, align 8, !noalias !17171
  %.sroa.106.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.dv = load <2 x ptr>, ptr %.sroa.106.16..sroa_idx, align 16, !noalias !17171
  %.sroa.113.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %.sroa.113.16.copyload = load i8, ptr %.sroa.113.16..sroa_idx, align 16, !noalias !17171
  %.sroa.115.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 81
  %.sroa.115.16.copyload = load i8, ptr %.sroa.115.16..sroa_idx, align 1, !noalias !17171
  %.sroa.116.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.116.16..sroa_idx, i64 6, i1 false)
  %.sroa.116.sroa.9.0..sroa.116.16..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 88
  %.sroa.116.sroa.9.0.copyload = load i64, ptr %.sroa.116.sroa.9.0..sroa.116.16..sroa_idx.sroa_idx, align 8, !noalias !17171
  %.sroa.118.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %.sroa.118.16.copyload = load ptr, ptr %.sroa.118.16..sroa_idx, align 16, !noalias !17171
  %.sroa.119.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  %.sroa.119.16.copyload = load i8, ptr %.sroa.119.16..sroa_idx, align 8, !noalias !17171
  %.sroa.120.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 105
  %.sroa.120.16.copyload = load i8, ptr %.sroa.120.16..sroa_idx, align 1, !noalias !17171
  %.sroa.121.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 106
  %.sroa.121.16.copyload = load i8, ptr %.sroa.121.16..sroa_idx, align 2, !noalias !17171
  %.sroa.122.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.122.16..sroa_idx, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !17177
  %i.dw = ptrtoint ptr %i.dr to i64               ; 2 uses
  %.sroa.123.sroa.0.0.extract.trunc137 = trunc i64 %i.dw to i8
  %.sroa.123.sroa.9.0.extract.shift142 = and i64 %i.dw, -256
  br label %bb.ps

bb.m:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !17181
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dy = load ptr, ptr %i.dx, align 16, !alias.scope !17182, !nonnull !34, !noundef !34 ; 4 uses
  %i.dz = atomicrmw add ptr %i.dy, i64 1 monotonic, align 8, !noalias !17183
  %i.ea = icmp slt i64 %i.dz, 0
  br i1 %i.ea, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dy, ptr %i.co, align 8, !noalias !17181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !17181
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.eb)
          to label %bb.r unwind label %bb.p, !noalias !17184

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !17185
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.co) #58
          to label %.body unwind label %bb.t, !noalias !17184

bb.r:                                             ; preds = %bb.n
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !17182, !nonnull !34, !noundef !34 ; 2 uses
  %i.eh = atomicrmw add ptr %i.eg, i64 1 monotonic, align 8, !noalias !17184
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %bb.s, label %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.s:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17184
  unreachable

_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.r
  %.sroa.28.8.copyload36 = load i64, ptr %i.cn, align 8, !noalias !17171
  %.sroa.51.8..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.51.8.copyload57 = load i64, ptr %.sroa.51.8..sroa_idx56, align 8, !noalias !17171 ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc237 = trunc i64 %.sroa.51.8.copyload57 to i8
  %.sroa.51.sroa.28.0.extract.shift271 = and i64 %.sroa.51.8.copyload57, -256
  %.sroa.62.8..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.sroa.62.8.copyload79 = load i64, ptr %.sroa.62.8..sroa_idx78, align 8, !noalias !17171 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc177 = trunc i64 %.sroa.62.8.copyload79 to i8
  %.sroa.62.sroa.25.0.extract.shift208 = and i64 %.sroa.62.8.copyload79, -256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !17181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !17181
  %i.ek = ptrtoint ptr %i.dy to i64
  %i.el = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.eg, i64 0
  br label %bb.ps

bb.u:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17186)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !17187
  %i.em = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !17188, !nonnull !34, !noundef !34 ; 4 uses
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8, !noalias !17189
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.en, ptr %i.cm, align 8, !noalias !17187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !17187
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.eq)
          to label %bb.aa unwind label %bb.z, !noalias !17190

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.ab, %bb.z
  %.pn.i.i = phi { ptr, i32 } [ %i.ev, %bb.ab ], [ %i.et, %bb.z ] ; 2 uses
  %i.er = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !17191
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.y, label %.body

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cm) #58
          to label %.body unwind label %bb.ae, !noalias !17190

bb.z:                                             ; preds = %bb.v
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !17187
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eu)
          to label %bb.ac unwind label %bb.ab, !noalias !17190

bb.ab:                                            ; preds = %bb.aa
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cl) #54
          to label %bb.x unwind label %bb.ae, !noalias !17190

bb.ac:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.ex = load ptr, ptr %i.ew, align 16, !alias.scope !17188, !nonnull !34, !noundef !34 ; 2 uses
  %i.ey = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !noalias !17190
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %bb.ad, label %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.y
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17190
  unreachable

_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.ac
  %.sroa.088.i.sroa.0.0.copyload = load i64, ptr %i.cl, align 8, !noalias !17192
  %.sroa.088.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.088.i.sroa.4.0.copyload = load i64, ptr %.sroa.088.i.sroa.4.0..sroa_idx, align 8, !noalias !17192 ; 2 uses
  %.sroa.088.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.088.i.sroa.5.0.copyload = load i64, ptr %.sroa.088.i.sroa.5.0..sroa_idx, align 8, !noalias !17192 ; 2 uses
  %.sroa.088.i.sroa.6.24.copyload = load i64, ptr %i.ck, align 8, !noalias !17192
  %.sroa.088.i.sroa.8.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.fb = load <2 x ptr>, ptr %.sroa.088.i.sroa.8.24..sroa_idx, align 8, !noalias !17192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !17187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !17187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !17187
  %.sroa.51.sroa.0.0.extract.trunc231 = trunc i64 %.sroa.088.i.sroa.4.0.copyload to i8
  %.sroa.51.sroa.28.0.extract.shift259 = and i64 %.sroa.088.i.sroa.4.0.copyload, -256
  %.sroa.62.sroa.0.0.extract.trunc171 = trunc i64 %.sroa.088.i.sroa.5.0.copyload to i8
  %.sroa.62.sroa.25.0.extract.shift196 = and i64 %.sroa.088.i.sroa.5.0.copyload, -256
  %i.fc = ptrtoint ptr %i.en to i64
  %i.fd = ptrtoint ptr %i.ex to i64
  br label %bb.ps

bb.af:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !17194
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe)
          to label %.noexc6 unwind label %bb.pq

.noexc6:                                          ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.fg = load ptr, ptr %i.ff, align 16, !alias.scope !17195, !nonnull !34, !noundef !34 ; 2 uses
  %i.fh = atomicrmw add ptr %i.fg, i64 1 monotonic, align 8, !noalias !17196
  %i.fi = icmp slt i64 %i.fh, 0
  br i1 %i.fi, label %bb.ag, label %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ag:                                            ; preds = %.noexc6
  call void @llvm.trap()
  unreachable

_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc6
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !range !44, !alias.scope !17195, !noundef !34
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.fm = load i64, ptr %i.fl, align 16, !alias.scope !17195 ; 2 uses
  %.sroa.62.24.copyload83 = load i64, ptr %i.cj, align 8, !noalias !17171 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc185 = trunc i64 %.sroa.62.24.copyload83 to i8
  %.sroa.62.sroa.25.0.extract.shift224 = and i64 %.sroa.62.24.copyload83, -256
  %.sroa.69.24..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.69.24.copyload96 = load i64, ptr %.sroa.69.24..sroa_idx95, align 8, !noalias !17171
  %.sroa.77.24..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.77.24.copyload107 = load ptr, ptr %.sroa.77.24..sroa_idx106, align 8, !noalias !17171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !17194
  %.sroa.51.sroa.0.0.extract.trunc247 = trunc i64 %i.fm to i8
  %.sroa.51.sroa.28.0.extract.shift291 = and i64 %i.fm, -256
  %i.fn = insertelement <2 x ptr> poison, ptr %.sroa.77.24.copyload107, i64 0
  %i.fo = insertelement <2 x ptr> %i.fn, ptr %i.fg, i64 1
  br label %bb.ps

bb.ah:                                            ; preds = %bb.e
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !17198
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !17199, !nonnull !34, !noundef !34 ; 3 uses
  %i.fs = atomicrmw add ptr %i.fr, i64 1 monotonic, align 8, !noalias !17200
  %i.ft = icmp slt i64 %i.fs, 0
  br i1 %i.ft, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fr, ptr %i.ci, align 8, !noalias !17198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !17198
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  %i.fv = load ptr, ptr %i.fu, align 16, !alias.scope !17199, !nonnull !34, !noundef !34 ; 4 uses
  %i.fw = atomicrmw add ptr %i.fv, i64 1 monotonic, align 8, !noalias !17200
  %i.fx = icmp slt i64 %i.fw, 0
  br i1 %i.fx, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ai
  store ptr %i.fv, ptr %i.ch, align 8, !noalias !17198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !17198
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBG_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fy)
          to label %bb.ap unwind label %bb.ao, !noalias !17201

bb.al:                                            ; preds = %bb.ai
  tail call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %bb.as, %bb.ao
  %.pn.i7.i = phi { ptr, i32 } [ %i.gn, %bb.as ], [ %i.gb, %bb.ao ] ; 2 uses
  %i.fz = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !17202
  %i.ga = icmp eq i64 %i.fz, 1
  br i1 %i.ga, label %bb.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i8.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ch) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i8.i unwind label %bb.av, !noalias !17201

bb.ao:                                            ; preds = %bb.ak
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.sroa.14.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.sroa.19)
  %i.gc = load i64, ptr %i.fp, align 16, !range !82, !alias.scope !17199, !noundef !34
  %.not.i.i = icmp eq i64 %i.gc, 37
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !17198
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.cf, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.fp)
          to label %bb.at unwind label %bb.as, !noalias !17201

bb.ar:                                            ; preds = %bb.at, %bb.ap
  %.sroa.5.i.i.sroa.14.sroa.4.0 = phi i64 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.14.sroa.4.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.18.0 = phi i8 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.18.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.17.0 = phi i8 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.17.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.16.0 = phi i8 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.16.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.15.0 = phi ptr [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.15.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.13.0 = phi i8 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.13.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.12.0 = phi i8 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.12.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.9.0 = phi ptr [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.9.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.8.0 = phi i64 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.8.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.7.0 = phi i64 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.7.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.4.0 = phi i64 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.4.0.copyload, %bb.at ]
  %.sroa.5.i.i.sroa.0.0 = phi i64 [ undef, %bb.ap ], [ %.sroa.5.i.i.sroa.0.0.copyload, %bb.at ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ 37, %bb.ap ], [ %.sroa.0.0.copyload.i.i, %bb.at ] ; 2 uses
  %i.gd = phi <2 x ptr> [ undef, %bb.ap ], [ %i.go, %bb.at ]
  %i.ge = phi <2 x ptr> [ undef, %bb.ap ], [ %i.gp, %bb.at ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cy, i64 178
  %i.gg = load i8, ptr %i.gf, align 2, !range !100, !alias.scope !17199, !noundef !34
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cy, i64 176
  %i.gi = load i8, ptr %i.gh, align 16, !range !55, !alias.scope !17199, !noundef !34
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cy, i64 168
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !17199, !nonnull !34, !noundef !34 ; 2 uses
  %i.gl = atomicrmw add ptr %i.gk, i64 1 monotonic, align 8, !noalias !17201
  %i.gm = icmp slt i64 %i.gl, 0
  br i1 %i.gm, label %bb.au, label %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB1e_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cg) #54
          to label %bb.am unwind label %bb.av, !noalias !17201

bb.at:                                            ; preds = %bb.aq
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cf, align 16, !noalias !17198
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.5.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !17198
  %.sroa.5.i.i.sroa.4.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.5.i.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.i.sroa.4.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 16, !noalias !17198
  %.sroa.5.i.i.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.go = load <2 x ptr>, ptr %.sroa.5.i.i.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !17198
  %.sroa.5.i.i.sroa.7.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %.sroa.5.i.i.sroa.7.0.copyload = load i64, ptr %.sroa.5.i.i.sroa.7.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !17198
  %.sroa.5.i.i.sroa.8.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %.sroa.5.i.i.sroa.8.0.copyload = load i64, ptr %.sroa.5.i.i.sroa.8.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 16, !noalias !17198
  %.sroa.5.i.i.sroa.9.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.sroa.5.i.i.sroa.9.0.copyload = load ptr, ptr %.sroa.5.i.i.sroa.9.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !17198
  %.sroa.5.i.i.sroa.10.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.gp = load <2 x ptr>, ptr %.sroa.5.i.i.sroa.10.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 16, !noalias !17198
  %.sroa.5.i.i.sroa.12.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %.sroa.5.i.i.sroa.12.0.copyload = load i8, ptr %.sroa.5.i.i.sroa.12.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 16, !noalias !17198
  %.sroa.5.i.i.sroa.13.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 81
  %.sroa.5.i.i.sroa.13.0.copyload = load i8, ptr %.sroa.5.i.i.sroa.13.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 1, !noalias !17198
  %.sroa.5.i.i.sroa.14.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.sroa.14.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.sroa.14.0..sroa.5.0..sroa_idx.i.i.sroa_idx, i64 6, i1 false), !noalias !17198
  %.sroa.5.i.i.sroa.14.sroa.4.0..sroa.5.i.i.sroa.14.0..sroa.5.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %.sroa.5.i.i.sroa.14.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.i.sroa.14.sroa.4.0..sroa.5.i.i.sroa.14.0..sroa.5.0..sroa_idx.i.i.sroa_idx.sroa_idx, align 8, !noalias !17198
  %.sroa.5.i.i.sroa.15.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %.sroa.5.i.i.sroa.15.0.copyload = load ptr, ptr %.sroa.5.i.i.sroa.15.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 16, !noalias !17198
  %.sroa.5.i.i.sroa.16.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %.sroa.5.i.i.sroa.16.0.copyload = load i8, ptr %.sroa.5.i.i.sroa.16.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !17198
  %.sroa.5.i.i.sroa.17.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 105
  %.sroa.5.i.i.sroa.17.0.copyload = load i8, ptr %.sroa.5.i.i.sroa.17.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 1, !noalias !17198
  %.sroa.5.i.i.sroa.18.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 106
  %.sroa.5.i.i.sroa.18.0.copyload = load i8, ptr %.sroa.5.i.i.sroa.18.0..sroa.5.0..sroa_idx.i.i.sroa_idx, align 2, !noalias !17198
  %.sroa.5.i.i.sroa.19.0..sroa.5.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i.i.sroa.19, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i.i.sroa.19.0..sroa.5.0..sroa_idx.i.i.sroa_idx, i64 5, i1 false), !noalias !17198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !17198
  br label %bb.ar

bb.au:                                            ; preds = %bb.ar
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.as, %bb.an
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17201
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i8.i: ; preds = %bb.an, %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !17203)
  call void @llvm.experimental.noalias.scope.decl(metadata !17204)
  %i.gr = load ptr, ptr %i.ci, align 8, !alias.scope !17205, !noalias !17198, !nonnull !34, !noundef !34
  %i.gs = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !17206
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.aw, label %.body

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i8.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ci) #58
          to label %.body unwind label %bb.av, !noalias !17201

_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.ar
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cy, i64 177
  %i.gv = load i8, ptr %i.gu, align 1, !range !55, !alias.scope !17199, !noundef !34
  %.sroa.123.128.copyload = load i64, ptr %i.cg, align 8, !noalias !17171 ; 2 uses
  %.sroa.123.sroa.0.0.extract.trunc139 = trunc i64 %.sroa.123.128.copyload to i8
  %.sroa.123.sroa.9.0.extract.shift146 = and i64 %.sroa.123.128.copyload, -256
  %.sroa.129.128..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.129.128.copyload = load ptr, ptr %.sroa.129.128..sroa_idx, align 8, !noalias !17171
  %.sroa.132.128..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.132.128.copyload = load ptr, ptr %.sroa.132.128..sroa_idx, align 8, !noalias !17171
  %.sroa.62.sroa.0.0.extract.trunc183 = trunc i64 %.sroa.5.i.i.sroa.0.0 to i8
  %.sroa.62.sroa.25.0.extract.shift220 = and i64 %.sroa.5.i.i.sroa.0.0, -256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.sroa.14.sroa.0, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i.i.sroa.19, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.sroa.14.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !17198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !17198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !17198
  %.sroa.51.sroa.0.0.extract.trunc246 = trunc i64 %.sroa.0.0.i.i to i8
  %.sroa.51.sroa.28.0.extract.shift289 = and i64 %.sroa.0.0.i.i, -256
  %i.gw = insertelement <2 x ptr> poison, ptr %i.fv, i64 0
  %i.gx = insertelement <2 x ptr> %i.gw, ptr %i.gk, i64 1
  br label %bb.ps

bb.ax:                                            ; preds = %bb.e
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !17208
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !17209, !nonnull !34, !noundef !34 ; 4 uses
  %i.hb = atomicrmw add ptr %i.ha, i64 1 monotonic, align 8, !noalias !17210
  %i.hc = icmp slt i64 %i.hb, 0
  br i1 %i.hc, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.ha, ptr %i.ce, align 8, !noalias !17208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !17208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17212)
  %i.hd = load i64, ptr %i.gy, align 8, !range !68, !alias.scope !17213, !noundef !34 ; 3 uses
  %i.he = icmp ne i64 %i.hd, -9223372036854775807
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = xor i64 %i.hd, -9223372036854775808
  %i.hg = icmp slt i64 %i.hd, 0
  %i.hh = select i1 %i.hg, i64 %i.hf, i64 1
  switch i64 %i.hh, label %bb.az [
    i64 0, label %bb.ba
    i64 1, label %bb.bb
    i64 2, label %bb.bc
  ]

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.gy, i64 32, i1 false), !alias.scope !17214, !noalias !17215
  br label %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.bb:                                            ; preds = %bb.ay
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gy)
          to label %.noexc.i.i unwind label %bb.be, !noalias !17216

.noexc.i.i:                                       ; preds = %bb.bb
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.hj = load i64, ptr %i.hi, align 16, !alias.scope !17213, !noundef !34
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %i.hj, ptr %i.hk, align 8, !alias.scope !17211, !noalias !17208
  br label %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.bc:                                            ; preds = %bb.ay
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.hm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl)
          to label %.noexc2.i.i unwind label %bb.be, !noalias !17216

.noexc2.i.i:                                      ; preds = %bb.bc
  store i64 -9223372036854775806, ptr %i.cd, align 8, !alias.scope !17211, !noalias !17208
  br label %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.bd:                                            ; preds = %bb.ax
  tail call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = atomicrmw sub ptr %i.ha, i64 1 release, align 8, !noalias !17217
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.bf, label %.body

bb.bf:                                            ; preds = %bb.be
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ce) #58
          to label %.body unwind label %bb.bg, !noalias !17216

bb.bg:                                            ; preds = %bb.bf
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17216
  unreachable

_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc2.i.i, %.noexc.i.i, %bb.ba
  %.sroa.28.8.copyload31 = load i64, ptr %i.cd, align 8, !noalias !17171
  %.sroa.51.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.51.8.copyload47 = load i64, ptr %.sroa.51.8..sroa_idx46, align 8, !noalias !17171 ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc232 = trunc i64 %.sroa.51.8.copyload47 to i8
  %.sroa.51.sroa.28.0.extract.shift261 = and i64 %.sroa.51.8.copyload47, -256
  %.sroa.62.8..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.62.8.copyload69 = load i64, ptr %.sroa.62.8..sroa_idx68, align 8, !noalias !17171 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc172 = trunc i64 %.sroa.62.8.copyload69 to i8
  %.sroa.62.sroa.25.0.extract.shift198 = and i64 %.sroa.62.8.copyload69, -256
  %.sroa.69.8..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %.sroa.69.8.copyload93 = load i64, ptr %.sroa.69.8..sroa_idx92, align 8, !noalias !17171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !17208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !17208
  %i.hr = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.ha, i64 0
  br label %bb.ps

bb.bh:                                            ; preds = %bb.e
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !17219
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hs)
          to label %.noexc7 unwind label %bb.pq

.noexc7:                                          ; preds = %bb.bh
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.hu = load ptr, ptr %i.ht, align 16, !alias.scope !17220, !nonnull !34, !noundef !34 ; 2 uses
  %i.hv = atomicrmw add ptr %i.hu, i64 1 monotonic, align 8, !noalias !17221
  %i.hw = icmp slt i64 %i.hv, 0
  br i1 %i.hw, label %bb.bi, label %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.bi:                                            ; preds = %.noexc7
  call void @llvm.trap()
  unreachable

_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc7
  %.sroa.28.8.copyload35 = load i64, ptr %i.cc, align 8, !noalias !17171
  %.sroa.51.8..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.51.8.copyload55 = load i64, ptr %.sroa.51.8..sroa_idx54, align 8, !noalias !17171 ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc236 = trunc i64 %.sroa.51.8.copyload55 to i8
  %.sroa.51.sroa.28.0.extract.shift269 = and i64 %.sroa.51.8.copyload55, -256
  %.sroa.62.8..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.62.8.copyload77 = load i64, ptr %.sroa.62.8..sroa_idx76, align 8, !noalias !17171 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc176 = trunc i64 %.sroa.62.8.copyload77 to i8
  %.sroa.62.sroa.25.0.extract.shift206 = and i64 %.sroa.62.8.copyload77, -256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !17219
  %i.hx = ptrtoint ptr %i.hu to i64
  br label %bb.ps

bb.bj:                                            ; preds = %bb.e
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !17223
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17225)
  %i.ia = load i64, ptr %i.hz, align 8, !range !38, !alias.scope !17226, !noundef !34 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore21with_exprs_and_inputs:bb.a
  %.sink12.ph.i.i.i = phi i64 [ 40, %bb.bv ], [ 24, %bb.bo ]
  %.sink10.ph.i.i.i = phi ptr [ %i.iu, %bb.bv ], [ %i.ii, %bb.bo ]
  %.sink9.ph.i.i.i = phi i64 [ 48, %bb.bv ], [ 32, %bb.bo ]
  %.sink7.ph.i.i.i = phi i64 [ %i.iw, %bb.bv ], [ %i.ik, %bb.bo ]
  store ptr %.sink16.i.i.i, ptr %.sink18.i.sroa.phi.i.i, align 8, !alias.scope !17224, !noalias !17223
  store i64 %.sink13.i.i.i, ptr %.sink15.i.sroa.phi.i.i, align 8, !alias.scope !17224, !noalias !17223
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.bo:                                            ; preds = %bb.bl
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.ii = load ptr, ptr %i.ih, align 16, !alias.scope !17226, !nonnull !34, !noundef !34 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !17226, !noundef !34
  %i.il = atomicrmw add ptr %i.ii, i64 1 monotonic, align 8, !noalias !17227
  %i.im = icmp slt i64 %i.il, 0
  br i1 %i.im, label %bb.bq, label %.sink.split.i.i.i

bb.bp:                                            ; preds = %bb.bl
  tail call void @llvm.trap()
  unreachable

bb.bq:                                            ; preds = %bb.bo
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.bm
  %i.in = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.io = load ptr, ptr %i.in, align 16, !alias.scope !17226, !nonnull !34, !noundef !34 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !17226, !noundef !34
  %i.ir = atomicrmw add ptr %i.io, i64 1 monotonic, align 8, !noalias !17227
  %i.is = icmp slt i64 %i.ir, 0
  br i1 %i.is, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.bm
  tail call void @llvm.trap()
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.it = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.iu = load ptr, ptr %i.it, align 16, !alias.scope !17226, !nonnull !34, !noundef !34 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !17226, !noundef !34
  %i.ix = atomicrmw add ptr %i.iu, i64 1 monotonic, align 8, !noalias !17227
  %i.iy = icmp slt i64 %i.ix, 0
  br i1 %i.iy, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.br
  tail call void @llvm.trap()
  unreachable

bb.bv:                                            ; preds = %bb.bt
  store ptr %i.ic, ptr %.sink18.i.sroa.gep5.i.i, align 8, !alias.scope !17224, !noalias !17223
  store i64 %i.ie, ptr %.sink15.i.sroa.gep6.i.i, align 8, !alias.scope !17224, !noalias !17223
  br label %.sink.split.i.i.i

bb.bw:                                            ; preds = %bb.bt
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %.sink.split.i.i.i, %bb.bk
  %.sink12.i.i.i = phi i64 [ 8, %bb.bk ], [ %.sink12.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink10.i.i.i = phi ptr [ %i.ic, %bb.bk ], [ %.sink10.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink9.i.i.i = phi i64 [ 16, %bb.bk ], [ %.sink9.ph.i.i.i, %.sink.split.i.i.i ]
  %.sink7.i.i.i = phi i64 [ %i.ie, %bb.bk ], [ %.sink7.ph.i.i.i, %.sink.split.i.i.i ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink12.i.i.i
  store ptr %.sink10.i.i.i, ptr %i.iz, align 8, !alias.scope !17224, !noalias !17223
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink9.i.i.i
  store i64 %.sink7.i.i.i, ptr %i.ja, align 8, !alias.scope !17224, !noalias !17223
  store i64 %i.ia, ptr %i.cb, align 8, !alias.scope !17224, !noalias !17223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !17223
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.jc = load ptr, ptr %i.jb, align 16, !alias.scope !17228, !nonnull !34, !noundef !34 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !17228, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.jf = atomicrmw add ptr %i.jc, i64 1 monotonic, align 8, !noalias !17229
  %i.jg = icmp slt i64 %i.jf, 0
  br i1 %i.jg, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  store ptr %i.jc, ptr %i.ca, align 8, !noalias !17223
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.je, ptr %i.jh, align 8, !noalias !17223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !17223
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cy, i64 104 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !range !37, !alias.scope !17228, !noundef !34
  %.not.i10.i = icmp eq i64 %i.jj, -9223372036854775808
  br i1 %.not.i10.i, label %bb.ca, label %bb.bz

bb.by:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  tail call void @llvm.trap()
  unreachable

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !17223
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ji)
          to label %bb.cf unwind label %bb.ce, !noalias !17230

bb.ca:                                            ; preds = %bb.bx
  store i64 -9223372036854775808, ptr %i.bz, align 8, !noalias !17223
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cf, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !17223
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  %i.jl = load ptr, ptr %i.jk, align 16, !alias.scope !17228, !nonnull !34, !noundef !34 ; 4 uses
  %i.jm = atomicrmw add ptr %i.jl, i64 1 monotonic, align 8, !noalias !17230
  %i.jn = icmp slt i64 %i.jm, 0
  br i1 %i.jn, label %bb.ch, label %bb.cg

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i, %bb.ce
  %i.jo = phi ptr [ %.pre.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i ], [ %i.jc, %bb.ce ]
  %.pn.i11.i = phi { ptr, i32 } [ %i.jt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i ], [ %i.jr, %bb.ce ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17231)
  call void @llvm.experimental.noalias.scope.decl(metadata !17232)
  %i.jp = atomicrmw sub ptr %i.jo, i64 1 release, align 8, !noalias !17233
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %bb.cd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.cd:                                            ; preds = %bb.cc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ca) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ck, !noalias !17230

bb.ce:                                            ; preds = %bb.bz
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cf:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !17223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !17223
  br label %bb.cb

bb.cg:                                            ; preds = %bb.cb
  store ptr %i.jl, ptr %i.by, align 8, !noalias !17223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !17223
  %i.js = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.js)
          to label %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.ci, !noalias !17230

bb.ch:                                            ; preds = %bb.cb
  call void @llvm.trap()
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.jt = landingpad { ptr, i32 }
          cleanup
  %i.ju = atomicrmw sub ptr %i.jl, i64 1 release, align 8, !noalias !17234
  %i.jv = icmp eq i64 %i.ju, 1
  br i1 %i.jv, label %bb.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.by) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ck, !noalias !17230

bb.ck:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.cj, %bb.cd
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17230
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.cj, %bb.ci
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i unwind label %bb.ck, !noalias !17230

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pre.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !17235, !noalias !17223
  br label %bb.cc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.cd, %bb.cc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.cb) #54
          to label %.body unwind label %bb.ck, !noalias !17230

_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.cg
  %i.jx = load i64, ptr %i.hy, align 8, !range !44, !alias.scope !17228, !noundef !34
  %i.jy = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.jz = load i64, ptr %i.jy, align 16, !alias.scope !17228 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc184 = trunc nuw nsw i64 %i.ia to i8
  %.sroa.69.24.copyload94 = load i64, ptr %.sink18.i.sroa.gep5.i.i, align 8, !noalias !17171
  %i.ka = load <2 x ptr>, ptr %.sink15.i.sroa.gep6.i.i, align 8, !noalias !17171
  %.sroa.91.24.copyload124 = load i64, ptr %.sink15.i.sroa.gep.i.i, align 8, !noalias !17171
  %.sroa.95.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %.sroa.95.24.copyload125 = load i64, ptr %.sroa.95.24..sroa_idx, align 8, !noalias !17171
  %.sroa.101.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %.sroa.101.24.copyload126 = load ptr, ptr %.sroa.101.24..sroa_idx, align 8, !noalias !17171
  %i.kb = load i64, ptr %i.bz, align 8, !noalias !17171
  %.sroa.118.104..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.118.104.copyload = load ptr, ptr %.sroa.118.104..sroa_idx, align 8, !noalias !17171
  %.sroa.119.104..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.119.104.copyload = load i8, ptr %.sroa.119.104..sroa_idx, align 8, !noalias !17171
  %.sroa.120.104..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 17
  %.sroa.120.104.copyload = load i8, ptr %.sroa.120.104..sroa_idx, align 1, !noalias !17171
  %.sroa.121.104..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 18
  %.sroa.121.104.copyload = load i8, ptr %.sroa.121.104..sroa_idx, align 2, !noalias !17171
  %.sroa.122.104..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.122.104..sroa_idx, i64 5, i1 false)
  %i.kc = load <2 x ptr>, ptr %i.bx, align 16, !noalias !17171
  %.sroa.113.80..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.113.80.copyload131 = load i8, ptr %.sroa.113.80..sroa_idx130, align 16, !noalias !17171
  %.sroa.115.80..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.bx, i64 17
  %.sroa.115.80.copyload133 = load i8, ptr %.sroa.115.80..sroa_idx132, align 1, !noalias !17171
  %.sroa.116.80..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.bx, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.116.80..sroa_idx134, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !17223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !17223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !17223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !17223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !17223
  %.sroa.51.sroa.0.0.extract.trunc245 = trunc i64 %i.jz to i8
  %.sroa.51.sroa.28.0.extract.shift287 = and i64 %i.jz, -256
  %i.kd = ptrtoint ptr %i.jc to i64               ; 2 uses
  %.sroa.123.sroa.0.0.extract.trunc136 = trunc i64 %i.kd to i8
  %.sroa.123.sroa.9.0.extract.shift140 = and i64 %i.kd, -256
  br label %bb.ps

bb.cl:                                            ; preds = %bb.e
  %i.ke = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val.i = load ptr, ptr %i.ke, align 8, !alias.scope !17171, !nonnull !34, !noundef !34 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.val1.i = load i8, ptr %i.kf, align 16, !range !55, !alias.scope !17171, !noundef !34
  %i.kg = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8
  %i.kh = icmp slt i64 %i.kg, 0
  br i1 %i.kh, label %bb.cm, label %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.cm:                                            ; preds = %bb.cl
  tail call void @llvm.trap()
  unreachable

_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.cl
  %i.ki = ptrtoint ptr %.val.i to i64
  br label %bb.ps

bb.cn:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !17237
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8, !alias.scope !17238, !nonnull !34, !noundef !34 ; 4 uses
  %i.kl = atomicrmw add ptr %i.kk, i64 1 monotonic, align 8, !noalias !17239
  %i.km = icmp slt i64 %i.kl, 0
  br i1 %i.km, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.kk, ptr %i.bv, align 8, !noalias !17237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !17237
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.kn)
          to label %bb.ct unwind label %bb.cs, !noalias !17240

bb.cp:                                            ; preds = %bb.cn
  tail call void @llvm.trap()
  unreachable

bb.cq:                                            ; preds = %bb.cu, %bb.cs
  %.pn.i12.i = phi { ptr, i32 } [ %i.ks, %bb.cu ], [ %i.kq, %bb.cs ] ; 2 uses
  %i.ko = atomicrmw sub ptr %i.kk, i64 1 release, align 8, !noalias !17241
  %i.kp = icmp eq i64 %i.ko, 1
  br i1 %i.kp, label %bb.cr, label %.body

bb.cr:                                            ; preds = %bb.cq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bv) #58
          to label %.body unwind label %bb.cv, !noalias !17240

bb.cs:                                            ; preds = %bb.co
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ct:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !17237
  %i.kr = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kr)
          to label %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.cu, !noalias !17240

bb.cu:                                            ; preds = %bb.ct
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.bu) #54
          to label %bb.cq unwind label %bb.cv, !noalias !17240

bb.cv:                                            ; preds = %bb.cu, %bb.cr
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17240
  unreachable

_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.ct
  %.sroa.0110.i.sroa.6.24.copyload = load i64, ptr %i.bt, align 8, !noalias !17242
  %.sroa.0110.i.sroa.8.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ku = load <2 x ptr>, ptr %.sroa.0110.i.sroa.8.24..sroa_idx, align 8, !noalias !17242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !17237
  %.sroa.0110.i.sroa.0.0.copyload = load i64, ptr %i.bu, align 8, !noalias !17242
  %.sroa.0110.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.0110.i.sroa.4.0.copyload = load i64, ptr %.sroa.0110.i.sroa.4.0..sroa_idx, align 8, !noalias !17242 ; 2 uses
  %.sroa.0110.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.0110.i.sroa.5.0.copyload = load i64, ptr %.sroa.0110.i.sroa.5.0..sroa_idx, align 8, !noalias !17242 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !17237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !17237
  %.sroa.51.sroa.0.0.extract.trunc230 = trunc i64 %.sroa.0110.i.sroa.4.0.copyload to i8
  %.sroa.51.sroa.28.0.extract.shift257 = and i64 %.sroa.0110.i.sroa.4.0.copyload, -256
  %.sroa.62.sroa.0.0.extract.trunc170 = trunc i64 %.sroa.0110.i.sroa.5.0.copyload to i8
  %.sroa.62.sroa.25.0.extract.shift194 = and i64 %.sroa.0110.i.sroa.5.0.copyload, -256
  %i.kv = ptrtoint ptr %i.kk to i64
  br label %bb.ps

bb.cw:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17243)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.kx = load ptr, ptr %i.kw, align 16, !alias.scope !17244, !nonnull !34, !noundef !34 ; 2 uses
  %i.ky = atomicrmw add ptr %i.kx, i64 1 monotonic, align 8, !noalias !17245
  %i.kz = icmp slt i64 %i.ky, 0
  %.sink18.i.sroa.gep.i14.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %.sink18.i.sroa.gep3.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i15.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %.sink15.i.sroa.gep4.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  br i1 %i.kz, label %bb.dl, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.la = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !17246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17248)
  %i.lb = load i64, ptr %i.la, align 8, !range !38, !alias.scope !17249, !noundef !34 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.ld = load ptr, ptr %i.lc, align 16, !alias.scope !17249, !nonnull !34, !noundef !34 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !17249, !noundef !34 ; 3 uses
  %i.lg = atomicrmw add ptr %i.ld, i64 1 monotonic, align 8, !noalias !17250
  %i.lh = icmp slt i64 %i.lg, 0                   ; 3 uses
  switch i64 %i.lb, label %default.unreachable [
    i64 0, label %bb.cy
    i64 1, label %bb.cz
    i64 2, label %bb.da
  ]

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.lh, label %bb.db, label %bb.dm

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.lh, label %bb.dd, label %bb.dc

bb.da:                                            ; preds = %bb.cx
  br i1 %i.lh, label %bb.dg, label %bb.df

bb.db:                                            ; preds = %bb.cy
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i16.i:                              ; preds = %bb.dj, %bb.dc
  %.sink18.i.sroa.phi.i17.i = phi ptr [ %.sink18.i.sroa.gep.i14.i, %bb.dj ], [ %.sink18.i.sroa.gep3.i.i, %bb.dc ]
  %.sink16.i.i18.i = phi ptr [ %i.lp, %bb.dj ], [ %i.ld, %bb.dc ]
  %.sink15.i.sroa.phi.i19.i = phi ptr [ %.sink15.i.sroa.gep.i15.i, %bb.dj ], [ %.sink15.i.sroa.gep4.i.i, %bb.dc ]
  %.sink13.i.i20.i = phi i64 [ %i.lr, %bb.dj ], [ %i.lf, %bb.dc ]
  %.sink12.ph.i.i21.i = phi i64 [ 40, %bb.dj ], [ 24, %bb.dc ]
  %.sink10.ph.i.i22.i = phi ptr [ %i.lv, %bb.dj ], [ %i.lj, %bb.dc ]
  %.sink9.ph.i.i23.i = phi i64 [ 48, %bb.dj ], [ 32, %bb.dc ]
  %.sink7.ph.i.i24.i = phi i64 [ %i.lx, %bb.dj ], [ %i.ll, %bb.dc ]
  store ptr %.sink16.i.i18.i, ptr %.sink18.i.sroa.phi.i17.i, align 8, !alias.scope !17247, !noalias !17246
  store i64 %.sink13.i.i20.i, ptr %.sink15.i.sroa.phi.i19.i, align 8, !alias.scope !17247, !noalias !17246
  br label %bb.dm

bb.dc:                                            ; preds = %bb.cz
  %i.li = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.lj = load ptr, ptr %i.li, align 16, !alias.scope !17249, !nonnull !34, !noundef !34 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.ll = load i64, ptr %i.lk, align 8, !alias.scope !17249, !noundef !34
  %i.lm = atomicrmw add ptr %i.lj, i64 1 monotonic, align 8, !noalias !17250
  %i.ln = icmp slt i64 %i.lm, 0
  br i1 %i.ln, label %bb.de, label %.sink.split.i.i16.i

bb.dd:                                            ; preds = %bb.cz
  tail call void @llvm.trap()
  unreachable

bb.de:                                            ; preds = %bb.dc
  tail call void @llvm.trap()
  unreachable

bb.df:                                            ; preds = %bb.da
  %i.lo = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.lp = load ptr, ptr %i.lo, align 16, !alias.scope !17249, !nonnull !34, !noundef !34 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.lr = load i64, ptr %i.lq, align 8, !alias.scope !17249, !noundef !34
  %i.ls = atomicrmw add ptr %i.lp, i64 1 monotonic, align 8, !noalias !17250
  %i.lt = icmp slt i64 %i.ls, 0
  br i1 %i.lt, label %bb.di, label %bb.dh

bb.dg:                                            ; preds = %bb.da
  tail call void @llvm.trap()
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.lu = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.lv = load ptr, ptr %i.lu, align 16, !alias.scope !17249, !nonnull !34, !noundef !34 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.lx = load i64, ptr %i.lw, align 8, !alias.scope !17249, !noundef !34
  %i.ly = atomicrmw add ptr %i.lv, i64 1 monotonic, align 8, !noalias !17250
  %i.lz = icmp slt i64 %i.ly, 0
  br i1 %i.lz, label %bb.dk, label %bb.dj

bb.di:                                            ; preds = %bb.df
end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore21with_exprs_and_inputs:bb.a
  %.sroa.0.i38.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ra = load i64, ptr %.sroa.0.i38.sroa.5.0..sroa_idx.i, align 8, !noalias !17298
  %.sroa.6135.sroa.4.i.sroa.0.0.copyload = load i64, ptr %i.bb, align 8, !noalias !17299
  %.sroa.6135.sroa.4.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.rb = load <2 x ptr>, ptr %.sroa.6135.sroa.4.i.sroa.4.0..sroa_idx, align 8, !noalias !17299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !17295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !17295
  %i.rc = insertelement <2 x ptr> poison, ptr %i.qr, i64 0
  %i.rd = insertelement <2 x ptr> %i.rc, ptr %i.qw, i64 1
  br label %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.fw:                                            ; preds = %bb.fj
  %i.re = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.rf = load ptr, ptr %i.re, align 16, !alias.scope !17293, !nonnull !34, !noundef !34 ; 2 uses
  %i.rg = atomicrmw add ptr %i.rf, i64 1 monotonic, align 8, !noalias !17300
  %i.rh = icmp slt i64 %i.rg, 0
  br i1 %i.rh, label %bb.fx, label %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.fx:                                            ; preds = %bb.fw
  tail call void @llvm.trap()
  unreachable

_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.fw, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  %.sroa.6135.sroa.4.i.sroa.0.0 = phi i64 [ undef, %bb.fw ], [ %.sroa.6135.sroa.4.i.sroa.0.0.copyload, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.7137.i.sroa.4.0 = phi ptr [ undef, %bb.fw ], [ %.sroa.5.i.i.i.sroa.4.0, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.7137.i.sroa.0.0 = phi i64 [ undef, %bb.fw ], [ %.sroa.5.i.i.i.sroa.0.0, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.6135.sroa.0.0.i = phi i64 [ undef, %bb.fw ], [ %i.ra, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  %.sroa.6136.0.i = phi i64 [ undef, %bb.fw ], [ %.sroa.0.0.i.i.i, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5133.0.i = phi ptr [ %i.rf, %bb.fw ], [ %.sroa.0.i38.sroa.4.0.copyload.i, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.0131.0.i = phi i64 [ -9223372036854775808, %bb.fw ], [ %.sroa.0.i38.sroa.0.0.copyload.i, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.ri = phi <2 x ptr> [ undef, %bb.fw ], [ %i.rb, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.rj = phi <2 x ptr> [ undef, %bb.fw ], [ %i.rd, %_RNvXs2r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.rk = ptrtoint ptr %.sroa.5133.0.i to i64     ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc240 = trunc i64 %i.rk to i8
  %.sroa.51.sroa.28.0.extract.shift277 = and i64 %i.rk, -256
  %.sroa.62.sroa.0.0.extract.trunc182 = trunc i64 %.sroa.6135.sroa.0.0.i to i8
  %.sroa.62.sroa.25.0.extract.shift218 = and i64 %.sroa.6135.sroa.0.0.i, -256
  br label %bb.ps

bb.fy:                                            ; preds = %bb.e
  %i.rl = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !17302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17304)
  %i.rm = load i64, ptr %i.rl, align 8, !range !38, !alias.scope !17305, !noundef !34 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.ro = load ptr, ptr %i.rn, align 16, !alias.scope !17305, !nonnull !34, !noundef !34 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.rq = load i64, ptr %i.rp, align 8, !alias.scope !17305, !noundef !34 ; 3 uses
  %i.rr = atomicrmw add ptr %i.ro, i64 1 monotonic, align 8, !noalias !17306
  %i.rs = icmp slt i64 %i.rr, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i42.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %.sink18.i.sroa.gep3.i43.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i44.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %.sink15.i.sroa.gep4.i45.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 3 uses
  switch i64 %i.rm, label %default.unreachable [
    i64 0, label %bb.fz
    i64 1, label %bb.ga
    i64 2, label %bb.gb
  ]

bb.fz:                                            ; preds = %bb.fy
  br i1 %i.rs, label %bb.gc, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i55.i

bb.ga:                                            ; preds = %bb.fy
  br i1 %i.rs, label %bb.ge, label %bb.gd

bb.gb:                                            ; preds = %bb.fy
  br i1 %i.rs, label %bb.gh, label %bb.gg

bb.gc:                                            ; preds = %bb.fz
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i46.i:                              ; preds = %bb.gk, %bb.gd
  %.sink18.i.sroa.phi.i47.i = phi ptr [ %.sink18.i.sroa.gep.i42.i, %bb.gk ], [ %.sink18.i.sroa.gep3.i43.i, %bb.gd ]
  %.sink16.i.i48.i = phi ptr [ %i.sa, %bb.gk ], [ %i.ro, %bb.gd ]
  %.sink15.i.sroa.phi.i49.i = phi ptr [ %.sink15.i.sroa.gep.i44.i, %bb.gk ], [ %.sink15.i.sroa.gep4.i45.i, %bb.gd ]
  %.sink13.i.i50.i = phi i64 [ %i.sc, %bb.gk ], [ %i.rq, %bb.gd ]
  %.sink12.ph.i.i51.i = phi i64 [ 40, %bb.gk ], [ 24, %bb.gd ]
  %.sink10.ph.i.i52.i = phi ptr [ %i.sg, %bb.gk ], [ %i.ru, %bb.gd ]
  %.sink9.ph.i.i53.i = phi i64 [ 48, %bb.gk ], [ 32, %bb.gd ]
  %.sink7.ph.i.i54.i = phi i64 [ %i.si, %bb.gk ], [ %i.rw, %bb.gd ]
  store ptr %.sink16.i.i48.i, ptr %.sink18.i.sroa.phi.i47.i, align 8, !alias.scope !17303, !noalias !17302
  store i64 %.sink13.i.i50.i, ptr %.sink15.i.sroa.phi.i49.i, align 8, !alias.scope !17303, !noalias !17302
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i55.i

bb.gd:                                            ; preds = %bb.ga
  %i.rt = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.ru = load ptr, ptr %i.rt, align 16, !alias.scope !17305, !nonnull !34, !noundef !34 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.rw = load i64, ptr %i.rv, align 8, !alias.scope !17305, !noundef !34
  %i.rx = atomicrmw add ptr %i.ru, i64 1 monotonic, align 8, !noalias !17306
  %i.ry = icmp slt i64 %i.rx, 0
  br i1 %i.ry, label %bb.gf, label %.sink.split.i.i46.i

bb.ge:                                            ; preds = %bb.ga
  tail call void @llvm.trap()
  unreachable

bb.gf:                                            ; preds = %bb.gd
  tail call void @llvm.trap()
  unreachable

bb.gg:                                            ; preds = %bb.gb
  %i.rz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.sa = load ptr, ptr %i.rz, align 16, !alias.scope !17305, !nonnull !34, !noundef !34 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.sc = load i64, ptr %i.sb, align 8, !alias.scope !17305, !noundef !34
  %i.sd = atomicrmw add ptr %i.sa, i64 1 monotonic, align 8, !noalias !17306
  %i.se = icmp slt i64 %i.sd, 0
  br i1 %i.se, label %bb.gj, label %bb.gi

bb.gh:                                            ; preds = %bb.gb
  tail call void @llvm.trap()
  unreachable

bb.gi:                                            ; preds = %bb.gg
  %i.sf = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.sg = load ptr, ptr %i.sf, align 16, !alias.scope !17305, !nonnull !34, !noundef !34 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.si = load i64, ptr %i.sh, align 8, !alias.scope !17305, !noundef !34
  %i.sj = atomicrmw add ptr %i.sg, i64 1 monotonic, align 8, !noalias !17306
  %i.sk = icmp slt i64 %i.sj, 0
  br i1 %i.sk, label %bb.gl, label %bb.gk

bb.gj:                                            ; preds = %bb.gg
  tail call void @llvm.trap()
  unreachable

bb.gk:                                            ; preds = %bb.gi
  store ptr %i.ro, ptr %.sink18.i.sroa.gep3.i43.i, align 8, !alias.scope !17303, !noalias !17302
  store i64 %i.rq, ptr %.sink15.i.sroa.gep4.i45.i, align 8, !alias.scope !17303, !noalias !17302
  br label %.sink.split.i.i46.i

bb.gl:                                            ; preds = %bb.gi
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i55.i: ; preds = %.sink.split.i.i46.i, %bb.fz
  %.sink12.i.i56.i = phi i64 [ 8, %bb.fz ], [ %.sink12.ph.i.i51.i, %.sink.split.i.i46.i ]
  %.sink10.i.i57.i = phi ptr [ %i.ro, %bb.fz ], [ %.sink10.ph.i.i52.i, %.sink.split.i.i46.i ]
  %.sink9.i.i58.i = phi i64 [ 16, %bb.fz ], [ %.sink9.ph.i.i53.i, %.sink.split.i.i46.i ]
  %.sink7.i.i59.i = phi i64 [ %i.rq, %bb.fz ], [ %.sink7.ph.i.i54.i, %.sink.split.i.i46.i ]
  %i.sl = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink12.i.i56.i
  store ptr %.sink10.i.i57.i, ptr %i.sl, align 8, !alias.scope !17303, !noalias !17302
  %i.sm = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sink9.i.i58.i
  store i64 %.sink7.i.i59.i, ptr %i.sm, align 8, !alias.scope !17303, !noalias !17302
  %i.sn = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.so = load ptr, ptr %i.sn, align 16, !alias.scope !17307, !nonnull !34, !noundef !34 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.sq = load ptr, ptr %i.sp, align 8, !alias.scope !17307, !nonnull !34, !align !41, !noundef !34
  %i.sr = atomicrmw add ptr %i.so, i64 1 monotonic, align 8, !noalias !17308
  %i.ss = icmp slt i64 %i.sr, 0
  br i1 %i.ss, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i55.i
  %i.st = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.su = load i8, ptr %i.st, align 16, !range !66, !alias.scope !17307, !noundef !34
  %i.sv = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.sw = load ptr, ptr %i.sv, align 16, !alias.scope !17307, !nonnull !34, !noundef !34 ; 2 uses
  %i.sx = atomicrmw add ptr %i.sw, i64 1 monotonic, align 8, !noalias !17308
  %i.sy = icmp slt i64 %i.sx, 0
  br i1 %i.sy, label %bb.gp, label %bb.go

bb.gn:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i55.i
  tail call void @llvm.trap()
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.sz = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.ta = load ptr, ptr %i.sz, align 8, !alias.scope !17307, !nonnull !34, !noundef !34 ; 2 uses
  %i.tb = atomicrmw add ptr %i.ta, i64 1 monotonic, align 8, !noalias !17308
  %i.tc = icmp slt i64 %i.tb, 0
  br i1 %i.tc, label %bb.gq, label %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.gp:                                            ; preds = %bb.gm
  tail call void @llvm.trap()
  unreachable

bb.gq:                                            ; preds = %bb.go
  tail call void @llvm.trap()
  unreachable

_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.go
  %.sroa.51.8.copyload38 = load i64, ptr %.sink18.i.sroa.gep3.i43.i, align 8, !noalias !17171 ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc226 = trunc i64 %.sroa.51.8.copyload38 to i8
  %.sroa.51.sroa.28.0.extract.shift249 = and i64 %.sroa.51.8.copyload38, -256
  %.sroa.62.8.copyload60 = load i64, ptr %.sink15.i.sroa.gep4.i45.i, align 8, !noalias !17171 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc166 = trunc i64 %.sroa.62.8.copyload60 to i8
  %.sroa.62.sroa.25.0.extract.shift186 = and i64 %.sroa.62.8.copyload60, -256
  %.sroa.69.8.copyload84 = load i64, ptr %.sink18.i.sroa.gep.i42.i, align 8, !noalias !17171
  %i.td = load <2 x ptr>, ptr %.sink15.i.sroa.gep.i44.i, align 8, !noalias !17171
  %.sroa.91.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.sroa.91.8.copyload119 = load i64, ptr %.sroa.91.8..sroa_idx, align 8, !noalias !17171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !17302
  %i.te = ptrtoint ptr %i.so to i64
  %i.tf = insertelement <2 x ptr> poison, ptr %i.sw, i64 0
  %i.tg = insertelement <2 x ptr> %i.tf, ptr %i.ta, i64 1
  br label %bb.ps

bb.gr:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17309)
  switch i64 %i.cz, label %default.unreachable152.i.i [
    i64 0, label %bb.gs
    i64 1, label %bb.ik
    i64 2, label %bb.jg
    i64 3, label %bb.kb
    i64 4, label %bb.kd
    i64 5, label %bb.kf
    i64 6, label %bb.lh
    i64 7, label %bb.lw
    i64 8, label %bb.ml
    i64 9, label %bb.mv
    i64 10, label %bb.nt
  ]

default.unreachable152.i.i:                       ; preds = %bb.gr
  unreachable

bb.gs:                                            ; preds = %bb.gr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17310)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !17311
  %i.th = getelementptr inbounds nuw i8, ptr %i.cy, i64 208
  %i.ti = load ptr, ptr %i.th, align 16, !alias.scope !17312, !nonnull !34, !noundef !34 ; 4 uses
  %i.tj = atomicrmw add ptr %i.ti, i64 1 monotonic, align 8, !noalias !17313
  %i.tk = icmp slt i64 %i.tj, 0
  %.sink18.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %.sink18.i.sroa.gep15.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %.sink15.i.sroa.gep16.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  br i1 %i.tk, label %bb.hh, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.tl = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.ti, ptr %i.ay, align 8, !noalias !17311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !17311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17315)
  %i.tm = load i64, ptr %i.tl, align 8, !range !38, !alias.scope !17316, !noundef !34 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.to = load ptr, ptr %i.tn, align 16, !alias.scope !17316, !nonnull !34, !noundef !34 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !17316, !noundef !34 ; 3 uses
  %i.tr = atomicrmw add ptr %i.to, i64 1 monotonic, align 8, !noalias !17317
  %i.ts = icmp slt i64 %i.tr, 0                   ; 3 uses
  switch i64 %i.tm, label %default.unreachable [
    i64 0, label %bb.gu
    i64 1, label %bb.gv
    i64 2, label %bb.gw
  ]

bb.gu:                                            ; preds = %bb.gt
  br i1 %i.ts, label %bb.gx, label %bb.hk

bb.gv:                                            ; preds = %bb.gt
  br i1 %i.ts, label %bb.gz, label %bb.gy

bb.gw:                                            ; preds = %bb.gt
  br i1 %i.ts, label %bb.hc, label %bb.hb

bb.gx:                                            ; preds = %bb.gu
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.hf, %bb.gy
  %.sink18.i.sroa.phi.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i, %bb.hf ], [ %.sink18.i.sroa.gep15.i.i.i, %bb.gy ]
  %.sink16.i.i.i.i = phi ptr [ %i.ua, %bb.hf ], [ %i.to, %bb.gy ]
  %.sink15.i.sroa.phi.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i, %bb.hf ], [ %.sink15.i.sroa.gep16.i.i.i, %bb.gy ]
  %.sink13.i.i.i.i = phi i64 [ %i.uc, %bb.hf ], [ %i.tq, %bb.gy ]
  %.sink12.ph.i.i.i.i = phi i64 [ 40, %bb.hf ], [ 24, %bb.gy ]
  %.sink10.ph.i.i.i.i = phi ptr [ %i.ug, %bb.hf ], [ %i.tu, %bb.gy ]
  %.sink9.ph.i.i.i.i = phi i64 [ 48, %bb.hf ], [ 32, %bb.gy ]
  %.sink7.ph.i.i.i.i = phi i64 [ %i.ui, %bb.hf ], [ %i.tw, %bb.gy ]
  store ptr %.sink16.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i, align 8, !alias.scope !17314, !noalias !17311
  store i64 %.sink13.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i, align 8, !alias.scope !17314, !noalias !17311
  br label %bb.hk

bb.gy:                                            ; preds = %bb.gv
  %i.tt = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.tu = load ptr, ptr %i.tt, align 16, !alias.scope !17316, !nonnull !34, !noundef !34 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.tw = load i64, ptr %i.tv, align 8, !alias.scope !17316, !noundef !34
  %i.tx = atomicrmw add ptr %i.tu, i64 1 monotonic, align 8, !noalias !17317
  %i.ty = icmp slt i64 %i.tx, 0
  br i1 %i.ty, label %bb.ha, label %.sink.split.i.i.i.i

bb.gz:                                            ; preds = %bb.gv
  tail call void @llvm.trap()
  unreachable

bb.ha:                                            ; preds = %bb.gy
  tail call void @llvm.trap()
  unreachable

bb.hb:                                            ; preds = %bb.gw
  %i.tz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.ua = load ptr, ptr %i.tz, align 16, !alias.scope !17316, !nonnull !34, !noundef !34 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.uc = load i64, ptr %i.ub, align 8, !alias.scope !17316, !noundef !34
  %i.ud = atomicrmw add ptr %i.ua, i64 1 monotonic, align 8, !noalias !17317
  %i.ue = icmp slt i64 %i.ud, 0
  br i1 %i.ue, label %bb.he, label %bb.hd

bb.hc:                                            ; preds = %bb.gw
  tail call void @llvm.trap()
  unreachable

bb.hd:                                            ; preds = %bb.hb
  %i.uf = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.ug = load ptr, ptr %i.uf, align 16, !alias.scope !17316, !nonnull !34, !noundef !34 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.ui = load i64, ptr %i.uh, align 8, !alias.scope !17316, !noundef !34
  %i.uj = atomicrmw add ptr %i.ug, i64 1 monotonic, align 8, !noalias !17317
  %i.uk = icmp slt i64 %i.uj, 0
  br i1 %i.uk, label %bb.hg, label %bb.hf

bb.he:                                            ; preds = %bb.hb
  tail call void @llvm.trap()
  unreachable

bb.hf:                                            ; preds = %bb.hd
  store ptr %i.to, ptr %.sink18.i.sroa.gep15.i.i.i, align 8, !alias.scope !17314, !noalias !17311
  store i64 %i.tq, ptr %.sink15.i.sroa.gep16.i.i.i, align 8, !alias.scope !17314, !noalias !17311
  br label %.sink.split.i.i.i.i

bb.hg:                                            ; preds = %bb.hd
  tail call void @llvm.trap()
  unreachable

bb.hh:                                            ; preds = %bb.gs
  tail call void @llvm.trap()
  unreachable

bb.hi:                                            ; preds = %bb.hl
  %i.ul = atomicrmw sub ptr %i.ti, i64 1 release, align 8, !noalias !17318
  %i.um = icmp eq i64 %i.ul, 1
  br i1 %i.um, label %bb.hj, label %.body

bb.hj:                                            ; preds = %bb.hi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay) #58
          to label %.body unwind label %bb.ij, !noalias !17319

bb.hk:                                            ; preds = %.sink.split.i.i.i.i, %bb.gu
  %.sink12.i.i.i.i = phi i64 [ 8, %bb.gu ], [ %.sink12.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink10.i.i.i.i = phi ptr [ %i.to, %bb.gu ], [ %.sink10.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink9.i.i.i.i = phi i64 [ 16, %bb.gu ], [ %.sink9.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %.sink7.i.i.i.i = phi i64 [ %i.tq, %bb.gu ], [ %.sink7.ph.i.i.i.i, %.sink.split.i.i.i.i ]
  %i.un = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink12.i.i.i.i
  store ptr %.sink10.i.i.i.i, ptr %i.un, align 8, !alias.scope !17314, !noalias !17311
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink9.i.i.i.i
  store i64 %.sink7.i.i.i.i, ptr %i.uo, align 8, !alias.scope !17314, !noalias !17311
  store i64 %i.tm, ptr %i.ax, align 8, !alias.scope !17314, !noalias !17311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !17311
  %i.up = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.uq = inttoptr i64 %i.tm to ptr
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.up)
          to label %bb.hn unwind label %bb.hm, !noalias !17319

bb.hl:                                            ; preds = %bb.ho, %bb.hm
  %.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i.i.i, %bb.ho ], [ %i.ur, %bb.hm ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.ax) #54
          to label %bb.hi unwind label %bb.ij, !noalias !17319

bb.hm:                                            ; preds = %bb.hk
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hn:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !17311
  %i.us = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.us)
          to label %bb.hq unwind label %bb.hp, !noalias !17319

bb.ho:                                            ; preds = %bb.hr, %bb.hp
  %.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i.i, %bb.hr ], [ %i.ut, %bb.hp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw) #54
          to label %bb.hl unwind label %bb.ij, !noalias !17319

bb.hp:                                            ; preds = %bb.hn
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.hq:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !17311
  %i.uu = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uu)
          to label %bb.ht unwind label %bb.hs, !noalias !17319

bb.hr:                                            ; preds = %bb.hx, %bb.hs
  %.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i.i, %bb.hx ], [ %i.uv, %bb.hs ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av) #54
          to label %bb.ho unwind label %bb.ij, !noalias !17319

bb.hs:                                            ; preds = %bb.hq
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.ht:                                            ; preds = %bb.hq
  %i.uw = getelementptr inbounds nuw i8, ptr %i.cy, i64 312
  %i.ux = load i8, ptr %i.uw, align 8, !range !55, !alias.scope !17312, !noundef !34
  %i.uy = getelementptr inbounds nuw i8, ptr %i.cy, i64 313
  %i.uz = load i8, ptr %i.uy, align 1, !range !55, !alias.scope !17312, !noundef !34
  %i.va = getelementptr inbounds nuw i8, ptr %i.cy, i64 314
  %i.vb = load i8, ptr %i.va, align 2, !range !55, !alias.scope !17312, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !17311
  %i.vc = getelementptr inbounds nuw i8, ptr %i.cy, i64 184 ; 2 uses
  %i.vd = load i64, ptr %i.vc, align 8, !range !37, !alias.scope !17312, !noundef !34
  %.not.i.i70.i = icmp eq i64 %i.vd, -9223372036854775808
  br i1 %.not.i.i70.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !17311
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vc)
          to label %bb.hz unwind label %bb.hy, !noalias !17319

bb.hv:                                            ; preds = %bb.ht
  store i64 -9223372036854775808, ptr %i.at, align 8, !noalias !17311
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hz, %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !17311
  %i.ve = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ve)
          to label %bb.ic unwind label %bb.ib, !noalias !17319

bb.hx:                                            ; preds = %bb.ia, %bb.hy
  %.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i, %bb.ia ], [ %i.vf, %bb.hy ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.au) #54
          to label %bb.hr unwind label %bb.ij, !noalias !17319

bb.hy:                                            ; preds = %bb.hu
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.hz:                                            ; preds = %bb.hu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !17311
  br label %bb.hw

bb.ia:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ib
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.vg, %bb.ib ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at) #54
          to label %bb.hx unwind label %bb.ij, !noalias !17319

bb.ib:                                            ; preds = %bb.hw
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ia

bb.ic:                                            ; preds = %bb.hw
  %i.vh = getelementptr inbounds nuw i8, ptr %i.cy, i64 315
  %i.vi = load i8, ptr %i.vh, align 1, !range !55, !alias.scope !17312, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !17311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !17311
  %i.vj = getelementptr inbounds nuw i8, ptr %i.cy, i64 216
  call void @llvm.experimental.noalias.scope.decl(metadata !17320)
  call void @llvm.experimental.noalias.scope.decl(metadata !17321)
  %i.vk = getelementptr inbounds nuw i8, ptr %i.cy, i64 248
  %i.vl = load <2 x i64>, ptr %i.vk, align 8, !alias.scope !17322
  invoke void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vj)
          to label %bb.ie unwind label %bb.id, !noalias !17319

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.if, %bb.id
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.vm, %bb.id ], [ %.pn.i.i71.i, %bb.if ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.as) #54
          to label %bb.ia unwind label %bb.ij, !noalias !17319

bb.id:                                            ; preds = %bb.ic
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ie:                                            ; preds = %bb.ic
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store <2 x i64> %i.vl, ptr %i.vn, align 8, !alias.scope !17320, !noalias !17311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i64 48, i1 false), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !17311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !17311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !17311
  %i.vo = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vo)
          to label %bb.ih unwind label %bb.ig, !noalias !17319

bb.if:                                            ; preds = %bb.ii, %bb.ig
  %.pn.i.i71.i = phi { ptr, i32 } [ %i.vt, %bb.ii ], [ %i.vp, %bb.ig ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ij, !noalias !17319

bb.ig:                                            ; preds = %bb.ie
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ih:                                            ; preds = %bb.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !17311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !17311
  %i.vq = getelementptr inbounds nuw i8, ptr %i.cy, i64 264
  call void @llvm.experimental.noalias.scope.decl(metadata !17323)
  call void @llvm.experimental.noalias.scope.decl(metadata !17324)
  %i.vr = getelementptr inbounds nuw i8, ptr %i.cy, i64 296
  %i.vs = load <2 x i64>, ptr %i.vr, align 8, !alias.scope !17325
  invoke void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vq)
          to label %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i unwind label %bb.ii, !noalias !17319

bb.ii:                                            ; preds = %bb.ih
  %i.vt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #54
          to label %bb.if unwind label %bb.ij, !noalias !17319

bb.ij:                                            ; preds = %bb.ii, %bb.if, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ia, %bb.hx, %bb.hr, %bb.ho, %bb.hl, %bb.hj
  %i.vu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17319
  unreachable

_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ih
  %i.vv = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store <2 x i64> %i.vs, ptr %i.vv, align 8, !alias.scope !17323, !noalias !17311
  %.sroa.58.264..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.58.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.264..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false)
  %.sroa.62.264..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.62.264.copyload.i = load ptr, ptr %.sroa.62.264..sroa_idx.i, align 8, !noalias !17326
  %.sroa.63.264..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.63.264.copyload.i = load i8, ptr %.sroa.63.264..sroa_idx.i, align 8, !noalias !17326
  %.sroa.64.264..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 25
  %.sroa.64.264.copyload.i = load i8, ptr %.sroa.64.264..sroa_idx.i, align 1, !noalias !17326
  %.sroa.65.264..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.65.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.65.264..sroa_idx.i, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !17311
  %.sroa.0.i62.sroa.4.0.copyload.i = load i64, ptr %.sink18.i.sroa.gep15.i.i.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.5.0.copyload.i = load i64, ptr %.sink15.i.sroa.gep16.i.i.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.6.0.copyload.i = load i64, ptr %.sink18.i.sroa.gep.i.i.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.7.0.copyload.i = load ptr, ptr %.sink15.i.sroa.gep.i.i.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %.sroa.0.i62.sroa.8.0.copyload.i = load i8, ptr %.sroa.0.i62.sroa.8.0..sroa_idx.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 41
  %.sroa.0.i62.sroa.9.0.copyload.i = load i8, ptr %.sroa.0.i62.sroa.9.0..sroa_idx.i, align 1, !noalias !17327
  %.sroa.0.i62.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 42
  %.sroa.38.i.sroa.0.0.copyload300 = load i48, ptr %.sroa.0.i62.sroa.10.0..sroa_idx.i, align 2, !noalias !17326
  %.sroa.38.i.sroa.10.0..sroa.0.i62.sroa.10.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.sroa.38.i.sroa.10.0.copyload306 = load i64, ptr %.sroa.38.i.sroa.10.0..sroa.0.i62.sroa.10.0..sroa_idx.i.sroa_idx, align 8, !noalias !17326
  %.sroa.0.i62.sroa.11.56.copyload.i = load i64, ptr %i.aw, align 8, !noalias !17327
  %.sroa.0.i62.sroa.13.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0.i62.sroa.13.56.copyload.i = load i8, ptr %.sroa.0.i62.sroa.13.56..sroa_idx.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.14.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  %.sroa.5.i.i61.sroa.4.i.sroa.0.0.copyload312 = load i56, ptr %.sroa.0.i62.sroa.14.56..sroa_idx.i, align 1, !noalias !17261
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0..sroa.0.i62.sroa.14.56..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0.copyload316 = load ptr, ptr %.sroa.5.i.i61.sroa.4.i.sroa.8.0..sroa.0.i62.sroa.14.56..sroa_idx.i.sroa_idx, align 8, !noalias !17261
  %.sroa.0.i62.sroa.15.80.copyload.i = load ptr, ptr %i.av, align 8, !noalias !17327
  %.sroa.0.i62.sroa.17.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.0.i62.sroa.17.80.copyload.i = load i8, ptr %.sroa.0.i62.sroa.17.80..sroa_idx.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.18.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  %.sroa.0.i62.sroa.18.80.copyload.i = load i8, ptr %.sroa.0.i62.sroa.18.80..sroa_idx.i, align 1, !noalias !17327
  %.sroa.0.i62.sroa.19.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.0.i62.sroa.19.80..sroa_idx.i, i64 6, i1 false)
  %.sroa.47.i.sroa.7.0..sroa.0.i62.sroa.19.80..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.47.i.sroa.7.0.copyload325 = load i64, ptr %.sroa.47.i.sroa.7.0..sroa.0.i62.sroa.19.80..sroa_idx.i.sroa_idx, align 8, !noalias !17326
  %.sroa.0.i62.sroa.20.104.copyload.i = load ptr, ptr %i.au, align 8, !noalias !17327
  %.sroa.0.i62.sroa.22.104..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.vw = load <2 x i8>, ptr %.sroa.0.i62.sroa.22.104..sroa_idx.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.24.104..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  %.sroa.0.i62.sroa.24.104.copyload.i = load i8, ptr %.sroa.0.i62.sroa.24.104..sroa_idx.i, align 2, !noalias !17327
  %.sroa.0.i62.sroa.25.104..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.i62.sroa.25.104..sroa_idx.i, i64 5, i1 false)
  %.sroa.0.i62.sroa.25.sroa.4.0..sroa.0.i62.sroa.25.104..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.0.i62.sroa.25.sroa.4.0.copyload.i = load i64, ptr %.sroa.0.i62.sroa.25.sroa.4.0..sroa.0.i62.sroa.25.104..sroa_idx.sroa_idx.i, align 8, !noalias !17327
  %i.vx = load i64, ptr %i.at, align 8, !noalias !17327
  %.sroa.0.i62.sroa.33.176..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.i62.sroa.33.176.copyload.i = load i8, ptr %.sroa.0.i62.sroa.33.176..sroa_idx.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.34.176..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.56.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.i62.sroa.34.176..sroa_idx.i, i64 15, i1 false)
  %.sroa.0.i62.sroa.26.128.copyload.i = load ptr, ptr %i.as, align 8, !noalias !17327
  %.sroa.0.i62.sroa.28.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.i62.sroa.28.128.copyload.i = load i8, ptr %.sroa.0.i62.sroa.28.128..sroa_idx.i, align 8, !noalias !17327
  %.sroa.0.i62.sroa.29.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %.sroa.0.i62.sroa.29.128.copyload.i = load i8, ptr %.sroa.0.i62.sroa.29.128..sroa_idx.i, align 1, !noalias !17327
  %.sroa.0.i62.sroa.30.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.0.0.copyload307 = load i48, ptr %.sroa.0.i62.sroa.30.128..sroa_idx.i, align 2, !noalias !17261
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.5.0..sroa.0.i62.sroa.30.128..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.5.0.copyload308 = load ptr, ptr %.sroa.0.i62.sroa.30.sroa.0.i.sroa.5.0..sroa.0.i62.sroa.30.128..sroa_idx.i.sroa_idx, align 8, !noalias !17261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  %i.vy = load <2 x ptr>, ptr %i.aq, align 16, !noalias !17261
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.9.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.9.14.copyload = load i8, ptr %.sroa.0.i62.sroa.30.sroa.0.i.sroa.9.14..sroa_idx, align 16, !noalias !17261
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.10.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 17
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.10.14.copyload = load i8, ptr %.sroa.0.i62.sroa.30.sroa.0.i.sroa.10.14..sroa_idx, align 1, !noalias !17261
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.11.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 18
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.11.14.copyload = load i8, ptr %.sroa.0.i62.sroa.30.sroa.0.i.sroa.11.14..sroa_idx, align 2, !noalias !17261
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.12.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.i62.sroa.30.sroa.0.i.sroa.12, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.i62.sroa.30.sroa.0.i.sroa.12.14..sroa_idx, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !17311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !17311
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ik:                                            ; preds = %bb.gr
  %i.vz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !17329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17331)
  %i.wa = load i64, ptr %i.vz, align 8, !range !38, !alias.scope !17332, !noundef !34 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.wc = load ptr, ptr %i.wb, align 16, !alias.scope !17332, !nonnull !34, !noundef !34 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !17332, !noundef !34 ; 3 uses
  %i.wf = atomicrmw add ptr %i.wc, i64 1 monotonic, align 8, !noalias !17333
  %i.wg = icmp slt i64 %i.wf, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i1.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %.sink18.i.sroa.gep3.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i2.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %.sink15.i.sroa.gep4.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  switch i64 %i.wa, label %default.unreachable [
    i64 0, label %bb.il
    i64 1, label %bb.im
    i64 2, label %bb.in
  ]

bb.il:                                            ; preds = %bb.ik
  br i1 %i.wg, label %bb.io, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.im:                                            ; preds = %bb.ik
  br i1 %i.wg, label %bb.iq, label %bb.ip

bb.in:                                            ; preds = %bb.ik
  br i1 %i.wg, label %bb.it, label %bb.is

bb.io:                                            ; preds = %bb.il
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i3.i.i:                             ; preds = %bb.iw, %bb.ip
  %.sink18.i.sroa.phi.i4.i.i = phi ptr [ %.sink18.i.sroa.gep.i1.i.i, %bb.iw ], [ %.sink18.i.sroa.gep3.i.i.i, %bb.ip ]
  %.sink16.i.i5.i.i = phi ptr [ %i.wo, %bb.iw ], [ %i.wc, %bb.ip ]
  %.sink15.i.sroa.phi.i6.i.i = phi ptr [ %.sink15.i.sroa.gep.i2.i.i, %bb.iw ], [ %.sink15.i.sroa.gep4.i.i.i, %bb.ip ]
  %.sink13.i.i7.i.i = phi i64 [ %i.wq, %bb.iw ], [ %i.we, %bb.ip ]
  %.sink12.ph.i.i8.i.i = phi i64 [ 40, %bb.iw ], [ 24, %bb.ip ]
  %.sink10.ph.i.i9.i.i = phi ptr [ %i.wu, %bb.iw ], [ %i.wi, %bb.ip ]
  %.sink9.ph.i.i10.i.i = phi i64 [ 48, %bb.iw ], [ 32, %bb.ip ]
  %.sink7.ph.i.i11.i.i = phi i64 [ %i.ww, %bb.iw ], [ %i.wk, %bb.ip ]
  store ptr %.sink16.i.i5.i.i, ptr %.sink18.i.sroa.phi.i4.i.i, align 8, !alias.scope !17330, !noalias !17329
  store i64 %.sink13.i.i7.i.i, ptr %.sink15.i.sroa.phi.i6.i.i, align 8, !alias.scope !17330, !noalias !17329
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.ip:                                            ; preds = %bb.im
  %i.wh = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.wi = load ptr, ptr %i.wh, align 16, !alias.scope !17332, !nonnull !34, !noundef !34 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.wk = load i64, ptr %i.wj, align 8, !alias.scope !17332, !noundef !34
  %i.wl = atomicrmw add ptr %i.wi, i64 1 monotonic, align 8, !noalias !17333
  %i.wm = icmp slt i64 %i.wl, 0
  br i1 %i.wm, label %bb.ir, label %.sink.split.i.i3.i.i

bb.iq:                                            ; preds = %bb.im
  tail call void @llvm.trap()
  unreachable

bb.ir:                                            ; preds = %bb.ip
  tail call void @llvm.trap()
  unreachable

bb.is:                                            ; preds = %bb.in
  %i.wn = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.wo = load ptr, ptr %i.wn, align 16, !alias.scope !17332, !nonnull !34, !noundef !34 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.wq = load i64, ptr %i.wp, align 8, !alias.scope !17332, !noundef !34
  %i.wr = atomicrmw add ptr %i.wo, i64 1 monotonic, align 8, !noalias !17333
  %i.ws = icmp slt i64 %i.wr, 0
  br i1 %i.ws, label %bb.iv, label %bb.iu

bb.it:                                            ; preds = %bb.in
  tail call void @llvm.trap()
  unreachable

bb.iu:                                            ; preds = %bb.is
  %i.wt = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.wu = load ptr, ptr %i.wt, align 16, !alias.scope !17332, !nonnull !34, !noundef !34 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.ww = load i64, ptr %i.wv, align 8, !alias.scope !17332, !noundef !34
  %i.wx = atomicrmw add ptr %i.wu, i64 1 monotonic, align 8, !noalias !17333
  %i.wy = icmp slt i64 %i.wx, 0
  br i1 %i.wy, label %bb.ix, label %bb.iw

bb.iv:                                            ; preds = %bb.is
  tail call void @llvm.trap()
  unreachable

bb.iw:                                            ; preds = %bb.iu
  store ptr %i.wc, ptr %.sink18.i.sroa.gep3.i.i.i, align 8, !alias.scope !17330, !noalias !17329
  store i64 %i.we, ptr %.sink15.i.sroa.gep4.i.i.i, align 8, !alias.scope !17330, !noalias !17329
  br label %.sink.split.i.i3.i.i

bb.ix:                                            ; preds = %bb.iu
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %.sink.split.i.i3.i.i, %bb.il
  %.sink12.i.i12.i.i = phi i64 [ 8, %bb.il ], [ %.sink12.ph.i.i8.i.i, %.sink.split.i.i3.i.i ]
  %.sink10.i.i13.i.i = phi ptr [ %i.wc, %bb.il ], [ %.sink10.ph.i.i9.i.i, %.sink.split.i.i3.i.i ]
  %.sink9.i.i14.i.i = phi i64 [ 16, %bb.il ], [ %.sink9.ph.i.i10.i.i, %.sink.split.i.i3.i.i ]
  %.sink7.i.i15.i.i = phi i64 [ %i.we, %bb.il ], [ %.sink7.ph.i.i11.i.i, %.sink.split.i.i3.i.i ]
  %i.wz = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink12.i.i12.i.i
  store ptr %.sink10.i.i13.i.i, ptr %i.wz, align 8, !alias.scope !17330, !noalias !17329
  %i.xa = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink9.i.i14.i.i
  store i64 %.sink7.i.i15.i.i, ptr %i.xa, align 8, !alias.scope !17330, !noalias !17329
  store i64 %i.wa, ptr %i.al, align 8, !alias.scope !17330, !noalias !17329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !17329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !17329
  %i.xb = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.xc = inttoptr i64 %i.wa to ptr
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xb)
          to label %bb.ja unwind label %bb.iz, !noalias !17334

bb.iy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.iz
  %.pn.i16.i.i = phi { ptr, i32 } [ %i.xl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.xd, %bb.iz ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.al) #54
          to label %.body unwind label %bb.jf, !noalias !17334

bb.iz:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ja:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !17329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !17329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !17329
  %i.xe = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  %i.xf = load ptr, ptr %i.xe, align 16, !alias.scope !17335, !nonnull !34, !noundef !34 ; 4 uses
  %i.xg = atomicrmw add ptr %i.xf, i64 1 monotonic, align 8, !noalias !17334
  %i.xh = icmp slt i64 %i.xg, 0
  br i1 %i.xh, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  store ptr %i.xf, ptr %i.aj, align 8, !noalias !17329
  %i.xi = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  %i.xj = load <2 x i8>, ptr %i.xi, align 8, !alias.scope !17335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !17329
  %i.xk = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xk)
          to label %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i unwind label %bb.jd, !noalias !17334

bb.jc:                                            ; preds = %bb.ja
  call void @llvm.trap()
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.xl = landingpad { ptr, i32 }
          cleanup
  %i.xm = atomicrmw sub ptr %i.xf, i64 1 release, align 8, !noalias !17336
  %i.xn = icmp eq i64 %i.xm, 1
  br i1 %i.xn, label %bb.je, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.je:                                            ; preds = %bb.jd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.jf, !noalias !17334

bb.jf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.je, %bb.iy
  %i.xo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17334
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.je, %bb.jd
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies11ConstraintsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #54
          to label %bb.iy unwind label %bb.jf, !noalias !17334

_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.jb
  %i.xp = getelementptr inbounds nuw i8, ptr %i.cy, i64 122
  %i.xq = load i8, ptr %i.xp, align 2, !range !55, !alias.scope !17335, !noundef !34
  %.sroa.0101.i.sroa.4.0.copyload.i = load i64, ptr %.sink18.i.sroa.gep3.i.i.i, align 8, !noalias !17337
  %.sroa.0101.i.sroa.5.0.copyload.i = load i64, ptr %.sink15.i.sroa.gep4.i.i.i, align 8, !noalias !17337
  %.sroa.0101.i.sroa.6.0.copyload.i = load i64, ptr %.sink18.i.sroa.gep.i1.i.i, align 8, !noalias !17337
  %.sroa.0101.i.sroa.7.0.copyload.i = load ptr, ptr %.sink15.i.sroa.gep.i2.i.i, align 8, !noalias !17337
  %.sroa.0101.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.0101.i.sroa.8.0.copyload.i = load i8, ptr %.sroa.0101.i.sroa.8.0..sroa_idx.i, align 8, !noalias !17337
  %.sroa.0101.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 41
  %.sroa.0101.i.sroa.9.0.copyload.i = load i8, ptr %.sroa.0101.i.sroa.9.0..sroa_idx.i, align 1, !noalias !17337
  %.sroa.0101.i.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 42
  %.sroa.38.i.sroa.0.0.copyload299 = load i48, ptr %.sroa.0101.i.sroa.10.0..sroa_idx.i, align 2, !noalias !17326
  %.sroa.38.i.sroa.10.0..sroa.0101.i.sroa.10.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %.sroa.38.i.sroa.10.0.copyload305 = load i64, ptr %.sroa.38.i.sroa.10.0..sroa.0101.i.sroa.10.0..sroa_idx.i.sroa_idx, align 8, !noalias !17326
  %.sroa.0101.i.sroa.11.56.copyload.i = load i64, ptr %i.ak, align 8, !noalias !17337
  %.sroa.0101.i.sroa.13.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.0101.i.sroa.13.56.copyload.i = load i8, ptr %.sroa.0101.i.sroa.13.56..sroa_idx.i, align 8, !noalias !17337
  %.sroa.0101.i.sroa.14.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  %.sroa.5.i.i61.sroa.4.i.sroa.0.0.copyload311 = load i56, ptr %.sroa.0101.i.sroa.14.56..sroa_idx.i, align 1, !noalias !17261
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0..sroa.0101.i.sroa.14.56..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0.copyload315 = load ptr, ptr %.sroa.5.i.i61.sroa.4.i.sroa.8.0..sroa.0101.i.sroa.14.56..sroa_idx.i.sroa_idx, align 8, !noalias !17261
  %.sroa.0101.i.sroa.15.80.copyload.i = load ptr, ptr %i.ai, align 8, !noalias !17337
  %.sroa.0101.i.sroa.17.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0101.i.sroa.17.80.copyload.i = load i8, ptr %.sroa.0101.i.sroa.17.80..sroa_idx.i, align 8, !noalias !17337
  %.sroa.0101.i.sroa.18.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 9
  %.sroa.0101.i.sroa.18.80.copyload.i = load i8, ptr %.sroa.0101.i.sroa.18.80..sroa_idx.i, align 1, !noalias !17337
  %.sroa.0101.i.sroa.19.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.0101.i.sroa.19.80..sroa_idx.i, i64 6, i1 false)
  %.sroa.47.i.sroa.7.0..sroa.0101.i.sroa.19.80..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.47.i.sroa.7.0.copyload324 = load i64, ptr %.sroa.47.i.sroa.7.0..sroa.0101.i.sroa.19.80..sroa_idx.i.sroa_idx, align 8, !noalias !17326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !17329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !17329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !17329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !17329
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.jg:                                            ; preds = %bb.gr
  %i.xr = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !17339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17341)
  %i.xs = load i64, ptr %i.xr, align 8, !range !38, !alias.scope !17342, !noundef !34 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.xu = load ptr, ptr %i.xt, align 16, !alias.scope !17342, !nonnull !34, !noundef !34 ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.xw = load i64, ptr %i.xv, align 8, !alias.scope !17342, !noundef !34 ; 3 uses
  %i.xx = atomicrmw add ptr %i.xu, i64 1 monotonic, align 8, !noalias !17343
  %i.xy = icmp slt i64 %i.xx, 0                   ; 3 uses
  %.sink18.i.sroa.gep.i18.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %.sink18.i.sroa.gep5.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i19.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %.sink15.i.sroa.gep6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  switch i64 %i.xs, label %default.unreachable [
    i64 0, label %bb.jh
    i64 1, label %bb.ji
    i64 2, label %bb.jj
  ]

bb.jh:                                            ; preds = %bb.jg
  br i1 %i.xy, label %bb.jk, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i29.i.i

bb.ji:                                            ; preds = %bb.jg
  br i1 %i.xy, label %bb.jm, label %bb.jl

bb.jj:                                            ; preds = %bb.jg
  br i1 %i.xy, label %bb.jp, label %bb.jo

bb.jk:                                            ; preds = %bb.jh
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i20.i.i:                            ; preds = %bb.js, %bb.jl
  %.sink18.i.sroa.phi.i21.i.i = phi ptr [ %.sink18.i.sroa.gep.i18.i.i, %bb.js ], [ %.sink18.i.sroa.gep5.i.i.i, %bb.jl ]
  %.sink16.i.i22.i.i = phi ptr [ %i.yg, %bb.js ], [ %i.xu, %bb.jl ]
  %.sink15.i.sroa.phi.i23.i.i = phi ptr [ %.sink15.i.sroa.gep.i19.i.i, %bb.js ], [ %.sink15.i.sroa.gep6.i.i.i, %bb.jl ]
  %.sink13.i.i24.i.i = phi i64 [ %i.yi, %bb.js ], [ %i.xw, %bb.jl ]
  %.sink12.ph.i.i25.i.i = phi i64 [ 40, %bb.js ], [ 24, %bb.jl ]
  %.sink10.ph.i.i26.i.i = phi ptr [ %i.ym, %bb.js ], [ %i.ya, %bb.jl ]
  %.sink9.ph.i.i27.i.i = phi i64 [ 48, %bb.js ], [ 32, %bb.jl ]
  %.sink7.ph.i.i28.i.i = phi i64 [ %i.yo, %bb.js ], [ %i.yc, %bb.jl ]
  store ptr %.sink16.i.i22.i.i, ptr %.sink18.i.sroa.phi.i21.i.i, align 8, !alias.scope !17340, !noalias !17339
  store i64 %.sink13.i.i24.i.i, ptr %.sink15.i.sroa.phi.i23.i.i, align 8, !alias.scope !17340, !noalias !17339
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i29.i.i

bb.jl:                                            ; preds = %bb.ji
  %i.xz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.ya = load ptr, ptr %i.xz, align 16, !alias.scope !17342, !nonnull !34, !noundef !34 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.yc = load i64, ptr %i.yb, align 8, !alias.scope !17342, !noundef !34
  %i.yd = atomicrmw add ptr %i.ya, i64 1 monotonic, align 8, !noalias !17343
  %i.ye = icmp slt i64 %i.yd, 0
  br i1 %i.ye, label %bb.jn, label %.sink.split.i.i20.i.i

bb.jm:                                            ; preds = %bb.ji
  tail call void @llvm.trap()
  unreachable

bb.jn:                                            ; preds = %bb.jl
  tail call void @llvm.trap()
  unreachable

bb.jo:                                            ; preds = %bb.jj
  %i.yf = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.yg = load ptr, ptr %i.yf, align 16, !alias.scope !17342, !nonnull !34, !noundef !34 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.yi = load i64, ptr %i.yh, align 8, !alias.scope !17342, !noundef !34
  %i.yj = atomicrmw add ptr %i.yg, i64 1 monotonic, align 8, !noalias !17343
  %i.yk = icmp slt i64 %i.yj, 0
  br i1 %i.yk, label %bb.jr, label %bb.jq

bb.jp:                                            ; preds = %bb.jj
  tail call void @llvm.trap()
  unreachable

bb.jq:                                            ; preds = %bb.jo
  %i.yl = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.ym = load ptr, ptr %i.yl, align 16, !alias.scope !17342, !nonnull !34, !noundef !34 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.yo = load i64, ptr %i.yn, align 8, !alias.scope !17342, !noundef !34
  %i.yp = atomicrmw add ptr %i.ym, i64 1 monotonic, align 8, !noalias !17343
  %i.yq = icmp slt i64 %i.yp, 0
  br i1 %i.yq, label %bb.jt, label %bb.js

bb.jr:                                            ; preds = %bb.jo
  tail call void @llvm.trap()
  unreachable

bb.js:                                            ; preds = %bb.jq
  store ptr %i.xu, ptr %.sink18.i.sroa.gep5.i.i.i, align 8, !alias.scope !17340, !noalias !17339
  store i64 %i.xw, ptr %.sink15.i.sroa.gep6.i.i.i, align 8, !alias.scope !17340, !noalias !17339
  br label %.sink.split.i.i20.i.i

bb.jt:                                            ; preds = %bb.jq
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i29.i.i: ; preds = %.sink.split.i.i20.i.i, %bb.jh
  %.sink12.i.i30.i.i = phi i64 [ 8, %bb.jh ], [ %.sink12.ph.i.i25.i.i, %.sink.split.i.i20.i.i ]
  %.sink10.i.i31.i.i = phi ptr [ %i.xu, %bb.jh ], [ %.sink10.ph.i.i26.i.i, %.sink.split.i.i20.i.i ]
  %.sink9.i.i32.i.i = phi i64 [ 16, %bb.jh ], [ %.sink9.ph.i.i27.i.i, %.sink.split.i.i20.i.i ]
  %.sink7.i.i33.i.i = phi i64 [ %i.xw, %bb.jh ], [ %.sink7.ph.i.i28.i.i, %.sink.split.i.i20.i.i ]
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink12.i.i30.i.i
  store ptr %.sink10.i.i31.i.i, ptr %i.yr, align 8, !alias.scope !17340, !noalias !17339
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink9.i.i32.i.i
  store i64 %.sink7.i.i33.i.i, ptr %i.ys, align 8, !alias.scope !17340, !noalias !17339
  store i64 %i.xs, ptr %i.ag, align 8, !alias.scope !17340, !noalias !17339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !17339
  %i.yt = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.yu = load ptr, ptr %i.yt, align 8, !alias.scope !17344, !nonnull !34, !noundef !34 ; 4 uses
  %i.yv = atomicrmw add ptr %i.yu, i64 1 monotonic, align 8, !noalias !17345
  %i.yw = icmp slt i64 %i.yv, 0
  %i.yx = inttoptr i64 %i.xs to ptr
  br i1 %i.yw, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i29.i.i
  store ptr %i.yu, ptr %i.af, align 8, !noalias !17339
  %i.yy = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.yz = load i8, ptr %i.yy, align 16, !range !55, !alias.scope !17344, !noundef !34
  %i.za = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.zb = load i64, ptr %i.za, align 16, !range !37, !alias.scope !17344, !noundef !34
  %.not.i34.i.i = icmp eq i64 %i.zb, -9223372036854775808
  br i1 %.not.i34.i.i, label %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, label %bb.jw

bb.jv:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i29.i.i
  tail call void @llvm.trap()
  unreachable

bb.jw:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !17339
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.za)
          to label %bb.jz unwind label %bb.jx, !noalias !17346

bb.jx:                                            ; preds = %bb.jw
  %i.zc = landingpad { ptr, i32 }
          cleanup
  %i.zd = atomicrmw sub ptr %i.yu, i64 1 release, align 8, !noalias !17347
  %i.ze = icmp eq i64 %i.zd, 1
  br i1 %i.ze, label %bb.jy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i35.i.i

bb.jy:                                            ; preds = %bb.jx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i35.i.i unwind label %bb.ka, !noalias !17346

bb.jz:                                            ; preds = %bb.jw
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.ae, align 8, !noalias !17339
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5.i.i61.sroa.0.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !17348
  %.sroa.5.i.i61.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %.sroa.5.i.i61.sroa.4.i.sroa.0.0.copyload310 = load i56, ptr %.sroa.5.i.i61.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i, align 1, !noalias !17261
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0..sroa.5.i.i61.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0.copyload314 = load ptr, ptr %.sroa.5.i.i61.sroa.4.i.sroa.8.0..sroa.5.i.i61.sroa.4.0..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.sroa_idx, align 8, !noalias !17261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17339
  br label %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.ka:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i35.i.i, %bb.jy
  %i.zf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17346
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i35.i.i: ; preds = %bb.jy, %bb.jx
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.ag) #54
          to label %.body unwind label %bb.ka, !noalias !17346

_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.jz, %bb.ju
  %.sroa.5.i.i61.sroa.4.i.sroa.8.1 = phi ptr [ undef, %bb.ju ], [ %.sroa.5.i.i61.sroa.4.i.sroa.8.0.copyload314, %bb.jz ]
  %.sroa.5.i.i61.sroa.4.i.sroa.0.1 = phi i56 [ undef, %bb.ju ], [ %.sroa.5.i.i61.sroa.4.i.sroa.0.0.copyload310, %bb.jz ]
  %.sroa.5.i.i61.sroa.0.0.i = phi i8 [ undef, %bb.ju ], [ %.sroa.5.i.i61.sroa.0.0.copyload.i, %bb.jz ]
  %.sroa.0.0.i.i65.i = phi i64 [ -9223372036854775808, %bb.ju ], [ %.sroa.0.0.copyload1.i.i.i, %bb.jz ]
  %i.zg = getelementptr inbounds nuw i8, ptr %i.cy, i64 97
  %i.zh = load i8, ptr %i.zg, align 1, !range !55, !alias.scope !17344, !noundef !34
  %.sroa.24.8.copyload162.i = load i64, ptr %.sink18.i.sroa.gep5.i.i.i, align 8, !noalias !17326
  %.sroa.26.8.copyload175.i = load i64, ptr %.sink15.i.sroa.gep6.i.i.i, align 8, !noalias !17326
  %.sroa.28.8.copyload188.i = load i64, ptr %.sink18.i.sroa.gep.i18.i.i, align 8, !noalias !17326
  %.sroa.32.8.copyload195.i = load ptr, ptr %.sink15.i.sroa.gep.i19.i.i, align 8, !noalias !17326
  %.sroa.36.8..sroa_idx201.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.36.8.copyload202.i = load i8, ptr %.sroa.36.8..sroa_idx201.i, align 8, !noalias !17326
  %.sroa.37.8..sroa_idx208.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 41
  %.sroa.37.8.copyload209.i = load i8, ptr %.sroa.37.8..sroa_idx208.i, align 1, !noalias !17326
  %.sroa.38.8..sroa_idx211.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 42
  %.sroa.38.i.sroa.0.0.copyload298 = load i48, ptr %.sroa.38.8..sroa_idx211.i, align 2, !noalias !17326
  %.sroa.38.i.sroa.10.0..sroa.38.8..sroa_idx211.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.38.i.sroa.10.0.copyload304 = load i64, ptr %.sroa.38.i.sroa.10.0..sroa.38.8..sroa_idx211.i.sroa_idx, align 8, !noalias !17326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !17339
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.kb:                                            ; preds = %bb.gr
  %i.zi = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !17350
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.zi)
          to label %.noexc15 unwind label %bb.pq

.noexc15:                                         ; preds = %bb.kb
  %i.zj = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.zk = load i8, ptr %i.zj, align 8, !range !55, !alias.scope !17351, !noundef !34
  %i.zl = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.zm = load ptr, ptr %i.zl, align 16, !alias.scope !17351, !nonnull !34, !noundef !34 ; 2 uses
  %i.zn = atomicrmw add ptr %i.zm, i64 1 monotonic, align 8, !noalias !17352
  %i.zo = icmp slt i64 %i.zn, 0
  br i1 %i.zo, label %bb.kc, label %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.kc:                                            ; preds = %.noexc15
  tail call void @llvm.trap()
  unreachable

_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc15
  %.sroa.14.8.copyload155.i = load ptr, ptr %i.ad, align 8, !noalias !17326
  %.sroa.24.8..sroa_idx167.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.24.8.copyload168.i = load i64, ptr %.sroa.24.8..sroa_idx167.i, align 8, !noalias !17326
  %.sroa.26.8..sroa_idx180.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.26.8.copyload181.i = load i64, ptr %.sroa.26.8..sroa_idx180.i, align 8, !noalias !17326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !17350
  %i.zp = ptrtoint ptr %i.zm to i64
  %.sroa.32.0.insert.ext236.i = zext nneg i8 %i.zk to i64
  %i.zq = inttoptr i64 %.sroa.32.0.insert.ext236.i to ptr
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.kd:                                            ; preds = %bb.gr
  %i.zr = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !17354
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.zr)
          to label %.noexc16 unwind label %bb.pq

.noexc16:                                         ; preds = %bb.kd
  %i.zs = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.zt = load i8, ptr %i.zs, align 8, !range !55, !alias.scope !17355, !noundef !34
  %i.zu = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.zv = load ptr, ptr %i.zu, align 16, !alias.scope !17355, !nonnull !34, !noundef !34 ; 2 uses
  %i.zw = atomicrmw add ptr %i.zv, i64 1 monotonic, align 8, !noalias !17356
  %i.zx = icmp slt i64 %i.zw, 0
  br i1 %i.zx, label %bb.ke, label %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.ke:                                            ; preds = %.noexc16
  tail call void @llvm.trap()
  unreachable

_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc16
  %.sroa.14.8.copyload154.i = load ptr, ptr %i.ac, align 8, !noalias !17326
  %.sroa.24.8..sroa_idx165.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.24.8.copyload166.i = load i64, ptr %.sroa.24.8..sroa_idx165.i, align 8, !noalias !17326
  %.sroa.26.8..sroa_idx178.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.26.8.copyload179.i = load i64, ptr %.sroa.26.8..sroa_idx178.i, align 8, !noalias !17326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !17354
  %i.zy = ptrtoint ptr %i.zv to i64
  %.sroa.32.0.insert.ext232.i = zext nneg i8 %i.zt to i64
  %i.zz = inttoptr i64 %.sroa.32.0.insert.ext232.i to ptr
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.kf:                                            ; preds = %bb.gr
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !17358
  %i.aab = getelementptr inbounds nuw i8, ptr %i.cy, i64 88 ; 2 uses
  %i.aac = load i64, ptr %i.aab, align 8, !range !37, !alias.scope !17359, !noundef !34
  %.not.i37.i.i = icmp eq i64 %i.aac, -9223372036854775808
  %.sink18.i.sroa.gep.i38.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %.sink18.i.sroa.gep5.i39.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i40.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %.sink15.i.sroa.gep6.i41.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  br i1 %.not.i37.i.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aab)
          to label %.noexc17 unwind label %bb.pq

bb.kh:                                            ; preds = %bb.kf
  store i64 -9223372036854775808, ptr %i.ab, align 8, !noalias !17358
  br label %.noexc17

.noexc17:                                         ; preds = %bb.kg, %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !17358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17361)
  %i.aad = load i64, ptr %i.aaa, align 8, !range !38, !alias.scope !17362, !noundef !34 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.aaf = load ptr, ptr %i.aae, align 16, !alias.scope !17362, !nonnull !34, !noundef !34 ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.aah = load i64, ptr %i.aag, align 8, !alias.scope !17362, !noundef !34 ; 3 uses
  %i.aai = atomicrmw add ptr %i.aaf, i64 1 monotonic, align 8, !noalias !17363
  %i.aaj = icmp slt i64 %i.aai, 0                 ; 3 uses
  switch i64 %i.aad, label %default.unreachable [
    i64 0, label %bb.ki
    i64 1, label %bb.kj
    i64 2, label %bb.kk
  ]

bb.ki:                                            ; preds = %.noexc17
  br i1 %i.aaj, label %bb.kl, label %bb.kw

bb.kj:                                            ; preds = %.noexc17
  br i1 %i.aaj, label %bb.kn, label %bb.km

bb.kk:                                            ; preds = %.noexc17
  br i1 %i.aaj, label %bb.kq, label %bb.kp

bb.kl:                                            ; preds = %bb.ki
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i42.i.i:                            ; preds = %bb.kt, %bb.km
  %.sink18.i.sroa.phi.i43.i.i = phi ptr [ %.sink18.i.sroa.gep.i38.i.i, %bb.kt ], [ %.sink18.i.sroa.gep5.i39.i.i, %bb.km ]
  %.sink16.i.i44.i.i = phi ptr [ %i.aar, %bb.kt ], [ %i.aaf, %bb.km ]
  %.sink15.i.sroa.phi.i45.i.i = phi ptr [ %.sink15.i.sroa.gep.i40.i.i, %bb.kt ], [ %.sink15.i.sroa.gep6.i41.i.i, %bb.km ]
  %.sink13.i.i46.i.i = phi i64 [ %i.aat, %bb.kt ], [ %i.aah, %bb.km ]
  %.sink12.ph.i.i47.i.i = phi i64 [ 40, %bb.kt ], [ 24, %bb.km ]
  %.sink10.ph.i.i48.i.i = phi ptr [ %i.aax, %bb.kt ], [ %i.aal, %bb.km ]
  %.sink9.ph.i.i49.i.i = phi i64 [ 48, %bb.kt ], [ 32, %bb.km ]
  %.sink7.ph.i.i50.i.i = phi i64 [ %i.aaz, %bb.kt ], [ %i.aan, %bb.km ]
  store ptr %.sink16.i.i44.i.i, ptr %.sink18.i.sroa.phi.i43.i.i, align 8, !alias.scope !17360, !noalias !17358
  store i64 %.sink13.i.i46.i.i, ptr %.sink15.i.sroa.phi.i45.i.i, align 8, !alias.scope !17360, !noalias !17358
  br label %bb.kw

bb.km:                                            ; preds = %bb.kj
  %i.aak = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.aal = load ptr, ptr %i.aak, align 16, !alias.scope !17362, !nonnull !34, !noundef !34 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.aan = load i64, ptr %i.aam, align 8, !alias.scope !17362, !noundef !34
  %i.aao = atomicrmw add ptr %i.aal, i64 1 monotonic, align 8, !noalias !17363
  %i.aap = icmp slt i64 %i.aao, 0
  br i1 %i.aap, label %bb.ko, label %.sink.split.i.i42.i.i

bb.kn:                                            ; preds = %bb.kj
  tail call void @llvm.trap()
  unreachable

bb.ko:                                            ; preds = %bb.km
  tail call void @llvm.trap()
  unreachable

bb.kp:                                            ; preds = %bb.kk
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.aar = load ptr, ptr %i.aaq, align 16, !alias.scope !17362, !nonnull !34, !noundef !34 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.aat = load i64, ptr %i.aas, align 8, !alias.scope !17362, !noundef !34
  %i.aau = atomicrmw add ptr %i.aar, i64 1 monotonic, align 8, !noalias !17363
  %i.aav = icmp slt i64 %i.aau, 0
  br i1 %i.aav, label %bb.ks, label %bb.kr

bb.kq:                                            ; preds = %bb.kk
  tail call void @llvm.trap()
  unreachable

bb.kr:                                            ; preds = %bb.kp
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.aax = load ptr, ptr %i.aaw, align 16, !alias.scope !17362, !nonnull !34, !noundef !34 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.aaz = load i64, ptr %i.aay, align 8, !alias.scope !17362, !noundef !34
  %i.aba = atomicrmw add ptr %i.aax, i64 1 monotonic, align 8, !noalias !17363
  %i.abb = icmp slt i64 %i.aba, 0
  br i1 %i.abb, label %bb.ku, label %bb.kt

bb.ks:                                            ; preds = %bb.kp
  tail call void @llvm.trap()
  unreachable

bb.kt:                                            ; preds = %bb.kr
  store ptr %i.aaf, ptr %.sink18.i.sroa.gep5.i39.i.i, align 8, !alias.scope !17360, !noalias !17358
  store i64 %i.aah, ptr %.sink15.i.sroa.gep6.i41.i.i, align 8, !alias.scope !17360, !noalias !17358
  br label %.sink.split.i.i42.i.i

bb.ku:                                            ; preds = %bb.kr
  tail call void @llvm.trap()
  unreachable

bb.kv:                                            ; preds = %bb.la
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #54
          to label %.body unwind label %bb.lg, !noalias !17364

bb.kw:                                            ; preds = %.sink.split.i.i42.i.i, %bb.ki
  %.sink12.i.i51.i.i = phi i64 [ 8, %bb.ki ], [ %.sink12.ph.i.i47.i.i, %.sink.split.i.i42.i.i ]
  %.sink10.i.i52.i.i = phi ptr [ %i.aaf, %bb.ki ], [ %.sink10.ph.i.i48.i.i, %.sink.split.i.i42.i.i ]
  %.sink9.i.i53.i.i = phi i64 [ 16, %bb.ki ], [ %.sink9.ph.i.i49.i.i, %.sink.split.i.i42.i.i ]
  %.sink7.i.i54.i.i = phi i64 [ %i.aah, %bb.ki ], [ %.sink7.ph.i.i50.i.i, %.sink.split.i.i42.i.i ]
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink12.i.i51.i.i
  store ptr %.sink10.i.i52.i.i, ptr %i.abc, align 8, !alias.scope !17360, !noalias !17358
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink9.i.i53.i.i
  store i64 %.sink7.i.i54.i.i, ptr %i.abd, align 8, !alias.scope !17360, !noalias !17358
  store i64 %i.aad, ptr %i.aa, align 8, !alias.scope !17360, !noalias !17358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !17358
  %i.abe = getelementptr inbounds nuw i8, ptr %i.cy, i64 112 ; 2 uses
  %i.abf = load i64, ptr %i.abe, align 16, !range !37, !alias.scope !17359, !noundef !34
  %.not2.i.i.i = icmp eq i64 %i.abf, -9223372036854775808
  %i.abg = inttoptr i64 %i.aad to ptr
  br i1 %.not2.i.i.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17358
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abe)
          to label %bb.lc unwind label %bb.lb, !noalias !17364

bb.ky:                                            ; preds = %bb.kw
  store i64 -9223372036854775808, ptr %i.z, align 8, !noalias !17358
  br label %bb.kz

bb.kz:                                            ; preds = %bb.lc, %bb.ky
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !17358
  %i.abh = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abh)
          to label %bb.le unwind label %bb.ld, !noalias !17364

bb.la:                                            ; preds = %bb.ld, %bb.lb
  %.pn.i55.i.i = phi { ptr, i32 } [ %i.abj, %bb.ld ], [ %i.abi, %bb.lb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.aa) #54
          to label %bb.kv unwind label %bb.lg, !noalias !17364

bb.lb:                                            ; preds = %bb.kx
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.lc:                                            ; preds = %bb.kx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !17358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17358
  br label %bb.kz

bb.ld:                                            ; preds = %bb.kz
  %i.abj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #54
          to label %bb.la unwind label %bb.lg, !noalias !17364

bb.le:                                            ; preds = %bb.kz
  %i.abk = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  %i.abl = load i8, ptr %i.abk, align 16, !range !55, !alias.scope !17359, !noundef !34
  %i.abm = getelementptr inbounds nuw i8, ptr %i.cy, i64 145
  %i.abn = load i8, ptr %i.abm, align 1, !range !55, !alias.scope !17359, !noundef !34
  %i.abo = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %i.abp = load ptr, ptr %i.abo, align 8, !alias.scope !17359, !nonnull !34, !noundef !34 ; 2 uses
  %i.abq = atomicrmw add ptr %i.abp, i64 1 monotonic, align 8, !noalias !17364
  %i.abr = icmp slt i64 %i.abq, 0
  br i1 %i.abr, label %bb.lf, label %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.lf:                                            ; preds = %bb.le
  call void @llvm.trap()
  unreachable

bb.lg:                                            ; preds = %bb.ld, %bb.la, %bb.kv
  %i.abs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17364
  unreachable

_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.le
  %.sroa.0116.i.sroa.15.80.copyload.i = load ptr, ptr %i.ab, align 8, !noalias !17365
  %.sroa.0116.i.sroa.17.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0116.i.sroa.17.80.copyload.i = load i8, ptr %.sroa.0116.i.sroa.17.80..sroa_idx.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.18.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %.sroa.0116.i.sroa.18.80.copyload.i = load i8, ptr %.sroa.0116.i.sroa.18.80..sroa_idx.i, align 1, !noalias !17365
  %.sroa.0116.i.sroa.19.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.0116.i.sroa.19.80..sroa_idx.i, i64 6, i1 false)
  %.sroa.47.i.sroa.7.0..sroa.0116.i.sroa.19.80..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.47.i.sroa.7.0.copyload323 = load i64, ptr %.sroa.47.i.sroa.7.0..sroa.0116.i.sroa.19.80..sroa_idx.i.sroa_idx, align 8, !noalias !17326
  %.sroa.0116.i.sroa.4.0.copyload.i = load i64, ptr %.sink18.i.sroa.gep5.i39.i.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.5.0.copyload.i = load i64, ptr %.sink15.i.sroa.gep6.i41.i.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.6.0.copyload.i = load i64, ptr %.sink18.i.sroa.gep.i38.i.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.7.0.copyload.i = load ptr, ptr %.sink15.i.sroa.gep.i40.i.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.0116.i.sroa.8.0.copyload.i = load i8, ptr %.sroa.0116.i.sroa.8.0..sroa_idx.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 41
  %.sroa.0116.i.sroa.9.0.copyload.i = load i8, ptr %.sroa.0116.i.sroa.9.0..sroa_idx.i, align 1, !noalias !17365
  %.sroa.0116.i.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 42
  %.sroa.38.i.sroa.0.0.copyload297 = load i48, ptr %.sroa.0116.i.sroa.10.0..sroa_idx.i, align 2, !noalias !17326
  %.sroa.38.i.sroa.10.0..sroa.0116.i.sroa.10.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.38.i.sroa.10.0.copyload303 = load i64, ptr %.sroa.38.i.sroa.10.0..sroa.0116.i.sroa.10.0..sroa_idx.i.sroa_idx, align 8, !noalias !17326
  %.sroa.0116.i.sroa.20.104.copyload.i = load ptr, ptr %i.z, align 8, !noalias !17365
  %.sroa.0116.i.sroa.22.104..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.abt = load <2 x i8>, ptr %.sroa.0116.i.sroa.22.104..sroa_idx.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.24.104..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  %.sroa.0116.i.sroa.24.104.copyload.i = load i8, ptr %.sroa.0116.i.sroa.24.104..sroa_idx.i, align 2, !noalias !17365
  %.sroa.0116.i.sroa.25.104..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0116.i.sroa.25.104..sroa_idx.i, i64 5, i1 false)
  %.sroa.0116.i.sroa.25.sroa.4.0..sroa.0116.i.sroa.25.104..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.0116.i.sroa.25.sroa.4.0.copyload.i = load i64, ptr %.sroa.0116.i.sroa.25.sroa.4.0..sroa.0116.i.sroa.25.104..sroa_idx.sroa_idx.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.11.56.copyload.i = load i64, ptr %i.y, align 8, !noalias !17365
  %.sroa.0116.i.sroa.13.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0116.i.sroa.13.56.copyload.i = load i8, ptr %.sroa.0116.i.sroa.13.56..sroa_idx.i, align 8, !noalias !17365
  %.sroa.0116.i.sroa.14.56..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %.sroa.5.i.i61.sroa.4.i.sroa.0.0.copyload309 = load i56, ptr %.sroa.0116.i.sroa.14.56..sroa_idx.i, align 1, !noalias !17261
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0..sroa.0116.i.sroa.14.56..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0.copyload313 = load ptr, ptr %.sroa.5.i.i61.sroa.4.i.sroa.8.0..sroa.0116.i.sroa.14.56..sroa_idx.i.sroa_idx, align 8, !noalias !17261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !17358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !17358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !17358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !17358
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.lh:                                            ; preds = %bb.gr
  %i.abu = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !17367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17369)
  %i.abv = load i64, ptr %i.abu, align 8, !range !38, !alias.scope !17370, !noundef !34 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.abx = load ptr, ptr %i.abw, align 16, !alias.scope !17370, !nonnull !34, !noundef !34 ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.abz = load i64, ptr %i.aby, align 8, !alias.scope !17370, !noundef !34 ; 3 uses
  %i.aca = atomicrmw add ptr %i.abx, i64 1 monotonic, align 8, !noalias !17371
  %i.acb = icmp slt i64 %i.aca, 0                 ; 3 uses
  %.sink18.i.sroa.gep.i57.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %.sink18.i.sroa.gep1.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i58.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %.sink15.i.sroa.gep2.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  switch i64 %i.abv, label %default.unreachable [
    i64 0, label %bb.li
    i64 1, label %bb.lj
    i64 2, label %bb.lk
  ]

bb.li:                                            ; preds = %bb.lh
  br i1 %i.acb, label %bb.ll, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i68.i.i

bb.lj:                                            ; preds = %bb.lh
  br i1 %i.acb, label %bb.ln, label %bb.lm

bb.lk:                                            ; preds = %bb.lh
  br i1 %i.acb, label %bb.lq, label %bb.lp

bb.ll:                                            ; preds = %bb.li
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i59.i.i:                            ; preds = %bb.lt, %bb.lm
  %.sink18.i.sroa.phi.i60.i.i = phi ptr [ %.sink18.i.sroa.gep.i57.i.i, %bb.lt ], [ %.sink18.i.sroa.gep1.i.i.i, %bb.lm ]
  %.sink16.i.i61.i.i = phi ptr [ %i.acj, %bb.lt ], [ %i.abx, %bb.lm ]
  %.sink15.i.sroa.phi.i62.i.i = phi ptr [ %.sink15.i.sroa.gep.i58.i.i, %bb.lt ], [ %.sink15.i.sroa.gep2.i.i.i, %bb.lm ]
  %.sink13.i.i63.i.i = phi i64 [ %i.acl, %bb.lt ], [ %i.abz, %bb.lm ]
  %.sink12.ph.i.i64.i.i = phi i64 [ 40, %bb.lt ], [ 24, %bb.lm ]
  %.sink10.ph.i.i65.i.i = phi ptr [ %i.acp, %bb.lt ], [ %i.acd, %bb.lm ]
  %.sink9.ph.i.i66.i.i = phi i64 [ 48, %bb.lt ], [ 32, %bb.lm ]
  %.sink7.ph.i.i67.i.i = phi i64 [ %i.acr, %bb.lt ], [ %i.acf, %bb.lm ]
  store ptr %.sink16.i.i61.i.i, ptr %.sink18.i.sroa.phi.i60.i.i, align 8, !alias.scope !17368, !noalias !17367
  store i64 %.sink13.i.i63.i.i, ptr %.sink15.i.sroa.phi.i62.i.i, align 8, !alias.scope !17368, !noalias !17367
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i68.i.i

bb.lm:                                            ; preds = %bb.lj
  %i.acc = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.acd = load ptr, ptr %i.acc, align 16, !alias.scope !17370, !nonnull !34, !noundef !34 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.acf = load i64, ptr %i.ace, align 8, !alias.scope !17370, !noundef !34
  %i.acg = atomicrmw add ptr %i.acd, i64 1 monotonic, align 8, !noalias !17371
  %i.ach = icmp slt i64 %i.acg, 0
  br i1 %i.ach, label %bb.lo, label %.sink.split.i.i59.i.i

bb.ln:                                            ; preds = %bb.lj
  tail call void @llvm.trap()
  unreachable

bb.lo:                                            ; preds = %bb.lm
  tail call void @llvm.trap()
  unreachable

bb.lp:                                            ; preds = %bb.lk
  %i.aci = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.acj = load ptr, ptr %i.aci, align 16, !alias.scope !17370, !nonnull !34, !noundef !34 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.acl = load i64, ptr %i.ack, align 8, !alias.scope !17370, !noundef !34
  %i.acm = atomicrmw add ptr %i.acj, i64 1 monotonic, align 8, !noalias !17371
  %i.acn = icmp slt i64 %i.acm, 0
  br i1 %i.acn, label %bb.ls, label %bb.lr

bb.lq:                                            ; preds = %bb.lk
  tail call void @llvm.trap()
  unreachable

bb.lr:                                            ; preds = %bb.lp
  %i.aco = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.acp = load ptr, ptr %i.aco, align 16, !alias.scope !17370, !nonnull !34, !noundef !34 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.acr = load i64, ptr %i.acq, align 8, !alias.scope !17370, !noundef !34
  %i.acs = atomicrmw add ptr %i.acp, i64 1 monotonic, align 8, !noalias !17371
  %i.act = icmp slt i64 %i.acs, 0
  br i1 %i.act, label %bb.lu, label %bb.lt

bb.ls:                                            ; preds = %bb.lp
  tail call void @llvm.trap()
  unreachable

bb.lt:                                            ; preds = %bb.lr
  store ptr %i.abx, ptr %.sink18.i.sroa.gep1.i.i.i, align 8, !alias.scope !17368, !noalias !17367
  store i64 %i.abz, ptr %.sink15.i.sroa.gep2.i.i.i, align 8, !alias.scope !17368, !noalias !17367
  br label %.sink.split.i.i59.i.i

bb.lu:                                            ; preds = %bb.lr
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i68.i.i: ; preds = %.sink.split.i.i59.i.i, %bb.li
  %.sink12.i.i69.i.i = phi i64 [ 8, %bb.li ], [ %.sink12.ph.i.i64.i.i, %.sink.split.i.i59.i.i ]
  %.sink10.i.i70.i.i = phi ptr [ %i.abx, %bb.li ], [ %.sink10.ph.i.i65.i.i, %.sink.split.i.i59.i.i ]
  %.sink9.i.i71.i.i = phi i64 [ 16, %bb.li ], [ %.sink9.ph.i.i66.i.i, %.sink.split.i.i59.i.i ]
  %.sink7.i.i72.i.i = phi i64 [ %i.abz, %bb.li ], [ %.sink7.ph.i.i67.i.i, %.sink.split.i.i59.i.i ]
  %i.acu = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink12.i.i69.i.i
  store ptr %.sink10.i.i70.i.i, ptr %i.acu, align 8, !alias.scope !17368, !noalias !17367
  %i.acv = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink9.i.i71.i.i
  store i64 %.sink7.i.i72.i.i, ptr %i.acv, align 8, !alias.scope !17368, !noalias !17367
  %i.acw = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.acx = load i8, ptr %i.acw, align 8, !range !55, !alias.scope !17372, !noundef !34
  %i.acy = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.acz = load ptr, ptr %i.acy, align 16, !alias.scope !17372, !nonnull !34, !noundef !34 ; 2 uses
  %i.ada = atomicrmw add ptr %i.acz, i64 1 monotonic, align 8, !noalias !17373
  %i.adb = icmp slt i64 %i.ada, 0
  br i1 %i.adb, label %bb.lv, label %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.lv:                                            ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i68.i.i
  tail call void @llvm.trap()
  unreachable

_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i68.i.i
  %i.adc = inttoptr i64 %i.abv to ptr
  %.sroa.24.8.copyload160.i = load i64, ptr %.sink18.i.sroa.gep1.i.i.i, align 8, !noalias !17326
  %.sroa.26.8.copyload173.i = load i64, ptr %.sink15.i.sroa.gep2.i.i.i, align 8, !noalias !17326
  %.sroa.28.8.copyload186.i = load i64, ptr %.sink18.i.sroa.gep.i57.i.i, align 8, !noalias !17326
  %.sroa.32.8.copyload193.i = load ptr, ptr %.sink15.i.sroa.gep.i58.i.i, align 8, !noalias !17326
  %.sroa.36.8..sroa_idx199.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.36.8.copyload200.i = load i8, ptr %.sroa.36.8..sroa_idx199.i, align 8, !noalias !17326
  %.sroa.37.8..sroa_idx206.i = getelementptr inbounds nuw i8, ptr %i.w, i64 41
  %.sroa.37.8.copyload207.i = load i8, ptr %.sroa.37.8..sroa_idx206.i, align 1, !noalias !17326
  %.sroa.38.8..sroa_idx210.i = getelementptr inbounds nuw i8, ptr %i.w, i64 42
  %.sroa.38.i.sroa.0.0.copyload296 = load i48, ptr %.sroa.38.8..sroa_idx210.i, align 2, !noalias !17326
  %.sroa.38.i.sroa.10.0..sroa.38.8..sroa_idx210.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.38.i.sroa.10.0.copyload302 = load i64, ptr %.sroa.38.i.sroa.10.0..sroa.38.8..sroa_idx210.i.sroa_idx, align 8, !noalias !17326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17367
  %i.add = ptrtoint ptr %i.acz to i64
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.lw:                                            ; preds = %bb.gr
  %i.ade = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17374)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !17375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17377)
  %i.adf = load i64, ptr %i.ade, align 8, !range !38, !alias.scope !17378, !noundef !34 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.adh = load ptr, ptr %i.adg, align 16, !alias.scope !17378, !nonnull !34, !noundef !34 ; 4 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.adj = load i64, ptr %i.adi, align 8, !alias.scope !17378, !noundef !34 ; 3 uses
  %i.adk = atomicrmw add ptr %i.adh, i64 1 monotonic, align 8, !noalias !17379
  %i.adl = icmp slt i64 %i.adk, 0                 ; 3 uses
  %.sink18.i.sroa.gep.i74.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %.sink18.i.sroa.gep1.i75.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.sink15.i.sroa.gep.i76.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %.sink15.i.sroa.gep2.i77.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  switch i64 %i.adf, label %default.unreachable [
    i64 0, label %bb.lx
    i64 1, label %bb.ly
    i64 2, label %bb.lz
  ]
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore21with_exprs_and_inputs:bb.a
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.aer = load i64, ptr %i.aeq, align 16, !alias.scope !17384, !noundef !34
  %i.aes = atomicrmw add ptr %i.aep, i64 1 monotonic, align 8, !noalias !17385
  %i.aet = icmp slt i64 %i.aes, 0
  br i1 %i.aet, label %bb.mr, label %bb.mq

bb.mn:                                            ; preds = %bb.ml
  %i.aeu = load ptr, ptr %i.aeq, align 16, !alias.scope !17384, !nonnull !34, !noundef !34 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.aew = load i64, ptr %i.aev, align 8, !alias.scope !17384, !noundef !34
  %i.aex = atomicrmw add ptr %i.aeu, i64 1 monotonic, align 8, !noalias !17385
  %i.aey = icmp slt i64 %i.aex, 0
  br i1 %i.aey, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.aez = ptrtoint ptr %i.aeu to i64
  br label %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.mp:                                            ; preds = %bb.mn
  tail call void @llvm.trap()
  unreachable

bb.mq:                                            ; preds = %bb.mm
  %i.afa = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.afb = load ptr, ptr %i.afa, align 8, !alias.scope !17384, !nonnull !34, !noundef !34 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.afd = load i64, ptr %i.afc, align 16, !alias.scope !17384, !noundef !34
  %i.afe = atomicrmw add ptr %i.afb, i64 1 monotonic, align 8, !noalias !17385
  %i.aff = icmp slt i64 %i.afe, 0
  br i1 %i.aff, label %bb.mt, label %bb.ms

bb.mr:                                            ; preds = %bb.mm
  tail call void @llvm.trap()
  unreachable

bb.ms:                                            ; preds = %bb.mq
  %i.afg = ptrtoint ptr %i.afb to i64
  br label %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.mt:                                            ; preds = %bb.mq
  tail call void @llvm.trap()
  unreachable

_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ms, %bb.mo
  %.sroa.9.0.i.i.i = phi i64 [ undef, %bb.mo ], [ %i.afd, %bb.ms ]
  %.sroa.7.0.i.i.i = phi i64 [ %i.aew, %bb.mo ], [ %i.afg, %bb.ms ]
  %.sroa.5.0.i.i.i = phi i64 [ %i.aez, %bb.mo ], [ %i.aer, %bb.ms ]
  %i.afh = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.afi = load i8, ptr %i.afh, align 16, !range !55, !alias.scope !17386, !noundef !34
  %i.afj = getelementptr inbounds nuw i8, ptr %i.cy, i64 49
  %i.afk = load i8, ptr %i.afj, align 1, !range !55, !alias.scope !17386, !noundef !34
  %i.afl = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.afm = load ptr, ptr %i.afl, align 8, !alias.scope !17386, !nonnull !34, !noundef !34 ; 2 uses
  %i.afn = atomicrmw add ptr %i.afm, i64 1 monotonic, align 8, !noalias !17387
  %i.afo = icmp slt i64 %i.afn, 0
  br i1 %i.afo, label %bb.mu, label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.mu:                                            ; preds = %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  tail call void @llvm.trap()
  unreachable

bb.mv:                                            ; preds = %bb.gr
  %i.afp = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17388)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.sroa.15.i.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.sroa.20.i)
  %i.afq = getelementptr inbounds nuw i8, ptr %i.cy, i64 288
  %i.afr = load i8, ptr %i.afq, align 16, !range !55, !alias.scope !17389, !noundef !34
  %i.afs = getelementptr inbounds nuw i8, ptr %i.cy, i64 289
  %i.aft = load i8, ptr %i.afs, align 1, !range !55, !alias.scope !17389, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17390
  %i.afu = getelementptr inbounds nuw i8, ptr %i.cy, i64 208
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afu)
          to label %.noexc18 unwind label %bb.pq

.noexc18:                                         ; preds = %bb.mv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !17390
  %i.afv = getelementptr inbounds nuw i8, ptr %i.cy, i64 232 ; 2 uses
  %i.afw = load i64, ptr %i.afv, align 8, !range !37, !alias.scope !17389, !noundef !34
  %.not.i95.i.i = icmp eq i64 %i.afw, -9223372036854775808
  br i1 %.not.i95.i.i, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17390
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afv)
          to label %bb.nb unwind label %bb.na, !noalias !17391

bb.mx:                                            ; preds = %.noexc18
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !17390
  br label %bb.my

bb.my:                                            ; preds = %bb.nb, %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !17390
  %i.afx = getelementptr inbounds nuw i8, ptr %i.cy, i64 256 ; 2 uses
  %i.afy = load i8, ptr %i.afx, align 16, !range !86, !alias.scope !17389, !noundef !34
  %.not2.i97.i.i = icmp eq i8 %i.afy, 41
  br i1 %.not2.i97.i.i, label %bb.nd, label %bb.nc

bb.mz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.na
  %.pn.pn.i96.i.i = phi { ptr, i32 } [ %.pn.i98.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.afz, %bb.na ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #54
          to label %.body unwind label %bb.ns, !noalias !17391

bb.na:                                            ; preds = %bb.mw
  %i.afz = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.nb:                                            ; preds = %bb.mw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !17390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17390
  br label %bb.my

bb.nc:                                            ; preds = %bb.my
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !17390
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afx)
          to label %bb.nn unwind label %bb.nm, !noalias !17391

bb.nd:                                            ; preds = %bb.my
  store i8 41, ptr %i.s, align 8, !noalias !17390
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nn, %bb.nd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.10)
  call void @llvm.experimental.noalias.scope.decl(metadata !17392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17393
  %i.aga = getelementptr inbounds nuw i8, ptr %i.cy, i64 128 ; 2 uses
  %i.agb = load i64, ptr %i.aga, align 16, !range !37, !alias.scope !17394, !noundef !34
  %.not.i.i99.i.i = icmp eq i64 %i.agb, -9223372036854775808
  br i1 %.not.i.i99.i.i, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i), !noalias !17393
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.03.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aga)
          to label %.noexc.i.i.i unwind label %bb.no, !noalias !17391

.noexc.i.i.i:                                     ; preds = %bb.nf
  %i.agc = getelementptr inbounds nuw i8, ptr %i.cy, i64 184
  %i.agd = load i32, ptr %i.agc, align 8, !range !98, !alias.scope !17394, !noundef !34
  %i.age = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %.sroa.03.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.24..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.age, i64 32, i1 false), !noalias !17395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.03.i.i.i.i, i64 56, i1 false), !noalias !17393
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i32 %i.agd, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 8, !noalias !17393
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i), !noalias !17393
  br label %bb.nh

bb.ng:                                            ; preds = %bb.ne
  store i64 -9223372036854775808, ptr %i.p, align 8, !noalias !17393
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %.noexc.i.i.i
  %i.agf = getelementptr inbounds nuw i8, ptr %i.cy, i64 192
  %i.agg = load i8, ptr %i.agf, align 16, !range !40, !alias.scope !17394, !noundef !34
  %i.agh = load i64, ptr %i.afp, align 16, !range !82, !alias.scope !17394, !noundef !34
  %.not7.i.i.i.i = icmp eq i64 %i.agh, 37
  br i1 %.not7.i.i.i.i, label %bb.nq, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17393
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.afp)
          to label %bb.nk unwind label %bb.nj, !noalias !17396

bb.nj:                                            ; preds = %bb.ni
  %i.agi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.p) #54
          to label %.body.i.i.i unwind label %bb.nl, !noalias !17396

bb.nk:                                            ; preds = %bb.ni
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.o, align 16, !noalias !17393
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.i.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !noalias !17390
  %.sroa.5.i.i.i.sroa.4.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.i.i.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.i.i.i.sroa.4.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 16, !noalias !17390
  %.sroa.5.i.i.i.sroa.5.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.5.i.i.i.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.i.i.i.sroa.5.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 8, !noalias !17390
  %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.5.i.i.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.5.i.i.i.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 16, !noalias !17390
  %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 33
  %.sroa.5.i.i.i.sroa.7.0.copyload.i = load i8, ptr %.sroa.5.i.i.i.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 1, !noalias !17390
  %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 34
  %.sroa.5.i.i.i.sroa.8.i.sroa.0.0.copyload = load i48, ptr %.sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 2, !noalias !17390
  %.sroa.5.i.i.i.sroa.8.i.sroa.4.0..sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.5.i.i.i.sroa.8.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.i.i.sroa.8.i.sroa.4.0..sroa.5.i.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.sroa_idx, align 8, !noalias !17390
  %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.5.i.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.5.i.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 16, !noalias !17390
  %.sroa.5.i.i.i.sroa.10.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %.sroa.5.i.i.i.sroa.10.0.copyload.i = load i8, ptr %.sroa.5.i.i.i.sroa.10.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 8, !noalias !17390
  %.sroa.5.i.i.i.sroa.11.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 57
  %.sroa.5.i.i.i.sroa.11.i.sroa.0.0.copyload = load i56, ptr %.sroa.5.i.i.i.sroa.11.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 1, !noalias !17390
  %.sroa.5.i.i.i.sroa.11.i.sroa.4.0..sroa.5.i.i.i.sroa.11.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.5.i.i.i.sroa.12.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.sroa.5.i.i.i.sroa.11.i.sroa.4.0.copyload = load ptr, ptr %.sroa.5.i.i.i.sroa.11.i.sroa.4.0..sroa.5.i.i.i.sroa.11.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.sroa_idx, align 16, !noalias !17390
  %.sroa.5.i.i.i.sroa.12.0.copyload.i = load ptr, ptr %.sroa.5.i.i.i.sroa.12.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 8, !noalias !17390
  %.sroa.5.i.i.i.sroa.13.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.5.i.i.i.sroa.13.0.copyload.i = load i8, ptr %.sroa.5.i.i.i.sroa.13.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 16, !noalias !17390
  %.sroa.5.i.i.i.sroa.14.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 81
  %.sroa.5.i.i.i.sroa.14.0.copyload.i = load i8, ptr %.sroa.5.i.i.i.sroa.14.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 1, !noalias !17390
  %.sroa.5.i.i.i.sroa.15.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.i.sroa.15.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.i.sroa.15.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, i64 6, i1 false), !noalias !17390
  %.sroa.5.i.i.i.sroa.15.i.sroa.4.0..sroa.5.i.i.i.sroa.15.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.5.i.i.i.sroa.15.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.i.i.sroa.15.i.sroa.4.0..sroa.5.i.i.i.sroa.15.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i.sroa_idx, align 8, !noalias !17390
  %.sroa.5.i.i.i.sroa.16.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %.sroa.5.i.i.i.sroa.16.0.copyload.i = load ptr, ptr %.sroa.5.i.i.i.sroa.16.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 16, !noalias !17390
  %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.agj = load <2 x i8>, ptr %.sroa.5.i.i.i.sroa.17.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 8, !noalias !17390
  %.sroa.5.i.i.i.sroa.19.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 106
  %.sroa.5.i.i.i.sroa.19.0.copyload.i = load i8, ptr %.sroa.5.i.i.i.sroa.19.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, align 2, !noalias !17390
  %.sroa.5.i.i.i.sroa.20.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i.i.i.sroa.20.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i.i.i.sroa.20.0..sroa.5.0..sroa_idx2.i.i.i.sroa_idx.i, i64 5, i1 false), !noalias !17390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17393
  br label %bb.nq

bb.nl:                                            ; preds = %bb.nj
  %i.agk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17396
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.np, %.body.i.i.i, %bb.nm
  %.pn.i98.i.i = phi { ptr, i32 } [ %i.agl, %bb.nm ], [ %eh.lpad-body.i.i.i, %bb.np ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.t) #54
          to label %bb.mz unwind label %bb.ns, !noalias !17391

bb.nm:                                            ; preds = %bb.nc
  %i.agl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.nn:                                            ; preds = %bb.nc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !17390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17390
  br label %bb.ne

bb.no:                                            ; preds = %bb.nf
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.no, %bb.nj
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.agm, %bb.no ], [ %i.agi, %bb.nj ] ; 2 uses
  %i.agn = load i8, ptr %i.s, align 8, !range !86, !alias.scope !17397, !noalias !17390, !noundef !34
  %i.ago = icmp eq i8 %i.agn, 41
  br i1 %i.ago, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.np

bb.np:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.ns, !noalias !17391

bb.nq:                                            ; preds = %bb.nk, %bb.nh
  %.sroa.5.i.i.i.sroa.15.i.sroa.4.0 = phi i64 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.15.i.sroa.4.0.copyload, %bb.nk ]
  %.sroa.5.i.i.i.sroa.8.i.sroa.4.0 = phi i64 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.8.i.sroa.4.0.copyload, %bb.nk ]
  %.sroa.5.i.i.i.sroa.8.i.sroa.0.0 = phi i48 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.8.i.sroa.0.0.copyload, %bb.nk ]
  %.sroa.5.i.i.i.sroa.11.i.sroa.4.0 = phi ptr [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.11.i.sroa.4.0.copyload, %bb.nk ]
  %.sroa.5.i.i.i.sroa.11.i.sroa.0.0 = phi i56 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.11.i.sroa.0.0.copyload, %bb.nk ]
  %.sroa.5.i.i.i.sroa.19.0.i = phi i8 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.19.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.16.0.i = phi ptr [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.16.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.14.0.i = phi i8 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.14.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.13.0.i = phi i8 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.13.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.12.0.i = phi ptr [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.12.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.10.0.i = phi i8 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.10.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.9.0.i = phi i64 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.9.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.7.0.i = phi i8 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.7.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.6.0.i = phi i8 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.6.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.5.0.i = phi ptr [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.5.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.4.0.i = phi i64 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.4.0.copyload.i, %bb.nk ]
  %.sroa.5.i.i.i.sroa.0.0.i = phi i64 [ undef, %bb.nh ], [ %.sroa.5.i.i.i.sroa.0.0.copyload.i, %bb.nk ]
  %.sroa.0.0.i.i.i.i = phi i64 [ 37, %bb.nh ], [ %.sroa.0.0.copyload1.i.i.i.i, %bb.nk ]
  %i.agp = phi <2 x i8> [ undef, %bb.nh ], [ %i.agj, %bb.nk ]
  %.sroa.5.i94.i.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8, !noalias !17398
  %.sroa.5.i94.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5.i94.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.5.i94.i.sroa.4.0..sroa_idx.i, align 8, !noalias !17398
  %.sroa.5.i94.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.i94.i.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.i94.i.sroa.5.0..sroa_idx.i, align 8, !noalias !17398
  %.sroa.5.i94.i.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %.sroa.5.i94.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.5.i94.i.sroa.6.0..sroa_idx.i, align 1, !noalias !17398
  %.sroa.5.i94.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.0.0.copyload = load i48, ptr %.sroa.5.i94.i.sroa.7.0..sroa_idx.i, align 2, !noalias !17398
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.4.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.4.0.copyload = load ptr, ptr %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.4.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx, align 8, !noalias !17398
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.5.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.agq = load <2 x ptr>, ptr %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.5.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx, align 8, !noalias !17398
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.7.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.7.0.copyload = load i8, ptr %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.7.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx, align 8, !noalias !17398
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.8.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 49
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.8.0.copyload = load i8, ptr %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.8.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx, align 1, !noalias !17398
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.9.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 50
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.9.0.copyload = load i8, ptr %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.9.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx, align 2, !noalias !17398
  %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.10.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.10, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.10.0..sroa.5.i94.i.sroa.7.0..sroa_idx.i.sroa_idx, i64 5, i1 false), !noalias !17398
  %.sroa.5.i94.i.sroa.7.sroa.4.0..sroa.5.i94.i.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.5.i94.i.sroa.7.sroa.4.0.copyload.i = load i64, ptr %.sroa.5.i94.i.sroa.7.sroa.4.0..sroa.5.i94.i.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !17398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17393
  %i.agr = getelementptr inbounds nuw i8, ptr %i.cy, i64 280
  %i.ags = load ptr, ptr %i.agr, align 8, !alias.scope !17389, !nonnull !34, !noundef !34 ; 2 uses
  %i.agt = atomicrmw add ptr %i.ags, i64 1 monotonic, align 8, !noalias !17391
  %i.agu = icmp slt i64 %i.agt, 0
  br i1 %i.agu, label %bb.nr, label %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.nr:                                            ; preds = %bb.nq
  call void @llvm.trap()
  unreachable

bb.ns:                                            ; preds = %bb.np, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.mz
  %i.agv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17391
  unreachable

_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.nq
  %.sroa.7141.i.sroa.3.15.copyload.i = load ptr, ptr %i.u, align 8, !noalias !17399
  %.sroa.7141.i.sroa.5.15..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7141.i.sroa.5.15..sroa_idx.i, i64 16, i1 false)
  %.sroa.58.232..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.58.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.232..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.58.256..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.58.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.256..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i.i.i.sroa.15.i.sroa.0, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i.i.i.sroa.20.i, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.i62.sroa.30.sroa.0.i.sroa.12, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.10, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !17390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17390
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.15.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.sroa.20.i)
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.nt:                                            ; preds = %bb.gr
  %i.agw = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17401
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.agw)
          to label %.noexc19 unwind label %bb.pq

.noexc19:                                         ; preds = %bb.nt
  %i.agx = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.agy = load i8, ptr %i.agx, align 8, !range !55, !alias.scope !17402, !noundef !34
  %i.agz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.aha = load ptr, ptr %i.agz, align 16, !alias.scope !17402, !nonnull !34, !noundef !34 ; 2 uses
  %i.ahb = atomicrmw add ptr %i.aha, i64 1 monotonic, align 8, !noalias !17403
  %i.ahc = icmp slt i64 %i.ahb, 0
  br i1 %i.ahc, label %bb.nu, label %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i

bb.nu:                                            ; preds = %.noexc19
  tail call void @llvm.trap()
  unreachable

_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc19
  %.sroa.14.8.copyload153.i = load ptr, ptr %i.n, align 8, !noalias !17326
  %.sroa.24.8..sroa_idx163.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.24.8.copyload164.i = load i64, ptr %.sroa.24.8..sroa_idx163.i, align 8, !noalias !17326
  %.sroa.26.8..sroa_idx176.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.26.8.copyload177.i = load i64, ptr %.sroa.26.8..sroa_idx176.i, align 8, !noalias !17326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17401
  %i.ahd = ptrtoint ptr %i.aha to i64
  %.sroa.32.0.insert.ext.i = zext nneg i8 %i.agy to i64
  %i.ahe = inttoptr i64 %.sroa.32.0.insert.ext.i to ptr
  br label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i
  %.sroa.47.i.sroa.7.0 = phi i64 [ %.sroa.47.i.sroa.7.0.copyload325, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.47.i.sroa.7.0.copyload324, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.47.i.sroa.7.0.copyload323, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.15.i.sroa.4.0, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.i.i61.sroa.4.i.sroa.8.0 = phi ptr [ %.sroa.5.i.i61.sroa.4.i.sroa.8.0.copyload316, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i61.sroa.4.i.sroa.8.0.copyload315, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i61.sroa.4.i.sroa.8.1, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i61.sroa.4.i.sroa.8.0.copyload313, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.11.i.sroa.4.0, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.5.i.i61.sroa.4.i.sroa.0.0 = phi i56 [ %.sroa.5.i.i61.sroa.4.i.sroa.0.0.copyload312, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i61.sroa.4.i.sroa.0.0.copyload311, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i61.sroa.4.i.sroa.0.1, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i61.sroa.4.i.sroa.0.0.copyload309, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.11.i.sroa.0.0, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.11.0 = phi i8 [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.11.14.copyload, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.9.0.copyload, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.10.0 = phi i8 [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.10.14.copyload, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.8.0.copyload, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.9.0 = phi i8 [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.9.14.copyload, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.7.0.copyload, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.5.0 = phi ptr [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.5.0.copyload308, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.4.0.copyload, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.0.i62.sroa.30.sroa.0.i.sroa.0.0 = phi i48 [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.0.0.copyload307, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.7.sroa.0.i.sroa.0.0.copyload, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.38.i.sroa.10.0 = phi i64 [ %.sroa.38.i.sroa.10.0.copyload306, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.10.0.copyload305, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.10.0.copyload304, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.10.0.copyload303, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.10.0.copyload302, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.10.0.copyload301, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.8.i.sroa.4.0, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.38.i.sroa.0.0 = phi i48 [ %.sroa.38.i.sroa.0.0.copyload300, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.0.0.copyload299, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.0.0.copyload298, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.0.0.copyload297, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.0.0.copyload296, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.38.i.sroa.0.0.copyload295, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.8.i.sroa.0.0, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.55.sroa.5.0.i = phi i64 [ %i.vx, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.7.sroa.4.0.copyload.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.51.sroa.6.0.i = phi i64 [ %.sroa.0.i62.sroa.25.sroa.4.0.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.25.sroa.4.0.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.0.0.copyload.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  %.sroa.32.0.i = phi ptr [ %.sroa.0.i62.sroa.7.0.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.7.0.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.8.copyload195.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.zq, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.zz, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.7.0.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.8.copyload193.i, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.32.8.copyload191.i, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.afm, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.5.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.ahe, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.68.0.i = phi i8 [ %i.vi, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.67.0.i = phi i8 [ %i.vb, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.66.0.i = phi i8 [ %i.uz, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.65230.0.i = phi i8 [ %i.ux, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.64.0.i = phi i8 [ %.sroa.64.264.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.aft, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.63.0.i = phi i8 [ %.sroa.63.264.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.afr, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.62.0.i = phi ptr [ %.sroa.62.264.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ags, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.57.0.i = phi ptr [ %i.ti, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.7141.i.sroa.3.15.copyload.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.55229.0.i = phi i8 [ %.sroa.0.i62.sroa.33.176.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.agg, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.54.0.i = phi i8 [ %.sroa.0.i62.sroa.29.128.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.abn, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.6.0.copyload.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.53.0.i = phi i8 [ %.sroa.0.i62.sroa.28.128.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.abl, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.5.0.copyload.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.52.0.i = phi ptr [ %.sroa.0.i62.sroa.26.128.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.abp, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i94.i.sroa.4.0.copyload.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.50.0.i = phi i8 [ %.sroa.0.i62.sroa.24.104.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.xq, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.24.104.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.19.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.47224.0.i = phi ptr [ %.sroa.0.i62.sroa.20.104.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.xf, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.20.104.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.16.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.46.0.i = phi i8 [ %.sroa.0.i62.sroa.18.80.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.18.80.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.zh, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.18.80.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.14.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.45.0.i = phi i8 [ %.sroa.0.i62.sroa.17.80.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.17.80.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.yz, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.17.80.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.13.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.44217.0.i = phi ptr [ %.sroa.0.i62.sroa.15.80.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.15.80.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.yu, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.15.80.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.12.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.41.0.i = phi i8 [ %.sroa.0.i62.sroa.13.56.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.13.56.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.i.i61.sroa.0.0.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.13.56.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.acx, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.aeh, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.10.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.38212.0.i = phi i64 [ %.sroa.0.i62.sroa.11.56.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.11.56.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0.0.i.i65.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.11.56.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.add, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.aen, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.9.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.37.0.i = phi i8 [ %.sroa.0.i62.sroa.9.0.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.9.0.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.37.8.copyload209.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.9.0.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.37.8.copyload207.i, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.37.8.copyload205.i, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.afk, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.7.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.36.0.i = phi i8 [ %.sroa.0.i62.sroa.8.0.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.8.0.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.36.8.copyload202.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.8.0.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.36.8.copyload200.i, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.36.8.copyload198.i, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.afi, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.6.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.28.0.i = phi i64 [ %.sroa.0.i62.sroa.6.0.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.6.0.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.28.8.copyload188.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.zp, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.zy, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.6.0.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.28.8.copyload186.i, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.28.8.copyload184.i, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.9.0.i.i.i, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.4.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.ahd, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.26.0.i = phi i64 [ %.sroa.0.i62.sroa.5.0.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.5.0.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.26.8.copyload175.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.26.8.copyload181.i, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.26.8.copyload179.i, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.5.0.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.26.8.copyload173.i, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.26.8.copyload171.i, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.7.0.i.i.i, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.5.i.i.i.sroa.0.0.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.26.8.copyload177.i, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  %.sroa.24.0.i = phi i64 [ %.sroa.0.i62.sroa.4.0.copyload.i, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0101.i.sroa.4.0.copyload.i, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.24.8.copyload162.i, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.24.8.copyload168.i, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.24.8.copyload166.i, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0116.i.sroa.4.0.copyload.i, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.24.8.copyload160.i, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.24.8.copyload158.i, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.0.i.i.i, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.24.8.copyload164.i, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  %.sroa.14.0.i = phi ptr [ %i.uq, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.xc, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.yx, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.14.8.copyload155.i, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.14.8.copyload154.i, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.abg, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.adc, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.aem, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.aep, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.14.8.copyload153.i, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.ahf = phi <2 x ptr> [ %i.vy, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.agq, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ]
  %i.ahg = phi <2 x i8> [ %i.vw, %_RNvXsl_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.xj, %_RNvXss_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17CreateMemoryTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsz_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_10CreateViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsG_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_13CreateCatalogNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ %i.abt, %_RNvXs1z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_11CreateIndexNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_9DropTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsY_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i ], [ %i.agp, %_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_14CreateFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_12DropFunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  %i.ahh = ptrtoint ptr %.sroa.14.0.i to i64
  %.sroa.51.sroa.0.0.extract.trunc244 = trunc i64 %.sroa.24.0.i to i8
  %.sroa.51.sroa.28.0.extract.shift285 = and i64 %.sroa.24.0.i, -256
  %.sroa.62.sroa.0.0.extract.trunc181 = trunc i64 %.sroa.26.0.i to i8
  %.sroa.62.sroa.25.0.extract.shift216 = and i64 %.sroa.26.0.i, -256
  %.sroa.83.0.insert.ext149 = zext i8 %.sroa.36.0.i to i64
  %.sroa.83.1.insert.ext = zext i8 %.sroa.37.0.i to i64
  %.sroa.83.1.insert.shift = shl nuw nsw i64 %.sroa.83.1.insert.ext, 8
  %.sroa.83.1.insert.insert = or disjoint i64 %.sroa.83.1.insert.shift, %.sroa.83.0.insert.ext149
  %.sroa.83.2.insert.ext162 = zext i48 %.sroa.38.i.sroa.0.0 to i64
  %.sroa.83.2.insert.shift163 = shl nuw i64 %.sroa.83.2.insert.ext162, 16
  %.sroa.83.2.insert.insert165 = or disjoint i64 %.sroa.83.1.insert.insert, %.sroa.83.2.insert.shift163
  %i.ahi = inttoptr i64 %.sroa.83.2.insert.insert165 to ptr
  %.sroa.101.0.insert.ext = zext i8 %.sroa.41.0.i to i64
  %.sroa.101.1.insert.ext = zext i56 %.sroa.5.i.i61.sroa.4.i.sroa.0.0 to i64
  %.sroa.101.1.insert.shift = shl nuw i64 %.sroa.101.1.insert.ext, 8
  %.sroa.101.1.insert.insert = or disjoint i64 %.sroa.101.1.insert.shift, %.sroa.101.0.insert.ext
  %i.ahj = inttoptr i64 %.sroa.101.1.insert.insert to ptr
  %.sroa.123.sroa.0.0.extract.trunc138 = trunc i64 %.sroa.51.sroa.6.0.i to i8
  %.sroa.123.sroa.9.0.extract.shift144 = and i64 %.sroa.51.sroa.6.0.i, -256
  %.sroa.132.0.insert.ext = zext i8 %.sroa.53.0.i to i64
  %.sroa.132.1.insert.ext = zext i8 %.sroa.54.0.i to i64
  %.sroa.132.1.insert.shift = shl nuw nsw i64 %.sroa.132.1.insert.ext, 8
  %.sroa.132.1.insert.insert = or disjoint i64 %.sroa.132.1.insert.shift, %.sroa.132.0.insert.ext
  %.sroa.132.2.insert.ext = zext i48 %.sroa.0.i62.sroa.30.sroa.0.i.sroa.0.0 to i64
  %.sroa.132.2.insert.shift = shl nuw i64 %.sroa.132.2.insert.ext, 16
  %.sroa.132.2.insert.insert = or disjoint i64 %.sroa.132.1.insert.insert, %.sroa.132.2.insert.shift
  %i.ahk = inttoptr i64 %.sroa.132.2.insert.insert to ptr
  %i.ahl = insertelement <2 x ptr> poison, ptr %.sroa.32.0.i, i64 0
  %i.ahm = insertelement <2 x ptr> %i.ahl, ptr %i.ahi, i64 1
  %i.ahn = insertelement <2 x ptr> poison, ptr %.sroa.5.i.i61.sroa.4.i.sroa.8.0, i64 0
  %i.aho = insertelement <2 x ptr> %i.ahn, ptr %.sroa.44217.0.i, i64 1
  %i.ahp = extractelement <2 x i8> %i.ahg, i64 0
  %i.ahq = extractelement <2 x i8> %i.ahg, i64 1
  br label %bb.ps

bb.nv:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17405
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.ahs = load ptr, ptr %i.ahr, align 8, !alias.scope !17406, !nonnull !34, !noundef !34 ; 4 uses
  %i.aht = atomicrmw add ptr %i.ahs, i64 1 monotonic, align 8, !noalias !17407
  %i.ahu = icmp slt i64 %i.aht, 0
  br i1 %i.ahu, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.ahs, ptr %i.m, align 8, !noalias !17405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17405
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ahv)
          to label %bb.ob unwind label %bb.oa, !noalias !17408

bb.nx:                                            ; preds = %bb.nv
  tail call void @llvm.trap()
  unreachable

bb.ny:                                            ; preds = %._crit_edge.i.i, %bb.oa
  %i.ahw = phi ptr [ %.pre.i74.i, %._crit_edge.i.i ], [ %i.ahs, %bb.oa ]
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i73.i, %._crit_edge.i.i ], [ %i.ahz, %bb.oa ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17409)
  call void @llvm.experimental.noalias.scope.decl(metadata !17410)
  %i.ahx = atomicrmw sub ptr %i.ahw, i64 1 release, align 8, !noalias !17411
  %i.ahy = icmp eq i64 %i.ahx, 1
  br i1 %i.ahy, label %bb.nz, label %.body

bb.nz:                                            ; preds = %bb.ny
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #58
          to label %.body unwind label %bb.ol, !noalias !17408

bb.oa:                                            ; preds = %bb.nw
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.ob:                                            ; preds = %bb.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17405
  %i.aia = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aia)
          to label %bb.oe unwind label %bb.od, !noalias !17408

bb.oc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsjhHCjzi9uUI_17datafusion_common12file_options9file_type8FileTypeEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.od
  %.pn.i73.i = phi { ptr, i32 } [ %i.aim, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsjhHCjzi9uUI_17datafusion_common12file_options9file_type8FileTypeEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.aib, %bb.od ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #54
          to label %._crit_edge.i.i unwind label %bb.ol, !noalias !17408

._crit_edge.i.i:                                  ; preds = %bb.oc
  %.pre.i74.i = load ptr, ptr %i.m, align 8, !alias.scope !17412, !noalias !17405
  br label %bb.ny

bb.od:                                            ; preds = %bb.ob
  %i.aib = landingpad { ptr, i32 }
          cleanup
  br label %bb.oc

bb.oe:                                            ; preds = %bb.ob
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17405
  %i.aic = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.aid = load ptr, ptr %i.aic, align 16, !alias.scope !17406, !nonnull !34, !noundef !34 ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.aif = load ptr, ptr %i.aie, align 8, !alias.scope !17406, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.aig = atomicrmw add ptr %i.aid, i64 1 monotonic, align 8, !noalias !17408
  %i.aih = icmp slt i64 %i.aig, 0
  br i1 %i.aih, label %bb.og, label %bb.of

bb.of:                                            ; preds = %bb.oe
  store ptr %i.aid, ptr %i.j, align 8, !noalias !17405
  %i.aii = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.aif, ptr %i.aii, align 8, !noalias !17405
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17405
  %i.aij = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !17413)
  call void @llvm.experimental.noalias.scope.decl(metadata !17414)
  %i.aik = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  %.val.i.i.i = load i64, ptr %i.aik, align 16, !alias.scope !17415, !noundef !34
  %i.ail = getelementptr inbounds nuw i8, ptr %i.cy, i64 120
  %.val1.i.i.i = load i64, ptr %i.ail, align 8, !alias.scope !17415, !noundef !34 ; 4 uses
  invoke void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aij)
          to label %bb.oj unwind label %bb.oh, !noalias !17408

bb.og:                                            ; preds = %bb.oe
  call void @llvm.trap()
  unreachable

bb.oh:                                            ; preds = %bb.of
  %i.aim = landingpad { ptr, i32 }
          cleanup
  %i.ain = atomicrmw sub ptr %i.aid, i64 1 release, align 8, !noalias !17416
  %i.aio = icmp eq i64 %i.ain, 1
  br i1 %i.aio, label %bb.oi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsjhHCjzi9uUI_17datafusion_common12file_options9file_type8FileTypeEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.oi:                                            ; preds = %bb.oh
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsjhHCjzi9uUI_17datafusion_common12file_options9file_type8FileTypeEL_E9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsjhHCjzi9uUI_17datafusion_common12file_options9file_type8FileTypeEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ol, !noalias !17408

bb.oj:                                            ; preds = %bb.of
  %i.aip = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.val1.i.i.i, ptr %i.aip, align 8, !alias.scope !17413, !noalias !17405
  %i.aiq = load <2 x ptr>, ptr %i.i, align 16, !noalias !17405
  %.sroa.5.0..sroa_idx317 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx317, align 16, !noalias !17405
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1, !noalias !17405
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.0..sroa_idx, i64 6, i1 false), !noalias !17405
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.7.sroa.4.0.copyload = load i64, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !17405
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.12.0..sroa_idx, i64 5, i1 false), !noalias !17405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17405
  %i.air = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.ais = load ptr, ptr %i.air, align 16, !alias.scope !17406, !nonnull !34, !noundef !34 ; 2 uses
  %i.ait = atomicrmw add ptr %i.ais, i64 1 monotonic, align 8, !noalias !17408
  %i.aiu = icmp slt i64 %i.ait, 0
  br i1 %i.aiu, label %bb.ok, label %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.ok:                                            ; preds = %bb.oj
  call void @llvm.trap()
  unreachable

bb.ol:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsjhHCjzi9uUI_17datafusion_common12file_options9file_type8FileTypeEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.oi, %bb.oc, %bb.nz
  %i.aiv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17408
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsjhHCjzi9uUI_17datafusion_common12file_options9file_type8FileTypeEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.oi, %bb.oh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.k) #54
          to label %bb.oc unwind label %bb.ol, !noalias !17408

_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.oj
  %i.aiw = lshr i64 %.val1.i.i.i, 16
  %i.aix = trunc i64 %i.aiw to i8
  %i.aiy = lshr i64 %.val1.i.i.i, 8
  %i.aiz = trunc i64 %i.aiy to i8
  %i.aja = trunc i64 %.val1.i.i.i to i8
  %i.ajb = inttoptr i64 %.val.i.i.i to ptr
  %.sroa.0239.i.sroa.0.0.copyload = load i64, ptr %i.l, align 8, !noalias !17417
  %.sroa.0239.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0239.i.sroa.4.0.copyload = load i64, ptr %.sroa.0239.i.sroa.4.0..sroa_idx, align 8, !noalias !17417 ; 2 uses
  %.sroa.0239.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.0239.i.sroa.5.0.copyload = load i64, ptr %.sroa.0239.i.sroa.5.0..sroa_idx, align 8, !noalias !17417 ; 2 uses
  %.sroa.0239.i.sroa.6.24.copyload = load i64, ptr %i.k, align 8, !noalias !17417
  %.sroa.0239.i.sroa.8.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ajc = load <2 x ptr>, ptr %.sroa.0239.i.sroa.8.24..sroa_idx, align 8, !noalias !17417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.sroa.0, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.12, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17405
  %.sroa.51.sroa.0.0.extract.trunc229 = trunc i64 %.sroa.0239.i.sroa.4.0.copyload to i8
  %.sroa.51.sroa.28.0.extract.shift255 = and i64 %.sroa.0239.i.sroa.4.0.copyload, -256
  %.sroa.62.sroa.0.0.extract.trunc169 = trunc i64 %.sroa.0239.i.sroa.5.0.copyload to i8
  %.sroa.62.sroa.25.0.extract.shift192 = and i64 %.sroa.0239.i.sroa.5.0.copyload, -256
  %i.ajd = ptrtoint ptr %i.ahs to i64
  %i.aje = ptrtoint ptr %i.aid to i64
  %i.ajf = ptrtoint ptr %i.ais to i64             ; 2 uses
  %.sroa.123.sroa.0.0.extract.trunc = trunc i64 %i.ajf to i8
  %.sroa.123.sroa.9.0.extract.shift = and i64 %i.ajf, -256
  br label %bb.ps

bb.om:                                            ; preds = %bb.e
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val4.i = load ptr, ptr %i.ajg, align 8, !alias.scope !17171, !nonnull !34, !noundef !34 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.val5.i = load ptr, ptr %i.ajh, align 16, !alias.scope !17171 ; 3 uses
  %i.aji = atomicrmw add ptr %.val4.i, i64 1 monotonic, align 8
  %i.ajj = icmp slt i64 %i.aji, 0
  br i1 %i.ajj, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.ajk = atomicrmw add ptr %.val5.i, i64 1 monotonic, align 8
  %i.ajl = icmp slt i64 %i.ajk, 0
  br i1 %i.ajl, label %bb.op, label %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.oo:                                            ; preds = %bb.om
  tail call void @llvm.trap()
  unreachable

bb.op:                                            ; preds = %bb.on
  tail call void @llvm.trap()
  unreachable

_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.on
  %i.ajm = ptrtoint ptr %.val4.i to i64
  %i.ajn = ptrtoint ptr %.val5.i to i64           ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc239 = trunc i64 %i.ajn to i8
  %.sroa.51.sroa.28.0.extract.shift275 = and i64 %i.ajn, -256
  br label %bb.ps

bb.oq:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17419
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %i.ajp = load ptr, ptr %i.ajo, align 8, !alias.scope !17420, !nonnull !34, !noundef !34 ; 4 uses
  %i.ajq = atomicrmw add ptr %i.ajp, i64 1 monotonic, align 8, !noalias !17421
  %i.ajr = icmp slt i64 %i.ajq, 0
  br i1 %i.ajr, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.ajp, ptr %i.h, align 8, !noalias !17419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17419
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ajs)
          to label %bb.ow unwind label %bb.ov, !noalias !17422

bb.os:                                            ; preds = %bb.oq
  tail call void @llvm.trap()
  unreachable

bb.ot:                                            ; preds = %._crit_edge.i76.i, %bb.ov
  %i.ajt = phi ptr [ %.pre.i77.i, %._crit_edge.i76.i ], [ %i.ajp, %bb.ov ]
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %._crit_edge.i76.i ], [ %i.ajw, %bb.ov ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17423)
  call void @llvm.experimental.noalias.scope.decl(metadata !17424)
  %i.aju = atomicrmw sub ptr %i.ajt, i64 1 release, align 8, !noalias !17425
  %i.ajv = icmp eq i64 %i.aju, 1
  br i1 %i.ajv, label %bb.ou, label %.body

bb.ou:                                            ; preds = %bb.ot
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #58
          to label %.body unwind label %bb.pk, !noalias !17422

bb.ov:                                            ; preds = %bb.or
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.ow:                                            ; preds = %bb.or
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17419
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajx)
          to label %bb.oz unwind label %bb.oy, !noalias !17422

bb.ox:                                            ; preds = %bb.pa, %bb.oy
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i78.i, %bb.pa ], [ %i.ajy, %bb.oy ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #54
          to label %._crit_edge.i76.i unwind label %bb.pk, !noalias !17422

._crit_edge.i76.i:                                ; preds = %bb.ox
  %.pre.i77.i = load ptr, ptr %i.h, align 8, !alias.scope !17426, !noalias !17419
  br label %bb.ot

bb.oy:                                            ; preds = %bb.ow
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ox

bb.oz:                                            ; preds = %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17419
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajz)
          to label %bb.pc unwind label %bb.pb, !noalias !17422

bb.pa:                                            ; preds = %bb.pd, %bb.pb
  %.pn.pn.i78.i = phi { ptr, i32 } [ %.pn.i79.i, %bb.pd ], [ %i.aka, %bb.pb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan16ColumnUnnestListEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.f) #54
          to label %bb.ox unwind label %bb.pk, !noalias !17422

bb.pb:                                            ; preds = %bb.oz
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %bb.pa

bb.pc:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17419
  %i.akb = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akb)
          to label %bb.pf unwind label %bb.pe, !noalias !17422

bb.pd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i80.i, %bb.pe
  %.pn.i79.i = phi { ptr, i32 } [ %i.akk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i80.i ], [ %i.akc, %bb.pe ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #54
          to label %bb.pa unwind label %bb.pk, !noalias !17422

bb.pe:                                            ; preds = %bb.pc
  %i.akc = landingpad { ptr, i32 }
          cleanup
  br label %bb.pd

bb.pf:                                            ; preds = %bb.pc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17419
  %i.akd = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  %i.ake = load ptr, ptr %i.akd, align 16, !alias.scope !17420, !nonnull !34, !noundef !34 ; 4 uses
  %i.akf = atomicrmw add ptr %i.ake, i64 1 monotonic, align 8, !noalias !17422
  %i.akg = icmp slt i64 %i.akf, 0
  br i1 %i.akg, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  store ptr %i.ake, ptr %i.c, align 8, !noalias !17419
  %i.akh = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %i.aki = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.akj = load i8, ptr %i.aki, align 16, !range !55, !alias.scope !17420, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17419
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6unnest21RecursionUnnestOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akh)
          to label %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.pi, !noalias !17422

bb.ph:                                            ; preds = %bb.pf
  call void @llvm.trap()
  unreachable

bb.pi:                                            ; preds = %bb.pg
  %i.akk = landingpad { ptr, i32 }
          cleanup
  %i.akl = atomicrmw sub ptr %i.ake, i64 1 release, align 8, !noalias !17427
  %i.akm = icmp eq i64 %i.akl, 1
  br i1 %i.akm, label %bb.pj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i80.i

bb.pj:                                            ; preds = %bb.pi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i80.i unwind label %bb.pk, !noalias !17422

bb.pk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i80.i, %bb.pj, %bb.pd, %bb.pa, %bb.ox, %bb.ou
  %i.akn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17422
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit.i80.i: ; preds = %bb.pj, %bb.pi
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #54
          to label %bb.pd unwind label %bb.pk, !noalias !17422

_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.pg
  %i.ako = load i64, ptr %i.b, align 8, !noalias !17428
  %.sroa.0245.i.sroa.21.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0245.i.sroa.21.96.copyload = load ptr, ptr %.sroa.0245.i.sroa.21.96..sroa_idx, align 8, !noalias !17428
  %.sroa.0245.i.sroa.22.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0245.i.sroa.22.96.copyload = load i8, ptr %.sroa.0245.i.sroa.22.96..sroa_idx, align 8, !noalias !17428
  %.sroa.0245.i.sroa.23.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.0245.i.sroa.23.96.copyload = load i8, ptr %.sroa.0245.i.sroa.23.96..sroa_idx, align 1, !noalias !17428
  %.sroa.0245.i.sroa.24.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %.sroa.0245.i.sroa.24.96.copyload = load i8, ptr %.sroa.0245.i.sroa.24.96..sroa_idx, align 2, !noalias !17428
  %.sroa.0245.i.sroa.25.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0245.i.sroa.25.96..sroa_idx, i64 5, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17419
  %.sroa.0245.i.sroa.0.0.copyload = load i64, ptr %i.g, align 8, !noalias !17428
  %.sroa.0245.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0245.i.sroa.4.0.copyload = load i64, ptr %.sroa.0245.i.sroa.4.0..sroa_idx, align 8, !noalias !17428 ; 2 uses
  %.sroa.0245.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0245.i.sroa.5.0.copyload = load i64, ptr %.sroa.0245.i.sroa.5.0..sroa_idx, align 8, !noalias !17428 ; 2 uses
  %.sroa.0245.i.sroa.6.24.copyload = load i64, ptr %i.f, align 8, !noalias !17428
  %.sroa.0245.i.sroa.8.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.akp = load <2 x ptr>, ptr %.sroa.0245.i.sroa.8.24..sroa_idx, align 8, !noalias !17428
  %.sroa.0245.i.sroa.10.48.copyload = load i64, ptr %i.e, align 8, !noalias !17428
  %.sroa.0245.i.sroa.12.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0245.i.sroa.12.48.copyload = load i64, ptr %.sroa.0245.i.sroa.12.48..sroa_idx, align 8, !noalias !17428
  %.sroa.0245.i.sroa.13.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0245.i.sroa.13.48.copyload = load ptr, ptr %.sroa.0245.i.sroa.13.48..sroa_idx, align 8, !noalias !17428
  %i.akq = load <2 x ptr>, ptr %i.d, align 16, !noalias !17428
  %.sroa.0245.i.sroa.17.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.0245.i.sroa.17.72.copyload = load i8, ptr %.sroa.0245.i.sroa.17.72..sroa_idx, align 16, !noalias !17428
  %.sroa.0245.i.sroa.18.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.0245.i.sroa.18.72.copyload = load i8, ptr %.sroa.0245.i.sroa.18.72..sroa_idx, align 1, !noalias !17428
  %.sroa.0245.i.sroa.19.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.0245.i.sroa.19.72..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17419
  %.sroa.51.sroa.0.0.extract.trunc = trunc i64 %.sroa.0245.i.sroa.4.0.copyload to i8
  %.sroa.51.sroa.28.0.extract.shift = and i64 %.sroa.0245.i.sroa.4.0.copyload, -256
  %.sroa.62.sroa.0.0.extract.trunc = trunc i64 %.sroa.0245.i.sroa.5.0.copyload to i8
  %.sroa.62.sroa.25.0.extract.shift = and i64 %.sroa.0245.i.sroa.5.0.copyload, -256
  br label %bb.ps

bb.pl:                                            ; preds = %bb.e
  %i.akr = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17430
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.akr)
          to label %.noexc20 unwind label %bb.pq

.noexc20:                                         ; preds = %bb.pl
  %i.aks = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.akt = load ptr, ptr %i.aks, align 16, !alias.scope !17431, !nonnull !34, !noundef !34 ; 2 uses
  %i.aku = atomicrmw add ptr %i.akt, i64 1 monotonic, align 8, !noalias !17432
  %i.akv = icmp slt i64 %i.aku, 0
  br i1 %i.akv, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %.noexc20
  %i.akw = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.akx = load ptr, ptr %i.akw, align 8, !alias.scope !17431, !nonnull !34, !noundef !34 ; 2 uses
  %i.aky = atomicrmw add ptr %i.akx, i64 1 monotonic, align 8, !noalias !17432
  %i.akz = icmp slt i64 %i.aky, 0
  br i1 %i.akz, label %bb.po, label %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.pn:                                            ; preds = %.noexc20
  tail call void @llvm.trap()
  unreachable

bb.po:                                            ; preds = %bb.pm
  tail call void @llvm.trap()
  unreachable

_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.pm
  %i.ala = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.alb = load i8, ptr %i.ala, align 16, !range !55, !alias.scope !17431, !noundef !34
  %.sroa.28.8.copyload32 = load i64, ptr %i.a, align 8, !noalias !17171
  %.sroa.51.8..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.51.8.copyload49 = load i64, ptr %.sroa.51.8..sroa_idx48, align 8, !noalias !17171 ; 2 uses
  %.sroa.51.sroa.0.0.extract.trunc233 = trunc i64 %.sroa.51.8.copyload49 to i8
  %.sroa.51.sroa.28.0.extract.shift263 = and i64 %.sroa.51.8.copyload49, -256
  %.sroa.62.8..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.62.8.copyload71 = load i64, ptr %.sroa.62.8..sroa_idx70, align 8, !noalias !17171 ; 2 uses
  %.sroa.62.sroa.0.0.extract.trunc173 = trunc i64 %.sroa.62.8.copyload71 to i8
  %.sroa.62.sroa.25.0.extract.shift200 = and i64 %.sroa.62.8.copyload71, -256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17430
  %i.alc = ptrtoint ptr %i.akt to i64
  %.sroa.83.0.insert.ext = zext nneg i8 %i.alb to i64
  %i.ald = inttoptr i64 %.sroa.83.0.insert.ext to ptr
  %i.ale = insertelement <2 x ptr> poison, ptr %i.akx, i64 0
  %i.alf = insertelement <2 x ptr> %i.ale, ptr %i.ald, i64 1
  br label %bb.ps

bb.pp:                                            ; preds = %bb.d
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #57
          to label %bb.pr unwind label %bb.pq

bb.pq:                                            ; preds = %bb.pl, %bb.nt, %bb.mv, %bb.kg, %bb.kd, %bb.kb, %bb.fk, %bb.eo, %bb.el, %bb.eg, %bb.ef, %bb.ec, %bb.dp, %bb.bh, %bb.af, %bb.k, %bb.g, %bb.pp
  %i.alg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.x, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i8.i, %bb.aw, %bb.be, %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.cq, %bb.cr, %bb.dq, %.body.i.i, %bb.ed, %bb.eh, %bb.em, %bb.es, %bb.et, %bb.ey, %bb.ez, %bb.fl, %bb.hi, %bb.hj, %bb.iy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i35.i.i, %bb.kv, %bb.mz, %bb.ny, %bb.nz, %bb.ot, %bb.ou, %bb.pq
  %eh.lpad-body = phi { ptr, i32 } [ %i.alg, %bb.pq ], [ %.pn.pn.i.i, %bb.ny ], [ %i.ec, %bb.p ], [ %.pn.i.i, %bb.x ], [ %.pn.i7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i8.i ], [ %i.hn, %bb.be ], [ %.pn.i11.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.pn.i12.i, %bb.cq ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.oe, %bb.em ], [ %i.oq, %bb.es ], [ %i.pe, %bb.ey ], [ %.pn.i.i.i, %bb.fl ], [ %.pn.pn.i96.i.i, %bb.mz ], [ %i.ec, %bb.q ], [ %.pn.i.i, %bb.y ], [ %.pn.i7.i, %bb.aw ], [ %i.hn, %bb.bf ], [ %.pn.i12.i, %bb.cr ], [ %i.mm, %bb.dq ], [ %i.nw, %bb.eh ], [ %i.np, %bb.ed ], [ %i.oq, %bb.et ], [ %i.pe, %bb.ez ], [ %.pn.i55.i.i, %bb.kv ], [ %.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.hi ], [ %.pn.i16.i.i, %bb.iy ], [ %i.zc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit.i35.i.i ], [ %.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.hj ], [ %.pn.pn.i.i, %bb.nz ], [ %.pn.pn.pn.pn.i.i, %bb.ou ], [ %.pn.pn.pn.pn.i.i, %bb.ot ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cs) #54
          to label %bb.b unwind label %bb.pz

bb.pr:                                            ; preds = %bb.pp
  unreachable

bb.ps:                                            ; preds = %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %.sroa.116.sroa.9.0 = phi i64 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.116.sroa.9.0.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.14.sroa.4.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.kb, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.47.i.sroa.7.0, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.7.sroa.4.0.copyload, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ako, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.51.sroa.28.sroa.0.0 = phi i64 [ %.sroa.51.sroa.28.0.extract.shift273, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift293, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift271, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift259, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift291, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift289, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift261, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift269, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift287, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift257, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift253, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift283, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift251, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift267, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift265, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift281, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift279, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift277, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift249, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift285, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift255, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift275, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.28.0.extract.shift263, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.51.sroa.0.0 = phi i8 [ %.sroa.51.sroa.0.0.extract.trunc238, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc248, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc237, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc231, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc247, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc246, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc232, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc236, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc245, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.val1.i, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc230, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc228, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc243, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc227, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc235, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc234, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc242, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc241, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc240, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc226, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc244, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc229, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc239, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.51.sroa.0.0.extract.trunc233, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.62.sroa.25.sroa.0.0 = phi i64 [ %.sroa.62.sroa.25.0.extract.shift210, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift212, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift208, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift196, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift224, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift220, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift198, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift206, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift194, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift190, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift214, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift188, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift204, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift202, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift218, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift186, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift216, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift192, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.25.0.extract.shift200, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.62.sroa.0.0 = phi i8 [ %.sroa.62.sroa.0.0.extract.trunc178, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc179, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc177, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc171, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc185, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc183, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc172, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc176, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc184, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc170, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc168, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc180, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc167, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc175, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc174, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.pu, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc182, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc166, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc181, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc169, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.sroa.0.0.extract.trunc173, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.101.0 = phi ptr [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.101.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.9.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.101.24.copyload126, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.md, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.7137.i.sroa.4.0, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.sq, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ahj, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aif, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.13.48.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.123.sroa.9.sroa.0.0 = phi i64 [ 0, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.9.0.extract.shift142, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.9.0.extract.shift146, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.9.0.extract.shift140, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.9.0.extract.shift144, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.9.0.extract.shift, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.123.sroa.0.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.0.0.extract.trunc137, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.0.0.extract.trunc139, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.0.0.extract.trunc136, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.0.0.extract.trunc138, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.123.sroa.0.0.extract.trunc, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.akj, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.132.0 = phi ptr [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.132.128.copyload, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.jl, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ahk, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ake, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.155.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.68.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.154.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.67.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.153.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.66.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.152.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.65230.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.150.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.64.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.149.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.63.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.148.0 = phi ptr [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.62.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.146.0 = phi ptr [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.57.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.144.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.55229.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.143135.0 = phi i64 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.55.sroa.5.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.142.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.gg, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.11.0, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.141.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.gv, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.10.0, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.140.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.gi, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.9.0, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.137.0 = phi ptr [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.fr, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0.i62.sroa.30.sroa.0.i.sroa.5.0, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.129.0 = phi ptr [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.129.128.copyload, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.je, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.52.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ajp, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.121.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.121.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.18.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.121.104.copyload, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.50.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aix, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.24.96.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.120.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.120.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.17.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.120.104.copyload, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ahq, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aiz, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.23.96.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.119.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.119.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.16.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.119.104.copyload, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ahp, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aja, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.22.96.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.118.0 = phi ptr [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.118.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.15.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.118.104.copyload, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.47224.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ajb, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.21.96.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.115.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.115.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.13.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.115.80.copyload133, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.46.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.6.0.copyload, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.18.72.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.113.0 = phi i8 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.113.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.12.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.113.80.copyload131, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.su, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.45.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.0.copyload, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.17.72.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.95.0 = phi i64 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.95.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.fd, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.8.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.95.24.copyload125, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.mh, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.7137.i.sroa.0.0, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.te, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.38212.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aje, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.12.48.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.91.0 = phi i64 [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.91.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.fc, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.7.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.91.24.copyload124, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.kv, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.91.8.copyload123, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.91.8.copyload121, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.6136.0.i, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.91.8.copyload119, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.38.i.sroa.10.0, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ajd, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.10.48.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.69.0 = phi i64 [ %i.dn, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.69.16.copyload, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ek, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.088.i.sroa.6.24.copyload, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.69.24.copyload96, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.i.i.sroa.4.0, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.69.8.copyload93, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.hx, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.69.24.copyload94, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0110.i.sroa.6.24.copyload, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.69.8.copyload88, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.69.8.copyload86, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ou, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.po, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.6135.sroa.4.i.sroa.0.0, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.69.8.copyload84, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.0.i, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0239.i.sroa.6.24.copyload, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.6.24.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.alc, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.28.0 = phi i64 [ %.sroa.28.8.copyload37, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.8.copyload36, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.088.i.sroa.0.0.copyload, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.fk, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.8.copyload31, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.8.copyload35, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.jx, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ki, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0110.i.sroa.0.0.copyload, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.lb, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.mx, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.8.copyload26, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.8.copyload34, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.8.copyload33, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.qc, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.qi, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0131.0.i, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.rm, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ahh, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0239.i.sroa.0.0.copyload, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ajm, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.0245.i.sroa.0.0.copyload, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %.sroa.28.8.copyload32, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.024.0 = phi i64 [ 11, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 12, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 13, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 14, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 15, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 16, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 17, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 18, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 19, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 20, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 21, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 22, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 23, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 24, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 25, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 26, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 27, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 28, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 29, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 30, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.cz, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 32, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 33, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 34, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 35, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %i.alh = phi <2 x ptr> [ %i.do, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.du, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.el, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.fb, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.fo, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.gd, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.hr, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ka, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ku, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.mg, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ok, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.pr, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ri, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.td, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ahm, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ajc, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.akp, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.alf, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %i.ali = phi <2 x ptr> [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.dv, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ge, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.kc, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.rj, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.tg, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aho, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aiq, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.akq, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %i.alj = phi <2 x ptr> [ undef, %_RNvXs17_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1r_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2x_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2D_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.gx, %_RNvXs2K_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1w_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsP_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_13EmptyRelationNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2P_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1e_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5LimitNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1X_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7ExplainNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs23_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs29_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9ExtensionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs2k_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsf_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_12DmlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.ahf, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB5_6CopyToNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs1L_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs3a_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6UnnestNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXsV_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_14RecursiveQueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %i.alk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.all = load i8, ptr %i.alk, align 8, !range !55, !noundef !34
  %.sroa.0.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  %.sroa.51.sroa.0.0.insert.ext = zext i8 %.sroa.51.sroa.0.0 to i64
  %.sroa.51.sroa.0.0.insert.insert = or disjoint i64 %.sroa.51.sroa.28.sroa.0.0, %.sroa.51.sroa.0.0.insert.ext
  %.sroa.62.sroa.0.0.insert.ext = zext i8 %.sroa.62.sroa.0.0 to i64
  %.sroa.62.sroa.0.0.insert.insert = or disjoint i64 %.sroa.62.sroa.25.sroa.0.0, %.sroa.62.sroa.0.0.insert.ext
  %.sroa.123.sroa.0.0.insert.ext = zext i8 %.sroa.123.sroa.0.0 to i64
  %.sroa.123.sroa.0.0.insert.insert = or disjoint i64 %.sroa.123.sroa.9.sroa.0.0, %.sroa.123.sroa.0.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  store i64 %.sroa.024.0, ptr %0, align 16
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.28.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.51.sroa.0.0.insert.insert, ptr %.sroa.0.sroa.5.0..sroa_idx, align 16
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.62.sroa.0.0.insert.insert, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.69.0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 16
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x ptr> %i.alh, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.91.0, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.95.0, ptr %.sroa.0.sroa.11.0..sroa_idx, align 16
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.101.0, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x ptr> %i.ali, ptr %.sroa.0.sroa.13.0..sroa_idx, align 16
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %.sroa.113.0, ptr %.sroa.0.sroa.15.0..sroa_idx, align 16
  %.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %.sroa.115.0, ptr %.sroa.0.sroa.16.0..sroa_idx, align 1
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.0.sroa.17.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.47.i.sroa.0, i64 6, i1 false)
  %.sroa.0.sroa.17.sroa.4.0..sroa.0.sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.116.sroa.9.0, ptr %.sroa.0.sroa.17.sroa.4.0..sroa.0.sroa.17.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.118.0, ptr %.sroa.0.sroa.18.0..sroa_idx, align 16
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.sroa.119.0, ptr %.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %.sroa.120.0, ptr %.sroa.0.sroa.20.0..sroa_idx, align 1
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %.sroa.121.0, ptr %.sroa.0.sroa.21.0..sroa_idx, align 2
  %.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.sroa.22.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.51.sroa.0.i, i64 5, i1 false)
  %.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.123.sroa.0.0.insert.insert, ptr %.sroa.0.sroa.23.0..sroa_idx, align 16
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.129.0, ptr %.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.132.0, ptr %.sroa.0.sroa.25.0..sroa_idx, align 16
  %.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.137.0, ptr %.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x ptr> %i.alj, ptr %.sroa.0.sroa.27.0..sroa_idx, align 16
  %.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %.sroa.140.0, ptr %.sroa.0.sroa.29.0..sroa_idx, align 16
  %.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %.sroa.141.0, ptr %.sroa.0.sroa.30.0..sroa_idx, align 1
  %.sroa.0.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %.sroa.142.0, ptr %.sroa.0.sroa.31.0..sroa_idx, align 2
  %.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.sroa.32.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.0.i62.sroa.30.sroa.0.i.sroa.12, i64 5, i1 false)
  %.sroa.0.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %.sroa.143135.0, ptr %.sroa.0.sroa.33.0..sroa_idx, align 8
  %.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 %.sroa.144.0, ptr %.sroa.0.sroa.34.0..sroa_idx, align 16
  %.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.sroa.35.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.56.i, i64 15, i1 false)
  %.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sroa.146.0, ptr %.sroa.0.sroa.36.0..sroa_idx, align 16
  %.sroa.0.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.sroa.37.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.58.i, i64 64, i1 false)
  %.sroa.0.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %.sroa.148.0, ptr %.sroa.0.sroa.38.0..sroa_idx, align 8
  %.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 %.sroa.149.0, ptr %.sroa.0.sroa.39.0..sroa_idx, align 16
  %.sroa.0.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 %.sroa.150.0, ptr %.sroa.0.sroa.40.0..sroa_idx, align 1
  %.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.0.sroa.41.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.65.i, i64 22, i1 false)
  %.sroa.0.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %.sroa.152.0, ptr %.sroa.0.sroa.42.0..sroa_idx, align 8
  %.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 %.sroa.153.0, ptr %.sroa.0.sroa.43.0..sroa_idx, align 1
  %.sroa.0.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 314
  store i8 %.sroa.154.0, ptr %.sroa.0.sroa.44.0..sroa_idx, align 2
  %.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 315
  store i8 %.sroa.155.0, ptr %.sroa.0.sroa.45.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 %i.all, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.pu unwind label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.alm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body22 unwind label %bb.pv

bb.pu:                                            ; preds = %bb.ps
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.pw

bb.pv:                                            ; preds = %bb.pt
  %i.aln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.body22:                                          ; preds = %bb.pw, %bb.pt, %bb.b
  %.pn3 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %i.alo, %bb.pw ], [ %i.alm, %bb.pt ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %2) #54
          to label %common.resume unwind label %bb.pz

bb.pw:                                            ; preds = %bb.pu
  %i.alo = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.pu
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.px

bb.px:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit
  %i.alp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.alq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body22, %bb.px
  %common.resume.op = phi { ptr, i32 } [ %i.alp, %bb.px ], [ %.pn3, %.body22 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.pz:                                            ; preds = %.body22, %.body, %bb.b
  %i.alr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(352) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.c = load i8, ptr %i.b, align 8, !range !55, !noundef !34
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(352) %1)
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !34, !noundef !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !34, !noundef !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17455
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !55, !noalias !17456, !noundef !34
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i, label %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !35

_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b
  %i.s = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.o, ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !17457 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i

bb.c:                                             ; preds = %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #55, !noalias !17458
  unreachable

_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.s, %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.o, %bb.b ] ; 3 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = load <2 x i64>, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !17457
  %i.v = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !17457, !noundef !34
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !17457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @32, i64 32, i1 false), !noalias !17455
  store <2 x i64> %i.u, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !17455
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2l_8adapters3map3MapINtNtNtB2n_5slice4iter4IterINtNtBS_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB5k_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0EEB5o_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n)
          to label %_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtNtB1Q_5slice4iter4IterINtNtB18_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB4Z_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0EEB53_.exit unwind label %bb.d, !noalias !17455

bb.d:                                             ; preds = %_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !noalias !17455

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17455
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.x

_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1O_8adapters3map3MapINtNtNtB1Q_5slice4iter4IterINtNtB18_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB4Z_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0EEB53_.exit: ; preds = %_RNvXs3_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_11RandomStateNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17455
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !55, !noalias !17459, !noundef !34
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit, !prof !35

_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  %i.ad = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.z, ptr noalias noundef align 8 dereferenceable_or_null(24) null), !noalias !17460 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.g, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core.exit

end_hunk_3
