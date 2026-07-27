inline.NumInlined: 7791
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.mp = xor i128 %i.mo, %i.mn
  %i.mq = trunc i128 %i.mp to i64
  store i64 %i.mq, ptr %i.b, align 8, !alias.scope !7838, !noalias !7807
  %i.mr = zext i1 %i.lq to i128
  store i128 %i.mr, ptr %1, align 16, !alias.scope !7838, !noalias !7807
  store i8 64, ptr %i.a, align 16, !alias.scope !7838, !noalias !7807
  br i1 %i.lq, label %bb.am, label %.thread326

.thread326:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i25
  %i.ms = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.mt = load ptr, ptr %i.ms, align 8, !alias.scope !7807, !noalias !7810, !nonnull !16, !noundef !16
  %i.mu = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.mv = load i64, ptr %i.mu, align 8, !alias.scope !7807, !noalias !7810, !noundef !16
  br label %._crit_edge591

bb.am:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i25, %bb.al
  %i.mw = phi ptr [ %i.lu, %bb.al ], [ %i.lp, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i25 ]
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.mw, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #53, !noalias !7807, !inline_history !7840
  %.pre280 = load i8, ptr %i.a, align 16, !alias.scope !7841, !noalias !7807 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !7807, !noalias !7810, !nonnull !16, !noundef !16 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !7807, !noalias !7810, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7850)
  %i.nb = icmp ugt i8 %.pre280, 64
  %.pre593 = load i128, ptr %1, align 16, !alias.scope !7841, !noalias !7807 ; 2 uses
  br i1 %i.nb, label %bb.an, label %._crit_edge591

._crit_edge591:                                   ; preds = %bb.am, %.thread326
  %i.nc = phi i128 [ 0, %.thread326 ], [ %.pre593, %bb.am ]
  %i.nd = phi i64 [ %i.mv, %.thread326 ], [ %i.na, %bb.am ] ; 2 uses
  %i.ne = phi ptr [ %i.mt, %.thread326 ], [ %i.my, %bb.am ]
  %i.nf = phi i8 [ 64, %.thread326 ], [ %.pre280, %bb.am ] ; 2 uses
  %i.ng = zext i64 %i.nd to i128
  %i.nh = zext nneg i8 %i.nf to i128
  %i.ni = shl nuw i128 %i.ng, %i.nh
  %i.nj = or i128 %i.ni, %i.nc
  %i.nk = add nuw i8 %i.nf, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i

bb.an:                                            ; preds = %.thread325, %bb.am
  %i.nl = phi i128 [ %i.ly, %.thread325 ], [ %.pre593, %bb.am ] ; 2 uses
  %i.nm = phi i64 [ %i.md, %.thread325 ], [ %i.na, %bb.am ] ; 2 uses
  %i.nn = phi ptr [ %i.mb, %.thread325 ], [ %i.my, %bb.am ]
  %i.no = trunc i128 %i.nl to i64
  %i.np = lshr i128 %i.nl, 64
  %i.nq = load i64, ptr %i.b, align 8, !alias.scope !7841, !noalias !7807, !noundef !16
  %i.nr = xor i64 %i.nq, %i.no
  %i.ns = load ptr, ptr %i.c, align 16, !alias.scope !7841, !noalias !7807, !nonnull !16, !align !128, !noundef !16
  %i.nt = load i64, ptr %i.ns, align 8, !noalias !7851, !noundef !16
  %i.nu = zext i64 %i.nr to i128
  %i.nv = zext i64 %i.nt to i128
  %i.nw = xor i128 %i.np, %i.nv
  %i.nx = mul nuw i128 %i.nw, %i.nu               ; 2 uses
  %i.ny = lshr i128 %i.nx, 64
  %i.nz = xor i128 %i.ny, %i.nx
  %i.oa = trunc i128 %i.nz to i64
  store i64 %i.oa, ptr %i.b, align 8, !alias.scope !7841, !noalias !7807
  %i.ob = zext i64 %i.nm to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i: ; preds = %bb.an, %._crit_edge591
  %i.oc = phi i64 [ %i.nm, %bb.an ], [ %i.nd, %._crit_edge591 ] ; 2 uses
  %i.od = phi ptr [ %i.nn, %bb.an ], [ %i.ne, %._crit_edge591 ] ; 2 uses
  %.sink.i4.i27 = phi i128 [ %i.ob, %bb.an ], [ %i.nj, %._crit_edge591 ] ; 2 uses
  %storemerge.i.i.i5.i28 = phi i8 [ 64, %bb.an ], [ %i.nk, %._crit_edge591 ] ; 2 uses
  store i128 %.sink.i4.i27, ptr %1, align 16, !alias.scope !7841, !noalias !7807
  store i8 %storemerge.i.i.i5.i28, ptr %i.a, align 16, !alias.scope !7841, !noalias !7807
  %.idx214 = shl nuw nsw i64 %i.oc, 7
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %.idx214
  %i.of = icmp eq i64 %i.oc, 0
  br i1 %i.of, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph202

.lr.ph202:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i, %_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0.i7.i201 = phi ptr [ %i.og, %_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.od, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i ] ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7.i201, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7855)
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i7.i201, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #53, !noalias !7807, !inline_history !7857
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7.i201, i64 112
  %i.oi = load i8, ptr %i.oh, align 16, !range !5886, !alias.scope !7852, !noalias !7858, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7859), !noalias !7807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7862), !noalias !7807
  %i.oj = load i8, ptr %i.a, align 16, !alias.scope !7865, !noalias !7866, !noundef !16 ; 4 uses
  %i.ok = icmp ugt i8 %i.oj, 120
  br i1 %i.ok, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i.thread: ; preds = %.lr.ph202
  %i.ol = load i128, ptr %1, align 16, !alias.scope !7865, !noalias !7866, !noundef !16 ; 2 uses
  %i.om = trunc i128 %i.ol to i64
  %i.on = lshr i128 %i.ol, 64
  %i.oo = load i64, ptr %i.b, align 8, !alias.scope !7865, !noalias !7866, !noundef !16
  %i.op = xor i64 %i.oo, %i.om
  %i.oq = load ptr, ptr %i.c, align 16, !alias.scope !7865, !noalias !7866, !nonnull !16, !align !128, !noundef !16
  %i.or = load i64, ptr %i.oq, align 8, !noalias !7867, !noundef !16
  %i.os = zext i64 %i.op to i128
  %i.ot = zext i64 %i.or to i128
  %i.ou = xor i128 %i.on, %i.ot
  %i.ov = mul nuw i128 %i.ou, %i.os               ; 2 uses
  %i.ow = lshr i128 %i.ov, 64
  %i.ox = xor i128 %i.ow, %i.ov
  %i.oy = trunc i128 %i.ox to i64
  store i64 %i.oy, ptr %i.b, align 8, !alias.scope !7865, !noalias !7866
  %i.oz = zext nneg i8 %i.oi to i128
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7.i201, i64 113
  %i.pb = load i8, ptr %i.pa, align 1, !range !5886, !alias.scope !7852, !noalias !7858, !noundef !16
  br label %bb.ao

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i: ; preds = %.lr.ph202
  %i.pc = zext nneg i8 %i.oi to i128
  %i.pd = zext nneg i8 %i.oj to i128
  %i.pe = shl nuw nsw i128 %i.pc, %i.pd
  %i.pf = load i128, ptr %1, align 16, !alias.scope !7865, !noalias !7866, !noundef !16
  %i.pg = or i128 %i.pf, %i.pe                    ; 4 uses
  store i128 %i.pg, ptr %1, align 16, !alias.scope !7865, !noalias !7866
  %i.ph = add nuw i8 %i.oj, 8                     ; 2 uses
  store i8 %i.ph, ptr %i.a, align 16, !alias.scope !7865, !noalias !7866
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i7.i201, i64 113
  %i.pj = load i8, ptr %i.pi, align 1, !range !5886, !alias.scope !7852, !noalias !7858, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7868), !noalias !7807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7871), !noalias !7807
  %i.pk = icmp samesign ugt i8 %i.oj, 112
  br i1 %i.pk, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i
  %i.pl = phi i128 [ %i.oz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i.thread ], [ %i.pg, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i ]
  %i.pm = phi i8 [ %i.pb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i.thread ], [ %i.pj, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i ]
  %storemerge.i.i1.i7889 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i.thread ], [ %i.ph, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i ] ; 2 uses
  %i.pn = zext nneg i8 %i.pm to i128
  %i.po = zext nneg i8 %storemerge.i.i1.i7889 to i128
  %i.pp = shl nuw nsw i128 %i.pn, %i.po
  %i.pq = or i128 %i.pp, %i.pl                    ; 2 uses
  store i128 %i.pq, ptr %1, align 16, !alias.scope !7874, !noalias !7866
  %i.pr = add nuw i8 %storemerge.i.i1.i7889, 8
  br label %_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ap:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.i
  %i.ps = trunc i128 %i.pg to i64
  %i.pt = lshr i128 %i.pg, 64
  %i.pu = load i64, ptr %i.b, align 8, !alias.scope !7874, !noalias !7866, !noundef !16
  %i.pv = xor i64 %i.pu, %i.ps
  %i.pw = load ptr, ptr %i.c, align 16, !alias.scope !7874, !noalias !7866, !nonnull !16, !align !128, !noundef !16
  %i.px = load i64, ptr %i.pw, align 8, !noalias !7875, !noundef !16
  %i.py = zext i64 %i.pv to i128
  %i.pz = zext i64 %i.px to i128
  %i.qa = xor i128 %i.pt, %i.pz
  %i.qb = mul nuw i128 %i.qa, %i.py               ; 2 uses
  %i.qc = lshr i128 %i.qb, 64
  %i.qd = xor i128 %i.qc, %i.qb
  %i.qe = trunc i128 %i.qd to i64
  store i64 %i.qe, ptr %i.b, align 8, !alias.scope !7874, !noalias !7866
  %i.qf = zext nneg i8 %i.pj to i128              ; 2 uses
  store i128 %i.qf, ptr %1, align 16, !alias.scope !7874, !noalias !7866
  br label %_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ao, %bb.ap
  %i.qg = phi i128 [ %i.pq, %bb.ao ], [ %i.qf, %bb.ap ]
  %storemerge.i.i.i80 = phi i8 [ %i.pr, %bb.ao ], [ 8, %bb.ap ] ; 2 uses
  store i8 %storemerge.i.i.i80, ptr %i.a, align 16, !alias.scope !7874, !noalias !7866
  %i.qh = icmp eq ptr %i.og, %i.oe
  br i1 %i.qh, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, label %.lr.ph202

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i
  %i.qi = phi i128 [ %.sink.i4.i27, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i ], [ %i.qg, %_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.qj = phi i8 [ %storemerge.i.i.i5.i28, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i ], [ %storemerge.i.i.i80, %_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.tr, i64 65
  %i.ql = load i8, ptr %i.qk, align 1, !range !6085, !alias.scope !7807, !noalias !7810, !noundef !16 ; 3 uses
  %i.qm = icmp ne i8 %i.ql, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7879)
  %i.qn = icmp ugt i8 %i.qj, 64
  br i1 %i.qn, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29: ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.qo = zext i1 %i.qm to i128
  %i.qp = zext nneg i8 %i.qj to i128
  %i.qq = shl nuw nsw i128 %i.qo, %i.qp
  %i.qr = or i128 %i.qq, %i.qi                    ; 3 uses
  store i128 %i.qr, ptr %1, align 16, !alias.scope !7882, !noalias !7807
  %i.qs = add nuw i8 %i.qj, 64
  store i8 %i.qs, ptr %i.a, align 16, !alias.scope !7882, !noalias !7807
  br i1 %i.qm, label %bb.aq, label %common.ret

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29.thread: ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.qt = trunc i128 %i.qi to i64
  %i.qu = lshr i128 %i.qi, 64
  %i.qv = load i64, ptr %i.b, align 8, !alias.scope !7882, !noalias !7807, !noundef !16
  %i.qw = xor i64 %i.qv, %i.qt
  %i.qx = load ptr, ptr %i.c, align 16, !alias.scope !7882, !noalias !7807, !nonnull !16, !align !128, !noundef !16
  %i.qy = load i64, ptr %i.qx, align 8, !noalias !7883, !noundef !16
  %i.qz = zext i64 %i.qw to i128
  %i.ra = zext i64 %i.qy to i128
  %i.rb = xor i128 %i.qu, %i.ra
  %i.rc = mul nuw i128 %i.rb, %i.qz               ; 2 uses
  %i.rd = lshr i128 %i.rc, 64
  %i.re = xor i128 %i.rd, %i.rc
  %i.rf = trunc i128 %i.re to i64
  store i64 %i.rf, ptr %i.b, align 8, !alias.scope !7882, !noalias !7807
  %i.rg = zext i1 %i.qm to i128                   ; 2 uses
  store i128 %i.rg, ptr %1, align 16, !alias.scope !7882, !noalias !7807
  store i8 64, ptr %i.a, align 16, !alias.scope !7882, !noalias !7807
  br i1 %i.qm, label %.thread, label %common.ret

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29.thread
  %i.rh = zext nneg i8 %i.ql to i128
  %i.ri = shl nuw nsw i128 %i.rh, 64
  %i.rj = or disjoint i128 %i.ri, %i.rg
  br label %_RINvXsS_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aq:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7890)
  %i.rk = trunc i128 %i.qr to i64
  %i.rl = lshr i128 %i.qr, 64
  %i.rm = load i64, ptr %i.b, align 8, !alias.scope !7893, !noalias !7807, !noundef !16
  %i.rn = xor i64 %i.rm, %i.rk
  %i.ro = load ptr, ptr %i.c, align 16, !alias.scope !7893, !noalias !7807, !nonnull !16, !align !128, !noundef !16
  %i.rp = load i64, ptr %i.ro, align 8, !noalias !7894, !noundef !16
  %i.rq = zext i64 %i.rn to i128
  %i.rr = zext i64 %i.rp to i128
  %i.rs = xor i128 %i.rl, %i.rr
  %i.rt = mul nuw i128 %i.rs, %i.rq               ; 2 uses
  %i.ru = lshr i128 %i.rt, 64
  %i.rv = xor i128 %i.ru, %i.rt
  %i.rw = trunc i128 %i.rv to i64
  store i64 %i.rw, ptr %i.b, align 8, !alias.scope !7893, !noalias !7807
  %i.rx = zext nneg i8 %i.ql to i128
  br label %_RINvXsS_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXsS_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aq, %.thread
  %.sink.i8.i = phi i128 [ %i.rx, %bb.aq ], [ %i.rj, %.thread ]
  %storemerge.i.i.i9.i = phi i8 [ 64, %bb.aq ], [ -128, %.thread ]
  store i128 %.sink.i8.i, ptr %1, align 16, !alias.scope !7893, !noalias !7807
  store i8 %storemerge.i.i.i9.i, ptr %i.a, align 16, !alias.scope !7893, !noalias !7807
  br label %common.ret

bb.ar:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ry = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !nonnull !16, !noundef !16 ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7895)
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 272
  %.val.i = load i64, ptr %i.sa, align 8, !range !15, !alias.scope !7895, !noalias !7898, !noundef !16 ; 2 uses
  %i.sb = getelementptr i8, ptr %i.rz, i64 280
  %.val1.i = load ptr, ptr %i.sb, align 8, !alias.scope !7895, !noalias !7898 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7903), !noalias !7895
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7906), !noalias !7895
  %i.sc = icmp ugt i8 %storemerge.i.i3, 64
  br i1 %i.sc, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sd = zext nneg i64 %.val.i to i128
  %i.se = shl nuw nsw i128 %i.sd, 64
  %i.sf = or i128 %i.se, %i.af
  br label %_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.at:                                            ; preds = %bb.ar
  %i.sg = trunc i128 %i.af to i64
  %i.sh = lshr i128 %i.af, 64
  %i.si = load i64, ptr %i.b, align 8, !alias.scope !7909, !noalias !7895, !noundef !16
  %i.sj = xor i64 %i.si, %i.sg
  %i.sk = load ptr, ptr %i.c, align 16, !alias.scope !7909, !noalias !7895, !nonnull !16, !align !128, !noundef !16
  %i.sl = load i64, ptr %i.sk, align 8, !noalias !7910, !noundef !16
  %i.sm = zext i64 %i.sj to i128
  %i.sn = zext i64 %i.sl to i128
  %i.so = xor i128 %i.sh, %i.sn
  %i.sp = mul nuw i128 %i.so, %i.sm               ; 2 uses
  %i.sq = lshr i128 %i.sp, 64
  %i.sr = xor i128 %i.sq, %i.sp
  %i.ss = trunc i128 %i.sr to i64
  store i64 %i.ss, ptr %i.b, align 8, !alias.scope !7909, !noalias !7895
  %i.st = zext nneg i64 %.val.i to i128
  br label %_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.as, %bb.at
  %.sink.i51 = phi i128 [ %i.st, %bb.at ], [ %i.sf, %bb.as ]
  %storemerge.i.i.i52 = phi i8 [ 64, %bb.at ], [ -128, %bb.as ]
  store i128 %.sink.i51, ptr %1, align 16, !alias.scope !7909, !noalias !7895
  store i8 %storemerge.i.i.i52, ptr %i.a, align 16, !alias.scope !7909, !noalias !7895
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !7895
  %i.su = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !noalias !7911, !nonnull !16, !noundef !16
  %i.sw = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8, !noalias !7911, !nonnull !16, !align !128, !noundef !16 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load i64, ptr %i.sy, align 8, !range !3085, !invariant.load !16, !noalias !7911
  %i.ta = add nsw i64 %i.sz, -1
  %i.tb = and i64 %i.ta, -16
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  %i.tf = load ptr, ptr %i.te, align 8, !invariant.load !16, !noalias !7911, !nonnull !16
  tail call void %i.tf(ptr noundef nonnull %i.td, ptr noundef nonnull align 16 dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @81) #53, !noalias !7895, !inline_history !7912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7916)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.rz, i64 184
  %i.th = load ptr, ptr %i.tg, align 8, !alias.scope !7913, !noalias !7916, !nonnull !16, !noundef !16 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.rz, i64 192
  %i.tj = load i64, ptr %i.ti, align 16, !alias.scope !7913, !noalias !7916, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7924)
  %i.tk = load i8, ptr %i.a, align 16, !alias.scope !7927, !noalias !7913, !noundef !16 ; 3 uses
  %i.tl = icmp ugt i8 %i.tk, 64
  br i1 %i.tl, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.tm = zext i64 %i.tj to i128
  %i.tn = zext nneg i8 %i.tk to i128
  %i.to = shl nuw i128 %i.tm, %i.tn
  %i.tp = load i128, ptr %1, align 16, !alias.scope !7927, !noalias !7913, !noundef !16
  %i.tq = or i128 %i.tp, %i.to
  %i.tr = add nuw i8 %i.tk, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i32

bb.av:                                            ; preds = %_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.ts = load i128, ptr %1, align 16, !alias.scope !7927, !noalias !7913, !noundef !16 ; 2 uses
  %i.tt = trunc i128 %i.ts to i64
  %i.tu = lshr i128 %i.ts, 64
  %i.tv = load i64, ptr %i.b, align 8, !alias.scope !7927, !noalias !7913, !noundef !16
  %i.tw = xor i64 %i.tv, %i.tt
  %i.tx = load ptr, ptr %i.c, align 16, !alias.scope !7927, !noalias !7913, !nonnull !16, !align !128, !noundef !16
  %i.ty = load i64, ptr %i.tx, align 8, !noalias !7928, !noundef !16
  %i.tz = zext i64 %i.tw to i128
  %i.ua = zext i64 %i.ty to i128
  %i.ub = xor i128 %i.tu, %i.ua
  %i.uc = mul nuw i128 %i.ub, %i.tz               ; 2 uses
  %i.ud = lshr i128 %i.uc, 64
  %i.ue = xor i128 %i.ud, %i.uc
  %i.uf = trunc i128 %i.ue to i64
  store i64 %i.uf, ptr %i.b, align 8, !alias.scope !7927, !noalias !7913
  %i.ug = zext i64 %i.tj to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i32

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i32: ; preds = %bb.av, %bb.au
  %.sink.i.i33 = phi i128 [ %i.ug, %bb.av ], [ %i.tq, %bb.au ]
  %storemerge.i.i.i.i34 = phi i8 [ 64, %bb.av ], [ %i.tr, %bb.au ] ; 2 uses
  store i128 %.sink.i.i33, ptr %1, align 16, !alias.scope !7927, !noalias !7913
  store i8 %storemerge.i.i.i.i34, ptr %i.a, align 16, !alias.scope !7927, !noalias !7913
  %.idx210 = mul nuw nsw i64 %i.tj, 112
  %i.uh = getelementptr inbounds nuw i8, ptr %i.th, i64 %.idx210
  %i.ui = icmp eq i64 %i.tj, 0
  br i1 %i.ui, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36, label %.lr.ph194

.lr.ph194:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i32, %.lr.ph194
  %.sroa.0.0.i.i35193 = phi ptr [ %i.uj, %.lr.ph194 ], [ %i.th, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i32 ] ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i35193, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i.i35193, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #53, !noalias !7913, !inline_history !7929
  %i.uk = icmp eq ptr %i.uj, %i.uh
  br i1 %i.uk, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36.loopexit, label %.lr.ph194

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36.loopexit: ; preds = %.lr.ph194
  %.pre275 = load i8, ptr %i.a, align 16, !alias.scope !7930, !noalias !7913
  br label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36

_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36: ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36.loopexit, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i32
  %i.ul = phi i8 [ %.pre275, %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36.loopexit ], [ %storemerge.i.i.i.i34, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i32 ] ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.rz, i64 208
  %i.un = load ptr, ptr %i.um, align 16, !alias.scope !7913, !noalias !7916, !nonnull !16, !noundef !16 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.rz, i64 216
  %i.up = load i64, ptr %i.uo, align 8, !alias.scope !7913, !noalias !7916, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7939)
  %i.uq = icmp ugt i8 %i.ul, 64
  br i1 %i.uq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36
  %i.ur = zext i64 %i.up to i128
  %i.us = zext nneg i8 %i.ul to i128
  %i.ut = shl nuw i128 %i.ur, %i.us
  %i.uu = load i128, ptr %1, align 16, !alias.scope !7930, !noalias !7913, !noundef !16
  %i.uv = or i128 %i.uu, %i.ut
  %i.uw = add nuw i8 %i.ul, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i37

bb.ax:                                            ; preds = %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i36
  %i.ux = load i128, ptr %1, align 16, !alias.scope !7930, !noalias !7913, !noundef !16 ; 2 uses
  %i.uy = trunc i128 %i.ux to i64
  %i.uz = lshr i128 %i.ux, 64
  %i.va = load i64, ptr %i.b, align 8, !alias.scope !7930, !noalias !7913, !noundef !16
  %i.vb = xor i64 %i.va, %i.uy
  %i.vc = load ptr, ptr %i.c, align 16, !alias.scope !7930, !noalias !7913, !nonnull !16, !align !128, !noundef !16
  %i.vd = load i64, ptr %i.vc, align 8, !noalias !7940, !noundef !16
  %i.ve = zext i64 %i.vb to i128
  %i.vf = zext i64 %i.vd to i128
  %i.vg = xor i128 %i.uz, %i.vf
  %i.vh = mul nuw i128 %i.vg, %i.ve               ; 2 uses
  %i.vi = lshr i128 %i.vh, 64
  %i.vj = xor i128 %i.vi, %i.vh
  %i.vk = trunc i128 %i.vj to i64
  store i64 %i.vk, ptr %i.b, align 8, !alias.scope !7930, !noalias !7913
  %i.vl = zext i64 %i.up to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i37

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i37: ; preds = %bb.ax, %bb.aw
  %.sink.i4.i38 = phi i128 [ %i.vl, %bb.ax ], [ %i.uv, %bb.aw ]
  %storemerge.i.i.i5.i39 = phi i8 [ 64, %bb.ax ], [ %i.uw, %bb.aw ] ; 2 uses
  store i128 %.sink.i4.i38, ptr %1, align 16, !alias.scope !7930, !noalias !7913
  store i8 %storemerge.i.i.i5.i39, ptr %i.a, align 16, !alias.scope !7930, !noalias !7913
  %.idx211 = mul nuw nsw i64 %i.up, 112
  %i.vm = getelementptr inbounds nuw i8, ptr %i.un, i64 %.idx211
  %i.vn = icmp eq i64 %i.up, 0
  br i1 %i.vn, label %_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit8.i, label %.lr.ph196

.lr.ph196:                                        ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i37, %.lr.ph196
end_hunk_0
