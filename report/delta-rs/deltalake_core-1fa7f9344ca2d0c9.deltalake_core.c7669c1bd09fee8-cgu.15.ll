Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.15?download=true
inline.NumInlined: 12000
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs6j_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_12ColumnOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a

bb.bb:                                            ; preds = %bb.az
  br i1 %i.gw, label %bb.bd, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48

bb.bc:                                            ; preds = %bb.ba
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.gy = load i64, ptr %i.gx, align 8, !noundef !54 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !54
  %i.hb = icmp eq i64 %i.gy, %i.ha
  br i1 %i.hb, label %.split54, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48

.split54:                                         ; preds = %bb.bc
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !54, !noundef !54
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hf = load ptr, ptr %i.he, align 8, !nonnull !54, !noundef !54
  %i.hg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15SequenceOptionsINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.hd, i64 noundef %i.gy)
  br i1 %i.hg, label %bb.bd, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48

bb.bd:                                            ; preds = %.split54, %bb.bb
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !range !88, !noundef !54
  %.not12 = icmp eq i64 %i.hi, 69
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !range !88, !noundef !54
  %i.hl = icmp eq i64 %i.hk, 69                   ; 2 uses
  br i1 %.not12, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.hl, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48, label %.split55

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.hl, label %bb.bg, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48

.split55:                                         ; preds = %bb.be
  %i.hm = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.hh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.hj) #55
  br i1 %i.hm, label %bb.bg, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48

bb.bg:                                            ; preds = %.split55, %bb.bf
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 362
  %i.ho = load i8, ptr %i.hn, align 2, !range !65, !noundef !54 ; 2 uses
  %.not14 = icmp eq i8 %i.ho, 2
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 362
  %i.hq = load i8, ptr %i.hp, align 2, !range !65, !noundef !54 ; 2 uses
  br i1 %.not14, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hr = icmp eq i8 %i.ho, %i.hq
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48

bb.bi:                                            ; preds = %bb.bg
  %i.hs = icmp eq i8 %i.hq, 2
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48

bb.bj:                                            ; preds = %bb.r
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !nonnull !54, !noundef !54
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !nonnull !54, !noundef !54
  %i.hx = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.hw, ptr noundef nonnull %i.hu, i64 noundef %i.bs)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit48
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs6p_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #22 !guid !36288 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !103, !noundef !54 ; 3 uses
  %i.b = icmp eq i64 %i.a, 44                     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !103, !noundef !54 ; 2 uses
  %i.d = icmp eq i64 %i.c, 44                     ; 3 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.h, %bb.c ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.i ], [ %i.aj, %bb.l ], [ %.mux.i, %bb.f ], [ true, %bb.e ], [ false, %bb.h ], [ %i.at, %bb.o ], [ false, %bb.m ], [ %i.au, %bb.p ], [ %i.ai, %bb.k ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g) #55
  br label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.i = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36290)
  %i.j = icmp eq i64 %i.a, %i.c
  br i1 %i.j, label %bb.e, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  switch i64 %i.a, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i64 4, label %bb.f
    i64 43, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !63, !alias.scope !36289, !noundef !54
  %.not6.i = icmp eq i64 %i.l, -9223372036854775808 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !63, !alias.scope !36290, !noundef !54
  %i.o = icmp eq i64 %i.n, -9223372036854775808   ; 2 uses
  %brmerge.i = or i1 %.not6.i, %i.o
  %.mux.i = and i1 %.not6.i, %i.o
  br i1 %brmerge.i, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !36289, !noundef !54 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !36290, !noundef !54
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.m, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !36289, !noundef !54 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !36290, !noundef !54
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.i, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !36290, !nonnull !54, !noundef !54
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !36289, !nonnull !54, !noundef !54
  %bcmp8.i = tail call i32 @bcmp(ptr nonnull %i.ac, ptr nonnull %i.aa, i64 %i.v), !noalias !36291
  %i.ad = icmp eq i32 %bcmp8.i, 0
  br i1 %i.ad, label %bb.j, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !range !165, !alias.scope !36289, !noundef !54 ; 2 uses
  %.not9.i = icmp eq i32 %i.af, 1114112
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !range !165, !alias.scope !36290, !noundef !54 ; 2 uses
  br i1 %.not9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp eq i32 %i.af, %i.ah
  br label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = icmp eq i32 %i.ah, 1114112
  br label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !36290, !nonnull !54, !noundef !54
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !36289, !nonnull !54, !noundef !54
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.an, ptr nonnull %i.al, i64 %i.q), !noalias !36291
  %i.ao = icmp eq i32 %bcmp.i, 0
  br i1 %i.ao, label %bb.n, label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !range !165, !alias.scope !36289, !noundef !54 ; 2 uses
  %.not.i = icmp eq i32 %i.aq, 1114112
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load i32, ptr %i.ar, align 8, !range !165, !alias.scope !36290, !noundef !54 ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = icmp eq i32 %i.aq, %i.as
  br label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.au = icmp eq i32 %i.as, 1114112
  br label %_RNvXsH_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11GeneratedAsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !36292 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !65, !noundef !54 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11GeneratedAsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11GeneratedAsNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.961, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(616) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(616) %1) unnamed_addr #1 !guid !36300 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !130, !noundef !54 ; 3 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 2) ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !130, !noundef !54 ; 4 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 2)
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %default.unreachable204 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.n
    i64 11, label %bb.o
    i64 12, label %bb.p
  ]

_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %.split115, %bb.dv, %bb.dk, %bb.dd, %bb.ck, %bb.cb, %bb.br, %bb.bp, %bb.bi, %bb.bd, %bb.av, %bb.aq, %bb.ao, %bb.dh, %bb.cv, %bb.as, %bb.ah, %bb.q, %bb.p, %bb.k, %bb.j, %.split127, %.split125, %.split124, %_RNvXs8Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split119, %.split118, %.split117, %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split112, %.split, %bb.dw, %bb.dt, %bb.dq, %bb.do, %bb.dm, %bb.du, %bb.dr, %bb.dp, %bb.dn, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.df, %bb.dg, %_RNvXshd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16XmlPassingClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.dj, %bb.o, %bb.di, %bb.de, %bb.db, %bb.cy, %bb.ct, %bb.cq, %bb.co, %bb.cm, %bb.dc, %bb.da, %bb.cz, %bb.cu, %bb.cr, %bb.cp, %bb.cn, %bb.n, %bb.cl, %bb.ci, %bb.cf, %bb.cj, %bb.cg, %bb.ce, %bb.cd, %bb.m, %bb.cc, %bb.bz, %bb.bv, %bb.bt, %bb.ca, %bb.bx, %bb.bw, %bb.bu, %bb.l, %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.bq, %bb.bn, %bb.bl, %bb.bo, %bb.bm, %bb.i, %bb.h, %bb.bf, %bb.bh, %bb.bg, %bb.be, %bb.bb, %bb.az, %bb.bc, %bb.ba, %bb.ax, %bb.g, %bb.f, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit107, %bb.au, %bb.at, %bb.e, %bb.d, %bb.an, %bb.al, %bb.am, %bb.aj, %bb.af, %bb.ac, %bb.aa, %bb.x, %bb.v, %bb.s, %bb.ak, %bb.ag, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.t, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104, %bb.c, %bb.a, %bb.dl, %bb.bs, %bb.bj, %bb.aw, %bb.ar, %bb.ap
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.fm, %bb.ap ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.al ], [ %i.fs, %bb.ar ], [ false, %bb.e ], [ %.mux, %bb.ao ], [ %.mux172, %bb.dv ], [ %i.go, %bb.aw ], [ false, %bb.f ], [ %.mux152, %bb.aq ], [ false, %bb.cv ], [ false, %.split125 ], [ %i.ii, %bb.bj ], [ false, %bb.h ], [ %.mux156, %bb.bd ], [ false, %.split124 ], [ false, %bb.as ], [ %i.jk, %bb.bs ], [ false, %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %.mux160, %bb.bp ], [ false, %_RNvXs8Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.dh ], [ false, %.split119 ], [ false, %.split118 ], [ %i.pe, %bb.dl ], [ false, %bb.df ], [ %.mux168, %bb.dd ], [ false, %.split117 ], [ false, %bb.ah ], [ %i.fb, %bb.am ], [ false, %bb.c ], [ false, %bb.aj ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.s ], [ false, %bb.ak ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %bb.w ], [ false, %bb.t ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104 ], [ false, %bb.an ], [ false, %bb.at ], [ false, %bb.au ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit107 ], [ %i.hp, %bb.be ], [ false, %bb.g ], [ %.mux154, %bb.av ], [ false, %bb.bb ], [ false, %bb.az ], [ false, %bb.bc ], [ false, %bb.ba ], [ false, %bb.ax ], [ false, %bb.bg ], [ false, %bb.bh ], [ false, %bb.bf ], [ %i.je, %bb.bq ], [ false, %bb.i ], [ %.mux158, %bb.bi ], [ false, %bb.bn ], [ false, %bb.bl ], [ false, %bb.bo ], [ false, %bb.bm ], [ %i.kr, %bb.cc ], [ false, %bb.l ], [ %.mux162, %bb.br ], [ false, %bb.bz ], [ false, %bb.bv ], [ false, %bb.bt ], [ false, %bb.ca ], [ false, %bb.bx ], [ false, %bb.bw ], [ false, %bb.bu ], [ %i.lr, %bb.cl ], [ false, %bb.m ], [ %.mux164, %bb.cb ], [ false, %bb.ci ], [ false, %bb.cf ], [ false, %bb.cj ], [ false, %bb.cg ], [ false, %bb.ce ], [ false, %bb.cd ], [ %i.oc, %bb.de ], [ false, %bb.n ], [ %.mux166, %bb.ck ], [ false, %bb.db ], [ false, %bb.cy ], [ false, %bb.ct ], [ false, %bb.cq ], [ false, %bb.co ], [ false, %bb.cm ], [ false, %bb.dc ], [ false, %bb.da ], [ false, %bb.cz ], [ false, %bb.cu ], [ false, %bb.cr ], [ false, %bb.cp ], [ false, %bb.cn ], [ false, %bb.di ], [ false, %bb.o ], [ false, %bb.dj ], [ false, %_RNvXshd_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16XmlPassingClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.dg ], [ %i.qu, %bb.dw ], [ false, %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %.mux170, %bb.dk ], [ false, %bb.dt ], [ false, %bb.dq ], [ false, %bb.do ], [ false, %bb.dm ], [ false, %bb.du ], [ false, %bb.dr ], [ false, %bb.dp ], [ false, %bb.dn ], [ false, %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %.split127 ], [ false, %bb.k ], [ false, %bb.p ], [ false, %.split ], [ false, %.split112 ], [ false, %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.q ], [ false, %.split115 ]
  ret i1 %.sroa.0.0

default.unreachable204:                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.h = load i8, ptr %i.g, align 8, !range !62, !noundef !54
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.j = load i8, ptr %i.i, align 8, !range !62, !noundef !54
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %bb.q, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i8, ptr %i.l, align 8, !range !62, !noundef !54
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i8, ptr %i.n, align 8, !range !62, !noundef !54
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.an, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.r) #55
  br i1 %i.s, label %bb.aq, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load i8, ptr %i.t, align 8, !range !62, !noundef !54
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.w = load i8, ptr %i.v, align 8, !range !62, !noundef !54
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.as, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load i8, ptr %i.y, align 8, !range !62, !noundef !54
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ab = load i8, ptr %i.aa, align 8, !range !62, !noundef !54
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.ax, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ae) #55
  br i1 %i.af, label %bb.bf, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ah) #55
  br i1 %i.ai, label %bb.bk, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !54, !noundef !54 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !54, !noundef !54 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36302)
  %i.an = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %i.am) #55, !inline_history !36303
  br i1 %i.an, label %bb.k, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 632
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !36301, !noundef !54 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 632
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !36302, !noundef !54
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 624
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !36302, !nonnull !54, !noundef !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !36301, !nonnull !54, !noundef !54
  %i.ax = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query4JoinINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.au, i64 noundef %i.ap), !inline_history !36303
  br i1 %i.ax, label %bb.br, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !54, !noundef !54
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !54, !noundef !54
  %i.be = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bd) #55
  br i1 %i.be, label %bb.bt, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !54, !noundef !54
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !54, !noundef !54
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bk) #55
  br i1 %i.bl, label %bb.cd, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !54, !noundef !54
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !54, !noundef !54
  %i.bs = tail call fastcc noundef zeroext i1 @_RNvXs73_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableFactorNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(616) %i.br) #55
  br i1 %i.bs, label %bb.cm, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.o:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !54 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.by = load i64, ptr %i.bx, align 8, !noundef !54
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.df, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val88 = load i64, ptr %i.ca, align 8, !noundef !54 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val90 = load i64, ptr %i.cb, align 8, !noundef !54
  %i.cc = icmp eq i64 %.val88, %.val90
  br i1 %i.cc, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val89 = load ptr, ptr %i.cd, align 8, !nonnull !54, !noundef !54
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.val87 = load ptr, ptr %i.ce, align 8, !nonnull !54, !noundef !54
  %i.cf = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val87, ptr noundef nonnull %.val89, i64 noundef %.val88)
  br i1 %i.cf, label %bb.dm, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.q:                                             ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val84 = load i64, ptr %i.cg, align 8, !noundef !54 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.val86 = load i64, ptr %i.ch, align 8, !noundef !54
  %i.ci = icmp eq i64 %.val84, %.val86
  br i1 %i.ci, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104: ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val85 = load ptr, ptr %i.cj, align 8, !nonnull !54, !noundef !54
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val83 = load ptr, ptr %i.ck, align 8, !nonnull !54, !noundef !54
  %i.cl = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val83, ptr noundef nonnull %.val85, i64 noundef %.val84)
  br i1 %i.cl, label %bb.r, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.r:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit104
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !range !63, !noundef !54
  %.not70 = icmp eq i64 %i.cn, -9223372036854775808
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !63, !noundef !54
  %i.cq = icmp eq i64 %i.cp, -9223372036854775808 ; 2 uses
  br i1 %.not70, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.cq, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.split

bb.t:                                             ; preds = %bb.r
  br i1 %i.cq, label %bb.u, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.s
  %i.cr = tail call fastcc noundef zeroext i1 @_RNvXsa7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_10TableAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.co) #55
  br i1 %i.cr, label %bb.u, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.u:                                             ; preds = %.split, %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !range !63, !noundef !54
  %.not72 = icmp eq i64 %i.ct, -9223372036854775808
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !63, !noundef !54
  %i.cw = icmp eq i64 %i.cv, -9223372036854775808 ; 2 uses
  br i1 %.not72, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.cw, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.split112

bb.w:                                             ; preds = %bb.u
  br i1 %i.cw, label %bb.x, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split112:                                        ; preds = %bb.v
  %i.cx = tail call fastcc noundef zeroext i1 @_RNvXs6f_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17TableFunctionArgsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu) #55
  br i1 %i.cx, label %bb.x, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.x:                                             ; preds = %.split112, %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !54 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.db = load i64, ptr %i.da, align 8, !noundef !54
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !54, !noundef !54
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !54, !noundef !54
  %i.dh = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, i64 noundef %i.cz)
  br i1 %i.dh, label %bb.z, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %bb.y
  %.not74 = icmp eq i64 %i.a, 2
  br i1 %.not74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = icmp eq i64 %i.a, %i.c
  br i1 %i.di, label %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ab:                                            ; preds = %bb.z
  %.not177 = icmp eq i64 %i.c, 2
  br i1 %.not177, label %bb.ac, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.dk) #55, !inline_history !29
  br i1 %i.dl, label %bb.ac, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ac:                                            ; preds = %_RNvXsar_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12TableVersionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !54 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.dp = load i64, ptr %i.do, align 8, !noundef !54
  %i.dq = icmp eq i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.ad, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !54, !noundef !54
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !54, !noundef !54
  %i.dv = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.du, ptr noundef nonnull %i.ds, i64 noundef %i.dn)
  br i1 %i.dv, label %bb.ae, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.dx = load i64, ptr %i.dw, align 8, !range !63, !noundef !54
  %.not76 = icmp eq i64 %i.dx, -9223372036854775808
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.dz = load i64, ptr %i.dy, align 8, !range !63, !noundef !54
  %i.ea = icmp eq i64 %i.dz, -9223372036854775808 ; 2 uses
  br i1 %.not76, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ea, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.ea, label %bb.ai, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.val92 = load i64, ptr %i.eb, align 8, !noundef !54 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 600
  %.val94 = load i64, ptr %i.ec, align 8, !noundef !54
  %i.ed = icmp eq i64 %.val92, %.val94
  br i1 %i.ed, label %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 592
  %.val93 = load ptr, ptr %i.ee, align 8, !nonnull !54, !noundef !54
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.val91 = load ptr, ptr %i.ef, align 8, !nonnull !54, !noundef !54
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast12JsonPathElemINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val91, ptr noundef nonnull %.val93, i64 noundef %.val92)
  br i1 %i.eg, label %bb.ai, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ai:                                            ; preds = %_RNvXs5V_NtCs4lawaffTVVK_9sqlparser3astNtB6_8JsonPathNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ei = load i64, ptr %i.eh, align 8, !range !69, !noundef !54 ; 2 uses
  %.not78 = icmp eq i64 %i.ei, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ek = load i64, ptr %i.ej, align 8, !range !69, !noundef !54 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2                    ; 2 uses
  br i1 %.not78, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.el, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.split115

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.el, label %bb.al, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split115:                                        ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36305)
  %i.em = icmp eq i64 %i.ei, %i.ek
  br i1 %i.em, label %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %.split115
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !36304, !nonnull !54, !noundef !54
  %i.eq = load ptr, ptr %i.en, align 8, !alias.scope !36305, !nonnull !54, !noundef !54
  %i.er = tail call fastcc noundef zeroext i1 @_RNvXs7n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11TableSampleNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.eq) #55, !noalias !36306, !inline_history !36299
  br i1 %i.er, label %bb.al, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.al:                                            ; preds = %_RNvXs7d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.et = load i64, ptr %i.es, align 8, !noundef !54 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !54
  %i.ew = icmp eq i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.am, label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !54, !noundef !54
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !54, !noundef !54
  %i.fb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableIndexHintsINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.ey, i64 noundef %i.et)
  br label %_RNvXs5r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.an:                                            ; preds = %bb.d
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !54, !noundef !54
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !54, !noundef !54
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core:bb.a

_RNvXs7U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9PartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.cg
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.lu = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ls, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.lt) #55, !inline_history !37938
  br i1 %i.lu, label %bb.cf, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cl:                                            ; preds = %bb.ac
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !37941, !noundef !54 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ly = load i64, ptr %i.lx, align 8, !alias.scope !37942, !noundef !54
  %i.lz = icmp eq i64 %i.lw, %i.ly
  br i1 %i.lz, label %bb.cm, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cm:                                            ; preds = %bb.cl
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !37942, !nonnull !54, !noundef !54
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !alias.scope !37941, !nonnull !54, !noundef !54
  %i.me = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.md, ptr noundef nonnull %i.mb, i64 noundef %i.lw), !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cn:                                            ; preds = %bb.ad
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.mh = tail call fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.mg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.mf), !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.co:                                            ; preds = %bb.af
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.mk = tail call fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.mj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.mi), !inline_history !37931
  br i1 %i.mk, label %bb.cp, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cp:                                            ; preds = %bb.co
  %i.ml = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dy) #55, !inline_history !37931
  br i1 %i.ml, label %bb.cq, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cq:                                            ; preds = %bb.cp
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.mn = load i64, ptr %i.mm, align 8, !alias.scope !37941, !noundef !54 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.mp = load i64, ptr %i.mo, align 8, !alias.scope !37942, !noundef !54
  %i.mq = icmp eq i64 %i.mn, %i.mp
  br i1 %i.mq, label %bb.cr, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cr:                                            ; preds = %bb.cq
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !37942, !nonnull !54, !noundef !54
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.mu = load ptr, ptr %i.mt, align 8, !alias.scope !37941, !nonnull !54, !noundef !54
  %.not915.not = icmp eq i64 %i.mn, 0
  br i1 %.not915.not, label %._crit_edge19, label %.lr.ph18

bb.cs:                                            ; preds = %.lr.ph18
  %i.mv = add nuw i64 %.sroa.01.0.i116, 1         ; 2 uses
  %exitcond35.not = icmp eq i64 %i.mv, %i.mn
  br i1 %exitcond35.not, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.cr, %bb.cs
  %.sroa.01.0.i116 = phi i64 [ %i.mv, %bb.cs ], [ 0, %bb.cr ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [680 x i8], ptr %i.mu, i64 %.sroa.01.0.i116
  %i.mx = getelementptr inbounds nuw [680 x i8], ptr %i.ms, i64 %.sroa.01.0.i116
  %i.my = tail call fastcc noundef zeroext i1 @_RNvXs6j_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_12ColumnOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %i.mw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %i.mx) #55, !inline_history !37939
  br i1 %i.my, label %bb.cs, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

._crit_edge19:                                    ; preds = %bb.cs, %bb.cr
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !range !83, !alias.scope !37941, !noundef !54
  %.not12.i = icmp eq i64 %i.na, -9223372036854775807 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !range !83, !alias.scope !37942, !noundef !54
  %i.nd = icmp eq i64 %i.nc, -9223372036854775807 ; 2 uses
  %brmerge71 = or i1 %.not12.i, %i.nd
  %.mux72 = and i1 %.not12.i, %i.nd
  br i1 %brmerge71, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge19
  %i.ne = tail call fastcc noundef zeroext i1 @_RNvXsvE_NtCs4lawaffTVVK_9sqlparser3astNtB6_19MySQLColumnPositionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.mz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.nb) #55, !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cu:                                            ; preds = %bb.ag
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nh = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ng, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.nf) #55, !inline_history !37931
  br i1 %i.nh, label %bb.cv, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cv:                                            ; preds = %bb.cu
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !37941, !noundef !54 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.nl = load i64, ptr %i.nk, align 8, !alias.scope !37942, !noundef !54
  %i.nm = icmp eq i64 %i.nj, %i.nl
  br i1 %i.nm, label %bb.cw, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cw:                                            ; preds = %bb.cv
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.no = load ptr, ptr %i.nn, align 8, !alias.scope !37942, !nonnull !54, !noundef !54
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nq = load ptr, ptr %i.np, align 8, !alias.scope !37941, !nonnull !54, !noundef !54
  %.not13.not = icmp eq i64 %i.nj, 0
  br i1 %.not13.not, label %._crit_edge, label %.lr.ph

bb.cx:                                            ; preds = %.lr.ph
  %i.nr = add nuw i64 %.sroa.01.0.i14, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.nr, %i.nj
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cw, %bb.cx
  %.sroa.01.0.i14 = phi i64 [ %i.nr, %bb.cx ], [ 0, %bb.cw ] ; 3 uses
  %i.ns = getelementptr inbounds nuw [680 x i8], ptr %i.nq, i64 %.sroa.01.0.i14
  %i.nt = getelementptr inbounds nuw [680 x i8], ptr %i.no, i64 %.sroa.01.0.i14
  %i.nu = tail call fastcc noundef zeroext i1 @_RNvXs6j_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_12ColumnOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %i.ns, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(680) %i.nt) #55, !inline_history !37939
  br i1 %i.nu, label %bb.cx, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

._crit_edge:                                      ; preds = %bb.cx, %bb.cw
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !range !83, !alias.scope !37941, !noundef !54
  %.not.i = icmp eq i64 %i.nw, -9223372036854775807 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !range !83, !alias.scope !37942, !noundef !54
  %i.nz = icmp eq i64 %i.ny, -9223372036854775807 ; 2 uses
  %brmerge73 = or i1 %.not.i, %i.nz
  %.mux74 = and i1 %.not.i, %i.nz
  br i1 %brmerge73, label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge
  %i.oa = tail call fastcc noundef zeroext i1 @_RNvXsvE_NtCs4lawaffTVVK_9sqlparser3astNtB6_19MySQLColumnPositionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.nv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.nx) #55, !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cz:                                            ; preds = %bb.ah
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.od = tail call fastcc noundef zeroext i1 @_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.oc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ob), !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.da:                                            ; preds = %bb.ai
  %i.oe = tail call fastcc noundef zeroext i1 @_RNvXs3d_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterColumnOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %1) #55, !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.db:                                            ; preds = %bb.al
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.og = load ptr, ptr %i.of, align 8, !alias.scope !37942, !nonnull !54, !noundef !54
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !alias.scope !37941, !nonnull !54, !noundef !54
  %i.oj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.oi, ptr noundef nonnull %i.og, i64 noundef %i.eq), !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dc:                                            ; preds = %bb.an
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !alias.scope !37942, !nonnull !54, !noundef !54
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !alias.scope !37941, !nonnull !54, !noundef !54
  %i.oo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.on, ptr noundef nonnull %i.ol, i64 noundef %i.ey), !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dd:                                            ; preds = %bb.ao
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.val43.i = load i8, ptr %i.oq, align 1, !range !67, !alias.scope !37941, !noundef !54
  %.val44.i = load i8, ptr %i.op, align 1, !range !67, !alias.scope !37942, !noundef !54
  %i.or = icmp eq i8 %.val43.i, %.val44.i
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.de:                                            ; preds = %bb.ap
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.val45.i = load i8, ptr %i.ot, align 1, !range !67, !alias.scope !37941, !noundef !54
  %.val46.i = load i8, ptr %i.os, align 1, !range !67, !alias.scope !37942, !noundef !54
  %i.ou = icmp eq i8 %.val45.i, %.val46.i
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.df:                                            ; preds = %bb.aq
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ox = tail call noundef zeroext i1 @_RNvXNtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB2_13ValueWithSpanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ow, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ov), !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dg:                                            ; preds = %bb.as
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !alias.scope !37942, !nonnull !54, !noundef !54
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !alias.scope !37941, !nonnull !54, !noundef !54
  %i.pc = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.pb, ptr noundef nonnull %i.oz, i64 noundef %i.fv), !inline_history !37931
  br label %_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs17_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterTableOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph18, %bb.cf, %_RNvXs7U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9PartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ck, %.lr.ph23, %bb.ci, %bb.ch, %.split, %.split58, %.split59, %.split60, %._crit_edge, %._crit_edge19, %bb.bt, %bb.br, %bb.bf, %bb.bc, %bb.aw, %bb.ce, %bb.by, %bb.bv, %bb.bp, %bb.bj, %bb.ak, %bb.aj, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.be, %bb.bg, %bb.bh, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.ct, %bb.cu, %bb.cv, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ %i.gb, %bb.at ], [ true, %bb.b ], [ %i.gn, %bb.ax ], [ false, %bb.d ], [ false, %.lr.ph18 ], [ false, %bb.c ], [ %i.gr, %bb.az ], [ false, %bb.ci ], [ %i.gu, %bb.ba ], [ false, %bb.e ], [ %i.hd, %bb.bd ], [ false, %bb.g ], [ %.mux, %bb.aw ], [ false, %bb.f ], [ %i.hm, %bb.bg ], [ false, %bb.h ], [ %.mux64, %bb.bc ], [ false, %bb.bl ], [ %i.av, %bb.i ], [ %i.ay, %bb.j ], [ false, %bb.cv ], [ false, %bb.k ], [ %i.hv, %bb.bk ], [ false, %bb.z ], [ %.mux74, %._crit_edge ], [ false, %bb.l ], [ %i.iq, %bb.bq ], [ %i.hu, %bb.bj ], [ %i.bl, %bb.m ], [ %i.bo, %bb.n ], [ %i.iw, %bb.bs ], [ false, %bb.o ], [ %.mux66, %bb.bf ], [ false, %bb.cu ], [ %i.jc, %bb.bu ], [ false, %bb.p ], [ %.mux68, %bb.br ], [ false, %bb.cq ], [ %i.ip, %bb.bp ], [ true, %bb.ce ], [ %i.je, %bb.bw ], [ %i.eo, %bb.ak ], [ false, %bb.r ], [ %i.jk, %bb.bz ], [ %i.jd, %bb.bv ], [ %i.ce, %bb.s ], [ %i.ch, %bb.t ], [ %i.ck, %bb.u ], [ %i.cn, %bb.v ], [ %i.cq, %bb.w ], [ %i.ct, %bb.x ], [ %i.cw, %bb.y ], [ %i.jz, %bb.cc ], [ false, %bb.ca ], [ %i.jj, %bb.by ], [ %i.de, %bb.aa ], [ false, %bb.aj ], [ false, %bb.ab ], [ false, %bb.cb ], [ %i.me, %bb.cm ], [ false, %bb.ac ], [ false, %bb.cd ], [ %i.mh, %bb.cn ], [ false, %bb.cl ], [ %i.du, %bb.ae ], [ %i.ne, %bb.ct ], [ false, %bb.af ], [ %.mux70, %bb.bt ], [ false, %bb.ad ], [ %i.oa, %bb.cy ], [ false, %bb.ag ], [ %.mux72, %._crit_edge19 ], [ false, %bb.cp ], [ %i.od, %bb.cz ], [ false, %bb.co ], [ %i.oe, %bb.da ], [ false, %bb.ah ], [ false, %bb.as ], [ %i.oj, %bb.db ], [ false, %bb.ai ], [ %i.ew, %bb.am ], [ %i.oo, %bb.dc ], [ false, %bb.al ], [ %i.or, %bb.dd ], [ false, %bb.an ], [ %i.ou, %bb.de ], [ false, %bb.ao ], [ %i.ox, %bb.df ], [ false, %bb.ap ], [ %i.ft, %bb.ar ], [ %i.pc, %bb.dg ], [ false, %bb.aq ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.ay ], [ false, %bb.bb ], [ false, %bb.be ], [ false, %bb.bh ], [ false, %bb.bm ], [ false, %bb.bn ], [ false, %_RNvXs7U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9PartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %.lr.ph23 ], [ false, %bb.ck ], [ true, %bb.cf ], [ false, %bb.ch ], [ false, %.split60 ], [ false, %.split59 ], [ false, %.split58 ], [ false, %.split ], [ false, %.lr.ph ]
  %i.pd = xor i1 %.sroa.0.0.shrunk.i, true
  ret i1 %i.pd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #1 !guid !37964 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37966)
  %i.a = load i64, ptr %0, align 8, !range !86, !alias.scope !37965, !noundef !54
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 68) ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !86, !alias.scope !37966, !noundef !54 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 68)
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 69
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) #55, !inline_history !37954
  br label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37968)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !37967, !noundef !54 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !37968, !noundef !54
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !37968, !nonnull !54, !noundef !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !37967, !nonnull !54, !noundef !54
  %bcmp.i7 = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.n, i64 %i.i), !noalias !37969
  %i.q = icmp eq i32 %bcmp.i7, 0
  br i1 %i.q, label %bb.f, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i32, ptr %i.r, align 8, !range !165, !alias.scope !37967, !noundef !54 ; 2 uses
  %.not.i8 = icmp eq i32 %i.s, 1114112
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8, !range !165, !alias.scope !37968, !noundef !54 ; 2 uses
  br i1 %.not.i8, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit9, label %.split

.split:                                           ; preds = %bb.f
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.v, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit9: ; preds = %bb.f
  %i.w = icmp eq i32 %i.u, 1114112
  br i1 %i.w, label %bb.v, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37971)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !37970, !noundef !54 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !37971, !noundef !54
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !37971, !nonnull !54, !noundef !54
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !37970, !nonnull !54, !noundef !54
  %bcmp.i4 = tail call i32 @bcmp(ptr nonnull %i.af, ptr nonnull %i.ad, i64 %i.y), !noalias !37972
  %i.ag = icmp eq i32 %bcmp.i4, 0
  br i1 %i.ag, label %bb.i, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load i32, ptr %i.ah, align 8, !range !165, !alias.scope !37970, !noundef !54 ; 2 uses
  %.not.i5 = icmp eq i32 %i.ai, 1114112
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !range !165, !alias.scope !37971, !noundef !54 ; 2 uses
  br i1 %.not.i5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = icmp eq i32 %i.ai, %i.ak
  br label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.ak, 1114112
  br label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !37965, !noundef !54 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !37966, !noundef !54
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.y, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i = load i64, ptr %i.as, align 8, !alias.scope !37965, !noundef !54 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val7.i = load i64, ptr %i.at, align 8, !alias.scope !37966, !noundef !54
  %i.au = icmp eq i64 %.val5.i, %.val7.i
  br i1 %i.au, label %bb.n, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val6.i = load ptr, ptr %i.av, align 8, !alias.scope !37966, !nonnull !54, !noundef !54
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.aw, align 8, !alias.scope !37965, !nonnull !54, !noundef !54
  %i.ax = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %.val.i, ptr noundef nonnull %.val6.i, i64 noundef %.val5.i), !noalias !37973
  br label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37975)
  %i.ba = load i64, ptr %i.ay, align 8, !range !84, !alias.scope !37974, !noundef !54 ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  %i.bc = add i64 %i.ba, -9223372036854775807
  %i.bd = select i1 %i.bb, i64 %i.bc, i64 0       ; 2 uses
  %i.be = load i64, ptr %i.az, align 8, !range !84, !alias.scope !37975, !noundef !54 ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  %i.bg = add i64 %i.be, -9223372036854775807
  %i.bh = select i1 %i.bf, i64 %i.bg, i64 0
  %i.bi = icmp eq i64 %i.bd, %i.bh
  br i1 %i.bi, label %bb.p, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bj = icmp eq i64 %i.bd, 0
  br i1 %i.bj, label %bb.q, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !37974, !noundef !54 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !37975, !noundef !54
  %i.bo = icmp eq i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.r, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !37975, !nonnull !54, !noundef !54
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !37974, !nonnull !54, !noundef !54
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bs, ptr nonnull %i.bq, i64 %i.bl), !noalias !37976
  %i.bt = icmp eq i32 %bcmp.i, 0
  br i1 %i.bt, label %bb.s, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = load i32, ptr %i.bu, align 8, !range !165, !alias.scope !37974, !noundef !54 ; 2 uses
  %.not.i2 = icmp eq i32 %i.bv, 1114112
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = load i32, ptr %i.bw, align 8, !range !165, !alias.scope !37975, !noundef !54 ; 2 uses
  br i1 %.not.i2, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = icmp eq i32 %i.bv, %i.bx
  br label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.s
  %i.bz = icmp eq i32 %i.bx, 1114112
  br label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.split, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit9
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !range !63, !alias.scope !37965, !noundef !54
  %.not.i = icmp eq i64 %i.cb, -9223372036854775808 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cd = load i64, ptr %i.cc, align 8, !range !63, !alias.scope !37966, !noundef !54
  %i.ce = icmp eq i64 %i.cd, -9223372036854775808 ; 2 uses
  %brmerge = or i1 %.not.i, %i.ce
  %.mux = and i1 %.not.i, %i.ce
  br i1 %brmerge, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !37965, !noundef !54 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !37966, !noundef !54
  %i.cj = icmp eq i64 %i.cg, %i.ci
  br i1 %i.cj, label %bb.x, label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !37966, !nonnull !54, !noundef !54
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !37965, !nonnull !54, !noundef !54
  %i.co = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cl, i64 noundef %i.cg), !noalias !37973, !inline_history !37954
  br label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !37966, !nonnull !54, !noundef !54
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !37965, !nonnull !54, !noundef !54
  %i.ct = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast9SqlOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cq, i64 noundef %i.ao), !noalias !37973, !inline_history !37954
  br label %_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs9c_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.v, %bb.d, %bb.e, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %.split, %bb.a, %bb.c, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit9, %bb.l, %bb.w, %bb.x, %bb.y
  %.sroa.0.0.shrunk.i = phi i1 [ %i.g, %bb.c ], [ %i.co, %bb.x ], [ %.mux, %bb.v ], [ false, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit9 ], [ false, %bb.d ], [ false, %bb.a ], [ false, %.split ], [ %i.ct, %bb.y ], [ false, %bb.w ], [ false, %bb.g ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.q ], [ %i.al, %bb.j ], [ false, %bb.h ], [ %i.am, %bb.k ], [ %i.ax, %bb.n ], [ %i.by, %bb.t ], [ false, %bb.r ], [ %i.bz, %bb.u ], [ true, %bb.p ], [ false, %bb.o ], [ false, %bb.e ]
  %i.cu = xor i1 %.sroa.0.0.shrunk.i, true
  ret i1 %i.cu
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #1 !guid !37990 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37994)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37993, !noundef !54 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !37994, !noundef !54
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !37994, !nonnull !54, !noundef !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !37993, !nonnull !54, !noundef !54
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %i.b), !noalias !37995
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %bb.c, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !range !165, !alias.scope !37993, !noundef !54 ; 2 uses
  %.not.i = icmp eq i32 %i.l, 1114112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !range !165, !alias.scope !37994, !noundef !54 ; 2 uses
  br i1 %.not.i, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.split

.split:                                           ; preds = %bb.c
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.p = icmp eq i32 %i.n, 1114112
  br i1 %i.p, label %bb.d, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.split, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r) #55, !inline_history !37996
  br i1 %i.s, label %bb.e, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !37991, !noundef !54 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !37992, !noundef !54
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !37992, !nonnull !54, !noundef !54
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !37991, !nonnull !54, !noundef !54
  %.not7.not = icmp eq i64 %i.u, 0
  br i1 %.not7.not, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph

bb.g:                                             ; preds = %_RNvXs4R_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15ColumnOptionDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.ac = add nuw i64 %.sroa.01.0.i8, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.u
  br i1 %exitcond.not, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.01.0.i8 = phi i64 [ %i.ac, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [744 x i8], ptr %i.ab, i64 %.sroa.01.0.i8 ; 5 uses
  %i.ae = getelementptr inbounds nuw [744 x i8], ptr %i.z, i64 %.sroa.01.0.i8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37998)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 680
  %i.ag = load i64, ptr %i.af, align 8, !range !63, !alias.scope !37997, !noundef !54
  %.not.i1 = icmp eq i64 %i.ag, -9223372036854775808
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 680
  %i.ai = load i64, ptr %i.ah, align 8, !range !63, !alias.scope !37998, !noundef !54
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808 ; 2 uses
  br i1 %.not.i1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  br i1 %i.aj, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.aj, label %_RNvXs4R_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15ColumnOptionDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38000)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 696
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !38001, !noundef !54 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 696
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !38002, !noundef !54
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.k, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 688
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !38002, !nonnull !54, !noundef !54
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 688
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !38001, !nonnull !54, !noundef !54
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.aq, i64 %i.al), !noalias !38003, !inline_history !37989
  %i.at = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.at, label %bb.l, label %_RNvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9ColumnDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 736
end_hunk_1
