Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.11?download=true
inline.NumInlined: 1174
inline.NumDeleted: 550
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields5fixess2_0B7_:bb.a
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %i.l ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.m, ptr %i.b, align 8
  %i.n = load atomic i64, ptr %i.m acquire, align 8
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECscA5P7HRgTCP_15ide_diagnostics.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields5fixess3_0B7_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !align !14, !noundef !4 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !align !14, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i8, ptr %i.i, align 8, !range !24, !noundef !4
  switch i8 %i.j, label %default.unreachable11 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.aa
  ]

default.unreachable11:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !14, !noundef !4
  %i.m = tail call { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory9expr_todo(ptr noundef nonnull align 8 %i.l)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !14, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.p = tail call { i8, i8 } @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type10as_builtin(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !616
  %i.q = extractvalue { i8, i8 } %i.p, 0
  switch i8 %i.q, label %bb.j [
    i8 1, label %bb.i
    i8 3, label %bb.d
    i8 4, label %bb.d
    i8 5, label %bb.f
    i8 0, label %bb.g
    i8 2, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.r = tail call { i64, ptr } @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext11zero_number(), !noalias !616
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.pn.i = phi { i64, ptr } [ %i.r, %bb.d ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.sroa.0.0.i = extractvalue { i64, ptr } %.pn.i, 0
  br label %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit

bb.f:                                             ; preds = %bb.c
  %i.s = tail call { i64, ptr } @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10zero_float(), !noalias !616
  br label %bb.e

bb.g:                                             ; preds = %bb.c
  %i.t = tail call { i64, ptr } @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext10empty_char(), !noalias !616
  br label %bb.e

bb.h:                                             ; preds = %bb.c
  %i.u = tail call { i64, ptr } @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext9empty_str(), !noalias !616
  br label %bb.e

bb.i:                                             ; preds = %bb.c
  %i.v = tail call { i64, ptr } @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext12default_bool(), !noalias !616
  br label %bb.e

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !617
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.w, i64 12, i1 false), !noalias !615
  %i.x = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4
  %i.y = call { i32, i32 } @_RNvMsl_Cs33K2ylI4knu_10hir_expandNtB5_9HirFileId13original_file(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.e, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @8), !noalias !616 ; 2 uses
  %i.z = extractvalue { i32, i32 } %i.y, 0
  %i.aa = extractvalue { i32, i32 } %i.y, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !617
  %i.ab = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4
  %i.ac = tail call noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECscA5P7HRgTCP_15ide_diagnostics(i32 noundef %i.z, i32 noundef %i.aa, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @5), !noalias !616
  %i.ad = tail call noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.ac), !noalias !616
  %i.ae = tail call { i32, i32 } @_RINvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB6_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE18file_to_module_defNtCs4sl5YdnrCxp_3vfs6FileIdECscA5P7HRgTCP_15ide_diagnostics(ptr noundef nonnull align 8 %i.f, i32 noundef %i.ad), !noalias !616 ; 2 uses
  %i.af = extractvalue { i32, i32 } %i.ae, 0      ; 2 uses
  %.not25.i = icmp eq i32 %i.af, 0
  br i1 %.not25.i, label %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = extractvalue { i32, i32 } %i.ae, 1
  %i.ah = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4
  %i.ai = tail call { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @4), !noalias !616 ; 2 uses
  %i.aj = extractvalue { i32, i32 } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i32, i32 } %i.ai, 1      ; 2 uses
  %i.al = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4
  %i.am = tail call { i32, i32 } @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate11root_module(i32 noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @4), !noalias !616 ; 2 uses
  %i.an = extractvalue { i32, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { i32, i32 } %i.am, 1      ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4 ; 2 uses
  %i.aq = tail call noundef zeroext i1 @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type19iterate_assoc_itemsuNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor0EB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @4, ptr noundef nonnull align 8 %i.ap), !noalias !616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !617
  store ptr %i.f, ptr %i.d, align 8, !noalias !617
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.aj, ptr %i.ar, align 8, !noalias !617
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.ak, ptr %i.as, align 4, !noalias !617
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val40.i = load ptr, ptr %1, align 8, !alias.scope !615, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.09.0.copyload.i.i = load i32, ptr %.val40.i, align 8, !noalias !618 ; 2 uses
  %i.at = icmp ne i32 %.sroa.09.0.copyload.i.i, 27
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i32 %.sroa.09.0.copyload.i.i, 7
  br i1 %i.au, label %switch.lookup.i.i, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i

switch.lookup.i.i:                                ; preds = %bb.l
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val40.i, i64 20
  %i.av = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !618
  %.sroa.811.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val40.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.811.0..sroa_idx.i.i, align 8, !noalias !618
  %switch.idx.cast.i.i = zext i8 %.sroa.811.sroa.0.0.copyload.i.i to i32
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i: ; preds = %switch.lookup.i.i, %bb.l
  %.sroa.0.068.i = phi i32 [ %switch.idx.cast.i.i, %switch.lookup.i.i ], [ -1, %bb.l ] ; 3 uses
  %i.aw = phi <2 x i32> [ %i.av, %switch.lookup.i.i ], [ undef, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !617
  %i.ax = call { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs18core_option_Option(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d), !noalias !616 ; 2 uses
  %i.ay = extractvalue { i32, i32 } %i.ax, 0      ; 2 uses
  %.not26.i = icmp eq i32 %i.ay, 0
  br i1 %.not26.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !617
  %i.az = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 300
  %i.bb = load i8, ptr %i.ba, align 4, !range !25, !noalias !617, !noundef !4
  %i.bc = tail call fastcc { i64, ptr } @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields7make_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %i.az, i32 noundef %i.an, i32 noundef %i.ao, i8 noundef %i.bb), !noalias !616 ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bc, 0
  %i.be = extractvalue { i64, ptr } %i.bc, 1      ; 7 uses
  store i64 %i.bd, ptr %i.c, align 8, !noalias !617
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !noalias !617
  %i.bg = invoke { i64, ptr } @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext11expr_ty_new(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.z unwind label %bb.y, !noalias !616 ; 2 uses

bb.n:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i
  %i.bh = extractvalue { i32, i32 } %i.ax, 1
  %i.bi = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4
  call void @_RNvMse_Cs8Xq8PKFYOms_3hirNtB5_4Enum2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.ay, i32 noundef %i.bh, ptr noundef nonnull %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @4), !noalias !616
  %.val39.i = load ptr, ptr %i.b, align 8, !noalias !617, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.09.0.copyload.i41.i = load i32, ptr %.val39.i, align 8, !noalias !619 ; 2 uses
  %i.bj = icmp ne i32 %.sroa.09.0.copyload.i41.i, 27
  call void @llvm.assume(i1 %i.bj)
  %i.bk = icmp eq i32 %.sroa.09.0.copyload.i41.i, 7
  br i1 %i.bk, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit52.i, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit52.thread.i

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit52.i: ; preds = %bb.n
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i45.i = getelementptr inbounds nuw i8, ptr %.val39.i, i64 20
  %i.bl = load <2 x i32>, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i45.i, align 4, !noalias !619
  %.not27.i = icmp eq i32 %.sroa.0.068.i, -1
  br i1 %.not27.i, label %.thread.i, label %bb.q

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit52.thread.i: ; preds = %bb.n
  %.not2773.i = icmp eq i32 %.sroa.0.068.i, -1
  br i1 %.not2773.i, label %.thread82.i, label %.thread.i

bb.o:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !617
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !617
  br label %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit.thread

bb.q:                                             ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit52.i
  %.sroa.811.0..sroa_idx.i47.i = getelementptr inbounds nuw i8, ptr %.val39.i, i64 16
  %.sroa.811.sroa.0.0.copyload.i48.i = load i8, ptr %.sroa.811.0..sroa_idx.i47.i, align 8, !noalias !619
  %switch.idx.cast.i49.i = zext i8 %.sroa.811.sroa.0.0.copyload.i48.i to i32
  %i.bm = icmp eq i32 %.sroa.0.068.i, %switch.idx.cast.i49.i
  br i1 %i.bm, label %2, label %.thread.i

2:                                                ; preds = %bb.q
  %3 = icmp eq <2 x i32> %i.aw, %i.bl             ; 2 uses
  %4 = extractelement <2 x i1> %3, i64 0
  %5 = extractelement <2 x i1> %3, i64 1
  %or.cond.i = select i1 %5, i1 %4, i1 false
  br i1 %or.cond.i, label %.thread82.i, label %.thread.i

.thread.i:                                        ; preds = %2, %bb.q, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit52.thread.i, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !617
  %.sroa.021.0.copyload.i = load i32, ptr %.val40.i, align 8, !noalias !616 ; 2 uses
  %i.bn = icmp ne i32 %.sroa.021.0.copyload.i, 27
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i32 %.sroa.021.0.copyload.i, 10
  br i1 %i.bo, label %bb.x, label %bb.r

.thread82.i:                                      ; preds = %2, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit52.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !617
  %i.bp = call { i64, ptr } @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext11option_none(), !noalias !616 ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0
  %i.br = extractvalue { i64, ptr } %i.bp, 1
  br label %bb.x

bb.r:                                             ; preds = %.thread.i
  %i.bs = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4
  %i.bt = call { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs20core_default_Default(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d), !noalias !616 ; 2 uses
  %i.bu = extractvalue { i32, i32 } %i.bt, 0      ; 2 uses
  %.not29.i = icmp eq i32 %i.bu, 0
  br i1 %.not29.i, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = extractvalue { i32, i32 } %i.bt, 1
  %i.bw = call noundef zeroext i1 @_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type11impls_trait(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @4, i32 noundef %i.bu, i32 noundef %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0), !noalias !616
  br i1 %i.bw, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !617
  %i.bx = load ptr, ptr %i.f, align 8, !noalias !617, !nonnull !4, !align !14, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 300
  %i.bz = load i8, ptr %i.by, align 4, !range !25, !noalias !617, !noundef !4
  %i.ca = call fastcc { i64, ptr } @_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields7make_ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull %i.bx, i32 noundef %i.an, i32 noundef %i.ao, i8 noundef %i.bz), !noalias !616 ; 2 uses
  %i.cb = extractvalue { i64, ptr } %i.ca, 0
  %i.cc = extractvalue { i64, ptr } %i.ca, 1      ; 7 uses
  store i64 %i.cb, ptr %i.a, align 8, !noalias !617
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !noalias !617
  %i.ce = invoke { i64, ptr } @_RNvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext15expr_ty_default(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.v unwind label %bb.u, !noalias !616 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !noalias !616, !noundef !4
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !noalias !616
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i: ; preds = %bb.u
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cc) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.w, !noalias !616

bb.v:                                             ; preds = %bb.t
  %i.ck = extractvalue { i64, ptr } %i.ce, 0
  %i.cl = extractvalue { i64, ptr } %i.ce, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !616, !noundef !4
  %i.co = add i32 %i.cn, -1                       ; 2 uses
  store i32 %i.co, ptr %i.cm, align 4, !noalias !616
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i53.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit54.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i53.i: ; preds = %bb.v
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.cc) #34, !noalias !616
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit54.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit54.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i53.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !617
  br label %bb.x

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i55.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31, !noalias !616
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i55.i, %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i, %bb.u
  %.pn30.i = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.cf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i.i ], [ %i.ct, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i55.i ], [ %i.ct, %bb.y ]
  resume { ptr, i32 } %.pn30.i

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit59.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit54.i, %bb.s, %.thread82.i, %.thread.i
  %.sroa.13.4.i = phi ptr [ %i.cz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit59.i ], [ %i.br, %.thread82.i ], [ %i.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit54.i ], [ undef, %.thread.i ], [ undef, %bb.s ]
  %.sroa.0.4.i = phi i64 [ %i.cy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit59.i ], [ %i.bq, %.thread82.i ], [ %i.ck, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit54.i ], [ -1, %.thread.i ], [ -1, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !617
  %i.cr = insertvalue { i64, ptr } poison, i64 %.sroa.0.4.i, 0
  %i.cs = insertvalue { i64, ptr } %i.cr, ptr %.sroa.13.4.i, 1
  br label %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit

bb.y:                                             ; preds = %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !noalias !616, !noundef !4
  %i.cw = add i32 %i.cv, -1                       ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 4, !noalias !616
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i55.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i55.i: ; preds = %bb.y
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.be) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.w, !noalias !616

bb.z:                                             ; preds = %bb.m
  %i.cy = extractvalue { i64, ptr } %i.bg, 0
  %i.cz = extractvalue { i64, ptr } %i.bg, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !noalias !616, !noundef !4
  %i.dc = add i32 %i.db, -1                       ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4, !noalias !616
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i58.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit59.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i58.i: ; preds = %bb.z
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.be) #34, !noalias !616
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit59.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECscA5P7HRgTCP_15ide_diagnostics.exit59.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i58.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !617
  br label %bb.x

_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit: ; preds = %bb.e, %bb.x
  %.sroa.0.1.i = phi i64 [ %.sroa.0.4.i, %bb.x ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.merged8 = phi { i64, ptr } [ %i.cs, %bb.x ], [ %.pn.i, %bb.e ]
  %.not = icmp eq i64 %.sroa.0.1.i, -1
  br i1 %.not, label %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit.thread, label %bb.ac

bb.aa:                                            ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !4, !align !14, !noundef !4
  %i.dg = tail call noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory15expr_underscore(ptr noundef nonnull align 8 %i.df)
  %i.dh = insertvalue { i64, ptr } { i64 33, ptr poison }, ptr %i.dg, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa, %bb.b
  %.merged = phi { i64, ptr } [ %i.m, %bb.b ], [ %i.dn, %bb.ac ], [ %i.dh, %bb.aa ]
  ret { i64, ptr } %.merged

_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit.thread: ; preds = %bb.j, %bb.p, %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !4, !align !14, !noundef !4
  %i.dk = call { i64, ptr } @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory9expr_todo(ptr noundef nonnull align 8 %i.dj) ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit, %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit.thread
  %.pn = phi { i64, ptr } [ %i.dk, %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit.thread ], [ %.merged8, %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit ]
  %.sroa.0.1 = phi i64 [ %i.dl, %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit.thread ], [ %.sroa.0.1.i, %_RNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers14missing_fields23get_default_constructor.exit ]
  %.sroa.5.1 = extractvalue { i64, ptr } %.pn, 1
  %i.dm = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.dn = insertvalue { i64, ptr } %i.dm, ptr %.sroa.5.1, 1
  br label %bb.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers22remove_trailing_return22remove_trailing_return0B7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val8 = load ptr, ptr %i.c, align 8, !noundef !4 ; 12 uses
  %.not.i = icmp eq ptr %.val8, null
  br i1 %.not.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val8, i64 48 ; 10 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !4 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.f, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #33
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.x, %bb.k, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.v, %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.g, %bb.d ], [ %i.n, %bb.h ], [ %i.an, %bb.v ], [ %i.an, %bb.u ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noundef !4
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ReturnExprECscA5P7HRgTCP_15ide_diagnostics.exit

bb.e:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #34
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10ReturnExprECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.ab

bb.f:                                             ; preds = %bb.b
  %i.l = add nuw i32 %i.e, 1
  store i32 %i.l, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val8, ptr %i.b, align 8
  %i.m = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.i unwind label %bb.g

end_hunk_0
