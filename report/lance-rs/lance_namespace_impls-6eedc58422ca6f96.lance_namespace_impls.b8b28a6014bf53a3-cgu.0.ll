Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !6499, !noundef !409 ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 0                    ; 2 uses
  br i1 %i.bm, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.preheader.i.i.i19

.preheader.i.i.i19:                               ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i17, %.preheader.i.i.i19
  %.sroa.04.0.i.i.i.i.i20 = phi i64 [ %i.bx, %.preheader.i.i.i19 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i17 ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i21 = phi i64 [ %i.bw, %.preheader.i.i.i19 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i17 ]
  %i.bn = getelementptr inbounds nuw [224 x i8], ptr %i.bj, i64 %.sroa.04.0.i.i.i.i.i20
  %i.bo = tail call fastcc noundef i64 @_RNvXs1j_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12DataFragmentNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.bn), !noalias !6500 ; 2 uses
  %i.bp = or i64 %i.bo, 1
  %i.bq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = xor i64 %i.bq, 63
  %i.bs = mul nuw nsw i64 %i.br, 9
  %i.bt = add nuw nsw i64 %i.bs, 73
  %i.bu = lshr i64 %i.bt, 6
  %i.bv = add i64 %i.bo, %.sroa.02.0.i.i.i.i.i21
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i20, 1 ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.bl
  br i1 %i.by, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.preheader.i.i.i19

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.preheader.i.i.i19, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i17
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i17 ], [ %i.bw, %.preheader.i.i.i19 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !6499, !nonnull !409, !noundef !409 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !6499, !noundef !409 ; 10 uses
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  br i1 %i.cd, label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i, label %.preheader.i2.i.i.preheader

.preheader.i2.i.i.preheader:                      ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %xtraiter758 = and i64 %i.cc, 1
  %i.ce = icmp eq i64 %i.cc, 1
  br i1 %i.ce, label %.preheader.i2.i.i.epil.preheader, label %.preheader.i2.i.i.preheader.new

.preheader.i2.i.i.preheader.new:                  ; preds = %.preheader.i2.i.i.preheader
  %unroll_iter762 = and i64 %i.cc, -2
  br label %.preheader.i2.i.i

.preheader.i2.i.i:                                ; preds = %.preheader.i2.i.i, %.preheader.i2.i.i.preheader.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.preheader.i2.i.i.preheader.new ], [ %i.cw, %.preheader.i2.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.preheader.i2.i.i.preheader.new ], [ %i.cv, %.preheader.i2.i.i ]
  %niter763 = phi i64 [ 0, %.preheader.i2.i.i.preheader.new ], [ %niter763.next.1, %.preheader.i2.i.i ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !6501, !noalias !6500, !noundef !409
  %i.cg = or i64 %.val.i.i.i.i, 1
  %i.ch = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = xor i64 %i.ch, 63
  %i.cj = mul nuw nsw i64 %i.ci, 9
  %i.ck = add nuw nsw i64 %i.cj, 73
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = add i64 %i.cl, %.sroa.02.0.i.i.i.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i.i.i.i.1 = load i64, ptr %i.co, align 8, !alias.scope !6501, !noalias !6500, !noundef !409
  %i.cp = or i64 %.val.i.i.i.i.1, 1
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = xor i64 %i.cq, 63
  %i.cs = mul nuw nsw i64 %i.cr, 9
  %i.ct = add nuw nsw i64 %i.cs, 73
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = add i64 %i.cu, %i.cm                    ; 3 uses
  %i.cw = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 2  ; 2 uses
  %niter763.next.1 = add nuw i64 %niter763, 2     ; 2 uses
  %niter763.ncmp.1 = icmp eq i64 %niter763.next.1, %unroll_iter762
  br i1 %niter763.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa, label %.preheader.i2.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa: ; preds = %.preheader.i2.i.i
  %lcmp.mod759.not = icmp eq i64 %xtraiter758, 0
  br i1 %lcmp.mod759.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.preheader.i2.i.i.epil.preheader

.preheader.i2.i.i.epil.preheader:                 ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa, %.preheader.i2.i.i.preheader
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i2.i.i.preheader ], [ %i.cw, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i2.i.i.preheader ], [ %i.cv, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa ]
  %lcmp.mod761 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod761)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i.i.epil.init
  %.val.i.i.i.i.epil = load i64, ptr %i.cx, align 8, !alias.scope !6501, !noalias !6500, !noundef !409
  %i.cy = or i64 %.val.i.i.i.i.epil, 1
  %i.cz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = xor i64 %i.cz, 63
  %i.db = mul nuw nsw i64 %i.da, 9
  %i.dc = add nuw nsw i64 %i.db, 73
  %i.dd = lshr i64 %i.dc, 6
  %i.de = add i64 %i.dd, %.sroa.02.0.i.i.i.i.epil.init
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa, %.preheader.i2.i.i.epil.preheader
  %.lcssa662 = phi i64 [ %i.cv, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa ], [ %i.de, %.preheader.i2.i.i.epil.preheader ] ; 2 uses
  %i.df = or i64 %.lcssa662, 1
  %i.dg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = xor i64 %i.dg, 63
  %i.di = mul nuw nsw i64 %i.dh, 9
  %i.dj = add nuw nsw i64 %i.di, 73
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = add i64 %.lcssa662, 1
  %i.dm = add i64 %i.dl, %i.dk
  br label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i

_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.dm, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !6499, !noundef !409 ; 9 uses
  %i.dp = icmp eq i64 %i.do, 0                    ; 2 uses
  br i1 %i.dp, label %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i
  %i.dq = icmp sgt i64 %i.do, -1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = or i64 %i.do, 1
  %i.ds = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.dr, i1 true)
  %i.dt = xor i64 %i.ds, 63
  %i.du = mul nuw nsw i64 %i.dt, 9
  %i.dv = add nuw nsw i64 %i.du, 73
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = add nuw i64 %i.do, 1
  %i.dy = add nuw i64 %i.dx, %i.dw
  br label %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i

_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i: ; preds = %bb.e, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i
  %.sroa.0.0.i.i = phi i64 [ %i.dy, %bb.e ], [ 0, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i ]
  %i.dz = add i64 %.sroa.0.0.i.i.i.i.i, %i.bl
  %i.ea = add i64 %i.dz, %.sroa.0.0.i.i.i
  %i.eb = add i64 %i.ea, %.sroa.0.0.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6478
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6503)
  %.idx.i.i22 = mul nuw nsw i64 %i.bl, 224
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i22
  br i1 %i.bm, label %._crit_edge.i.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i, %.lr.ph.i.i23
  %.sroa.0.09.i.i = phi ptr [ %i.ed, %.lr.ph.i.i23 ], [ %i.bj, %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.09.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6504
  %i.ee = icmp eq ptr %i.ed, %i.ec
  br i1 %i.ee, label %._crit_edge.i.i, label %.lr.ph.i.i23

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i23, %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6505)
  br i1 %i.cd, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6506)
  %.pre18.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !6507, !noalias !6505 ; 3 uses
  %.pre28.i.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6507, !noalias !6505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6508), !noalias !6505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6509), !noalias !6505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6510), !noalias !6505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6511), !noalias !6505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6512), !noalias !6505
  %i.ef = icmp eq i64 %.pre28.i.i.i, %.pre18.i.i.i
  br i1 %i.ef, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6513
  %i.eg = load i64, ptr %i.au, align 8, !alias.scope !6514, !noalias !6505, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i, %bb.f
  %.sink1.i6.i.i.i = phi i64 [ %i.eg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i ], [ %.pre18.i.i.i, %bb.f ] ; 3 uses
  %i.eh = icmp sgt i64 %.sink1.i6.i.i.i, -1
  tail call void @llvm.assume(i1 %i.eh), !noalias !6505
  %i.ei = load ptr, ptr %i.av, align 8, !alias.scope !6514, !noalias !6505, !nonnull !409, !noundef !409
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sink1.i6.i.i.i
  store i8 18, ptr %i.ej, align 1, !noalias !6515
  %i.ek = add nuw i64 %.sink1.i6.i.i.i, 1
  store i64 %i.ek, ptr %i.au, align 8, !alias.scope !6514, !noalias !6505
  %xtraiter765 = and i64 %i.cc, 1
  %i.el = icmp eq i64 %i.cc, 1
  br i1 %i.el, label %.epil.preheader764, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %unroll_iter769 = and i64 %i.cc, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new
  %.sroa.04.0.i.i.i1.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new ], [ %i.fd, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i2.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new ], [ %i.fc, %bb.g ]
  %niter770 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new ], [ %niter770.next.1, %bb.g ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i
  %.val.i.i.i3.i = load i64, ptr %i.em, align 8, !alias.scope !6505, !noalias !6516, !noundef !409
  %i.en = or i64 %.val.i.i.i3.i, 1
  %i.eo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = xor i64 %i.eo, 63
  %i.eq = mul nuw nsw i64 %i.ep, 9
  %i.er = add nuw nsw i64 %i.eq, 73
  %i.es = lshr i64 %i.er, 6
  %i.et = add i64 %i.es, %.sroa.02.0.i.i.i2.i
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.val.i.i.i3.i.1 = load i64, ptr %i.ev, align 8, !alias.scope !6505, !noalias !6516, !noundef !409
  %i.ew = or i64 %.val.i.i.i3.i.1, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = xor i64 %i.ex, 63
  %i.ez = mul nuw nsw i64 %i.ey, 9
  %i.fa = add nuw nsw i64 %i.ez, 73
  %i.fb = lshr i64 %i.fa, 6
  %i.fc = add i64 %i.fb, %i.et                    ; 3 uses
  %i.fd = add nuw nsw i64 %.sroa.04.0.i.i.i1.i, 2 ; 2 uses
  %niter770.next.1 = add i64 %niter770, 2         ; 2 uses
  %niter770.ncmp.1 = icmp eq i64 %niter770.next.1, %unroll_iter769
  br i1 %niter770.ncmp.1, label %.lr.ph.preheader.i.i.i.unr-lcssa, label %bb.g

.lr.ph.preheader.i.i.i.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod766.not = icmp eq i64 %xtraiter765, 0
  br i1 %lcmp.mod766.not, label %.lr.ph.preheader.i.i.i, label %.epil.preheader764

.epil.preheader764:                               ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.04.0.i.i.i1.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.fd, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i2.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.fc, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod768 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod768)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i.epil.init
  %.val.i.i.i3.i.epil = load i64, ptr %i.fe, align 8, !alias.scope !6505, !noalias !6516, !noundef !409
  %i.ff = or i64 %.val.i.i.i3.i.epil, 1
  %i.fg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ff, i1 true)
  %i.fh = xor i64 %i.fg, 63
  %i.fi = mul nuw nsw i64 %i.fh, 9
  %i.fj = add nuw nsw i64 %i.fi, 73
  %i.fk = lshr i64 %i.fj, 6
  %i.fl = add i64 %i.fk, %.sroa.02.0.i.i.i2.i.epil.init
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %.epil.preheader764
  %.lcssa661 = phi i64 [ %i.fc, %.lr.ph.preheader.i.i.i.unr-lcssa ], [ %i.fl, %.epil.preheader764 ]
  %.idx.i.i.i = shl nuw nsw i64 %i.cc, 3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa661, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6517
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i ], [ %i.ca, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 8 ; 2 uses
  %i.fo = load i64, ptr %.sroa.0.02.i.i.i, align 8, !alias.scope !6505, !noalias !6516, !noundef !409
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.fo, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6517
  %i.fp = icmp eq ptr %i.fn, %i.fm
  br i1 %i.fp, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i
  br i1 %i.dp, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !6504 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6519)
  %.pre18.i4.i.i = load i64, ptr %i.au, align 8, !alias.scope !6520 ; 3 uses
  %.pre28.i5.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6525)
  %i.fr = icmp eq i64 %.pre28.i5.i.i, %.pre18.i4.i.i
  br i1 %i.fr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i4.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6526
  %i.fs = load i64, ptr %i.au, align 8, !alias.scope !6527, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i.i, %bb.h
  %.sink1.i6.i6.i.i = phi i64 [ %i.fs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i.i ], [ %.pre18.i4.i.i, %bb.h ] ; 3 uses
  %i.ft = icmp sgt i64 %.sink1.i6.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = load ptr, ptr %i.av, align 8, !alias.scope !6527, !nonnull !409, !noundef !409
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sink1.i6.i6.i.i
  store i8 26, ptr %i.fv, align 1, !noalias !6528
  %i.fw = add nuw i64 %.sink1.i6.i6.i.i, 1
  store i64 %i.fw, ptr %i.au, align 8, !alias.scope !6527
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.do, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6504
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6532)
  %i.fx = load i64, ptr %i.au, align 8, !alias.scope !6533, !noundef !409 ; 3 uses
  %i.fy = load i64, ptr %1, align 8, !range !412, !alias.scope !6533, !noundef !409
  %i.fz = sub i64 %i.fy, %i.fx
  %i.ga = icmp ugt i64 %i.do, %i.fz
  br i1 %i.ga, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i4.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i4.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fx, i64 noundef range(i64 0, -9223372036854775808) %i.do, i64 noundef 1, i64 noundef 1), !noalias !6534
  %i.gb = load i64, ptr %i.au, align 8, !alias.scope !6535, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i4.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i
  %.sink11.i.i = phi i64 [ %i.gb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i4.i ], [ %i.fx, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i ] ; 3 uses
  %i.gc = icmp sgt i64 %.sink11.i.i, -1
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = load ptr, ptr %i.av, align 8, !alias.scope !6535, !nonnull !409, !noundef !409
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sink11.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %i.do, i1 false), !noalias !6536
  %i.gf = add nuw i64 %.sink11.i.i, %i.do
  store i64 %i.gf, ptr %i.au, align 8, !alias.scope !6535
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.i:                                             ; preds = %bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6539)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre18.i.i28 = load i64, ptr %i.gh, align 8, !alias.scope !6540 ; 3 uses
  %.pre28.i.i29 = load i64, ptr %1, align 8, !range !412, !alias.scope !6540 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6545)
  %i.gj = icmp eq i64 %.pre28.i.i29, %.pre18.i.i28
  br i1 %i.gj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i28, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6546
  %i.gk = load i64, ptr %i.gh, align 8, !alias.scope !6547, !noundef !409
  %.pre27.pre.i.i42 = load i64, ptr %1, align 8, !range !412, !alias.scope !6540
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41, %bb.i
  %.pre27.i.i31 = phi i64 [ %.pre27.pre.i.i42, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41 ], [ %.pre28.i.i29, %bb.i ] ; 2 uses
  %.sink1.i.i.i32 = phi i64 [ %i.gk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41 ], [ %.pre18.i.i28, %bb.i ] ; 3 uses
  %i.gl = icmp sgt i64 %.sink1.i.i.i32, -1
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = load ptr, ptr %i.gi, align 8, !alias.scope !6547, !nonnull !409, !noundef !409 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.sink1.i.i.i32
  store i8 -78, ptr %i.gn, align 1, !noalias !6548
  %i.go = add nuw i64 %.sink1.i.i.i32, 1          ; 3 uses
  store i64 %i.go, ptr %i.gh, align 8, !alias.scope !6547
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6553)
  %i.gp = icmp eq i64 %.pre27.i.i31, %i.go
  br i1 %i.gp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i31, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6554
  %i.gq = load i64, ptr %i.gh, align 8, !alias.scope !6555, !noundef !409
  %.pre.i40 = load ptr, ptr %i.gi, align 8, !alias.scope !6555
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30
  %i.gr = phi ptr [ %.pre.i40, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39 ], [ %i.gm, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30 ]
  %.sink1.i6.i.i34 = phi i64 [ %i.gq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39 ], [ %i.go, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30 ] ; 3 uses
  %i.gs = icmp sgt i64 %.sink1.i6.i.i34, -1
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink1.i6.i.i34
  store i8 6, ptr %i.gt, align 1, !noalias !6556
  %i.gu = add nuw i64 %.sink1.i6.i.i34, 1
  store i64 %i.gu, ptr %i.gh, align 8, !alias.scope !6555
  %i.gv = tail call fastcc noundef i64 @_RNvXsC_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_9OverwriteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.gg), !noalias !6538
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6537
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6557)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !6558, !nonnull !409, !noundef !409 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !6558, !noundef !409 ; 2 uses
  %.idx.i.i35 = mul nuw nsw i64 %i.gz, 224
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx.i.i35
  %i.hb = icmp eq i64 %i.gz, 0
  br i1 %i.hb, label %._crit_edge.i.i37, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33, %.lr.ph.i.i36
  %.sroa.0.011.i.i = phi ptr [ %i.hc, %.lr.ph.i.i36 ], [ %i.gx, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.011.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6558
  %i.hd = icmp eq ptr %i.hc, %i.ha
  br i1 %i.hd, label %._crit_edge.i.i37, label %.lr.ph.i.i36

._crit_edge.i.i37:                                ; preds = %.lr.ph.i.i36, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !6558, !nonnull !409, !noundef !409 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !6558, !noundef !409 ; 2 uses
  %.idx20.i.i = mul nuw nsw i64 %i.hh, 176
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx20.i.i
  %i.hj = icmp eq i64 %i.hh, 0
  br i1 %i.hj, label %._crit_edge15.i.i, label %.lr.ph14.i.i

.lr.ph14.i.i:                                     ; preds = %._crit_edge.i.i37, %.lr.ph14.i.i
  %.sroa.02.012.i.i = phi ptr [ %i.hk, %.lr.ph14.i.i ], [ %i.hf, %._crit_edge.i.i37 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i, i64 176 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.012.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6558
  %i.hl = icmp eq ptr %i.hk, %i.hi
  br i1 %i.hl, label %._crit_edge15.i.i, label %.lr.ph14.i.i

._crit_edge15.i.i:                                ; preds = %.lr.ph14.i.i, %._crit_edge.i.i37
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i38 = load ptr, ptr %i.hm, align 8, !alias.scope !6558
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val8.i.i = load i64, ptr %i.hn, align 8, !alias.scope !6559, !noundef !409
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VechEB1r_INvNtB4_6string6encodeB1r_ENvB1Q_11encoded_lenINvNtB4_5bytes6encodeB1r_B1r_EINvB2A_11encoded_lenB1r_EECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 3, ptr %.val.i.i38, i64 %.val8.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6558
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val9.i.i = load ptr, ptr %i.ho, align 8, !alias.scope !6558
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val10.i.i = load i64, ptr %i.hp, align 8, !alias.scope !6560, !noundef !409
end_hunk_0
begin_hunk_1_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  tail call void @llvm.assume(i1 %i.sk)
  %i.sl = load ptr, ptr %i.sh, align 8, !alias.scope !6734, !nonnull !409, !noundef !409 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.sink1.i.i.i114
  store i8 -38, ptr %i.sm, align 1, !noalias !6734
  %i.sn = add nuw i64 %.sink1.i.i.i114, 1         ; 3 uses
  store i64 %i.sn, ptr %i.sg, align 8, !alias.scope !6734
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6739)
  %i.so = icmp eq i64 %.pre27.i.i113, %i.sn
  br i1 %i.so, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i123, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i115, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i123: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i112
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i113, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6740
  %i.sp = load i64, ptr %i.sg, align 8, !alias.scope !6741, !noundef !409
  %.pre.i124 = load ptr, ptr %i.sh, align 8, !alias.scope !6741
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i115

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i115: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i123, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i112
  %i.sq = phi ptr [ %.pre.i124, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i123 ], [ %i.sl, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i112 ]
  %.sink1.i6.i.i116 = phi i64 [ %i.sp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i123 ], [ %i.sn, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i112 ] ; 3 uses
  %i.sr = icmp sgt i64 %.sink1.i6.i.i116, -1
  tail call void @llvm.assume(i1 %i.sr)
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 %.sink1.i6.i.i116
  store i8 6, ptr %i.ss, align 1, !noalias !6741
  %i.st = add nuw i64 %.sink1.i6.i.i116, 1
  store i64 %i.st, ptr %i.sg, align 8, !alias.scope !6741
  %i.su = icmp eq i32 %.val3, 0
  br i1 %i.su, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.y

bb.y:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i115
  %i.sv = or i32 %.val3, 1
  %i.sw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.sv, i1 true)
  %i.sx = xor i32 %i.sw, 31
  %i.sy = mul nuw nsw i32 %i.sx, 9
  %i.sz = add nuw nsw i32 %i.sy, 73
  %i.ta = lshr i32 %i.sz, 6
  %narrow.i.i.i = add nuw nsw i32 %i.ta, 1
  %i.tb = zext nneg i32 %narrow.i.i.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.tb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6743)
  %.pre18.i.i.i117 = load i64, ptr %i.sg, align 8, !alias.scope !6744 ; 3 uses
  %.pre28.i.i.i118 = load i64, ptr %1, align 8, !range !412, !alias.scope !6744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6749)
  %i.tc = icmp eq i64 %.pre28.i.i.i118, %.pre18.i.i.i117
  br i1 %i.tc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i122, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i119, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i122: ; preds = %bb.y
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i117, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6750
  %i.td = load i64, ptr %i.sg, align 8, !alias.scope !6751, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i119

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i119: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i122, %bb.y
  %.sink1.i6.i.i.i120 = phi i64 [ %i.td, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i122 ], [ %.pre18.i.i.i117, %bb.y ] ; 3 uses
  %i.te = icmp sgt i64 %.sink1.i6.i.i.i120, -1
  tail call void @llvm.assume(i1 %i.te)
  %i.tf = load ptr, ptr %i.sh, align 8, !alias.scope !6751, !nonnull !409, !noundef !409
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.sink1.i6.i.i.i120
  store i8 8, ptr %i.tg, align 1, !noalias !6751
  %i.th = add nuw i64 %.sink1.i6.i.i.i120, 1
  store i64 %i.th, ptr %i.sg, align 8, !alias.scope !6751
  %i.ti = zext i32 %.val3 to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i115, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i119
  %.sink.i121 = phi i64 [ %i.ti, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i119 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i115 ]
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.sink.i121, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6754)
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 78 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 27 uses
  %.pre18.i.i127 = load i64, ptr %i.tj, align 8, !alias.scope !6755 ; 3 uses
  %.pre28.i.i128 = load i64, ptr %1, align 8, !range !412, !alias.scope !6755 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6760)
  %i.tl = icmp eq i64 %.pre28.i.i128, %.pre18.i.i127
  br i1 %i.tl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i168, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i129, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i168: ; preds = %bb.z
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i127, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6761
  %i.tm = load i64, ptr %i.tj, align 8, !alias.scope !6762, !noundef !409
  %.pre27.pre.i.i169 = load i64, ptr %1, align 8, !range !412, !alias.scope !6755
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i129

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i129: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i168, %bb.z
  %.pre27.i.i130 = phi i64 [ %.pre27.pre.i.i169, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i168 ], [ %.pre28.i.i128, %bb.z ] ; 2 uses
  %.sink1.i.i.i131 = phi i64 [ %i.tm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i168 ], [ %.pre18.i.i127, %bb.z ] ; 3 uses
  %i.tn = icmp sgt i64 %.sink1.i.i.i131, -1
  tail call void @llvm.assume(i1 %i.tn)
  %i.to = load ptr, ptr %i.tk, align 8, !alias.scope !6762, !nonnull !409, !noundef !409
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %.sink1.i.i.i131
  store i8 -30, ptr %i.tp, align 1, !noalias !6763
  %i.tq = add nuw i64 %.sink1.i.i.i131, 1         ; 3 uses
  store i64 %i.tq, ptr %i.tj, align 8, !alias.scope !6762
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6768)
  %i.tr = icmp eq i64 %.pre27.i.i130, %i.tq
  br i1 %i.tr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i167, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i132, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i167: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i129
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i130, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6769
  %i.ts = load i64, ptr %i.tj, align 8, !alias.scope !6770, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i132

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i132: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i167, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i129
  %.sink1.i6.i.i133 = phi i64 [ %i.ts, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i167 ], [ %i.tq, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i129 ] ; 3 uses
  %i.tt = icmp sgt i64 %.sink1.i6.i.i133, -1
  tail call void @llvm.assume(i1 %i.tt)
  %i.tu = load ptr, ptr %i.tk, align 8, !alias.scope !6770, !nonnull !409, !noundef !409
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %.sink1.i6.i.i133
  store i8 6, ptr %i.tv, align 1, !noalias !6771
  %i.tw = add nuw i64 %.sink1.i6.i.i133, 1
  store i64 %i.tw, ptr %i.tj, align 8, !alias.scope !6770
  %i.tx = tail call fastcc noundef i64 @_RNvXs21_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_6UpdateNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.tx, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6773)
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !6774, !nonnull !409, !noundef !409 ; 5 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ub = load i64, ptr %i.ua, align 8, !alias.scope !6774, !noundef !409 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6775)
  %i.uc = icmp eq i64 %i.ub, 0
  br i1 %i.uc, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i145, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6776)
  %.pre18.i.i.i134 = load i64, ptr %i.tj, align 8, !alias.scope !6777, !noalias !6775 ; 3 uses
  %.pre28.i.i.i135 = load i64, ptr %1, align 8, !range !412, !alias.scope !6777, !noalias !6775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6778), !noalias !6775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6779), !noalias !6775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6780), !noalias !6775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6781), !noalias !6775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6782), !noalias !6775
  %i.ud = icmp eq i64 %.pre28.i.i.i135, %.pre18.i.i.i134
  br i1 %i.ud, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i166, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i166: ; preds = %bb.aa
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i134, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6783
  %i.ue = load i64, ptr %i.tj, align 8, !alias.scope !6784, !noalias !6775, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i166, %bb.aa
  %.sink1.i6.i.i.i137 = phi i64 [ %i.ue, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i166 ], [ %.pre18.i.i.i134, %bb.aa ] ; 3 uses
  %i.uf = icmp sgt i64 %.sink1.i6.i.i.i137, -1
  tail call void @llvm.assume(i1 %i.uf), !noalias !6775
  %i.ug = load ptr, ptr %i.tk, align 8, !alias.scope !6784, !noalias !6775, !nonnull !409, !noundef !409
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.sink1.i6.i.i.i137
  store i8 10, ptr %i.uh, align 1, !noalias !6785
  %i.ui = add nuw i64 %.sink1.i6.i.i.i137, 1
  store i64 %i.ui, ptr %i.tj, align 8, !alias.scope !6784, !noalias !6775
  %xtraiter = and i64 %i.ub, 1
  %i.uj = icmp eq i64 %i.ub, 1
  br i1 %i.uj, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136
  %unroll_iter = and i64 %i.ub, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136.new
  %.sroa.04.0.i.i.i.i138 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136.new ], [ %i.vb, %bb.ab ] ; 3 uses
  %.sroa.02.0.i.i.i.i139 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136.new ], [ %i.va, %bb.ab ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136.new ], [ %niter.next.1, %bb.ab ]
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i138
  %.val.i.i.i.i140 = load i64, ptr %i.uk, align 8, !alias.scope !6775, !noalias !6774, !noundef !409
  %i.ul = or i64 %.val.i.i.i.i140, 1
  %i.um = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ul, i1 true)
  %i.un = xor i64 %i.um, 63
  %i.uo = mul nuw nsw i64 %i.un, 9
  %i.up = add nuw nsw i64 %i.uo, 73
  %i.uq = lshr i64 %i.up, 6
  %i.ur = add i64 %i.uq, %.sroa.02.0.i.i.i.i139
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i138
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %.val.i.i.i.i140.1 = load i64, ptr %i.ut, align 8, !alias.scope !6775, !noalias !6774, !noundef !409
  %i.uu = or i64 %.val.i.i.i.i140.1, 1
  %i.uv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.uu, i1 true)
  %i.uw = xor i64 %i.uv, 63
  %i.ux = mul nuw nsw i64 %i.uw, 9
  %i.uy = add nuw nsw i64 %i.ux, 73
  %i.uz = lshr i64 %i.uy, 6
  %i.va = add i64 %i.uz, %i.ur                    ; 3 uses
  %i.vb = add nuw nsw i64 %.sroa.04.0.i.i.i.i138, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.i141.unr-lcssa, label %bb.ab

.lr.ph.preheader.i.i.i141.unr-lcssa:              ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i.i141, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.i141.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136
  %.sroa.04.0.i.i.i.i138.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136 ], [ %i.vb, %.lr.ph.preheader.i.i.i141.unr-lcssa ]
  %.sroa.02.0.i.i.i.i139.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i136 ], [ %i.va, %.lr.ph.preheader.i.i.i141.unr-lcssa ]
  %lcmp.mod704 = trunc i64 %i.ub to i1
  tail call void @llvm.assume(i1 %lcmp.mod704)
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i138.epil.init
  %.val.i.i.i.i140.epil = load i64, ptr %i.vc, align 8, !alias.scope !6775, !noalias !6774, !noundef !409
  %i.vd = or i64 %.val.i.i.i.i140.epil, 1
  %i.ve = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.vd, i1 true)
  %i.vf = xor i64 %i.ve, 63
  %i.vg = mul nuw nsw i64 %i.vf, 9
  %i.vh = add nuw nsw i64 %i.vg, 73
  %i.vi = lshr i64 %i.vh, 6
  %i.vj = add i64 %i.vi, %.sroa.02.0.i.i.i.i139.epil.init
  br label %.lr.ph.preheader.i.i.i141

.lr.ph.preheader.i.i.i141:                        ; preds = %.lr.ph.preheader.i.i.i141.unr-lcssa, %.epil.preheader
  %.lcssa684 = phi i64 [ %i.va, %.lr.ph.preheader.i.i.i141.unr-lcssa ], [ %i.vj, %.epil.preheader ]
  %.idx.i.i.i142 = shl nuw nsw i64 %i.ub, 3
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.idx.i.i.i142
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa684, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6786
  br label %.lr.ph.i.i.i143

.lr.ph.i.i.i143:                                  ; preds = %.lr.ph.i.i.i143, %.lr.ph.preheader.i.i.i141
  %.sroa.0.02.i.i.i144 = phi ptr [ %i.vl, %.lr.ph.i.i.i143 ], [ %i.tz, %.lr.ph.preheader.i.i.i141 ] ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i144, i64 8 ; 2 uses
  %i.vm = load i64, ptr %.sroa.0.02.i.i.i144, align 8, !alias.scope !6775, !noalias !6774, !noundef !409
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.vm, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6786
  %i.vn = icmp eq ptr %i.vl, %i.vk
  br i1 %i.vn, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i145, label %.lr.ph.i.i.i143

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i145: ; preds = %.lr.ph.i.i.i143, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i132
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vp = load ptr, ptr %i.vo, align 8, !alias.scope !6774, !nonnull !409, !noundef !409 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !6774, !noundef !409 ; 2 uses
  %.idx.i.i146 = mul nuw nsw i64 %i.vr, 224
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx.i.i146
  %i.vt = icmp eq i64 %i.vr, 0
  br i1 %i.vt, label %._crit_edge.i.i148, label %.lr.ph.i.i147

.lr.ph.i.i147:                                    ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i145, %.lr.ph.i.i147
  %.sroa.0.0113.i.i = phi ptr [ %i.vu, %.lr.ph.i.i147 ], [ %i.vp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i145 ] ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.0113.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.0113.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  %i.vv = icmp eq ptr %i.vu, %i.vs
  br i1 %i.vv, label %._crit_edge.i.i148, label %.lr.ph.i.i147

._crit_edge.i.i148:                               ; preds = %.lr.ph.i.i147, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i145
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vx = load ptr, ptr %i.vw, align 8, !alias.scope !6774, !nonnull !409, !noundef !409 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vz = load i64, ptr %i.vy, align 8, !alias.scope !6774, !noundef !409 ; 2 uses
  %.idx121.i.i = mul nuw nsw i64 %i.vz, 224
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.idx121.i.i
  %i.wb = icmp eq i64 %i.vz, 0
  br i1 %i.wb, label %._crit_edge117.i.i, label %.lr.ph116.i.i

.lr.ph116.i.i:                                    ; preds = %._crit_edge.i.i148, %.lr.ph116.i.i
  %.sroa.02.0114.i.i = phi ptr [ %i.wc, %.lr.ph116.i.i ], [ %i.vx, %._crit_edge.i.i148 ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.02.0114.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.02.0114.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  %i.wd = icmp eq ptr %i.wc, %i.wa
  br i1 %i.wd, label %._crit_edge117.i.i, label %.lr.ph116.i.i

._crit_edge117.i.i:                               ; preds = %.lr.ph116.i.i, %._crit_edge.i.i148
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.wf = load ptr, ptr %i.we, align 8, !alias.scope !6774, !nonnull !409, !noundef !409 ; 5 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.wh = load i64, ptr %i.wg, align 8, !alias.scope !6774, !noundef !409 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6787)
  %i.wi = icmp eq i64 %i.wh, 0
  br i1 %i.wi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge117.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6788)
  %.pre18.i86.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6789, !noalias !6787 ; 3 uses
  %.pre28.i87.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6789, !noalias !6787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6790), !noalias !6787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6791), !noalias !6787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6792), !noalias !6787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6793), !noalias !6787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6794), !noalias !6787
  %i.wj = icmp eq i64 %.pre28.i87.i.i, %.pre18.i86.i.i
  br i1 %i.wj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i89.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i89.i.i: ; preds = %bb.ac
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i86.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6795
  %i.wk = load i64, ptr %i.tj, align 8, !alias.scope !6796, !noalias !6787, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i89.i.i, %bb.ac
  %.sink1.i6.i88.i.i = phi i64 [ %i.wk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i89.i.i ], [ %.pre18.i86.i.i, %bb.ac ] ; 3 uses
  %i.wl = icmp sgt i64 %.sink1.i6.i88.i.i, -1
  tail call void @llvm.assume(i1 %i.wl), !noalias !6787
  %i.wm = load ptr, ptr %i.tk, align 8, !alias.scope !6796, !noalias !6787, !nonnull !409, !noundef !409
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 %.sink1.i6.i88.i.i
  store i8 34, ptr %i.wn, align 1, !noalias !6797
  %i.wo = add nuw i64 %.sink1.i6.i88.i.i, 1
  store i64 %i.wo, ptr %i.tj, align 8, !alias.scope !6796, !noalias !6787
  %xtraiter706 = and i64 %i.wh, 1
  %i.wp = icmp eq i64 %i.wh, 1
  br i1 %i.wp, label %.epil.preheader705, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i
  %unroll_iter710 = and i64 %i.wh, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new
  %.sroa.04.0.i.i12.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new ], [ %i.xj, %bb.ad ] ; 3 uses
  %.sroa.02.0.i.i13.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new ], [ %i.xi, %bb.ad ]
  %niter711 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new ], [ %niter711.next.1, %bb.ad ]
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.sroa.04.0.i.i12.i.i
  %.val.i.i14.i.i = load i32, ptr %i.wq, align 4, !alias.scope !6787, !noalias !6774, !noundef !409
  %i.wr = or i32 %.val.i.i14.i.i, 1
  %i.ws = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.wr, i1 true)
  %i.wt = xor i32 %i.ws, 31
  %i.wu = mul nuw nsw i32 %i.wt, 9
  %i.wv = add nuw nsw i32 %i.wu, 73
  %i.ww = lshr i32 %i.wv, 6
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = add i64 %.sroa.02.0.i.i13.i.i, %i.wx
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.sroa.04.0.i.i12.i.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %.val.i.i14.i.i.1 = load i32, ptr %i.xa, align 4, !alias.scope !6787, !noalias !6774, !noundef !409
  %i.xb = or i32 %.val.i.i14.i.i.1, 1
  %i.xc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xb, i1 true)
  %i.xd = xor i32 %i.xc, 31
  %i.xe = mul nuw nsw i32 %i.xd, 9
  %i.xf = add nuw nsw i32 %i.xe, 73
  %i.xg = lshr i32 %i.xf, 6
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = add i64 %i.wy, %i.xh                    ; 3 uses
  %i.xj = add nuw nsw i64 %.sroa.04.0.i.i12.i.i, 2 ; 2 uses
  %niter711.next.1 = add i64 %niter711, 2         ; 2 uses
  %niter711.ncmp.1 = icmp eq i64 %niter711.next.1, %unroll_iter710
  br i1 %niter711.ncmp.1, label %.lr.ph.preheader.i15.i.i.unr-lcssa, label %bb.ad

.lr.ph.preheader.i15.i.i.unr-lcssa:               ; preds = %bb.ad
  %lcmp.mod707.not = icmp eq i64 %xtraiter706, 0
  br i1 %lcmp.mod707.not, label %.lr.ph.preheader.i15.i.i, label %.epil.preheader705

.epil.preheader705:                               ; preds = %.lr.ph.preheader.i15.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i
  %.sroa.04.0.i.i12.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i ], [ %i.xj, %.lr.ph.preheader.i15.i.i.unr-lcssa ]
  %.sroa.02.0.i.i13.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i ], [ %i.xi, %.lr.ph.preheader.i15.i.i.unr-lcssa ]
  %lcmp.mod709 = trunc i64 %i.wh to i1
  tail call void @llvm.assume(i1 %lcmp.mod709)
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.sroa.04.0.i.i12.i.i.epil.init
  %.val.i.i14.i.i.epil = load i32, ptr %i.xk, align 4, !alias.scope !6787, !noalias !6774, !noundef !409
  %i.xl = or i32 %.val.i.i14.i.i.epil, 1
  %i.xm = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xl, i1 true)
  %i.xn = xor i32 %i.xm, 31
  %i.xo = mul nuw nsw i32 %i.xn, 9
  %i.xp = add nuw nsw i32 %i.xo, 73
  %i.xq = lshr i32 %i.xp, 6
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = add i64 %.sroa.02.0.i.i13.i.i.epil.init, %i.xr
  br label %.lr.ph.preheader.i15.i.i

.lr.ph.preheader.i15.i.i:                         ; preds = %.lr.ph.preheader.i15.i.i.unr-lcssa, %.epil.preheader705
  %.lcssa683 = phi i64 [ %i.xi, %.lr.ph.preheader.i15.i.i.unr-lcssa ], [ %i.xs, %.epil.preheader705 ]
  %.idx.i16.i.i = shl nuw nsw i64 %i.wh, 2
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.idx.i16.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa683, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6798
  br label %.lr.ph.i17.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.preheader.i15.i.i
  %.sroa.0.02.i18.i.i = phi ptr [ %i.xu, %.lr.ph.i17.i.i ], [ %i.wf, %.lr.ph.preheader.i15.i.i ] ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i18.i.i, i64 4 ; 2 uses
  %i.xv = load i32, ptr %.sroa.0.02.i18.i.i, align 4, !alias.scope !6787, !noalias !6774, !noundef !409
  %i.xw = zext i32 %i.xv to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.xw, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6798
  %i.xx = icmp eq ptr %i.xu, %i.xt
  br i1 %i.xx, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i17.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.lr.ph.i17.i.i, %._crit_edge117.i.i
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.xz = load ptr, ptr %i.xy, align 8, !alias.scope !6774, !nonnull !409, !noundef !409 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.yb = load i64, ptr %i.ya, align 8, !alias.scope !6774, !noundef !409 ; 2 uses
  %.idx122.i.i = shl nuw nsw i64 %i.yb, 5
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.idx122.i.i
  %i.yd = icmp eq i64 %i.yb, 0
  br i1 %i.yd, label %._crit_edge120.i.i, label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %.lr.ph119.i.i
  %.sroa.05.0118.i.i = phi ptr [ %i.ye, %.lr.ph119.i.i ], [ %i.xz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.05.0118.i.i, i64 32 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.05.0118.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  %i.yf = icmp eq ptr %i.ye, %i.yc
  br i1 %i.yf, label %._crit_edge120.i.i, label %.lr.ph119.i.i

._crit_edge120.i.i:                               ; preds = %.lr.ph119.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.yh = load ptr, ptr %i.yg, align 8, !alias.scope !6774, !nonnull !409, !noundef !409 ; 5 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !6774, !noundef !409 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6799)
  %i.yk = icmp eq i64 %i.yj, 0
  br i1 %i.yk, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge120.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6800)
  %.pre18.i91.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6801, !noalias !6799 ; 3 uses
  %.pre28.i92.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6801, !noalias !6799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6802), !noalias !6799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6803), !noalias !6799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6804), !noalias !6799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6805), !noalias !6799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6806), !noalias !6799
  %i.yl = icmp eq i64 %.pre28.i92.i.i, %.pre18.i91.i.i
  br i1 %i.yl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i94.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i94.i.i: ; preds = %bb.ae
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i91.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6807
  %i.ym = load i64, ptr %i.tj, align 8, !alias.scope !6808, !noalias !6799, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i94.i.i, %bb.ae
  %.sink1.i6.i93.i.i = phi i64 [ %i.ym, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i94.i.i ], [ %.pre18.i91.i.i, %bb.ae ] ; 3 uses
  %i.yn = icmp sgt i64 %.sink1.i6.i93.i.i, -1
  tail call void @llvm.assume(i1 %i.yn), !noalias !6799
  %i.yo = load ptr, ptr %i.tk, align 8, !alias.scope !6808, !noalias !6799, !nonnull !409, !noundef !409
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 %.sink1.i6.i93.i.i
  store i8 50, ptr %i.yp, align 1, !noalias !6809
  %i.yq = add nuw i64 %.sink1.i6.i93.i.i, 1
  store i64 %i.yq, ptr %i.tj, align 8, !alias.scope !6808, !noalias !6799
  %xtraiter713 = and i64 %i.yj, 1
  %i.yr = icmp eq i64 %i.yj, 1
  br i1 %i.yr, label %.epil.preheader712, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i
  %unroll_iter717 = and i64 %i.yj, -2
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new
  %.sroa.04.0.i.i19.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new ], [ %i.zl, %bb.af ] ; 3 uses
  %.sroa.02.0.i.i20.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new ], [ %i.zk, %bb.af ]
  %niter718 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new ], [ %niter718.next.1, %bb.af ]
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.sroa.04.0.i.i19.i.i
  %.val.i.i21.i.i = load i32, ptr %i.ys, align 4, !alias.scope !6799, !noalias !6774, !noundef !409
  %i.yt = or i32 %.val.i.i21.i.i, 1
  %i.yu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.yt, i1 true)
  %i.yv = xor i32 %i.yu, 31
  %i.yw = mul nuw nsw i32 %i.yv, 9
  %i.yx = add nuw nsw i32 %i.yw, 73
  %i.yy = lshr i32 %i.yx, 6
  %i.yz = zext nneg i32 %i.yy to i64
  %i.za = add i64 %.sroa.02.0.i.i20.i.i, %i.yz
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.sroa.04.0.i.i19.i.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %.val.i.i21.i.i.1 = load i32, ptr %i.zc, align 4, !alias.scope !6799, !noalias !6774, !noundef !409
  %i.zd = or i32 %.val.i.i21.i.i.1, 1
  %i.ze = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.zd, i1 true)
  %i.zf = xor i32 %i.ze, 31
  %i.zg = mul nuw nsw i32 %i.zf, 9
  %i.zh = add nuw nsw i32 %i.zg, 73
  %i.zi = lshr i32 %i.zh, 6
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = add i64 %i.za, %i.zj                    ; 3 uses
  %i.zl = add nuw nsw i64 %.sroa.04.0.i.i19.i.i, 2 ; 2 uses
  %niter718.next.1 = add i64 %niter718, 2         ; 2 uses
  %niter718.ncmp.1 = icmp eq i64 %niter718.next.1, %unroll_iter717
  br i1 %niter718.ncmp.1, label %.lr.ph.preheader.i22.i.i.unr-lcssa, label %bb.af

.lr.ph.preheader.i22.i.i.unr-lcssa:               ; preds = %bb.af
  %lcmp.mod714.not = icmp eq i64 %xtraiter713, 0
  br i1 %lcmp.mod714.not, label %.lr.ph.preheader.i22.i.i, label %.epil.preheader712

.epil.preheader712:                               ; preds = %.lr.ph.preheader.i22.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i
  %.sroa.04.0.i.i19.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i ], [ %i.zl, %.lr.ph.preheader.i22.i.i.unr-lcssa ]
  %.sroa.02.0.i.i20.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i ], [ %i.zk, %.lr.ph.preheader.i22.i.i.unr-lcssa ]
  %lcmp.mod716 = trunc i64 %i.yj to i1
  tail call void @llvm.assume(i1 %lcmp.mod716)
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.sroa.04.0.i.i19.i.i.epil.init
  %.val.i.i21.i.i.epil = load i32, ptr %i.zm, align 4, !alias.scope !6799, !noalias !6774, !noundef !409
  %i.zn = or i32 %.val.i.i21.i.i.epil, 1
  %i.zo = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.zn, i1 true)
  %i.zp = xor i32 %i.zo, 31
  %i.zq = mul nuw nsw i32 %i.zp, 9
  %i.zr = add nuw nsw i32 %i.zq, 73
  %i.zs = lshr i32 %i.zr, 6
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = add i64 %.sroa.02.0.i.i20.i.i.epil.init, %i.zt
  br label %.lr.ph.preheader.i22.i.i

.lr.ph.preheader.i22.i.i:                         ; preds = %.lr.ph.preheader.i22.i.i.unr-lcssa, %.epil.preheader712
  %.lcssa682 = phi i64 [ %i.zk, %.lr.ph.preheader.i22.i.i.unr-lcssa ], [ %i.zu, %.epil.preheader712 ]
  %.idx.i23.i.i = shl nuw nsw i64 %i.yj, 2
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yh, i64 %.idx.i23.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa682, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6810
  br label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i, %.lr.ph.preheader.i22.i.i
  %.sroa.0.02.i25.i.i = phi ptr [ %i.zw, %.lr.ph.i24.i.i ], [ %i.yh, %.lr.ph.preheader.i22.i.i ] ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i25.i.i, i64 4 ; 2 uses
  %i.zx = load i32, ptr %.sroa.0.02.i25.i.i, align 4, !alias.scope !6799, !noalias !6774, !noundef !409
  %i.zy = zext i32 %i.zx to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.zy, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6810
  %i.zz = icmp eq ptr %i.zw, %i.zv
  br i1 %i.zz, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i, label %.lr.ph.i24.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i: ; preds = %.lr.ph.i24.i.i, %._crit_edge120.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aab = load i32, ptr %i.aaa, align 8, !alias.scope !6774, !noundef !409 ; 2 uses
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6811)
  %.pre18.i96.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6812 ; 3 uses
  %.pre28.i97.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6817)
  %i.aad = icmp eq i64 %.pre28.i97.i.i, %.pre18.i96.i.i
  br i1 %i.aad, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i99.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit100.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i99.i.i: ; preds = %bb.ag
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i96.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6818
  %i.aae = load i64, ptr %i.tj, align 8, !alias.scope !6819, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit100.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit100.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i99.i.i, %bb.ag
  %.sink1.i6.i98.i.i = phi i64 [ %i.aae, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i99.i.i ], [ %.pre18.i96.i.i, %bb.ag ] ; 3 uses
  %i.aaf = icmp sgt i64 %.sink1.i6.i98.i.i, -1
  tail call void @llvm.assume(i1 %i.aaf)
  %i.aag = load ptr, ptr %i.tk, align 8, !alias.scope !6819, !nonnull !409, !noundef !409
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %.sink1.i6.i98.i.i
  store i8 56, ptr %i.aah, align 1, !noalias !6820
  %i.aai = add nuw i64 %.sink1.i6.i98.i.i, 1
  store i64 %i.aai, ptr %i.tj, align 8, !alias.scope !6819
  %i.aaj = sext i32 %i.aab to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aaj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6774
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit100.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aal = load i64, ptr %i.aak, align 8, !range !414, !alias.scope !6774, !noundef !409
  %.not.i.i = icmp eq i64 %i.aal, -1
  br i1 %.not.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6823)
  %.pre18.i.i.i.i149 = load i64, ptr %i.tj, align 8, !alias.scope !6824 ; 3 uses
  %.pre28.i.i.i.i150 = load i64, ptr %1, align 8, !range !412, !alias.scope !6824
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6829)
  %i.aam = icmp eq i64 %.pre28.i.i.i.i150, %.pre18.i.i.i.i149
  br i1 %i.aam, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i165, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i151, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i165: ; preds = %bb.ai
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i149, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6830
  %i.aan = load i64, ptr %i.tj, align 8, !alias.scope !6831, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i151

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i151: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i165, %bb.ai
  %.sink1.i6.i.i.i.i152 = phi i64 [ %i.aan, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i165 ], [ %.pre18.i.i.i.i149, %bb.ai ] ; 3 uses
  %i.aao = icmp sgt i64 %.sink1.i6.i.i.i.i152, -1
  tail call void @llvm.assume(i1 %i.aao)
  %i.aap = load ptr, ptr %i.tk, align 8, !alias.scope !6831, !nonnull !409, !noundef !409
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %.sink1.i6.i.i.i.i152
  store i8 66, ptr %i.aaq, align 1, !noalias !6832
  %i.aar = add nuw i64 %.sink1.i6.i.i.i.i152, 1
  store i64 %i.aar, ptr %i.tj, align 8, !alias.scope !6831
  %i.aas = tail call fastcc noundef i64 @_RNvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aak), !noalias !6822
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aas, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6833
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6835)
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aau = load ptr, ptr %i.aat, align 8, !alias.scope !6836, !nonnull !409, !noundef !409 ; 5 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aaw = load i64, ptr %i.aav, align 8, !alias.scope !6836, !noundef !409 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6837)
  %i.aax = icmp eq i64 %i.aaw, 0
  br i1 %i.aax, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6838)
  %.pre18.i.i.i.i.i153 = load i64, ptr %i.tj, align 8, !alias.scope !6839, !noalias !6837 ; 3 uses
  %.pre28.i.i.i.i.i154 = load i64, ptr %1, align 8, !range !412, !alias.scope !6839, !noalias !6837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6840), !noalias !6837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6841), !noalias !6837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6842), !noalias !6837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6843), !noalias !6837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6844), !noalias !6837
  %i.aay = icmp eq i64 %.pre28.i.i.i.i.i154, %.pre18.i.i.i.i.i153
  br i1 %i.aay, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i164, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i164: ; preds = %bb.aj
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i153, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6845
  %i.aaz = load i64, ptr %i.tj, align 8, !alias.scope !6846, !noalias !6837, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i164, %bb.aj
  %.sink1.i6.i.i.i.i.i156 = phi i64 [ %i.aaz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i164 ], [ %.pre18.i.i.i.i.i153, %bb.aj ] ; 3 uses
  %i.aba = icmp sgt i64 %.sink1.i6.i.i.i.i.i156, -1
  tail call void @llvm.assume(i1 %i.aba), !noalias !6837
  %i.abb = load ptr, ptr %i.tk, align 8, !alias.scope !6846, !noalias !6837, !nonnull !409, !noundef !409
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %.sink1.i6.i.i.i.i.i156
  store i8 10, ptr %i.abc, align 1, !noalias !6847
  %i.abd = add nuw i64 %.sink1.i6.i.i.i.i.i156, 1
  store i64 %i.abd, ptr %i.tj, align 8, !alias.scope !6846, !noalias !6837
  %xtraiter720 = and i64 %i.aaw, 1
  %i.abe = icmp eq i64 %i.aaw, 1
  br i1 %i.abe, label %.epil.preheader719, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155
  %unroll_iter724 = and i64 %i.aaw, -2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155.new ], [ %i.aby, %bb.ak ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155.new ], [ %i.abx, %bb.ak ]
  %niter725 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155.new ], [ %niter725.next.1, %bb.ak ]
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %.sroa.04.0.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i32, ptr %i.abf, align 4, !alias.scope !6837, !noalias !6848, !noundef !409
  %i.abg = or i32 %.val.i.i.i.i.i.i, 1
  %i.abh = sext i32 %i.abg to i64
  %i.abi = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.abh, i1 true)
  %i.abj = xor i64 %i.abi, 63
  %i.abk = mul nuw nsw i64 %i.abj, 9
  %i.abl = add nuw nsw i64 %i.abk, 73
  %i.abm = lshr i64 %i.abl, 6
  %i.abn = add i64 %i.abm, %.sroa.02.0.i.i.i.i.i.i
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 4
  %.val.i.i.i.i.i.i.1 = load i32, ptr %i.abp, align 4, !alias.scope !6837, !noalias !6848, !noundef !409
  %i.abq = or i32 %.val.i.i.i.i.i.i.1, 1
  %i.abr = sext i32 %i.abq to i64
  %i.abs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.abr, i1 true)
  %i.abt = xor i64 %i.abs, 63
  %i.abu = mul nuw nsw i64 %i.abt, 9
  %i.abv = add nuw nsw i64 %i.abu, 73
  %i.abw = lshr i64 %i.abv, 6
  %i.abx = add i64 %i.abw, %i.abn                 ; 3 uses
  %i.aby = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i, 2 ; 2 uses
  %niter725.next.1 = add i64 %niter725, 2         ; 2 uses
  %niter725.ncmp.1 = icmp eq i64 %niter725.next.1, %unroll_iter724
  br i1 %niter725.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, label %bb.ak

.lr.ph.preheader.i.i.i.i.i.unr-lcssa:             ; preds = %bb.ak
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  br i1 %lcmp.mod721.not, label %.lr.ph.preheader.i.i.i.i.i, label %.epil.preheader719

.epil.preheader719:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155 ], [ %i.aby, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i155 ], [ %i.abx, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod723 = trunc i64 %i.aaw to i1
  tail call void @llvm.assume(i1 %lcmp.mod723)
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.i.epil = load i32, ptr %i.abz, align 4, !alias.scope !6837, !noalias !6848, !noundef !409
  %i.aca = or i32 %.val.i.i.i.i.i.i.epil, 1
  %i.acb = sext i32 %i.aca to i64
  %i.acc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.acb, i1 true)
  %i.acd = xor i64 %i.acc, 63
  %i.ace = mul nuw nsw i64 %i.acd, 9
  %i.acf = add nuw nsw i64 %i.ace, 73
  %i.acg = lshr i64 %i.acf, 6
  %i.ach = add i64 %i.acg, %.sroa.02.0.i.i.i.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %.epil.preheader719
  %.lcssa681 = phi i64 [ %i.abx, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ], [ %i.ach, %.epil.preheader719 ]
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aaw, 2
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aau, i64 %.idx.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa681, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6849
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i = phi ptr [ %i.acj, %.lr.ph.i.i.i.i.i ], [ %i.aau, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i, i64 4 ; 2 uses
  %i.ack = load i32, ptr %.sroa.0.02.i.i.i.i.i, align 4, !alias.scope !6837, !noalias !6848, !noundef !409
  %i.acl = sext i32 %i.ack to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.acl, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6849
  %i.acm = icmp eq ptr %i.acj, %i.aci
  br i1 %i.acm, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i151
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aco = load i64, ptr %i.acn, align 8, !range !411, !alias.scope !6836, !noundef !409 ; 2 uses
  %.not.i.i.i.i157 = icmp eq i64 %i.aco, -2
  br i1 %.not.i.i.i.i157, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6851)
  %.not.i.i.i.i.i = icmp eq i64 %i.aco, -1
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6854)
  %.pre18.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6855 ; 3 uses
  %.pre28.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6860)
  %i.acp = icmp eq i64 %.pre28.i.i.i.i.i.i.i, %.pre18.i.i.i.i.i.i.i
  br i1 %i.acp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i: ; preds = %bb.am
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6861
  %i.acq = load i64, ptr %i.tj, align 8, !alias.scope !6862, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i, %bb.am
  %.sink1.i6.i.i.i.i.i.i.i = phi i64 [ %i.acq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i ], [ %.pre18.i.i.i.i.i.i.i, %bb.am ] ; 3 uses
  %i.acr = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.acr)
  %i.acs = load ptr, ptr %i.tk, align 8, !alias.scope !6862, !nonnull !409, !noundef !409
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 %.sink1.i6.i.i.i.i.i.i.i
  store i8 26, ptr %i.act, align 1, !noalias !6863
  %i.acu = add nuw i64 %.sink1.i6.i.i.i.i.i.i.i, 1
  store i64 %i.acu, ptr %i.tj, align 8, !alias.scope !6862
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.acw = load i64, ptr %i.acv, align 8, !alias.scope !6864, !noundef !409 ; 11 uses
  %i.acx = icmp eq i64 %i.acw, 0                  ; 2 uses
  br i1 %i.acx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.acy = or i64 %i.acw, 1
  %i.acz = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.acy, i1 true)
  %i.ada = xor i64 %i.acz, 63
  %i.adb = mul nuw nsw i64 %i.ada, 9
  %i.adc = add nuw nsw i64 %i.adb, 73
  %i.add = lshr i64 %i.adc, 6
  %i.ade = icmp sgt i64 %i.acw, -1
  tail call void @llvm.assume(i1 %i.ade)
  %i.adf = add nuw i64 %i.acw, 1
  %i.adg = add nuw i64 %i.adf, %i.add
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i158 = phi i64 [ %i.adg, %bb.an ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.adi = load i32, ptr %i.adh, align 8, !alias.scope !6864, !noundef !409 ; 3 uses
  %i.adj = icmp eq i32 %i.adi, 0                  ; 2 uses
  br i1 %i.adj, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.adk = or i32 %i.adi, 1
  %i.adl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.adk, i1 true)
  %i.adm = xor i32 %i.adl, 31
  %i.adn = mul nuw nsw i32 %i.adm, 9
  %i.ado = add nuw nsw i32 %i.adn, 73
  %i.adp = lshr i32 %i.ado, 6
  %narrow.i.i.i.i.i.i.i.i = add nuw nsw i32 %i.adp, 1
  %i.adq = zext nneg i32 %narrow.i.i.i.i.i.i.i.i to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.01.0.i.i.i.i.i.i.i = phi i64 [ %i.adq, %bb.ap ], [ 0, %bb.ao ]
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ads = load i64, ptr %i.adr, align 8, !alias.scope !6864, !noundef !409 ; 3 uses
  %i.adt = icmp eq i64 %i.ads, 0                  ; 2 uses
  br i1 %i.adt, label %_RNvXs1H_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_11BloomFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.adu = or i64 %i.ads, 1
  %i.adv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.adu, i1 true)
  %i.adw = xor i64 %i.adv, 63
  %i.adx = mul nuw nsw i64 %i.adw, 9
  %i.ady = add nuw nsw i64 %i.adx, 73
  %i.adz = lshr i64 %i.ady, 6
  %i.aea = add nuw nsw i64 %i.adz, 1
  br label %_RNvXs1H_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_11BloomFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i.i.i.i

_RNvXs1H_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_11BloomFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sroa.02.0.i.i.i.i.i.i.i159 = phi i64 [ %i.aea, %bb.ar ], [ 0, %bb.aq ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aec = load double, ptr %i.aeb, align 8, !alias.scope !6864, !noundef !409 ; 2 uses
  %i.aed = fcmp une double %i.aec, 0.000000e+00   ; 2 uses
  %..i.i.i.i.i.i.i = select i1 %i.aed, i64 9, i64 0
  %i.aee = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i158
  %i.aef = add nuw i64 %i.aee, %.sroa.02.0.i.i.i.i.i.i.i159
  %i.aeg = add nuw i64 %i.aef, %..i.i.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aeg, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6867)
  br i1 %i.acx, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RNvXs1H_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_11BloomFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i.i.i.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.aeh, align 8, !alias.scope !6868 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6870)
  %.pre18.i.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6871 ; 3 uses
  %.pre28.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6876)
  %i.aei = icmp eq i64 %.pre28.i.i.i.i.i.i.i.i, %.pre18.i.i.i.i.i.i.i.i
  br i1 %i.aei, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i: ; preds = %bb.as
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6877
  %i.aej = load i64, ptr %i.tj, align 8, !alias.scope !6878, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i, %bb.as
  %.sink1.i6.i.i.i.i.i.i.i.i = phi i64 [ %i.aej, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i ], [ %.pre18.i.i.i.i.i.i.i.i, %bb.as ] ; 3 uses
  %i.aek = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aek)
  %i.ael = load ptr, ptr %i.tk, align 8, !alias.scope !6878, !nonnull !409, !noundef !409
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 %.sink1.i6.i.i.i.i.i.i.i.i
  store i8 10, ptr %i.aem, align 1, !noalias !6879
  %i.aen = add nuw i64 %.sink1.i6.i.i.i.i.i.i.i.i, 1
  store i64 %i.aen, ptr %i.tj, align 8, !alias.scope !6878
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.acw, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6880)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6881)
  %i.aeo = load i64, ptr %i.tj, align 8, !alias.scope !6882, !noundef !409 ; 3 uses
  %i.aep = load i64, ptr %1, align 8, !range !412, !alias.scope !6882, !noundef !409
  %i.aeq = sub i64 %i.aep, %i.aeo
  %i.aer = icmp ugt i64 %i.acw, %i.aeq
  br i1 %i.aer, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, !prof !419

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aeo, i64 noundef range(i64 0, -9223372036854775808) %i.acw, i64 noundef 1, i64 noundef 1), !noalias !6883
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6884 ; 3 uses
  %.pre1.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6884
  %.pre2.i.i.i.i.i.i.i.i.i = sub i64 %.pre1.i.i.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i.i.i
  %i.aes = icmp ugt i64 %i.acw, %.pre2.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6885)
  br i1 %i.aes, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, !prof !459

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.acw, i64 noundef 1, i64 noundef 1), !noalias !6883
  %i.aet = load i64, ptr %i.tj, align 8, !alias.scope !6886, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.afv = phi ptr [ %.pre1.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  %.sink1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afr, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.afw = icmp sgt i64 %.sink1.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.afw)
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 %.sink1.i.i.i.i.i.i.i.i.i.i
  store double %i.aec, ptr %i.afx, align 1, !noalias !6928
  %i.afy = add nuw i64 %.sink1.i.i.i.i.i.i.i.i.i.i, 8
  br label %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

bb.az:                                            ; preds = %bb.al
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i.i.i.i.i = load ptr, ptr %i.afz, align 8, !alias.scope !6929 ; 9 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i.i.i.i.i = load i64, ptr %i.aga, align 8, !alias.scope !6929 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6931)
  %.pre18.i.i2.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6932 ; 3 uses
  %.pre28.i.i3.i.i.i.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6932
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6937)
  %i.agb = icmp eq i64 %.pre28.i.i3.i.i.i.i.i, %.pre18.i.i2.i.i.i.i.i
  br i1 %i.agb, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i: ; preds = %bb.az
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i2.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6938
  %i.agc = load i64, ptr %i.tj, align 8, !alias.scope !6939, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i, %bb.az
  %.sink1.i6.i.i5.i.i.i.i.i = phi i64 [ %i.agc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i ], [ %.pre18.i.i2.i.i.i.i.i, %bb.az ] ; 3 uses
  %i.agd = icmp sgt i64 %.sink1.i6.i.i5.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.agd)
  %i.age = load ptr, ptr %i.tk, align 8, !alias.scope !6939, !nonnull !409, !noundef !409 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 %.sink1.i6.i.i5.i.i.i.i.i
  store i8 18, ptr %i.agf, align 1, !noalias !6940
  %i.agg = add nuw i64 %.sink1.i6.i.i5.i.i.i.i.i, 1 ; 4 uses
  store i64 %i.agg, ptr %i.tj, align 8, !alias.scope !6939
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.agh = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.agh, label %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i
  %i.agi = add i64 %.val1.i.i.i.i.i, -1           ; 2 uses
  %xtraiter726 = and i64 %.val1.i.i.i.i.i, 1
  %i.agj = icmp eq i64 %i.agi, 0
  br i1 %i.agj, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter730 = and i64 %.val1.i.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i.i

_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6941)
  %.pre28.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6942
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6947)
  %i.agk = icmp eq i64 %.pre28.i.i.i.i.i.i, %i.agg
  br i1 %i.agk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i: ; preds = %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.agg, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6948
  %i.agl = load i64, ptr %i.tj, align 8, !alias.scope !6949, !noundef !409
  %.pre.i.i.i.i.i = load ptr, ptr %i.tk, align 8, !alias.scope !6949
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i
  %i.agm = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i ], [ %i.age, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i ]
  %.sink1.i6.i.i.i.i.i.i = phi i64 [ %i.agl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i ], [ %i.agg, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.agn = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.agn)
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 %.sink1.i6.i.i.i.i.i.i
  store i8 0, ptr %i.ago, align 1, !noalias !6950
  %i.agp = add nuw i64 %.sink1.i6.i.i.i.i.i.i, 1
  br label %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ahh, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ahg, %.preheader.i.i.i.i.i.i.i.i ]
  %niter731 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter731.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agq, align 8, !alias.scope !6951, !noalias !6952, !noundef !409
  %i.agr = or i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.ags = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.agr, i1 true)
  %i.agt = xor i64 %i.ags, 63
  %i.agu = mul nuw nsw i64 %i.agt, 9
  %i.agv = add nuw nsw i64 %i.agu, 73
  %i.agw = lshr i64 %i.agv, 6
  %i.agx = add i64 %i.agw, %.sroa.02.0.i.i.i.i.i.i.i.i.i
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %.val.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.agz, align 8, !alias.scope !6951, !noalias !6952, !noundef !409
  %i.aha = or i64 %.val.i.i.i.i.i.i.i.i.i.1, 1
  %i.ahb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aha, i1 true)
  %i.ahc = xor i64 %i.ahb, 63
  %i.ahd = mul nuw nsw i64 %i.ahc, 9
  %i.ahe = add nuw nsw i64 %i.ahd, 73
  %i.ahf = lshr i64 %i.ahe, 6
  %i.ahg = add i64 %i.ahf, %i.agx                 ; 3 uses
  %i.ahh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter731.next.1 = add nuw i64 %niter731, 2     ; 2 uses
  %niter731.ncmp.1 = icmp eq i64 %niter731.next.1, %unroll_iter730
  br i1 %niter731.ncmp.1, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod727.not = icmp eq i64 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %bb.ba, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.ahh, %.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.ahg, %.unr-lcssa ]
  %lcmp.mod729 = trunc i64 %.val1.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod729)
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ahi, align 8, !alias.scope !6951, !noalias !6952, !noundef !409
  %i.ahj = or i64 %.val.i.i.i.i.i.i.i.i.i.epil, 1
  %i.ahk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ahj, i1 true)
  %i.ahl = xor i64 %i.ahk, 63
  %i.ahm = mul nuw nsw i64 %i.ahl, 9
  %i.ahn = add nuw nsw i64 %i.ahm, 73
  %i.aho = lshr i64 %i.ahn, 6
  %i.ahp = add i64 %i.aho, %.sroa.02.0.i.i.i.i.i.i.i.i.i.epil.init
  br label %bb.ba

bb.ba:                                            ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa680 = phi i64 [ %i.ahg, %.unr-lcssa ], [ %i.ahp, %.preheader.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ahq = or i64 %.lcssa680, 1
  %i.ahr = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ahq, i1 true)
  %i.ahs = xor i64 %i.ahr, 63
  %i.aht = mul nuw nsw i64 %i.ahs, 9
  %i.ahu = add nuw nsw i64 %i.aht, 73
  %i.ahv = lshr i64 %i.ahu, 6
  %i.ahw = add i64 %.lcssa680, 1
  %i.ahx = add i64 %i.ahw, %i.ahv
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ahx, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6929
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6955)
  %.pre18.i.i.i6.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !6956, !noalias !6954 ; 3 uses
  %.pre28.i.i.i7.i.i.i.i.i = load i64, ptr %1, align 8, !range !412, !alias.scope !6956, !noalias !6954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6957), !noalias !6954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6958), !noalias !6954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6959), !noalias !6954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6960), !noalias !6954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6961), !noalias !6954
  %i.ahy = icmp eq i64 %.pre28.i.i.i7.i.i.i.i.i, %.pre18.i.i.i6.i.i.i.i.i
  br i1 %i.ahy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i: ; preds = %bb.ba
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i6.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6962
  %i.ahz = load i64, ptr %i.tj, align 8, !alias.scope !6963, !noalias !6954, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i, %bb.ba
  %.sink1.i6.i.i.i9.i.i.i.i.i = phi i64 [ %i.ahz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i ], [ %.pre18.i.i.i6.i.i.i.i.i, %bb.ba ] ; 3 uses
  %i.aia = icmp sgt i64 %.sink1.i6.i.i.i9.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aia), !noalias !6954
  %i.aib = load ptr, ptr %i.tk, align 8, !alias.scope !6963, !noalias !6954, !nonnull !409, !noundef !409
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 %.sink1.i6.i.i.i9.i.i.i.i.i
  store i8 10, ptr %i.aic, align 1, !noalias !6964
  %i.aid = add nuw i64 %.sink1.i6.i.i.i9.i.i.i.i.i, 1
  store i64 %i.aid, ptr %i.tj, align 8, !alias.scope !6963, !noalias !6954
  %xtraiter733 = and i64 %.val1.i.i.i.i.i, 1
  %i.aie = icmp eq i64 %i.agi, 0
  br i1 %i.aie, label %.epil.preheader732, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i
  %unroll_iter737 = and i64 %.val1.i.i.i.i.i, -2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new
  %.sroa.04.0.i.i.i4.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new ], [ %i.aiw, %bb.bb ] ; 3 uses
  %.sroa.02.0.i.i.i5.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new ], [ %i.aiv, %bb.bb ]
  %niter738 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new ], [ %niter738.next.1, %bb.bb ]
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i
  %.val.i.i.i6.i.i.i.i.i.i = load i64, ptr %i.aif, align 8, !alias.scope !6954, !noalias !6965, !noundef !409
  %i.aig = or i64 %.val.i.i.i6.i.i.i.i.i.i, 1
  %i.aih = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aig, i1 true)
  %i.aii = xor i64 %i.aih, 63
  %i.aij = mul nuw nsw i64 %i.aii, 9
  %i.aik = add nuw nsw i64 %i.aij, 73
  %i.ail = lshr i64 %i.aik, 6
  %i.aim = add i64 %i.ail, %.sroa.02.0.i.i.i5.i.i.i.i.i.i
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %.val.i.i.i6.i.i.i.i.i.i.1 = load i64, ptr %i.aio, align 8, !alias.scope !6954, !noalias !6965, !noundef !409
  %i.aip = or i64 %.val.i.i.i6.i.i.i.i.i.i.1, 1
  %i.aiq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aip, i1 true)
  %i.air = xor i64 %i.aiq, 63
  %i.ais = mul nuw nsw i64 %i.air, 9
  %i.ait = add nuw nsw i64 %i.ais, 73
  %i.aiu = lshr i64 %i.ait, 6
  %i.aiv = add i64 %i.aiu, %i.aim                 ; 3 uses
  %i.aiw = add nuw nsw i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i, 2 ; 2 uses
  %niter738.next.1 = add i64 %niter738, 2         ; 2 uses
  %niter738.ncmp.1 = icmp eq i64 %niter738.next.1, %unroll_iter737
  br i1 %niter738.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa, label %bb.bb

.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa:       ; preds = %bb.bb
  %lcmp.mod734.not = icmp eq i64 %xtraiter733, 0
  br i1 %lcmp.mod734.not, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %.epil.preheader732

.epil.preheader732:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i
  %.sroa.04.0.i.i.i4.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i ], [ %i.aiw, %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i5.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i ], [ %i.aiv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod736 = trunc i64 %.val1.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod736)
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i.epil.init
  %.val.i.i.i6.i.i.i.i.i.i.epil = load i64, ptr %i.aix, align 8, !alias.scope !6954, !noalias !6965, !noundef !409
  %i.aiy = or i64 %.val.i.i.i6.i.i.i.i.i.i.epil, 1
  %i.aiz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aiy, i1 true)
  %i.aja = xor i64 %i.aiz, 63
  %i.ajb = mul nuw nsw i64 %i.aja, 9
  %i.ajc = add nuw nsw i64 %i.ajb, 73
  %i.ajd = lshr i64 %i.ajc, 6
  %i.aje = add i64 %i.ajd, %.sroa.02.0.i.i.i5.i.i.i.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa, %.epil.preheader732
  %.lcssa679 = phi i64 [ %i.aiv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.aje, %.epil.preheader732 ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val1.i.i.i.i.i, 3
  %i.ajf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa679, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6966
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi ptr [ %i.ajg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ajh = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, align 8, !alias.scope !6954, !noalias !6965, !noundef !409
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ajh, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6966
  %i.aji = icmp eq ptr %i.ajg, %i.ajf
  br i1 %i.aji, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ %i.afy, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ], [ %i.agp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ]
  store i64 %.sink.i.i.i, ptr %i.tj, align 8, !alias.scope !6967
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, %bb.ax, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.ah
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val8.i.i160 = load ptr, ptr %i.ajj, align 8, !alias.scope !6774 ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val9.i.i161 = load i64, ptr %i.ajk, align 8, !alias.scope !6968, !noundef !409 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6970)
  %i.ajl = icmp eq i64 %.val9.i.i161, 0
  br i1 %i.ajl, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeyNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEINvNtB4_6uint646encodeB1Y_ENvB2A_11encoded_lenINvNtB4_7message6encodeBQ_B1Y_EINvB3k_11encoded_lenBQ_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i.i162

.lr.ph.i.i.i.i162:                                ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i160) ]
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.val8.i.i160, align 16, !noalias !6971
  %i.ajm = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.ajn = bitcast <16 x i1> %i.ajm to i16
  %i.ajo = getelementptr inbounds nuw i8, ptr %.val8.i.i160, i64 16
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %.lr.ph.i.i.i.i162
  %.sroa.14.018.i.i.i.i = phi i64 [ %.val9.i.i161, %.lr.ph.i.i.i.i162 ], [ %i.aka, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.sroa.10.017.i.i.i.i = phi i16 [ %i.ajn, %.lr.ph.i.i.i.i162 ], [ %i.ajx, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i = phi ptr [ %i.ajo, %.lr.ph.i.i.i.i162 ], [ %.sroa.6.1.i.i.i.i, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.015.i.i.i.i = phi ptr [ %.val8.i.i160, %.lr.ph.i.i.i.i162 ], [ %.sroa.02.1.i.i.i.i, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %.sroa.10.017.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bc, %.lr.ph.i.i.i.i.i.i
  %i.ajp = phi ptr [ %i.ajt, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i, %bb.bc ] ; 2 uses
  %i.ajq = phi ptr [ %i.ajs, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.02.015.i.i.i.i, %bb.bc ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.ajp, align 16, !noalias !6972
  %i.ajr = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.ajs = getelementptr inbounds i8, ptr %i.ajq, i64 -512 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.ajr to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bc
  %.sroa.02.1.i.i.i.i = phi ptr [ %.sroa.02.015.i.i.i.i, %bb.bc ], [ %i.ajs, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i, %bb.bc ], [ %i.ajt, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.10.017.i.i.i.i, %bb.bc ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.aju = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.ajv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.ajw = zext nneg i16 %i.ajv to i64
  %i.ajx = and i16 %i.aju, %.lcssa.i.i.i.i.i.i
  %i.ajy = sub nsw i64 0, %i.ajw
  %i.ajz = getelementptr inbounds [32 x i8], ptr %.sroa.02.1.i.i.i.i, i64 %i.ajy ; 3 uses
  %i.aka = add i64 %.sroa.14.018.i.i.i.i, -1      ; 2 uses
  %i.akb = getelementptr inbounds i8, ptr %i.ajz, i64 -32 ; 2 uses
  %.val.i.i27.i.i = load i64, ptr %i.akb, align 8, !noalias !6973, !noundef !409 ; 2 uses
  %i.akc = icmp eq i64 %.val.i.i27.i.i, 0         ; 2 uses
  %i.akd = getelementptr i8, ptr %i.ajz, i64 -16  ; 2 uses
  %.val17.i.i.i.i = load ptr, ptr %i.akd, align 8, !noalias !6973 ; 5 uses
  %i.ake = getelementptr i8, ptr %i.ajz, i64 -8   ; 2 uses
  %.val18.i.i.i.i = load i64, ptr %i.ake, align 8, !noalias !6973, !noundef !409 ; 5 uses
  %i.akf = icmp eq i64 %.val18.i.i.i.i, 0         ; 3 uses
  br i1 %i.akf, label %bb.bd, label %_RNvXs1S_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i

bb.bd:                                            ; preds = %.loopexit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i.i.i) ]
  br label %_RNvXs1S_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i

_RNvXs1S_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.bd, %.loopexit.i.i.i.i
  br i1 %i.akc, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RNvXs1S_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i
  %i.akg = or i64 %.val.i.i27.i.i, 1
  %i.akh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.akg, i1 true)
  %i.aki = xor i64 %i.akh, 63
  %i.akj = mul nuw nsw i64 %i.aki, 9
  %i.akk = add nuw nsw i64 %i.akj, 73
  %i.akl = lshr i64 %i.akk, 6
  %i.akm = add nuw nsw i64 %i.akl, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_RNvXs1S_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi i64 [ 0, %_RNvXs1S_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_10UInt32ListNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i ], [ %i.akm, %bb.be ]
  br i1 %i.akf, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i.i.i) ]
  %xtraiter739 = and i64 %.val18.i.i.i.i, 1
  %i.akn = icmp eq i64 %.val18.i.i.i.i, 1
  br i1 %i.akn, label %.preheader.i.i.i.i.i.i28.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.bg
  %unroll_iter743 = and i64 %.val18.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i28.i.i

.preheader.i.i.i.i.i.i28.i.i:                     ; preds = %.preheader.i.i.i.i.i.i28.i.i, %.new
  %.sroa.04.0.i.i.i.i.i.i.i29.i.i = phi i64 [ 0, %.new ], [ %i.alh, %.preheader.i.i.i.i.i.i28.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i30.i.i = phi i64 [ 0, %.new ], [ %i.alg, %.preheader.i.i.i.i.i.i28.i.i ]
  %niter744 = phi i64 [ 0, %.new ], [ %niter744.next.1, %.preheader.i.i.i.i.i.i28.i.i ]
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i29.i.i
  %.val.i.i.i.i.i.i.i31.i.i = load i32, ptr %i.ako, align 4, !alias.scope !6974, !noalias !6973, !noundef !409
  %i.akp = or i32 %.val.i.i.i.i.i.i.i31.i.i, 1
  %i.akq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.akp, i1 true)
  %i.akr = xor i32 %i.akq, 31
  %i.aks = mul nuw nsw i32 %i.akr, 9
  %i.akt = add nuw nsw i32 %i.aks, 73
  %i.aku = lshr i32 %i.akt, 6
  %i.akv = zext nneg i32 %i.aku to i64
  %i.akw = add i64 %.sroa.02.0.i.i.i.i.i.i.i30.i.i, %i.akv
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i29.i.i
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %.val.i.i.i.i.i.i.i31.i.i.1 = load i32, ptr %i.aky, align 4, !alias.scope !6974, !noalias !6973, !noundef !409
  %i.akz = or i32 %.val.i.i.i.i.i.i.i31.i.i.1, 1
  %i.ala = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.akz, i1 true)
  %i.alb = xor i32 %i.ala, 31
  %i.alc = mul nuw nsw i32 %i.alb, 9
  %i.ald = add nuw nsw i32 %i.alc, 73
  %i.ale = lshr i32 %i.ald, 6
  %i.alf = zext nneg i32 %i.ale to i64
  %i.alg = add i64 %i.akw, %i.alf                 ; 3 uses
  %i.alh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i29.i.i, 2 ; 2 uses
  %niter744.next.1 = add nuw i64 %niter744, 2     ; 2 uses
  %niter744.ncmp.1 = icmp eq i64 %niter744.next.1, %unroll_iter743
  br i1 %niter744.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i28.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i28.i.i
  %lcmp.mod740.not = icmp eq i64 %xtraiter739, 0
  br i1 %lcmp.mod740.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i28.i.i.epil.preheader

.preheader.i.i.i.i.i.i28.i.i.epil.preheader:      ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa, %bb.bg
  %.sroa.04.0.i.i.i.i.i.i.i29.i.i.epil.init = phi i64 [ 0, %bb.bg ], [ %i.alh, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i30.i.i.epil.init = phi i64 [ 0, %bb.bg ], [ %i.alg, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod742 = trunc i64 %.val18.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod742)
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i29.i.i.epil.init
  %.val.i.i.i.i.i.i.i31.i.i.epil = load i32, ptr %i.ali, align 4, !alias.scope !6974, !noalias !6973, !noundef !409
  %i.alj = or i32 %.val.i.i.i.i.i.i.i31.i.i.epil, 1
  %i.alk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.alj, i1 true)
  %i.all = xor i32 %i.alk, 31
  %i.alm = mul nuw nsw i32 %i.all, 9
  %i.aln = add nuw nsw i32 %i.alm, 73
  %i.alo = lshr i32 %i.aln, 6
  %i.alp = zext nneg i32 %i.alo to i64
  %i.alq = add i64 %.sroa.02.0.i.i.i.i.i.i.i30.i.i.epil.init, %i.alp
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i28.i.i.epil.preheader
  %.lcssa676 = phi i64 [ %i.alg, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.alq, %.preheader.i.i.i.i.i.i28.i.i.epil.preheader ] ; 2 uses
  %i.alr = or i64 %.lcssa676, 1
  %i.als = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.alr, i1 true)
  %i.alt = xor i64 %i.als, 63
  %i.alu = mul nuw nsw i64 %i.alt, 9
  %i.alv = add nuw nsw i64 %i.alu, 73
  %i.alw = lshr i64 %i.alv, 6
  %i.alx = add i64 %.lcssa676, 1
  %i.aly = add i64 %i.alx, %i.alw                 ; 2 uses
  %i.alz = or i64 %i.aly, 1
  %i.ama = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.alz, i1 true)
  %i.amb = xor i64 %i.ama, 63
  %i.amc = mul nuw nsw i64 %i.amb, 9
  %i.amd = add nuw nsw i64 %i.amc, 73
  %i.ame = lshr i64 %i.amd, 6
  %i.amf = add i64 %i.aly, 1
end_hunk_2
begin_hunk_3_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ar = load ptr, ptr %i.an, align 8, !alias.scope !82710, !nonnull !409, !noundef !409
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink1.i6.i.i
  store i8 10, ptr %i.as, align 1, !noalias !82711
  %i.at = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.at, ptr %i.am, align 8, !alias.scope !82710
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82699
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82715)
  %i.au = load i64, ptr %i.am, align 8, !alias.scope !82716, !noundef !409 ; 3 uses
  %i.av = load i64, ptr %2, align 8, !range !412, !alias.scope !82716, !noundef !409
  %i.aw = sub i64 %i.av, %i.au
  %i.ax = icmp ugt i64 %i.e, %i.aw
  br i1 %i.ax, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.au, i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef 1, i64 noundef 1), !noalias !82717
  %i.ay = load i64, ptr %i.am, align 8, !alias.scope !82718, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sink16.i = phi i64 [ %i.ay, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i ], [ %i.au, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 3 uses
  %i.az = icmp sgt i64 %.sink16.i, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load ptr, ptr %i.an, align 8, !alias.scope !82718, !nonnull !409, !noundef !409
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink16.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !82719
  %i.bc = add nuw i64 %.sink16.i, %i.e
  store i64 %i.bc, ptr %i.am, align 8, !alias.scope !82718
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RNvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82720)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i4.i = load i64, ptr %i.bd, align 8, !alias.scope !82721 ; 3 uses
  %.pre28.i5.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82721
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82726)
  %i.bf = icmp eq i64 %.pre28.i5.i, %.pre18.i4.i
  br i1 %i.bf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i4.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82727
  %i.bg = load i64, ptr %i.bd, align 8, !alias.scope !82728, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i, %bb.i
  %.sink1.i6.i6.i = phi i64 [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i ], [ %.pre18.i4.i, %bb.i ] ; 3 uses
  %i.bh = icmp sgt i64 %.sink1.i6.i6.i, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load ptr, ptr %i.be, align 8, !alias.scope !82728, !nonnull !409, !noundef !409
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink1.i6.i6.i
  store i8 16, ptr %i.bj, align 1, !noalias !82729
  %i.bk = add nuw i64 %.sink1.i6.i6.i, 1
  store i64 %i.bk, ptr %i.bd, align 8, !alias.scope !82728
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82699
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i, %bb.h
  br i1 %i.ab, label %_RINvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82730)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i9.i = load i64, ptr %i.bl, align 8, !alias.scope !82731 ; 3 uses
  %.pre28.i10.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82736)
  %i.bn = icmp eq i64 %.pre28.i10.i, %.pre18.i9.i
  br i1 %i.bn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i12.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i12.i: ; preds = %bb.k
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i9.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82737
  %i.bo = load i64, ptr %i.bl, align 8, !alias.scope !82738, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i12.i, %bb.k
  %.sink1.i6.i11.i = phi i64 [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i12.i ], [ %.pre18.i9.i, %bb.k ] ; 3 uses
  %i.bp = icmp sgt i64 %.sink1.i6.i11.i, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = load ptr, ptr %i.bm, align 8, !alias.scope !82738, !nonnull !409, !noundef !409
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink1.i6.i11.i
  store i8 24, ptr %i.br, align 1, !noalias !82739
  %i.bs = add nuw i64 %.sink1.i6.i11.i, 1
  store i64 %i.bs, ptr %i.bl, align 8, !alias.scope !82738
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82699
  br label %_RINvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.j, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb13IndexMetadataINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef range(i32 1, 3) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext nneg i32 %i.b to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.c, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.d = tail call fastcc noundef i64 @_RNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB5_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.d, ptr noalias noundef align 8 dereferenceable(24) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82887)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load i64, ptr %i.e, align 8, !range !414, !alias.scope !82886, !noundef !409
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !82886
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val14.i = load i64, ptr %i.h, align 8, !alias.scope !82886
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 1, ptr %.val13.i, i64 %.val14.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82886
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !82886, !nonnull !409, !noundef !409 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !82886, !noundef !409 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82888)
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82889)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i.i = load i64, ptr %i.n, align 8, !alias.scope !82890, !noalias !82888 ; 3 uses
  %.pre28.i.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82890, !noalias !82888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82891), !noalias !82888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82892), !noalias !82888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82893), !noalias !82888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82894), !noalias !82888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82895), !noalias !82888
  %i.p = icmp eq i64 %.pre28.i.i, %.pre18.i.i
  br i1 %i.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i: ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82896
  %i.q = load i64, ptr %i.n, align 8, !alias.scope !82897, !noalias !82888, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i, %bb.d
  %.sink1.i6.i.i = phi i64 [ %i.q, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i ], [ %.pre18.i.i, %bb.d ] ; 3 uses
  %i.r = icmp sgt i64 %.sink1.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.r), !noalias !82888
  %i.s = load ptr, ptr %i.o, align 8, !alias.scope !82897, !noalias !82888, !nonnull !409, !noundef !409
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink1.i6.i.i
  store i8 18, ptr %i.t, align 1, !noalias !82898
  %i.u = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !82897, !noalias !82888
  %xtraiter = and i64 %i.l, 1
  %i.v = icmp eq i64 %i.l, 1
  br i1 %i.v, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %unroll_iter = and i64 %i.l, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.new ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.new ], [ %i.ao, %bb.e ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.new ], [ %niter.next.1, %bb.e ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i32, ptr %i.w, align 4, !alias.scope !82888, !noalias !82899, !noundef !409
  %i.x = or i32 %.val.i.i.i, 1
  %i.y = sext i32 %i.x to i64
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add i64 %i.ad, %.sroa.02.0.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.04.0.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.val.i.i.i.1 = load i32, ptr %i.ag, align 4, !alias.scope !82888, !noalias !82899, !noundef !409
  %i.ah = or i32 %.val.i.i.i.1, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = xor i64 %i.aj, 63
  %i.al = mul nuw nsw i64 %i.ak, 9
  %i.am = add nuw nsw i64 %i.al, 73
  %i.an = lshr i64 %i.am, 6
  %i.ao = add i64 %i.an, %i.ae                    ; 3 uses
  %i.ap = add nuw nsw i64 %.sroa.04.0.i.i.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.e

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.ap, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %i.ao, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i32, ptr %i.aq, align 4, !alias.scope !82888, !noalias !82899, !noundef !409
  %i.ar = or i32 %.val.i.i.i.epil, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.as, i1 true)
  %i.au = xor i64 %i.at, 63
  %i.av = mul nuw nsw i64 %i.au, 9
  %i.aw = add nuw nsw i64 %i.av, 73
  %i.ax = lshr i64 %i.aw, 6
  %i.ay = add i64 %i.ax, %.sroa.02.0.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa10 = phi i64 [ %i.ao, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.ay, %.epil.preheader ]
  %.idx.i.i = shl nuw nsw i64 %i.l, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa10, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82900
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.bb = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !82888, !noalias !82899, !noundef !409
  %i.bc = sext i32 %i.bb to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82900
  %i.bd = icmp eq ptr %i.ba, %i.az
  br i1 %i.bd, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !82886, !noundef !409 ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i = load ptr, ptr %i.bh, align 8, !alias.scope !82886 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82902)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i23.i = load i64, ptr %i.bi, align 8, !alias.scope !82903 ; 3 uses
  %.pre28.i24.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82903
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82908)
  %i.bk = icmp eq i64 %.pre28.i24.i, %.pre18.i23.i
  br i1 %i.bk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i26.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i26.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i23.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82909
  %i.bl = load i64, ptr %i.bi, align 8, !alias.scope !82910, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i26.i, %bb.f
  %.sink1.i6.i25.i = phi i64 [ %i.bl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i26.i ], [ %.pre18.i23.i, %bb.f ] ; 3 uses
  %i.bm = icmp sgt i64 %.sink1.i6.i25.i, -1
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = load ptr, ptr %i.bj, align 8, !alias.scope !82910, !nonnull !409, !noundef !409
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink1.i6.i25.i
  store i8 26, ptr %i.bo, align 1, !noalias !82911
  %i.bp = add nuw i64 %.sink1.i6.i25.i, 1
  store i64 %i.bp, ptr %i.bi, align 8, !alias.scope !82910
  %i.bq = icmp sgt i64 %i.bf, -1
  tail call void @llvm.assume(i1 %i.bq)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82886
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82915)
  %i.br = load i64, ptr %i.bi, align 8, !alias.scope !82916, !noundef !409 ; 3 uses
  %i.bs = load i64, ptr %2, align 8, !range !412, !alias.scope !82916, !noundef !409
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = icmp ugt i64 %i.bf, %i.bt
  br i1 %i.bu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.br, i64 noundef range(i64 0, -9223372036854775808) %i.bf, i64 noundef 1, i64 noundef 1), !noalias !82917
  %i.bv = load i64, ptr %i.bi, align 8, !alias.scope !82918, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i
  %.sink67.i = phi i64 [ %i.bv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i ], [ %i.br, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i ] ; 3 uses
  %i.bw = icmp sgt i64 %.sink67.i, -1
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = load ptr, ptr %i.bj, align 8, !alias.scope !82918, !nonnull !409, !noundef !409
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink67.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.bf, i1 false), !noalias !82919
  %i.bz = add nuw i64 %.sink67.i, %i.bf
  store i64 %i.bz, ptr %i.bi, align 8, !alias.scope !82918
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !82886, !noundef !409 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82920)
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i28.i = load i64, ptr %i.cd, align 8, !alias.scope !82921 ; 3 uses
  %.pre28.i29.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82926)
  %i.cf = icmp eq i64 %.pre28.i29.i, %.pre18.i28.i
  br i1 %i.cf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i31.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit32.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i31.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i28.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82927
  %i.cg = load i64, ptr %i.cd, align 8, !alias.scope !82928, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit32.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit32.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i31.i, %bb.h
  %.sink1.i6.i30.i = phi i64 [ %i.cg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i31.i ], [ %.pre18.i28.i, %bb.h ] ; 3 uses
  %i.ch = icmp sgt i64 %.sink1.i6.i30.i, -1
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = load ptr, ptr %i.ce, align 8, !alias.scope !82928, !nonnull !409, !noundef !409
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink1.i6.i30.i
  store i8 32, ptr %i.cj, align 1, !noalias !82929
  %i.ck = add nuw i64 %.sink1.i6.i30.i, 1
  store i64 %i.ck, ptr %i.cd, align 8, !alias.scope !82928
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82886
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit32.i, %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !82886, !noundef !409 ; 9 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val11.i = load ptr, ptr %i.co, align 8, !alias.scope !82886 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82931)
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i33.i = load i64, ptr %i.cp, align 8, !alias.scope !82932 ; 3 uses
  %.pre28.i34.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82932
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82937)
  %i.cr = icmp eq i64 %.pre28.i34.i, %.pre18.i33.i
  br i1 %i.cr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i36.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit37.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i36.i: ; preds = %bb.j
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i33.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82938
  %i.cs = load i64, ptr %i.cp, align 8, !alias.scope !82939, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit37.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit37.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i36.i, %bb.j
  %.sink1.i6.i35.i = phi i64 [ %i.cs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i36.i ], [ %.pre18.i33.i, %bb.j ] ; 3 uses
  %i.ct = icmp sgt i64 %.sink1.i6.i35.i, -1
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load ptr, ptr %i.cq, align 8, !alias.scope !82939, !nonnull !409, !noundef !409
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sink1.i6.i35.i
  store i8 42, ptr %i.cv, align 1, !noalias !82940
  %i.cw = add nuw i64 %.sink1.i6.i35.i, 1
  store i64 %i.cw, ptr %i.cp, align 8, !alias.scope !82939
  %i.cx = icmp sgt i64 %i.cm, -1
  tail call void @llvm.assume(i1 %i.cx)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82941)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82942)
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !82943, !noundef !409 ; 3 uses
  %i.cz = load i64, ptr %2, align 8, !range !412, !alias.scope !82943, !noundef !409
  %i.da = sub i64 %i.cz, %i.cy
  %i.db = icmp ugt i64 %i.cm, %i.da
  br i1 %i.db, label %.lr.ph.split.us.i.i.i.i, label %_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i.i.i.i, !prof !419

.lr.ph.split.us.i.i.i.i:                          ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit37.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cy, i64 noundef range(i64 0, -9223372036854775808) %i.cm, i64 noundef 1, i64 noundef 1), !noalias !82944
  %.pre.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !82945 ; 3 uses
  %.pre1.i.i.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82945
  %.pre2.i.i.i = sub i64 %.pre1.i.i.i, %.pre.i.i.i
  %i.dc = icmp ugt i64 %i.cm, %.pre2.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82946)
end_hunk_3
begin_hunk_4_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb13IndexMetadataINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.val8.i = load i32, ptr %i.dn, align 4, !alias.scope !82886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82949)
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i38.i = load i64, ptr %i.do, align 8, !alias.scope !82950 ; 3 uses
  %.pre28.i39.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82955)
  %i.dq = icmp eq i64 %.pre28.i39.i, %.pre18.i38.i
  br i1 %i.dq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i41.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i41.i: ; preds = %bb.m
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i38.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82956
  %i.dr = load i64, ptr %i.do, align 8, !alias.scope !82957, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i41.i, %bb.m
  %.sink1.i6.i40.i = phi i64 [ %i.dr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i41.i ], [ %.pre18.i38.i, %bb.m ] ; 3 uses
  %i.ds = icmp sgt i64 %.sink1.i6.i40.i, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = load ptr, ptr %i.dp, align 8, !alias.scope !82957, !nonnull !409, !noundef !409
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sink1.i6.i40.i
  store i8 56, ptr %i.du, align 1, !noalias !82958
  %i.dv = add nuw i64 %.sink1.i6.i40.i, 1
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !82957
  %i.dw = sext i32 %.val8.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82886
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i, %bb.l
  %i.dx = load i64, ptr %1, align 8, !range !435, !alias.scope !82886, !noundef !409
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9.i = load i64, ptr %i.dz, align 8, !alias.scope !82886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82959)
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i43.i = load i64, ptr %i.ea, align 8, !alias.scope !82960 ; 3 uses
  %.pre28.i44.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82965)
  %i.ec = icmp eq i64 %.pre28.i44.i, %.pre18.i43.i
  br i1 %i.ec, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i46.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit47.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i46.i: ; preds = %bb.o
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i43.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82966
  %i.ed = load i64, ptr %i.ea, align 8, !alias.scope !82967, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit47.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit47.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i46.i, %bb.o
  %.sink1.i6.i45.i = phi i64 [ %i.ed, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i46.i ], [ %.pre18.i43.i, %bb.o ] ; 3 uses
  %i.ee = icmp sgt i64 %.sink1.i6.i45.i, -1
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = load ptr, ptr %i.eb, align 8, !alias.scope !82967, !nonnull !409, !noundef !409
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink1.i6.i45.i
  store i8 64, ptr %i.eg, align 1, !noalias !82968
  %i.eh = add nuw i64 %.sink1.i6.i45.i, 1
  store i64 %i.eh, ptr %i.ea, align 8, !alias.scope !82967
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.val9.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82886
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit47.i, %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ej = load i32, ptr %i.ei, align 8, !range !426, !alias.scope !82886, !noundef !409
  %i.ek = trunc nuw i32 %i.ej to i1
  br i1 %i.ek, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.val7.i = load i32, ptr %i.el, align 4, !alias.scope !82886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82969)
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i48.i = load i64, ptr %i.em, align 8, !alias.scope !82970 ; 3 uses
  %.pre28.i49.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82975)
  %i.eo = icmp eq i64 %.pre28.i49.i, %.pre18.i48.i
  br i1 %i.eo, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i51.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit52.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i51.i: ; preds = %bb.q
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i48.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82976
  %i.ep = load i64, ptr %i.em, align 8, !alias.scope !82977, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit52.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit52.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i51.i, %bb.q
  %.sink1.i6.i50.i = phi i64 [ %i.ep, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i51.i ], [ %.pre18.i48.i, %bb.q ] ; 3 uses
  %i.eq = icmp sgt i64 %.sink1.i6.i50.i, -1
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = load ptr, ptr %i.en, align 8, !alias.scope !82977, !nonnull !409, !noundef !409
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sink1.i6.i50.i
  store i8 72, ptr %i.es, align 1, !noalias !82978
  %i.et = add nuw i64 %.sink1.i6.i50.i, 1
  store i64 %i.et, ptr %i.em, align 8, !alias.scope !82977
  %i.eu = zext i32 %.val7.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82886
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit52.i, %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !82886, !nonnull !409, !noundef !409 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !82886, !noundef !409 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ey, 5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx.i
  %i.fa = icmp eq i64 %i.ey, 0
  br i1 %i.fa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.059.i = phi ptr [ %i.fb, %.lr.ph.i ], [ %i.ew, %bb.r ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.059.i, i64 32 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.059.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82886
  %i.fc = icmp eq ptr %i.fb, %i.ez
  br i1 %i.fc, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.r
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !82886, !nonnull !409, !noundef !409 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !82886, !noundef !409 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82979)
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82980)
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i53.i = load i64, ptr %i.fi, align 8, !alias.scope !82981, !noalias !82979 ; 3 uses
  %.pre28.i54.i = load i64, ptr %2, align 8, !range !412, !alias.scope !82981, !noalias !82979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82982), !noalias !82979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82983), !noalias !82979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82984), !noalias !82979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82985), !noalias !82979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82986), !noalias !82979
  %i.fk = icmp eq i64 %.pre28.i54.i, %.pre18.i53.i
  br i1 %i.fk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i56.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i56.i: ; preds = %bb.s
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i53.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !82987
  %i.fl = load i64, ptr %i.fi, align 8, !alias.scope !82988, !noalias !82979, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i56.i, %bb.s
  %.sink1.i6.i55.i = phi i64 [ %i.fl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i56.i ], [ %.pre18.i53.i, %bb.s ] ; 3 uses
  %i.fm = icmp sgt i64 %.sink1.i6.i55.i, -1
  tail call void @llvm.assume(i1 %i.fm), !noalias !82979
  %i.fn = load ptr, ptr %i.fj, align 8, !alias.scope !82988, !noalias !82979, !nonnull !409, !noundef !409
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sink1.i6.i55.i
  store i8 90, ptr %i.fo, align 1, !noalias !82989
  %i.fp = add nuw i64 %.sink1.i6.i55.i, 1
  store i64 %i.fp, ptr %i.fi, align 8, !alias.scope !82988, !noalias !82979
  %xtraiter14 = and i64 %i.fg, 1
  %i.fq = icmp eq i64 %i.fg, 1
  br i1 %i.fq, label %.epil.preheader13, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i
  %unroll_iter18 = and i64 %i.fg, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i.new
  %.sroa.04.0.i.i15.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i.new ], [ %i.gk, %bb.t ] ; 3 uses
  %.sroa.02.0.i.i16.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i.new ], [ %i.gj, %bb.t ]
  %niter19 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i.new ], [ %niter19.next.1, %bb.t ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.sroa.04.0.i.i15.i
  %.val.i.i17.i = load i32, ptr %i.fr, align 4, !alias.scope !82979, !noalias !82899, !noundef !409
  %i.fs = or i32 %.val.i.i17.i, 1
  %i.ft = sext i32 %i.fs to i64
  %i.fu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ft, i1 true)
  %i.fv = xor i64 %i.fu, 63
  %i.fw = mul nuw nsw i64 %i.fv, 9
  %i.fx = add nuw nsw i64 %i.fw, 73
  %i.fy = lshr i64 %i.fx, 6
  %i.fz = add i64 %i.fy, %.sroa.02.0.i.i16.i
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.sroa.04.0.i.i15.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %.val.i.i17.i.1 = load i32, ptr %i.gb, align 4, !alias.scope !82979, !noalias !82899, !noundef !409
  %i.gc = or i32 %.val.i.i17.i.1, 1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gd, i1 true)
  %i.gf = xor i64 %i.ge, 63
  %i.gg = mul nuw nsw i64 %i.gf, 9
  %i.gh = add nuw nsw i64 %i.gg, 73
  %i.gi = lshr i64 %i.gh, 6
  %i.gj = add i64 %i.gi, %i.fz                    ; 3 uses
  %i.gk = add nuw nsw i64 %.sroa.04.0.i.i15.i, 2  ; 2 uses
  %niter19.next.1 = add i64 %niter19, 2           ; 2 uses
  %niter19.ncmp.1 = icmp eq i64 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %.lr.ph.preheader.i18.i.unr-lcssa, label %bb.t

.lr.ph.preheader.i18.i.unr-lcssa:                 ; preds = %bb.t
  %lcmp.mod15.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod15.not, label %.lr.ph.preheader.i18.i, label %.epil.preheader13

.epil.preheader13:                                ; preds = %.lr.ph.preheader.i18.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i
  %.sroa.04.0.i.i15.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i ], [ %i.gk, %.lr.ph.preheader.i18.i.unr-lcssa ]
  %.sroa.02.0.i.i16.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i ], [ %i.gj, %.lr.ph.preheader.i18.i.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %i.fg to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.sroa.04.0.i.i15.i.epil.init
  %.val.i.i17.i.epil = load i32, ptr %i.gl, align 4, !alias.scope !82979, !noalias !82899, !noundef !409
  %i.gm = or i32 %.val.i.i17.i.epil, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gn, i1 true)
  %i.gp = xor i64 %i.go, 63
  %i.gq = mul nuw nsw i64 %i.gp, 9
  %i.gr = add nuw nsw i64 %i.gq, 73
  %i.gs = lshr i64 %i.gr, 6
  %i.gt = add i64 %i.gs, %.sroa.02.0.i.i16.i.epil.init
  br label %.lr.ph.preheader.i18.i

.lr.ph.preheader.i18.i:                           ; preds = %.lr.ph.preheader.i18.i.unr-lcssa, %.epil.preheader13
  %.lcssa = phi i64 [ %i.gj, %.lr.ph.preheader.i18.i.unr-lcssa ], [ %i.gt, %.epil.preheader13 ]
  %.idx.i19.i = shl nuw nsw i64 %i.fg, 2
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.idx.i19.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82990
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.preheader.i18.i
  %.sroa.0.02.i21.i = phi ptr [ %i.gv, %.lr.ph.i20.i ], [ %i.fe, %.lr.ph.preheader.i18.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i21.i, i64 4 ; 2 uses
  %i.gw = load i32, ptr %.sroa.0.02.i21.i, align 4, !alias.scope !82979, !noalias !82899, !noundef !409
  %i.gx = sext i32 %i.gw to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.gx, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !82990
  %i.gy = icmp eq ptr %i.gv, %i.gu
  br i1 %i.gy, label %_RINvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph.i20.i

_RINvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.lr.ph.i20.i, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFileINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef range(i32 2, 12) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext nneg i32 %i.b to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.c, ptr noalias noundef align 8 dereferenceable(24) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83112)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !range !414, !alias.scope !83112, !noundef !409
  %.not.i = icmp eq i64 %i.e, -1                  ; 2 uses
  br i1 %.not.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef i64 @_RNvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) dereferenceable_or_null(96) %i.d) ; 2 uses
  %i.g = or i64 %i.f, 1
  %i.h = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = mul nuw nsw i64 %i.i, 9
  %i.k = add nuw nsw i64 %i.j, 73
  %i.l = lshr i64 %i.k, 6
  %i.m = add i64 %i.f, 1
  %i.n = add i64 %i.m, %i.l
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.o = load i64, ptr %1, align 8, !range !430, !alias.scope !83112, !noundef !409 ; 3 uses
  %.not3.i = icmp eq i64 %i.o, -1                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83113)
  br i1 %.not3.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83115)
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !83116, !nonnull !409, !noundef !409 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !83116, !noundef !409 ; 6 uses
  %i.s = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.d
  %xtraiter = and i64 %.val2.i.i.i.i, 1
  %i.t = icmp eq i64 %.val2.i.i.i.i, 1
  br i1 %i.t, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.val2.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.aq, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ap, %.preheader.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val1.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !83117, !noalias !83116, !noundef !409 ; 3 uses
  %i.w = or i64 %.val.i.i.i.i.i.i.i.i, 1
  %i.x = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = xor i64 %i.x, 63
  %i.z = mul nuw nsw i64 %i.y, 9
  %i.aa = add nuw nsw i64 %i.z, 73
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = icmp sgt i64 %.val.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %.val.i.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i.i.i
  %i.ae = add i64 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.val1.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  %.val.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ag, align 8, !alias.scope !83117, !noalias !83116, !noundef !409 ; 3 uses
  %i.ah = or i64 %.val.i.i.i.i.i.i.i.i.1, 1
  %i.ai = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ah, i1 true)
  %i.aj = xor i64 %i.ai, 63
  %i.ak = mul nuw nsw i64 %i.aj, 9
  %i.al = add nuw nsw i64 %i.ak, 73
  %i.am = lshr i64 %i.al, 6
  %i.an = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.1, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %.val.i.i.i.i.i.i.i.i.1, %i.ae
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.aq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ap, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %.val2.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %.val1.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.epil.init
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %.val.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.as, align 8, !alias.scope !83117, !noalias !83116, !noundef !409 ; 3 uses
  %i.at = or i64 %.val.i.i.i.i.i.i.i.i.epil, 1
  %i.au = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = xor i64 %i.au, 63
  %i.aw = mul nuw nsw i64 %i.av, 9
  %i.ax = add nuw nsw i64 %i.aw, 73
  %i.ay = lshr i64 %i.ax, 6
  %i.az = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.epil, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add i64 %.val.i.i.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.i.i.i.i.epil.init
  %i.bb = add i64 %i.ba, %i.ay
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.epil.preheader, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.loopexit.unr-lcssa ], [ %i.bb, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %i.bc = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %.val2.i.i.i.i ; 2 uses
  %i.bd = or i64 %i.bc, 1
  %i.be = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  br label %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !83116, !noundef !409 ; 3 uses
  %i.bg = or i64 %.val.i.i.i.i, 1
  %i.bh = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = icmp sgt i64 %.val.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.bi)
  br label %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.e, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.val.sink.i.i.i.i = phi i64 [ %.val.i.i.i.i, %bb.e ], [ %i.bc, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.sink3.in.in.in.in.i.i.i.i = phi i64 [ %i.bh, %bb.e ], [ %i.be, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.sink3.in.in.in.i.i.i.i = xor i64 %.sink3.in.in.in.in.i.i.i.i, 63
  %.sink3.in.in.i.i.i.i = mul nuw nsw i64 %.sink3.in.in.in.i.i.i.i, 9
  %.sink3.in.i.i.i.i = add nuw nsw i64 %.sink3.in.in.i.i.i.i, 73
  %.sink3.i.i.i.i = lshr i64 %.sink3.in.i.i.i.i, 6
  %i.bj = add i64 %.val.sink.i.i.i.i, 1
  %i.bk = add i64 %i.bj, %.sink3.i.i.i.i
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sroa.02.0.i4.i = phi i64 [ %i.bk, %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !83112, !noundef !409 ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0                    ; 2 uses
  br i1 %i.bn, label %_RNvXs1A_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.bo = or i64 %i.bm, 1
  %i.bp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = mul nuw nsw i64 %i.bq, 9
  %i.bs = add nuw nsw i64 %i.br, 73
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = add nuw nsw i64 %i.bt, 1
end_hunk_4
begin_hunk_5_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83446)
  %i.cp = icmp eq i64 %.pre28.i21.i, %.pre18.i20.i
  br i1 %i.cp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i23.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i23.i: ; preds = %bb.m
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i20.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83447
  %i.cq = load i64, ptr %i.cn, align 8, !alias.scope !83448, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i23.i, %bb.m
  %.sink1.i6.i22.i = phi i64 [ %i.cq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i23.i ], [ %.pre18.i20.i, %bb.m ] ; 3 uses
  %i.cr = icmp sgt i64 %.sink1.i6.i22.i, -1
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = load ptr, ptr %i.co, align 8, !alias.scope !83448, !nonnull !409, !noundef !409
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sink1.i6.i22.i
  store i8 34, ptr %i.ct, align 1, !noalias !83449
  %i.cu = add nuw i64 %.sink1.i6.i22.i, 1
  store i64 %i.cu, ptr %i.cn, align 8, !alias.scope !83448
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83389
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83453)
  %i.cv = load i64, ptr %i.cn, align 8, !alias.scope !83454, !noundef !409 ; 3 uses
  %i.cw = load i64, ptr %2, align 8, !range !412, !alias.scope !83454, !noundef !409
  %i.cx = sub i64 %i.cw, %i.cv
  %i.cy = icmp ugt i64 %i.ac, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i8.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit9.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i8.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cv, i64 noundef range(i64 0, -9223372036854775808) %i.ac, i64 noundef 1, i64 noundef 1), !noalias !83455
  %i.cz = load i64, ptr %i.cn, align 8, !alias.scope !83456, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit9.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit9.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i8.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i
  %.sink28.i = phi i64 [ %i.cz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i8.i ], [ %i.cv, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i ] ; 3 uses
  %i.da = icmp sgt i64 %.sink28.i, -1
  tail call void @llvm.assume(i1 %i.da)
  %i.db = load ptr, ptr %i.co, align 8, !alias.scope !83456, !nonnull !409, !noundef !409
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sink28.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.ac, i1 false), !noalias !83457
  %i.dd = add nuw i64 %.sink28.i, %i.ac
  store i64 %i.dd, ptr %i.cn, align 8, !alias.scope !83456
  br label %_RINvXsL_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8BasePathNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXsL_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8BasePathNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.l, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit9.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef range(i32 1, 3) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext nneg i32 %i.b to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.c, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.d = tail call fastcc noundef i64 @_RNvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.d, ptr noalias noundef align 8 dereferenceable(24) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83578)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !83577, !noundef !409 ; 7 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !83577 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83580)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i.i = load i64, ptr %i.i, align 8, !alias.scope !83581 ; 3 uses
  %.pre28.i.i = load i64, ptr %2, align 8, !range !412, !alias.scope !83581
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83586)
  %i.k = icmp eq i64 %.pre28.i.i, %.pre18.i.i
  br i1 %i.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83587
  %i.l = load i64, ptr %i.i, align 8, !alias.scope !83588, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i, %bb.b
  %.sink1.i6.i.i = phi i64 [ %i.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i ], [ %.pre18.i.i, %bb.b ] ; 3 uses
  %i.m = icmp sgt i64 %.sink1.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !83588, !nonnull !409, !noundef !409
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink1.i6.i.i
  store i8 10, ptr %i.o, align 1, !noalias !83589
  %i.p = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !83588
  %i.q = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83577
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83593)
  %i.r = load i64, ptr %i.i, align 8, !alias.scope !83594, !noundef !409 ; 3 uses
  %i.s = load i64, ptr %2, align 8, !range !412, !alias.scope !83594, !noundef !409
  %i.t = sub i64 %i.s, %i.r
  %i.u = icmp ugt i64 %i.f, %i.t
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef 1, i64 noundef 1), !noalias !83595
  %i.v = load i64, ptr %i.i, align 8, !alias.scope !83596, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sink52.i = phi i64 [ %i.v, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i ], [ %i.r, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 3 uses
  %i.w = icmp sgt i64 %.sink52.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load ptr, ptr %i.j, align 8, !alias.scope !83596, !nonnull !409, !noundef !409
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink52.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !noalias !83597
  %i.z = add nuw i64 %.sink52.i, %i.f
  store i64 %i.z, ptr %i.i, align 8, !alias.scope !83596
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !83577, !nonnull !409, !noundef !409 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !83577, !noundef !409 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83598)
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83599)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i14.i = load i64, ptr %i.af, align 8, !alias.scope !83600, !noalias !83598 ; 3 uses
  %.pre28.i15.i = load i64, ptr %2, align 8, !range !412, !alias.scope !83600, !noalias !83598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83601), !noalias !83598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83602), !noalias !83598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83603), !noalias !83598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83604), !noalias !83598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83605), !noalias !83598
  %i.ah = icmp eq i64 %.pre28.i15.i, %.pre18.i14.i
  br i1 %i.ah, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i17.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i17.i: ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i14.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83606
  %i.ai = load i64, ptr %i.af, align 8, !alias.scope !83607, !noalias !83598, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i17.i, %bb.d
  %.sink1.i6.i16.i = phi i64 [ %i.ai, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i17.i ], [ %.pre18.i14.i, %bb.d ] ; 3 uses
  %i.aj = icmp sgt i64 %.sink1.i6.i16.i, -1
  tail call void @llvm.assume(i1 %i.aj), !noalias !83598
  %i.ak = load ptr, ptr %i.ag, align 8, !alias.scope !83607, !noalias !83598, !nonnull !409, !noundef !409
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink1.i6.i16.i
  store i8 18, ptr %i.al, align 1, !noalias !83608
  %i.am = add nuw i64 %.sink1.i6.i16.i, 1
  store i64 %i.am, ptr %i.af, align 8, !alias.scope !83607, !noalias !83598
  %xtraiter = and i64 %i.ad, 1
  %i.an = icmp eq i64 %i.ad, 1
  br i1 %i.an, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i
  %unroll_iter = and i64 %i.ad, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i.new ], [ %i.bh, %bb.e ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i.new ], [ %i.bg, %bb.e ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i.new ], [ %niter.next.1, %bb.e ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i32, ptr %i.ao, align 4, !alias.scope !83598, !noalias !83609, !noundef !409
  %i.ap = or i32 %.val.i.i.i, 1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = xor i64 %i.ar, 63
  %i.at = mul nuw nsw i64 %i.as, 9
  %i.au = add nuw nsw i64 %i.at, 73
  %i.av = lshr i64 %i.au, 6
  %i.aw = add i64 %i.av, %.sroa.02.0.i.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.04.0.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.val.i.i.i.1 = load i32, ptr %i.ay, align 4, !alias.scope !83598, !noalias !83609, !noundef !409
  %i.az = or i32 %.val.i.i.i.1, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63
  %i.bd = mul nuw nsw i64 %i.bc, 9
  %i.be = add nuw nsw i64 %i.bd, 73
  %i.bf = lshr i64 %i.be, 6
  %i.bg = add i64 %i.bf, %i.aw                    ; 3 uses
  %i.bh = add nuw nsw i64 %.sroa.04.0.i.i.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.e

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i ], [ %i.bh, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i ], [ %i.bg, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i32, ptr %i.bi, align 4, !alias.scope !83598, !noalias !83609, !noundef !409
  %i.bj = or i32 %.val.i.i.i.epil, 1
  %i.bk = sext i32 %i.bj to i64
  %i.bl = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bk, i1 true)
  %i.bm = xor i64 %i.bl, 63
  %i.bn = mul nuw nsw i64 %i.bm, 9
  %i.bo = add nuw nsw i64 %i.bn, 73
  %i.bp = lshr i64 %i.bo, 6
  %i.bq = add i64 %i.bp, %.sroa.02.0.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa10 = phi i64 [ %i.bg, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.bq, %.epil.preheader ]
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa10, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83610
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.bt = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !83598, !noalias !83609, !noundef !409
  %i.bu = sext i32 %i.bt to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83610
  %i.bv = icmp eq ptr %i.bs, %i.br
  br i1 %i.bv, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !83577, !nonnull !409, !noundef !409 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !83577, !noundef !409 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83611)
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83612)
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i19.i = load i64, ptr %i.cb, align 8, !alias.scope !83613, !noalias !83611 ; 3 uses
  %.pre28.i20.i = load i64, ptr %2, align 8, !range !412, !alias.scope !83613, !noalias !83611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83614), !noalias !83611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83615), !noalias !83611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83616), !noalias !83611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83617), !noalias !83611
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83618), !noalias !83611
  %i.cd = icmp eq i64 %.pre28.i20.i, %.pre18.i19.i
  br i1 %i.cd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i22.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i22.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i19.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83619
  %i.ce = load i64, ptr %i.cb, align 8, !alias.scope !83620, !noalias !83611, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i22.i, %bb.f
  %.sink1.i6.i21.i = phi i64 [ %i.ce, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i22.i ], [ %.pre18.i19.i, %bb.f ] ; 3 uses
  %i.cf = icmp sgt i64 %.sink1.i6.i21.i, -1
  tail call void @llvm.assume(i1 %i.cf), !noalias !83611
  %i.cg = load ptr, ptr %i.cc, align 8, !alias.scope !83620, !noalias !83611, !nonnull !409, !noundef !409
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sink1.i6.i21.i
  store i8 26, ptr %i.ch, align 1, !noalias !83621
  %i.ci = add nuw i64 %.sink1.i6.i21.i, 1
  store i64 %i.ci, ptr %i.cb, align 8, !alias.scope !83620, !noalias !83611
  %xtraiter14 = and i64 %i.bz, 1
  %i.cj = icmp eq i64 %i.bz, 1
  br i1 %i.cj, label %.epil.preheader13, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i
  %unroll_iter18 = and i64 %i.bz, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.new
  %.sroa.04.0.i.i6.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.new ], [ %i.dd, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i7.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.new ], [ %i.dc, %bb.g ]
  %niter19 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i.new ], [ %niter19.next.1, %bb.g ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.04.0.i.i6.i
  %.val.i.i8.i = load i32, ptr %i.ck, align 4, !alias.scope !83611, !noalias !83609, !noundef !409
  %i.cl = or i32 %.val.i.i8.i, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = xor i64 %i.cn, 63
  %i.cp = mul nuw nsw i64 %i.co, 9
  %i.cq = add nuw nsw i64 %i.cp, 73
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = add i64 %i.cr, %.sroa.02.0.i.i7.i
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.04.0.i.i6.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %.val.i.i8.i.1 = load i32, ptr %i.cu, align 4, !alias.scope !83611, !noalias !83609, !noundef !409
  %i.cv = or i32 %.val.i.i8.i.1, 1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = xor i64 %i.cx, 63
  %i.cz = mul nuw nsw i64 %i.cy, 9
  %i.da = add nuw nsw i64 %i.cz, 73
  %i.db = lshr i64 %i.da, 6
  %i.dc = add i64 %i.db, %i.cs                    ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.04.0.i.i6.i, 2   ; 2 uses
  %niter19.next.1 = add i64 %niter19, 2           ; 2 uses
  %niter19.ncmp.1 = icmp eq i64 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %.lr.ph.preheader.i9.i.unr-lcssa, label %bb.g

.lr.ph.preheader.i9.i.unr-lcssa:                  ; preds = %bb.g
  %lcmp.mod15.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod15.not, label %.lr.ph.preheader.i9.i, label %.epil.preheader13

.epil.preheader13:                                ; preds = %.lr.ph.preheader.i9.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i
  %.sroa.04.0.i.i6.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i ], [ %i.dd, %.lr.ph.preheader.i9.i.unr-lcssa ]
  %.sroa.02.0.i.i7.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i ], [ %i.dc, %.lr.ph.preheader.i9.i.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.04.0.i.i6.i.epil.init
  %.val.i.i8.i.epil = load i32, ptr %i.de, align 4, !alias.scope !83611, !noalias !83609, !noundef !409
  %i.df = or i32 %.val.i.i8.i.epil, 1
  %i.dg = sext i32 %i.df to i64
  %i.dh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true)
  %i.di = xor i64 %i.dh, 63
  %i.dj = mul nuw nsw i64 %i.di, 9
  %i.dk = add nuw nsw i64 %i.dj, 73
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = add i64 %i.dl, %.sroa.02.0.i.i7.i.epil.init
  br label %.lr.ph.preheader.i9.i

.lr.ph.preheader.i9.i:                            ; preds = %.lr.ph.preheader.i9.i.unr-lcssa, %.epil.preheader13
  %.lcssa = phi i64 [ %i.dc, %.lr.ph.preheader.i9.i.unr-lcssa ], [ %i.dm, %.epil.preheader13 ]
  %.idx.i10.i = shl nuw nsw i64 %i.bz, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i10.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83622
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i9.i
  %.sroa.0.02.i12.i = phi ptr [ %i.do, %.lr.ph.i11.i ], [ %i.bx, %.lr.ph.preheader.i9.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i12.i, i64 4 ; 2 uses
  %i.dp = load i32, ptr %.sroa.0.02.i12.i, align 4, !alias.scope !83611, !noalias !83609, !noundef !409
  %i.dq = sext i32 %i.dp to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83622
  %i.dr = icmp eq ptr %i.do, %i.dn
  br i1 %i.dr, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i, label %.lr.ph.i11.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i: ; preds = %.lr.ph.i11.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dt = load i32, ptr %i.ds, align 8, !alias.scope !83577, !noundef !409 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83623)
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i24.i = load i64, ptr %i.dv, align 8, !alias.scope !83624 ; 3 uses
  %.pre28.i25.i = load i64, ptr %2, align 8, !range !412, !alias.scope !83624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83629)
  %i.dx = icmp eq i64 %.pre28.i25.i, %.pre18.i24.i
  br i1 %i.dx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i27.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit28.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i27.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i24.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83630
  %i.dy = load i64, ptr %i.dv, align 8, !alias.scope !83631, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit28.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit28.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i27.i, %bb.h
  %.sink1.i6.i26.i = phi i64 [ %i.dy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i27.i ], [ %.pre18.i24.i, %bb.h ] ; 3 uses
  %i.dz = icmp sgt i64 %.sink1.i6.i26.i, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.dw, align 8, !alias.scope !83631, !nonnull !409, !noundef !409
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.sink1.i6.i26.i
  store i8 32, ptr %i.eb, align 1, !noalias !83632
  %i.ec = add nuw i64 %.sink1.i6.i26.i, 1
  store i64 %i.ec, ptr %i.dv, align 8, !alias.scope !83631
  %i.ed = zext i32 %i.dt to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ed, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83577
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit28.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ef = load i32, ptr %i.ee, align 4, !alias.scope !83577, !noundef !409 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83633)
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i29.i = load i64, ptr %i.eh, align 8, !alias.scope !83634 ; 3 uses
  %.pre28.i30.i = load i64, ptr %2, align 8, !range !412, !alias.scope !83634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83639)
  %i.ej = icmp eq i64 %.pre28.i30.i, %.pre18.i29.i
  br i1 %i.ej, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i32.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit33.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i32.i: ; preds = %bb.j
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i29.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83640
  %i.ek = load i64, ptr %i.eh, align 8, !alias.scope !83641, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit33.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit33.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i32.i, %bb.j
  %.sink1.i6.i31.i = phi i64 [ %i.ek, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i32.i ], [ %.pre18.i29.i, %bb.j ] ; 3 uses
  %i.el = icmp sgt i64 %.sink1.i6.i31.i, -1
  tail call void @llvm.assume(i1 %i.el)
  %i.em = load ptr, ptr %i.ei, align 8, !alias.scope !83641, !nonnull !409, !noundef !409
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink1.i6.i31.i
  store i8 40, ptr %i.en, align 1, !noalias !83642
  %i.eo = add nuw i64 %.sink1.i6.i31.i, 1
  store i64 %i.eo, ptr %i.eh, align 8, !alias.scope !83641
  %i.ep = zext i32 %i.ef to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ep, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83577
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit33.i, %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !83577, !noundef !409 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83643)
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i34.i = load i64, ptr %i.et, align 8, !alias.scope !83644 ; 3 uses
  %.pre28.i35.i = load i64, ptr %2, align 8, !range !412, !alias.scope !83644
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83649)
  %i.ev = icmp eq i64 %.pre28.i35.i, %.pre18.i34.i
  br i1 %i.ev, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i37.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i37.i: ; preds = %bb.l
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i34.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83650
  %i.ew = load i64, ptr %i.et, align 8, !alias.scope !83651, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i37.i, %bb.l
  %.sink1.i6.i36.i = phi i64 [ %i.ew, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i37.i ], [ %.pre18.i34.i, %bb.l ] ; 3 uses
  %i.ex = icmp sgt i64 %.sink1.i6.i36.i, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load ptr, ptr %i.eu, align 8, !alias.scope !83651, !nonnull !409, !noundef !409
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.sink1.i6.i36.i
  store i8 48, ptr %i.ez, align 1, !noalias !83652
  %i.fa = add nuw i64 %.sink1.i6.i36.i, 1
  store i64 %i.fa, ptr %i.et, align 8, !alias.scope !83651
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.er, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83577
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i, %bb.k
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fc = load i32, ptr %i.fb, align 8, !range !426, !alias.scope !83577, !noundef !409
  %i.fd = trunc nuw i32 %i.fc to i1
  br i1 %i.fd, label %bb.n, label %_RINvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.n:                                             ; preds = %bb.m
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.val2.i = load i32, ptr %i.fe, align 4, !alias.scope !83577
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83653)
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i39.i = load i64, ptr %i.ff, align 8, !alias.scope !83654 ; 3 uses
  %.pre28.i40.i = load i64, ptr %2, align 8, !range !412, !alias.scope !83654
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83659)
  %i.fh = icmp eq i64 %.pre28.i40.i, %.pre18.i39.i
  br i1 %i.fh, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i42.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit43.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i42.i: ; preds = %bb.n
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i39.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83660
  %i.fi = load i64, ptr %i.ff, align 8, !alias.scope !83661, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit43.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit43.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i42.i, %bb.n
  %.sink1.i6.i41.i = phi i64 [ %i.fi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i42.i ], [ %.pre18.i39.i, %bb.n ] ; 3 uses
  %i.fj = icmp sgt i64 %.sink1.i6.i41.i, -1
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = load ptr, ptr %i.fg, align 8, !alias.scope !83661, !nonnull !409, !noundef !409
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sink1.i6.i41.i
  store i8 56, ptr %i.fl, align 1, !noalias !83662
  %i.fm = add nuw i64 %.sink1.i6.i41.i, 1
  store i64 %i.fm, ptr %i.ff, align 8, !alias.scope !83661
  %i.fn = zext i32 %.val2.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83577
  br label %_RINvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.m, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit43.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef range(i32 5, 11) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
end_hunk_5
begin_hunk_6_@_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTNtNtBY_6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtBW_3VecTB1G_INtNtBY_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !123540
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.w, %.body.i.i
  resume { ptr, i32 } %.pn.i.i

bb.w:                                             ; preds = %.body.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.v, !noalias !123540

_RINvXso_NtCscI6d9CVNmLh_4core6resultINtB6_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBQ_6string6StringINtNtBQ_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B3k_EE9from_iterINtNtNtB48_8adapters3map3MapINtNtBO_9into_iter8IntoIterTB1j_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !123540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !123540
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1J_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2A_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtB1N_3vec3VecTB1J_B1J_EEEB2C_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.48.i.i.i.i.i = alloca [40 x i8], align 8 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i = alloca [40 x i8], align 8  ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123627)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !123628 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !123628 ; 2 uses
  %.sroa.81.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.81.0.copyload.i = load i16, ptr %.sroa.81.0..sroa_idx.i, align 8, !alias.scope !123628 ; 2 uses
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.92.0.copyload.i = load i64, ptr %.sroa.92.0..sroa_idx.i, align 8, !alias.scope !123628 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !123631
  %i.g = icmp eq i64 %.sroa.92.0.copyload.i, 0
  br i1 %i.g, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %.sroa.81.0.copyload.i, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.b ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !123632
  %i.j = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.j to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.b ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.010.0.copyload.i.i.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.81.0.copyload.i, %bb.b ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.m = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i.i.i.i.i.i.i
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [48 x i8], ptr %.sroa.010.0.copyload.i.i.i, i64 %i.q ; 2 uses
  %i.s = add nsw i64 %.sroa.92.0.copyload.i, -1   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -48
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !123633
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !noalias !123634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !123633
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i unwind label %bb.c, !noalias !123635

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123637)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !412, !alias.scope !123638, !noalias !123633, !noundef !409 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %common.resume.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !123638, !noalias !123633, !nonnull !409, !noundef !409
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !123639
  br label %common.resume.i.i.i

common.resume.i.i.i:                              ; preds = %.body.i.i.i, %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.d, %bb.c
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.v, %bb.d ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %i.aa, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !123640 ; 4 uses
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.417.i.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !123631 ; 3 uses
  %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.417.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !123631
  %.sroa.417.i.sroa.5.16.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !123631 ; 3 uses
  %.sroa.417.i.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.417.i.sroa.7.16.copyload.i.i = load ptr, ptr %.sroa.417.i.sroa.7.16..sroa_idx.i.i, align 8, !noalias !123631 ; 3 uses
  %.sroa.417.i.sroa.8.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.417.i.sroa.8.16.copyload.i.i = load i64, ptr %.sroa.417.i.sroa.8.16..sroa_idx.i.i, align 8, !noalias !123631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !123633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !123633
  %.not.i.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, label %bb.h

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !123641
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !123641
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !123641
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit

bb.e:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.016.0.copyload.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.0.0.copyload.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.0.0.copyload.i.i, i64 noundef %.sroa.016.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !123642
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.ac = icmp eq i64 %.sroa.417.i.sroa.5.16.copyload.i.i, 0
  br i1 %i.ac, label %common.resume.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.7.16.copyload.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.7.16.copyload.i.i, i64 noundef %.sroa.417.i.sroa.5.16.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !123643
  br label %common.resume.i.i.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.92.0.copyload.i, i64 4) ; 3 uses
  %i.ad = mul i64 %.sroa.0.0.i.i.i.i, 48          ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.sroa.92.0.copyload.i, 192153584101141162
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.i, !prof !434

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !123644
  %i.af = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, 17) 8) #68, !noalias !123644 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ad) #72
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !123631

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.af, %bb.j ] ; 8 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i.i.i, %bb.j ] ; 2 uses
  %i.ah = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.ah)
  store i64 %.sroa.016.0.copyload.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !123631
  %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.417.i.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !123631
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.417.i.sroa.4.0.copyload.i.i, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !123631
  %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 24
  store i64 %.sroa.417.i.sroa.5.16.copyload.i.i, ptr %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !123631
  %.sroa.8.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 32
  store ptr %.sroa.417.i.sroa.7.16.copyload.i.i, ptr %.sroa.8.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !123631
  %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 40
  store i64 %.sroa.417.i.sroa.8.16.copyload.i.i, ptr %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !123631
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.f, align 8, !noalias !123631
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !123631
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !123631
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123646)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.ai = icmp eq i64 %i.s, 0
  br i1 %i.ai, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.48.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.48.i.i.i.i.i, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aj = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.be, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ]
  %i.ak = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 5 uses
  %.lcssa21.i.i.i.i.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i.i.i.i.i ], [ %.lcssa20.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %i.al = phi i16 [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.val1217.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.ax, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.lcssa111516.i.i.i.i.i = phi ptr [ %.sroa.010.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.lcssa1114.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.am = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.an = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa111516.i.i.i.i.i, %bb.m ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.am, align 16, !noalias !123647
  %i.ao = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -768 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ao to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.m
  %.lcssa20.i.i.i.i.i = phi ptr [ %.lcssa21.i.i.i.i.i, %bb.m ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa1114.i.i.i.i.i = phi ptr [ %.lcssa111516.i.i.i.i.i, %bb.m ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.al, %bb.m ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ar = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = and i16 %i.ar, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [48 x i8], ptr %.lcssa1114.i.i.i.i.i, i64 %i.av ; 2 uses
  %i.ax = add i64 %.val1217.i.i.i.i.i, -1         ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123648
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %.noexc6.i.i.i unwind label %bb.s, !noalias !123631

.noexc6.i.i.i:                                    ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123648
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i unwind label %bb.n, !noalias !123649

bb.n:                                             ; preds = %.noexc6.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123651)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !412, !alias.scope !123652, !noalias !123648, !noundef !409 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bb, label %.body.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !123652, !noalias !123648, !nonnull !409, !noundef !409
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !123653
  br label %.body.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i: ; preds = %.noexc6.i.i.i
  %.sroa.07.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !123654 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !123654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !123654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i.i.i.i.i, i64 40, i1 false), !noalias !123655
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i.i.i)
  %.not.i.i5.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i5.i.i.i, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !123656
  store i64 %.sroa.07.0.copyload.i.i.i.i.i, ptr %i.c, align 8, !noalias !123656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i, i64 40, i1 false), !noalias !123656
  %2 = icmp samesign ult i64 %i.ak, 192153584101141163
  tail call void @llvm.assume(i1 %2)
  %i.bc = load i64, ptr %i.f, align 8, !range !412, !alias.scope !123657, !noalias !123631, !noundef !409
  %i.bd = icmp eq i64 %i.ak, %i.bc
  br i1 %i.bd, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i, %bb.p
  %i.be = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i ], [ %i.aj, %bb.p ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !123656
  %i.bg = add nuw nsw i64 %i.ak, 1                ; 2 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !123657, !noalias !123631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !123656
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bh = icmp eq i64 %i.ax, 0
  br i1 %i.bh, label %.loopexit.i.i.i, label %bb.m

bb.q:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.c) #73, !noalias !123656
  br label %.body.i.i.i

bb.r:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %.val1217.i.i.i.i.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i unwind label %bb.q, !noalias !123658

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !123657, !noalias !123631
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.s:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.s, %bb.q, %bb.o, %bb.n
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %i.bi, %bb.q ], [ %i.ba, %bb.o ], [ %i.ba, %bb.n ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.f) #73, !noalias !123631
  br label %common.resume.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !123659
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit

_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !123631
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3b_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtB1O_3vec3VecB1J_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123694)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !123695
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !noalias !123696, !nonnull !409, !noundef !409 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noalias !123696, !noundef !409
  switch i64 %i.i, label %bb.c [
    i64 6, label %.split.i.i.i.i.i.i
    i64 8, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !123696, !nonnull !409, !noundef !409 ; 2 uses
  %i.l = load i32, ptr %i.k, align 1
  %i.m = xor i32 %i.l, 2003792479
  %i.n = getelementptr i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i32
  %i.q = xor i32 %i.p, 25705
  %i.r = or i32 %i.m, %i.q
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !123696, !nonnull !409, !noundef !409
  %i.w = load i64, ptr %i.v, align 1
  %i.x = icmp ne i64 %i.w, 8242823587773248095
  %i.y = zext i1 %i.x to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  %i.z = icmp eq ptr %i.f, %2
  br i1 %i.z, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !123697
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !123695
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !alias.scope !123695
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ad, align 8, !alias.scope !123695
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1O_8adapters6cloned6ClonedINtNtB30_6filter6FilterINtNtNtB1Q_5slice4iter4IterBG_ENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4v_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !123698
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.q, !noalias !123695

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123695
  store ptr %i.g, ptr %i.b, align 8, !noalias !123695
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !123699
  %i.ah = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #68, !noalias !123699 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #72
          to label %.noexc9.i.i.i unwind label %bb.e, !noalias !123695

.noexc9.i.i.i:                                    ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  store ptr %i.g, ptr %i.ah, align 8, !noalias !123695
  store i64 4, ptr %i.c, align 8, !noalias !123695
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !123695
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !123695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123695
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123701)
  %i.aj = icmp eq ptr %i.f, %2
  br i1 %i.aj, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB2i_6filter6FilterINtNtNtB2m_5slice4iter4IterBR_ENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB49_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0EEE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %bb.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.ak = phi ptr [ %i.bn, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.ah, %bb.i ]
  %i.al = phi i64 [ %i.bp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 1, %bb.i ] ; 5 uses
  %.sroa.0.017.i.i.i.i.i = phi ptr [ %i.an, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.f, %bb.i ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.j, %.lr.ph.i.i.i.preheader.i.i.i.i.i
  %i.am = phi ptr [ %i.an, %bb.j ], [ %.sroa.0.017.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !123702, !nonnull !409, !noundef !409 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !123702, !noundef !409
  switch i64 %i.aq, label %bb.k [
    i64 6, label %.split.i.i.i.i.i.i.i.i
    i64 8, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !123702, !nonnull !409, !noundef !409 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1
  %i.au = xor i32 %i.at, 2003792479
  %i.av = getelementptr i8, ptr %i.as, i64 4
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = xor i32 %i.ax, 25705
  %i.az = or i32 %i.au, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !123702, !nonnull !409, !noundef !409
  %i.be = load i64, ptr %i.bd, align 1
  %i.bf = icmp ne i64 %i.be, 8242823587773248095
  %i.bg = zext i1 %i.bf to i32
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

end_hunk_6
begin_hunk_7_@_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtB13_3vec3VecBZ_EECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !124143
  %.sroa.1715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.1715.0.copyload.i = load i16, ptr %.sroa.1715.0..sroa_idx.i, align 8, !alias.scope !124143 ; 2 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 50
  %.sroa.1919.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.1919.0.copyload.i = load i64, ptr %.sroa.1919.0..sroa_idx.i, align 8, !alias.scope !124143 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124146
  %i.c = icmp eq i64 %.sroa.1919.0.copyload.i, 0
  br i1 %i.c, label %.thread.i.i.i, label %bb.b

.thread.i.i.i:                                    ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !124147
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !124147
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !alias.scope !124147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124146
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not12.i.i.i.i.i.i = icmp eq i16 %.sroa.1715.0.copyload.i, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.f = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.13.0.copyload.i, %bb.b ] ; 2 uses
  %i.g = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.b ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.f, align 16, !noalias !124148
  %i.h = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -384 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.h to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %.sroa.13.0.i = phi ptr [ %.sroa.13.0.copyload.i, %bb.b ], [ %i.j, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i = phi ptr [ %.sroa.10.0.copyload.i, %bb.b ], [ %i.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.1715.0.copyload.i, %bb.b ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.k = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.m = zext nneg i16 %i.l to i64
  %i.n = and i16 %i.k, %.lcssa.i.i.i.i.i.i        ; 4 uses
  %i.o = sub nsw i64 0, %i.m
  %i.p = getelementptr inbounds [24 x i8], ptr %.sroa.10.0.i, i64 %i.o ; 3 uses
  %i.q = add i64 %.sroa.1919.0.copyload.i, -1     ; 7 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !124149 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !124147
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !124147
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !124147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124146
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.0.i, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %i.ai, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %i.q, %bb.c ]
  %.lcssa58.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa57.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i, %bb.c ] ; 2 uses
  %i.w = phi i16 [ %i.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.x = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !124150
  %i.z = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -384 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.z to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i
  %.lcssa11.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa57.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa58.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.w, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ac = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, -1
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = and i16 %i.ac, %.lcssa.i.i.i.i.i.i.i.i.i.i
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [24 x i8], ptr %.lcssa57.i.i.i.i.i.i.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = add i64 %i.v, -1                        ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -24
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !range !412, !alias.scope !124151, !noalias !124152, !noundef !409 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr i8, ptr %i.ah, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !noalias !124152, !nonnull !409, !noundef !409
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !124153
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.thread.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.am = icmp eq i64 %.sroa.6.0.copyload.i, 0
  %or.cond.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.am
  br i1 %or.cond.i, label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !124154
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.ao, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !124155
  br label %bb.s

bb.h:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !124156 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i, align 8, !noalias !124156
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.1919.0.copyload.i, i64 4) ; 3 uses
  %i.ap = mul i64 %.sroa.0.0.i.i.i.i, 24          ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.sroa.1919.0.copyload.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.i, !prof !434

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !124157
  %i.ar = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef range(i64 1, 17) 8) #68, !noalias !124157 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ap) #72
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !124146

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ar, %bb.j ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i.i.i, %bb.j ] ; 2 uses
  %i.at = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.at)
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !124146
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !124146
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !124146
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.b, align 8, !noalias !124146
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !124146
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !124146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124146
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !124158
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !noalias !124158
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx6.i, align 8, !noalias !124158
  %.sroa.10.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx9.i, align 8, !noalias !124158
  %.sroa.13.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx11.i, align 8, !noalias !124158
  %.sroa.17.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.17.0.copyload.i, ptr %.sroa.17.0..sroa_idx13.i, align 8, !noalias !124158
  %.sroa.1715.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i16 %i.n, ptr %.sroa.1715.0..sroa_idx16.i, align 8, !noalias !124158
  %.sroa.19.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx18.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !noalias !124141
  %.sroa.1919.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i64 %i.q, ptr %.sroa.1919.0..sroa_idx20.i, align 8, !noalias !124158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124162)
  %i.au = icmp eq i64 %i.q, 0
  br i1 %i.au, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.av = phi ptr [ %i.cg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.l ]
  %i.aw = phi i64 [ %i.ci, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 1, %bb.l ] ; 5 uses
  %.lcssa1528.i.i.i.i.i = phi ptr [ %.promoted10.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.13.0.i, %bb.l ] ; 2 uses
  %.lcssa1625.i.i.i.i.i = phi ptr [ %.promoted6.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.10.0.i, %bb.l ] ; 2 uses
  %i.ax = phi i16 [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.n, %bb.l ] ; 2 uses
  %.val1920.i.i.i.i.i = phi i64 [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.q, %bb.l ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124165)
  %.not12.i.i.i.i.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %.sroa.13.0..sroa_idx11.i, align 8, !alias.scope !124166, !noalias !124146
  store ptr %i.bb, ptr %.sroa.10.0..sroa_idx9.i, align 8, !alias.scope !124166, !noalias !124146
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa1528.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.az = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa1625.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ay, align 16, !noalias !124167
  %i.ba = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -384 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ba to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.promoted10.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bc, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.lcssa1528.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.promoted6.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.lcssa1625.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bd = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.lcssa.i.i.i.i.i.i.i.i  ; 3 uses
  %i.bh = sub nsw i64 0, %i.bf
  %i.bi = getelementptr inbounds [24 x i8], ptr %.promoted6.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bh ; 3 uses
  %i.bj = add i64 %.val1920.i.i.i.i.i, -1         ; 6 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !124168 ; 4 uses
  %.not.i.i.i5.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i5.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i, label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #73, !noalias !124169
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73, !noalias !124146
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.m:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !124170 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, align 8, !noalias !124170
  %2 = icmp samesign ult i64 %i.aw, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.bl = load i64, ptr %i.b, align 8, !range !412, !alias.scope !124171, !noalias !124146, !noundef !409
  %i.bm = icmp eq i64 %i.aw, %i.bl
  br i1 %i.bm, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.bn = icmp eq i64 %i.bj, 0
  br i1 %i.bn, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted10.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bo = phi i64 [ %i.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bj, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i ]
  %.lcssa58.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa57.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted6.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bp = phi i16 [ %i.by, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bg, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.br = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bq, align 16, !noalias !124172
  %i.bs = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -384 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa11.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa57.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa58.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bp, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = and i16 %i.bv, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = sub nsw i64 0, %i.bx
  %i.ca = getelementptr inbounds [24 x i8], ptr %.lcssa57.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bz ; 2 uses
  %i.cb = add i64 %i.bo, -1                       ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -24
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !range !412, !alias.scope !124173, !noalias !124174, !noundef !409 ; 2 uses
  %i.cd = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = getelementptr i8, ptr %i.ca, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !noalias !124174, !nonnull !409, !noundef !409
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !124175
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i, %bb.l
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.cf = icmp eq i64 %.sroa.6.0.copyload.i, 0
  %or.cond22.i = select i1 %.not.i.i.i.i.i.i.i6.i.i.i, i1 true, i1 %i.cf
  br i1 %or.cond22.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !124176
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i, %bb.m
  %i.cg = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i ], [ %i.av, %bb.m ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.aw ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.ch, align 8, !noalias !124177
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !124177
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 8, !noalias !124177
  %i.ci = add nuw nsw i64 %i.aw, 1                ; 2 uses
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !124171, !noalias !124146
  %i.cj = icmp eq i64 %i.bj, 0
  br i1 %i.cj, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.p:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bg, ptr %.sroa.1715.0..sroa_idx16.i, align 8, !alias.scope !124166, !noalias !124146
  store i64 %i.bj, ptr %.sroa.1919.0..sroa_idx20.i, align 8, !alias.scope !124178, !noalias !124146
  %i.cl = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !124179
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.m
  %i.cm = tail call i64 @llvm.uadd.sat.i64(i64 %i.bj, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.aw, i64 noundef %i.cm, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i unwind label %bb.p, !noalias !124180

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !124171, !noalias !124146
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.o, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !124181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124146
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.u, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.pn17.i.i.i = phi { ptr, i32 } [ %i.ck, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.an, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ], [ %i.an, %bb.u ]
  resume { ptr, i32 } %.pn17.i.i.i

bb.s:                                             ; preds = %bb.g, %bb.f
  %i.cn = icmp eq i64 %i.q, 0
  br i1 %i.cn, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa11.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %.sroa.13.0.i, %bb.s ] ; 2 uses
  %i.co = phi i64 [ %i.db, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %i.q, %bb.s ]
  %.lcssa58.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa57.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i, %bb.s ] ; 2 uses
  %i.cp = phi i16 [ %i.cy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ], [ %i.n, %bb.s ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cq = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cq, align 16, !noalias !124182
  %i.cs = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -384 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.lcssa11.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.lcssa57.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa58.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cp, %.preheader.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cv = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = and i16 %i.cv, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.cz = sub nsw i64 0, %i.cx
  %i.da = getelementptr inbounds [24 x i8], ptr %.lcssa57.i.i.i.i.i.i.i.i, i64 %i.cz ; 2 uses
  %i.db = add i64 %i.co, -1                       ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 -24
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8, !range !412, !alias.scope !124183, !noalias !124184, !noundef !409 ; 2 uses
  %i.dd = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.dd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.de = getelementptr i8, ptr %i.da, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !noalias !124184, !nonnull !409, !noundef !409
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !124185
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.old3.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.s
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.df = icmp eq i64 %.sroa.6.0.copyload.i, 0
  %or.cond23.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.df
  br i1 %or.cond23.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !124186
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.e, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCs40MM8ukkVQd_9sqlparser3ast10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 {
bb.a:
  %.idx = shl nuw nsw i64 %1, 6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !409, !noalias !124266, !nonnull !409 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 144 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 56 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXssf_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.0.03 = phi ptr [ %0, %.lr.ph ], [ %i.i, %_RINvXssf_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124267)
  %i.j = load i64, ptr %.sroa.0.03, align 8, !range !519, !alias.scope !124267, !noundef !409 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = add i64 %i.j, -9223372036854775807
  %i.m = select i1 %i.k, i64 %i.l, i64 0          ; 2 uses
  tail call void %i.d(ptr noundef nonnull %.0.val, i64 noundef %i.m), !noalias !124266, !inline_history !124191
end_hunk_7
begin_hunk_8_@_RNCINvXs_NtCsjjbR6Jfsbqw_8lance_io6traitsINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB7_6WriterEL_ENtB7_8WriteExt14write_protobufNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8MetadataE0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.bb = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.bb, align 8, !noalias !132946, !nonnull !409, !align !410, !noundef !409
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !409, !noalias !132947, !nonnull !409
  %i.be = invoke { i64, ptr } %i.bd(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef range(i64 1, 9) %i.az)
          to label %.noexc unwind label %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !132834 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.bf = extractvalue { i64, ptr } %i.be, 0
  %i.bg = extractvalue { i64, ptr } %i.be, 1      ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  switch i64 %i.bf, label %bb.q [
    i64 -1, label %bb.t
    i64 0, label %bb.r
  ]

bb.q:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  br label %.loopexit103

bb.r:                                             ; preds = %.noexc
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %.loopexit103, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = trunc i64 %i.bh to i8
  %i.bk = load i8, ptr %i.av, align 4, !noalias !132945, !noundef !409
  %i.bl = add i8 %i.bk, %i.bj                     ; 3 uses
  store i8 %i.bl, ptr %i.av, align 4, !noalias !132945
  %i.bm = icmp ult i8 %i.bl, 4
  br i1 %i.bm, label %.lr.ph.i, label %.loopexit104

bb.t:                                             ; preds = %.noexc
  store i8 -2, ptr %0, align 8
  br label %common.ret

.loopexit103:                                     ; preds = %bb.r, %bb.q
  %.sroa.6.0.i.ph = phi ptr [ %i.bg, %bb.q ], [ inttoptr (i64 98784247811 to ptr), %bb.r ]
  invoke void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @991)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit50 unwind label %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit104:                                     ; preds = %bb.s, %bb.p
  %i.bn = phi ptr [ %i.aq, %bb.p ], [ %i.as, %bb.s ]
  %i.bo = phi ptr [ %i.ap, %bb.p ], [ %i.at, %bb.s ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !409, !align !410, !noundef !409
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !409, !align !410, !noundef !409 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !132948)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !132949
  %i.bt = call fastcc noundef i64 @_RNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bs), !noalias !132950 ; 5 uses
  %.not.i.i30 = icmp slt i64 %i.bt, 0
  br i1 %.not.i.i30, label %bb.w, label %bb.u, !prof !434

bb.u:                                             ; preds = %.loopexit104
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !132951
  %i.bv = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !132951 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.w, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i

bb.w:                                             ; preds = %bb.v, %.loopexit104
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.v ], [ 0, %.loopexit104 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.bt) #72
          to label %.noexc33 unwind label %.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.w
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.u
  store i64 0, ptr %i.a, align 8, !noalias !132949
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bx, align 8, !noalias !132949
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %i.by, align 8, !noalias !132949
  call void @llvm.experimental.noalias.scope.decl(metadata !132952)
  call void @llvm.experimental.noalias.scope.decl(metadata !132953)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !132954, !noundef !409 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.noexc2.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.v
  store i64 %i.bt, ptr %i.a, align 8, !noalias !132949
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.bv, ptr %i.cc, align 8, !noalias !132949
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.cd, align 8, !noalias !132949
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !132955, !noundef !409 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.noexc2.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !132956)
  call void @llvm.experimental.noalias.scope.decl(metadata !132957)
  call void @llvm.experimental.noalias.scope.decl(metadata !132958)
  call void @llvm.experimental.noalias.scope.decl(metadata !132959)
  call void @llvm.experimental.noalias.scope.decl(metadata !132960)
  call void @llvm.experimental.noalias.scope.decl(metadata !132961)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i
  %i.ch = load i64, ptr %i.by, align 8, !alias.scope !132962, !noalias !132949, !noundef !409
  %.pre.i = load ptr, ptr %i.bx, align 8, !alias.scope !132962, !noalias !132949
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, %.noexc.i
  %i.ci = phi ptr [ %i.bx, %.noexc.i ], [ %i.cc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ] ; 2 uses
  %i.cj = phi ptr [ %i.by, %.noexc.i ], [ %i.cd, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ] ; 2 uses
  %i.ck = phi i64 [ %i.ca, %.noexc.i ], [ %i.cf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ]
  %i.cl = phi ptr [ %.pre.i, %.noexc.i ], [ %i.bv, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ]
  %.sink1.i6.i.i.i = phi i64 [ %i.ch, %.noexc.i ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ] ; 3 uses
  %i.cm = icmp sgt i64 %.sink1.i6.i.i.i, -1
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sink1.i6.i.i.i
  store i8 8, ptr %i.cn, align 1, !noalias !132963
  %i.co = add nuw i64 %.sink1.i6.i.i.i, 1
  store i64 %i.co, ptr %i.cj, align 8, !alias.scope !132962, !noalias !132949
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc2.i:                                        ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.cp = phi ptr [ %i.cd, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.cj, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.by, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 15 uses
  %i.cq = phi ptr [ %i.cc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.ci, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.bx, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 16 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !132954, !nonnull !409, !noundef !409 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !132954, !noundef !409 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !132964)
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.noexc2.i
  call void @llvm.experimental.noalias.scope.decl(metadata !132965)
  %.pre18.i2.i.i = load i64, ptr %i.cp, align 8, !alias.scope !132966, !noalias !132967 ; 3 uses
  %.pre28.i3.i.i = load i64, ptr %i.a, align 8, !range !412, !alias.scope !132966, !noalias !132967
  call void @llvm.experimental.noalias.scope.decl(metadata !132968), !noalias !132964
  call void @llvm.experimental.noalias.scope.decl(metadata !132969), !noalias !132964
  call void @llvm.experimental.noalias.scope.decl(metadata !132970), !noalias !132964
  call void @llvm.experimental.noalias.scope.decl(metadata !132971), !noalias !132964
  call void @llvm.experimental.noalias.scope.decl(metadata !132972), !noalias !132964
  %i.cw = icmp eq i64 %.pre28.i3.i.i, %.pre18.i2.i.i
  br i1 %i.cw, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i: ; preds = %bb.x
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i2.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc3.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i
  %i.cx = load i64, ptr %i.cp, align 8, !alias.scope !132973, !noalias !132967, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i: ; preds = %.noexc3.i, %bb.x
  %.sink1.i6.i4.i.i = phi i64 [ %i.cx, %.noexc3.i ], [ %.pre18.i2.i.i, %bb.x ] ; 3 uses
  %i.cy = icmp sgt i64 %.sink1.i6.i4.i.i, -1
  call void @llvm.assume(i1 %i.cy), !noalias !132964
  %i.cz = load ptr, ptr %i.cq, align 8, !alias.scope !132973, !noalias !132967, !nonnull !409, !noundef !409
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sink1.i6.i4.i.i
  store i8 18, ptr %i.da, align 1, !noalias !132974
  %i.db = add nuw i64 %.sink1.i6.i4.i.i, 1
  store i64 %i.db, ptr %i.cp, align 8, !alias.scope !132973, !noalias !132967
  %xtraiter = and i64 %i.cu, 1
  %i.dc = icmp eq i64 %i.cu, 1
  br i1 %i.dc, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i
  %unroll_iter = and i64 %i.cu, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new ], [ %i.dw, %bb.y ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new ], [ %i.dv, %bb.y ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new ], [ %niter.next.1, %bb.y ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i32, ptr %i.dd, align 4, !alias.scope !132964, !noalias !132975, !noundef !409
  %i.de = or i32 %.val.i.i.i.i, 1
  %i.df = sext i32 %i.de to i64
  %i.dg = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = xor i64 %i.dg, 63
  %i.di = mul nuw nsw i64 %i.dh, 9
  %i.dj = add nuw nsw i64 %i.di, 73
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = add i64 %i.dk, %.sroa.02.0.i.i.i.i
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.sroa.04.0.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.val.i.i.i.i.1 = load i32, ptr %i.dn, align 4, !alias.scope !132964, !noalias !132975, !noundef !409
  %i.do = or i32 %.val.i.i.i.i.1, 1
  %i.dp = sext i32 %i.do to i64
  %i.dq = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = xor i64 %i.dq, 63
  %i.ds = mul nuw nsw i64 %i.dr, 9
  %i.dt = add nuw nsw i64 %i.ds, 73
  %i.du = lshr i64 %i.dt, 6
  %i.dv = add i64 %i.du, %i.dl                    ; 3 uses
  %i.dw = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 2  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.i.unr-lcssa, label %bb.y

.lr.ph.preheader.i.i.i.unr-lcssa:                 ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i ], [ %i.dw, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i ], [ %i.dv, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod216 = trunc i64 %i.cu to i1
  call void @llvm.assume(i1 %lcmp.mod216)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.sroa.04.0.i.i.i.i.epil.init
  %.val.i.i.i.i.epil = load i32, ptr %i.dx, align 4, !alias.scope !132964, !noalias !132975, !noundef !409
  %i.dy = or i32 %.val.i.i.i.i.epil, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.eb = xor i64 %i.ea, 63
  %i.ec = mul nuw nsw i64 %i.eb, 9
  %i.ed = add nuw nsw i64 %i.ec, 73
  %i.ee = lshr i64 %i.ed, 6
  %i.ef = add i64 %i.ee, %.sroa.02.0.i.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa207 = phi i64 [ %i.dv, %.lr.ph.preheader.i.i.i.unr-lcssa ], [ %i.ef, %.epil.preheader ]
  %.idx.i.i.i = shl nuw nsw i64 %i.cu, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.i.i.i
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa207, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.lr.ph.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %.noexc5.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.ej, %.noexc5.i ], [ %i.cs, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.eh = load i32, ptr %.sroa.0.02.i.i.i, align 4, !alias.scope !132964, !noalias !132975, !noundef !409
  %i.ei = sext i32 %i.eh to i64
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ei, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132949

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 4 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.eg
  br i1 %i.ek, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.noexc5.i, %.noexc2.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !132954, !noundef !409 ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %.noexc7.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !132976)
  %.pre18.i7.i.i = load i64, ptr %i.cp, align 8, !alias.scope !132977, !noalias !132949 ; 3 uses
  %.pre28.i8.i.i = load i64, ptr %i.a, align 8, !range !412, !alias.scope !132977, !noalias !132949
  call void @llvm.experimental.noalias.scope.decl(metadata !132978)
  call void @llvm.experimental.noalias.scope.decl(metadata !132979)
  call void @llvm.experimental.noalias.scope.decl(metadata !132980)
  call void @llvm.experimental.noalias.scope.decl(metadata !132981)
  call void @llvm.experimental.noalias.scope.decl(metadata !132982)
  %i.eo = icmp eq i64 %.pre28.i8.i.i, %.pre18.i7.i.i
  br i1 %i.eo, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i: ; preds = %bb.z
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i7.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc6.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i
  %i.ep = load i64, ptr %i.cp, align 8, !alias.scope !132983, !noalias !132949, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i: ; preds = %.noexc6.i, %bb.z
  %.sink1.i6.i9.i.i = phi i64 [ %i.ep, %.noexc6.i ], [ %.pre18.i7.i.i, %bb.z ] ; 3 uses
  %i.eq = icmp sgt i64 %.sink1.i6.i9.i.i, -1
  call void @llvm.assume(i1 %i.eq)
  %i.er = load ptr, ptr %i.cq, align 8, !alias.scope !132983, !noalias !132949, !nonnull !409, !noundef !409
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sink1.i6.i9.i.i
  store i8 24, ptr %i.es, align 1, !noalias !132984
  %i.et = add nuw i64 %.sink1.i6.i9.i.i, 1
  store i64 %i.et, ptr %i.cp, align 8, !alias.scope !132983, !noalias !132949
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.em, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc7.i:                                        ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !range !414, !alias.scope !132954, !noundef !409
  %.not.i1.i = icmp eq i64 %i.ev, -1
  br i1 %.not.i1.i, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %.noexc7.i
  call void @llvm.experimental.noalias.scope.decl(metadata !132985)
  call void @llvm.experimental.noalias.scope.decl(metadata !132986)
  call void @llvm.experimental.noalias.scope.decl(metadata !132987)
  %.pre18.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !132988, !noalias !132949 ; 3 uses
  %.pre28.i.i.i.i = load i64, ptr %i.a, align 8, !range !412, !alias.scope !132988, !noalias !132949
  call void @llvm.experimental.noalias.scope.decl(metadata !132989)
  call void @llvm.experimental.noalias.scope.decl(metadata !132990)
  call void @llvm.experimental.noalias.scope.decl(metadata !132991)
  call void @llvm.experimental.noalias.scope.decl(metadata !132992)
  call void @llvm.experimental.noalias.scope.decl(metadata !132993)
  %i.ew = icmp eq i64 %.pre28.i.i.i.i, %.pre18.i.i.i.i
  br i1 %i.ew, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i: ; preds = %bb.aa
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc8.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i
  %i.ex = load i64, ptr %i.cp, align 8, !alias.scope !132994, !noalias !132949, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %.noexc8.i, %bb.aa
  %.sink1.i6.i.i.i.i = phi i64 [ %i.ex, %.noexc8.i ], [ %.pre18.i.i.i.i, %bb.aa ] ; 3 uses
  %i.ey = icmp sgt i64 %.sink1.i6.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load ptr, ptr %i.cq, align 8, !alias.scope !132994, !noalias !132949, !nonnull !409, !noundef !409
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sink1.i6.i.i.i.i
  store i8 42, ptr %i.fa, align 1, !noalias !132995
  %i.fb = add nuw i64 %.sink1.i6.i.i.i.i, 1
  store i64 %i.fb, ptr %i.cp, align 8, !alias.scope !132994, !noalias !132949
  call void @llvm.experimental.noalias.scope.decl(metadata !132996)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !132997, !nonnull !409, !noundef !409 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !132997, !noundef !409 ; 4 uses
  %i.fg = icmp eq i64 %i.ff, 0                    ; 2 uses
  br i1 %i.fg, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.fr, %.preheader.i.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.fq, %.preheader.i.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %i.fh = getelementptr inbounds nuw [176 x i8], ptr %i.fd, i64 %.sroa.04.0.i.i.i.i.i.i.i
  %i.fi = call fastcc noundef i64 @_RNvXsu_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.fh), !noalias !132998 ; 2 uses
  %i.fj = or i64 %i.fi, 1
  %i.fk = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fj, i1 true)
  %i.fl = xor i64 %i.fk, 63
  %i.fm = mul nuw nsw i64 %i.fl, 9
  %i.fn = add nuw nsw i64 %i.fm, 73
  %i.fo = lshr i64 %i.fn, 6
  %i.fp = add i64 %i.fi, %.sroa.02.0.i.i.i.i.i.i.i
  %i.fq = add i64 %i.fp, %i.fo                    ; 2 uses
  %i.fr = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, %i.ff
  br i1 %i.fs, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %i.fq, %.preheader.i.i.i.i.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !132997, !nonnull !409, !noundef !409 ; 8 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !132997, !noundef !409 ; 10 uses
  %i.fx = icmp eq i64 %i.fw, 0                    ; 2 uses
  br i1 %i.fx, label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i, label %.preheader.i1.i.i.i.i.preheader

.preheader.i1.i.i.i.i.preheader:                  ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %xtraiter217 = and i64 %i.fw, 1
  %i.fy = icmp eq i64 %i.fw, 1
  br i1 %i.fy, label %.preheader.i1.i.i.i.i.epil.preheader, label %.preheader.i1.i.i.i.i.preheader.new

.preheader.i1.i.i.i.i.preheader.new:              ; preds = %.preheader.i1.i.i.i.i.preheader
  %unroll_iter221 = and i64 %i.fw, -2
  br label %.preheader.i1.i.i.i.i

.preheader.i1.i.i.i.i:                            ; preds = %.preheader.i1.i.i.i.i, %.preheader.i1.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader.new ], [ %i.gs, %.preheader.i1.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader.new ], [ %i.gr, %.preheader.i1.i.i.i.i ]
  %niter222 = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader.new ], [ %niter222.next.1, %.preheader.i1.i.i.i.i ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.sroa.04.0.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i32, ptr %i.fz, align 4, !alias.scope !132999, !noalias !132998, !noundef !409
  %i.ga = or i32 %.val.i.i.i.i.i.i, 1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gb, i1 true)
  %i.gd = xor i64 %i.gc, 63
  %i.ge = mul nuw nsw i64 %i.gd, 9
  %i.gf = add nuw nsw i64 %i.ge, 73
  %i.gg = lshr i64 %i.gf, 6
  %i.gh = add i64 %i.gg, %.sroa.02.0.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %.val.i.i.i.i.i.i.1 = load i32, ptr %i.gj, align 4, !alias.scope !132999, !noalias !132998, !noundef !409
  %i.gk = or i32 %.val.i.i.i.i.i.i.1, 1
  %i.gl = sext i32 %i.gk to i64
  %i.gm = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gl, i1 true)
  %i.gn = xor i64 %i.gm, 63
  %i.go = mul nuw nsw i64 %i.gn, 9
  %i.gp = add nuw nsw i64 %i.go, 73
  %i.gq = lshr i64 %i.gp, 6
  %i.gr = add i64 %i.gq, %i.gh                    ; 3 uses
  %i.gs = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i, 2 ; 2 uses
  %niter222.next.1 = add nuw i64 %niter222, 2     ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa, label %.preheader.i1.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i1.i.i.i.i
  %lcmp.mod218.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod218.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.preheader.i1.i.i.i.i.epil.preheader

.preheader.i1.i.i.i.i.epil.preheader:             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa, %.preheader.i1.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader ], [ %i.gs, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader ], [ %i.gr, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod220 = trunc i64 %i.fw to i1
  call void @llvm.assume(i1 %lcmp.mod220)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.i.epil = load i32, ptr %i.gt, align 4, !alias.scope !132999, !noalias !132998, !noundef !409
  %i.gu = or i32 %.val.i.i.i.i.i.i.epil, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gv, i1 true)
  %i.gx = xor i64 %i.gw, 63
  %i.gy = mul nuw nsw i64 %i.gx, 9
  %i.gz = add nuw nsw i64 %i.gy, 73
  %i.ha = lshr i64 %i.gz, 6
  %i.hb = add i64 %i.ha, %.sroa.02.0.i.i.i.i.i.i.epil.init
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa, %.preheader.i1.i.i.i.i.epil.preheader
  %.lcssa205 = phi i64 [ %i.gr, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa ], [ %i.hb, %.preheader.i1.i.i.i.i.epil.preheader ] ; 2 uses
  %i.hc = or i64 %.lcssa205, 1
  %i.hd = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hc, i1 true)
  %i.he = xor i64 %i.hd, 63
  %i.hf = mul nuw nsw i64 %i.he, 9
  %i.hg = add nuw nsw i64 %i.hf, 73
  %i.hh = lshr i64 %i.hg, 6
  %i.hi = add i64 %.lcssa205, 1
  %i.hj = add i64 %i.hi, %i.hh
  br label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i

_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.hj, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !132997, !noundef !409 ; 3 uses
  %i.hm = icmp eq i64 %i.hl, 0                    ; 2 uses
  br i1 %i.hm, label %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i
  %i.hn = or i64 %i.hl, 1
  %i.ho = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hn, i1 true)
  %i.hp = xor i64 %i.ho, 63
  %i.hq = mul nuw nsw i64 %i.hp, 9
  %i.hr = add nuw nsw i64 %i.hq, 73
  %i.hs = lshr i64 %i.hr, 6
  %i.ht = add nuw nsw i64 %i.hs, 1
  br label %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i

_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i: ; preds = %bb.ab, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ht, %bb.ab ], [ 0, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i ]
  %i.hu = add i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.ff
  %i.hv = add i64 %i.hu, %.sroa.0.0.i.i.i.i.i
  %i.hw = add i64 %i.hv, %.sroa.0.0.i.i.i.i
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.hw, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc9.i:                                        ; preds = %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i
  %.idx.i.i.i.i = mul nuw nsw i64 %i.ff, 176
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx.i.i.i.i
  br i1 %i.fg, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc9.i, %.noexc10.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.hy, %.noexc10.i ], [ %i.fd, %.noexc9.i ] ; 2 uses
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.0.07.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132949

.noexc10.i:                                       ; preds = %.lr.ph.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 176 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hx
  br i1 %i.hz, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i, %.noexc9.i
  call void @llvm.experimental.noalias.scope.decl(metadata !133000)
  br i1 %i.fx, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !133001)
  %.pre18.i.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !133002, !noalias !133003 ; 3 uses
  %.pre28.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !412, !alias.scope !133002, !noalias !133003
  call void @llvm.experimental.noalias.scope.decl(metadata !133004), !noalias !133000
  call void @llvm.experimental.noalias.scope.decl(metadata !133005), !noalias !133000
  call void @llvm.experimental.noalias.scope.decl(metadata !133006), !noalias !133000
  call void @llvm.experimental.noalias.scope.decl(metadata !133007), !noalias !133000
  call void @llvm.experimental.noalias.scope.decl(metadata !133008), !noalias !133000
  %i.ia = icmp eq i64 %.pre28.i.i.i.i.i, %.pre18.i.i.i.i.i
  br i1 %i.ia, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i: ; preds = %bb.ac
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc11.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i
  %i.ib = load i64, ptr %i.cp, align 8, !alias.scope !133009, !noalias !133003, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.noexc11.i, %bb.ac
  %.sink1.i6.i.i.i.i.i = phi i64 [ %i.ib, %.noexc11.i ], [ %.pre18.i.i.i.i.i, %bb.ac ] ; 3 uses
  %i.ic = icmp sgt i64 %.sink1.i6.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ic), !noalias !133000
  %i.id = load ptr, ptr %i.cq, align 8, !alias.scope !133009, !noalias !133003, !nonnull !409, !noundef !409
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sink1.i6.i.i.i.i.i
  store i8 18, ptr %i.ie, align 1, !noalias !133010
  %i.if = add nuw i64 %.sink1.i6.i.i.i.i.i, 1
  store i64 %i.if, ptr %i.cp, align 8, !alias.scope !133009, !noalias !133003
  %xtraiter224 = and i64 %i.fw, 1
  %i.ig = icmp eq i64 %i.fw, 1
  br i1 %i.ig, label %.epil.preheader223, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %unroll_iter228 = and i64 %i.fw, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new
  %.sroa.04.0.i.i.i1.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new ], [ %i.ja, %bb.ad ] ; 3 uses
  %.sroa.02.0.i.i.i2.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new ], [ %i.iz, %bb.ad ]
  %niter229 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new ], [ %niter229.next.1, %bb.ad ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.sroa.04.0.i.i.i1.i.i.i
  %.val.i.i.i3.i.i.i = load i32, ptr %i.ih, align 4, !alias.scope !133000, !noalias !133011, !noundef !409
  %i.ii = or i32 %.val.i.i.i3.i.i.i, 1
  %i.ij = sext i32 %i.ii to i64
  %i.ik = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ij, i1 true)
  %i.il = xor i64 %i.ik, 63
  %i.im = mul nuw nsw i64 %i.il, 9
  %i.in = add nuw nsw i64 %i.im, 73
  %i.io = lshr i64 %i.in, 6
  %i.ip = add i64 %i.io, %.sroa.02.0.i.i.i2.i.i.i
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.sroa.04.0.i.i.i1.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %.val.i.i.i3.i.i.i.1 = load i32, ptr %i.ir, align 4, !alias.scope !133000, !noalias !133011, !noundef !409
  %i.is = or i32 %.val.i.i.i3.i.i.i.1, 1
  %i.it = sext i32 %i.is to i64
  %i.iu = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.it, i1 true)
  %i.iv = xor i64 %i.iu, 63
  %i.iw = mul nuw nsw i64 %i.iv, 9
  %i.ix = add nuw nsw i64 %i.iw, 73
  %i.iy = lshr i64 %i.ix, 6
  %i.iz = add i64 %i.iy, %i.ip                    ; 3 uses
  %i.ja = add nuw nsw i64 %.sroa.04.0.i.i.i1.i.i.i, 2 ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, label %bb.ad

.lr.ph.preheader.i.i.i.i.i.unr-lcssa:             ; preds = %bb.ad
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph.preheader.i.i.i.i.i, label %.epil.preheader223

.epil.preheader223:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.04.0.i.i.i1.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ %i.ja, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i2.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ %i.iz, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod227 = trunc i64 %i.fw to i1
  call void @llvm.assume(i1 %lcmp.mod227)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.sroa.04.0.i.i.i1.i.i.i.epil.init
  %.val.i.i.i3.i.i.i.epil = load i32, ptr %i.jb, align 4, !alias.scope !133000, !noalias !133011, !noundef !409
  %i.jc = or i32 %.val.i.i.i3.i.i.i.epil, 1
  %i.jd = sext i32 %i.jc to i64
  %i.je = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jd, i1 true)
  %i.jf = xor i64 %i.je, 63
  %i.jg = mul nuw nsw i64 %i.jf, 9
  %i.jh = add nuw nsw i64 %i.jg, 73
  %i.ji = lshr i64 %i.jh, 6
  %i.jj = add i64 %i.ji, %.sroa.02.0.i.i.i2.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %.epil.preheader223
  %.lcssa201 = phi i64 [ %i.iz, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ], [ %i.jj, %.epil.preheader223 ]
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.fw, 2
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.idx.i.i.i.i.i
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa201, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.lr.ph.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i, %.noexc13.i
  %.sroa.0.02.i.i.i.i.i = phi ptr [ %i.jn, %.noexc13.i ], [ %i.fu, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.jl = load i32, ptr %.sroa.0.02.i.i.i.i.i, align 4, !alias.scope !133000, !noalias !133011, !noundef !409
  %i.jm = sext i32 %i.jl to i64
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.jm, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132949

.noexc13.i:                                       ; preds = %.lr.ph.i.i.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i, i64 4 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.jk
  br i1 %i.jo, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.noexc13.i, %._crit_edge.i.i.i.i
  br i1 %i.hm, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !133012)
  %.pre18.i2.i.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !133013, !noalias !132949 ; 3 uses
  %.pre28.i3.i.i.i.i = load i64, ptr %i.a, align 8, !range !412, !alias.scope !133013, !noalias !132949
  call void @llvm.experimental.noalias.scope.decl(metadata !133014)
  call void @llvm.experimental.noalias.scope.decl(metadata !133015)
  call void @llvm.experimental.noalias.scope.decl(metadata !133016)
  call void @llvm.experimental.noalias.scope.decl(metadata !133017)
  call void @llvm.experimental.noalias.scope.decl(metadata !133018)
  %i.jp = icmp eq i64 %.pre28.i3.i.i.i.i, %.pre18.i2.i.i.i.i
  br i1 %i.jp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i, !prof !419

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i: ; preds = %bb.ae
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i2.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.noexc14.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i
  %i.jq = load i64, ptr %i.cp, align 8, !alias.scope !133019, !noalias !132949, !noundef !409
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i: ; preds = %.noexc14.i, %bb.ae
  %.sink1.i6.i4.i.i.i.i = phi i64 [ %i.jq, %.noexc14.i ], [ %.pre18.i2.i.i.i.i, %bb.ae ] ; 3 uses
  %i.jr = icmp sgt i64 %.sink1.i6.i4.i.i.i.i, -1
  call void @llvm.assume(i1 %i.jr)
  %i.js = load ptr, ptr %i.cq, align 8, !alias.scope !133019, !noalias !132949, !nonnull !409, !noundef !409
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sink1.i6.i4.i.i.i.i
  store i8 24, ptr %i.jt, align 1, !noalias !133020
  %i.ju = add nuw i64 %.sink1.i6.i4.i.i.i.i, 1
  store i64 %i.ju, ptr %i.cp, align 8, !alias.scope !133019, !noalias !132949
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.hl, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !132949

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i, %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i, %.lr.ph.preheader.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i
  %i.jv = phi ptr [ %i.cq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i ], [ %i.cq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i ], [ %i.cq, %.lr.ph.preheader.i.i.i.i.i ], [ %i.cq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i ], [ %i.cq, %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i ], [ %i.cq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i ], [ %i.cq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i ], [ %i.cq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i ], [ %i.cq, %.lr.ph.preheader.i.i.i ], [ %i.cq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i ], [ %i.ci, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.bx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i ]
  %lpad.loopexit.split-lp34.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i
  %i.jw = phi ptr [ %i.jv, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %i.cq, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp34.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp203, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133021)
  %.val.i.i31 = load i64, ptr %i.a, align 8, !range !412, !alias.scope !133021, !noalias !132949, !noundef !409 ; 2 uses
  %i.jx = icmp eq i64 %.val.i.i31, 0
  br i1 %i.jx, label %.body34, label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i
  %.val1.i.i32 = load ptr, ptr %i.jw, align 8, !alias.scope !133021, !noalias !132949, !nonnull !409, !noundef !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i32, i64 noundef %.val.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !133022
  br label %.body34

bb.ag:                                            ; preds = %.noexc7.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !132948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !132949
  %.val27 = load ptr, ptr %i.bn, align 8, !nonnull !409, !noundef !409
  %i.jy = getelementptr i8, ptr %1, i64 56
  %.val28 = load i64, ptr %i.jy, align 8, !noundef !409 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.bq, ptr %i.jz, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %.val27, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %.val28, ptr %.sroa.971.0..sroa_idx, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1.i = load ptr, ptr %i.ka, align 8, !alias.scope !133023, !nonnull !409, !noundef !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !133023
  br label %.body34

.loopexit.split-lp99.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %bb.w, %.loopexit103, %bb.b
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.ai:                                            ; preds = %._crit_edge139, %bb.ag
  %.pre.i37 = phi i64 [ %.pre.i37.pre, %._crit_edge139 ], [ %.val28, %bb.ag ]
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.ai
  %i.ke = phi i64 [ %i.ks, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %.pre.i37, %bb.ai ] ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kg = load ptr, ptr %i.kc, align 8, !noalias !132942, !nonnull !409, !noundef !409
  %i.kh = load ptr, ptr %i.kb, align 8, !noalias !132942, !nonnull !409, !align !410, !noundef !409 ; 2 uses
  %.val.i38 = load ptr, ptr %i.kh, align 8, !nonnull !409, !noundef !409
  %i.ki = getelementptr i8, ptr %i.kh, i64 8
  %.val9.i = load ptr, ptr %i.ki, align 8, !nonnull !409, !align !410, !noundef !409
  %i.kj = getelementptr inbounds nuw i8, ptr %.val9.i, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !invariant.load !409, !noalias !133024, !nonnull !409
  %i.kl = invoke { i64, ptr } %i.kk(ptr noundef nonnull %.val.i38, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kg, i64 noundef range(i64 1, -9223372036854775808) %i.ke)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !334 ; 2 uses

.noexc41:                                         ; preds = %bb.ak
  %i.km = extractvalue { i64, ptr } %i.kl, 0
  %i.kn = extractvalue { i64, ptr } %i.kl, 1      ; 4 uses
  switch i64 %i.km, label %bb.al [
    i64 -1, label %bb.ao
    i64 0, label %bb.am
  ]

bb.al:                                            ; preds = %.noexc41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kn) ]
  br label %.loopexit91

bb.am:                                            ; preds = %.noexc41
  %i.ko = ptrtoint ptr %i.kn to i64               ; 3 uses
  %i.kp = load ptr, ptr %i.kc, align 8, !noalias !132942, !nonnull !409, !noundef !409
  %i.kq = load i64, ptr %i.kd, align 8, !noalias !132942, !noundef !409 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.kc, align 8, !noalias !132942
  store i64 0, ptr %i.kd, align 8, !noalias !132942
  %.not.i.i39 = icmp ult i64 %i.kq, %i.ko
  br i1 %.not.i.i39, label %bb.an, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !419

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @3131, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3581) #72
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.an
  unreachable

_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.am
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ko
  %i.ks = sub nuw nsw i64 %i.kq, %i.ko            ; 2 uses
  store ptr %i.kr, ptr %i.kc, align 8, !noalias !132942
  store i64 %i.ks, ptr %i.kd, align 8, !noalias !132942
  %i.kt = icmp eq ptr %i.kn, null
  br i1 %i.kt, label %.loopexit91, label %bb.aj

bb.ao:                                            ; preds = %.noexc41
  store i8 -2, ptr %0, align 8
  br label %common.ret

.loopexit91:                                      ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.al
  %.sroa.5.0.i.ph.ph = phi ptr [ %i.kn, %bb.al ], [ inttoptr (i64 98784247811 to ptr), %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  invoke void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull %.sroa.5.0.i.ph.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @992)
          to label %_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultjNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorEE13from_residualCsfR8GmIBoxTX_21lance_namespace_impls.exit44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.aj
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !133025)
  %.val.i45 = load i64, ptr %i.ku, align 8, !range !412, !alias.scope !133025, !noundef !409 ; 2 uses
  %i.kv = icmp eq i64 %.val.i45, 0
end_hunk_8
begin_hunk_9_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob20create_joined_stream0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.082.0.copyload.i.i, align 16, !noalias !154712
  %i.zt = icmp eq i64 %.sroa.583.0.copyload.i.i, 0 ; 4 uses
  br i1 %i.zt, label %bb.fy, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.fx
  %i.zu = mul i64 %.sroa.583.0.copyload.i.i, 248  ; 2 uses
  %i.zv = add i64 %i.zu, 248
  %i.zw = icmp ult i64 %i.zv, -15
  call void @llvm.assume(i1 %i.zw)
  %i.zx = and i64 %i.zu, -16                      ; 2 uses
  %i.zy = add i64 %i.zx, 256                      ; 2 uses
  %i.zz = add i64 %.sroa.583.0.copyload.i.i, 17
  %i.aaa = add i64 %i.zz, %i.zy                   ; 3 uses
  %i.aab = icmp uge i64 %i.aaa, %i.zy
  call void @llvm.assume(i1 %i.aab)
  %i.aac = icmp ult i64 %i.aaa, 9223372036854775793
  call void @llvm.assume(i1 %i.aac)
  %i.aad = sub i64 -256, %i.zx
  %i.aae = getelementptr inbounds i8, ptr %.sroa.082.0.copyload.i.i, i64 %i.aad
  br label %bb.fy

bb.fy:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.fx
  %.sroa.511.0.i.i.i.i.i = phi ptr [ undef, %bb.fx ], [ %i.aae, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.410.0.i.i.i.i.i = phi i64 [ undef, %bb.fx ], [ %i.aaa, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 7 uses
  %.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.fx ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 4 uses
  %i.aaf = getelementptr i8, ptr %.sroa.082.0.copyload.i.i, i64 %.sroa.583.0.copyload.i.i
  %i.aag = getelementptr i8, ptr %i.aaf, i64 1
  %i.aah = ptrtoint ptr %i.aag to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !154713
  %i.aai = icmp eq i64 %.sroa.685.0.copyload.i.i, 0
  br i1 %i.aai, label %.thread.i.i.i.i.i.i, label %bb.fz

.thread.i.i.i.i.i.i:                              ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !154713
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fy
  %i.aaj = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.aak = bitcast <16 x i1> %i.aaj to i16        ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload.i.i, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aak, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.fz, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aam = phi ptr [ %i.aaq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aal, %bb.fz ] ; 2 uses
  %i.aan = phi ptr [ %i.aap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.082.0.copyload.i.i, %bb.fz ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aam, align 16, !noalias !154714
  %i.aao = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aap = getelementptr inbounds i8, ptr %i.aan, i64 -3968 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aao to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.fz
  %.sroa.19.0.i.i.i.i = phi ptr [ %i.aal, %bb.fz ], [ %i.aaq, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ %.sroa.082.0.copyload.i.i, %bb.fz ], [ %i.aap, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aak, %bb.fz ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aar = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.aas = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aat = zext nneg i16 %i.aas to i64
  %i.aau = and i16 %i.aar, %.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.aav = sub nsw i64 0, %i.aat
  %i.aaw = getelementptr inbounds [248 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.aav ; 2 uses
  %i.aax = add i64 %.sroa.685.0.copyload.i.i, -1  ; 7 uses
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aaw, i64 -240
  %.sroa.4.0.copyload3.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !154715 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !154713
  %i.aay = icmp eq i64 %i.aax, 0
  br i1 %i.aay, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ga, %.noexc29.i.i
  %.sroa.19.3.i.i.i.i = phi ptr [ %.sroa.19.4.i.i.i.i, %.noexc29.i.i ], [ %.sroa.19.0.i.i.i.i, %bb.ga ] ; 2 uses
  %.sroa.10.3.i.i.i.i = phi ptr [ %.sroa.10.4.i.i.i.i, %.noexc29.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.ga ] ; 2 uses
  %i.aaz = phi i16 [ %i.abn, %.noexc29.i.i ], [ %i.aau, %bb.ga ] ; 2 uses
  %i.aba = phi i64 [ %i.abl, %.noexc29.i.i ], [ %i.aax, %bb.ga ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aaz, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abb = phi ptr [ %i.abf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.abc = phi ptr [ %i.abe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.abb, align 16, !noalias !154716
  %i.abd = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.abe = getelementptr inbounds i8, ptr %i.abc, i64 -3968 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.abd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.19.4.i.i.i.i = phi ptr [ %.sroa.19.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.4.i.i.i.i = phi ptr [ %.sroa.10.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aaz, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.abg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.abh = zext nneg i16 %i.abg to i64
  %i.abi = sub nsw i64 0, %i.abh
  %i.abj = getelementptr inbounds [248 x i8], ptr %.sroa.10.4.i.i.i.i, i64 %i.abi
  %i.abk = getelementptr inbounds i8, ptr %i.abj, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.abk)
          to label %.noexc29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154696

.noexc29.i.i:                                     ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abl = add i64 %i.aba, -1                     ; 2 uses
  %i.abm = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.abn = and i16 %i.abm, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abl, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc29.i.i, %bb.ga, %.thread.i.i.i.i.i.i
  %i.abo = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond.i.i.i197.i = or i1 %i.zt, %i.abo
  br i1 %or.cond.i.i.i197.i, label %.thread475.i, label %bb.gb

bb.gb:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !154717
  br label %.thread475.i

bb.gc:                                            ; preds = %bb.gg
  %i.abp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.bh) #73
          to label %bb.gr unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154718

bb.gd:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.aaw, i64 -232
  %.sroa.6.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !154713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !154718
  store i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i, ptr %i.bh, align 8, !noalias !154713
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.685.0.copyload.i.i, i64 4) ; 3 uses
  %i.abq = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 240  ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.685.0.copyload.i.i, 38430716820228232
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.gg, label %bb.ge, !prof !434

bb.ge:                                            ; preds = %bb.gd
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %bb.gh, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !154719
  %i.abs = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.abq, i64 noundef range(i64 1, 17) 8) #68, !noalias !154719 ; 2 uses
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.gf ], [ 0, %bb.gd ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.abq) #72
          to label %.noexc.i.i.i.i.i.i unwind label %bb.gc, !noalias !154718

.noexc.i.i.i.i.i.i:                               ; preds = %bb.gg
  unreachable

bb.gh:                                            ; preds = %bb.gf, %bb.ge
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ge ], [ %i.abs, %bb.gf ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ge ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.gf ] ; 2 uses
  %i.abu = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.abu)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(240) %i.bh, i64 240, i1 false), !noalias !154718
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.bi, align 8, !noalias !154713
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !154713
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !154713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !154713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !154713
  store i64 %.sink.i.i.i.i.i.i, ptr %i.bg, align 8, !noalias !154720
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %.sroa.410.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !154720
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %.sroa.511.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !154720
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !154720
  %.sroa.19.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 4 uses
  store ptr %.sroa.19.0.i.i.i.i, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !noalias !154720
  %.sroa.25.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.aah, ptr %.sroa.25.0..sroa_idx13.i.i.i.i, align 8, !noalias !154720
  %.sroa.2515.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  store i16 %i.aau, ptr %.sroa.2515.0..sroa_idx16.i.i.i.i, align 8, !noalias !154720
  %.sroa.2719.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  store i64 %i.aax, ptr %.sroa.2719.0..sroa_idx20.i.i.i.i, align 8, !noalias !154720
  call void @llvm.experimental.noalias.scope.decl(metadata !154721)
  call void @llvm.experimental.noalias.scope.decl(metadata !154722)
  call void @llvm.experimental.noalias.scope.decl(metadata !154723)
  call void @llvm.experimental.noalias.scope.decl(metadata !154724)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.abv = icmp eq i64 %i.aax, 0
  br i1 %i.abv, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.gh
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i196.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %bb.gi

bb.gi:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.abw = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.adf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.abx = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.adh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 7 uses
  %.lcssa821.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.19.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa820.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa918.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa917.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aby = phi i16 [ %i.aau, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ach, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val1213.i.i.i.i.i.i.i.i = phi i64 [ %i.aax, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ack, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !154725)
  call void @llvm.experimental.noalias.scope.decl(metadata !154726)
  call void @llvm.experimental.noalias.scope.decl(metadata !154727)
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aby, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.acd, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !154728, !noalias !154713
  store ptr %i.acc, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !154728, !noalias !154713
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.abz = phi ptr [ %i.acd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa821.i.i.i.i.i.i.i.i, %bb.gi ] ; 2 uses
  %i.aca = phi ptr [ %i.acc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa918.i.i.i.i.i.i.i.i, %bb.gi ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.abz, align 16, !noalias !154729
  %i.acb = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.acc = getelementptr inbounds i8, ptr %i.aca, i64 -3968 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.acb to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.gi
  %.lcssa820.i.i.i.i.i.i.i.i = phi ptr [ %i.acd, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa821.i.i.i.i.i.i.i.i, %bb.gi ]
  %.lcssa917.i.i.i.i.i.i.i.i = phi ptr [ %i.acc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa918.i.i.i.i.i.i.i.i, %bb.gi ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aby, %bb.gi ] ; 3 uses
  %i.ace = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.acf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.acg = zext nneg i16 %i.acf to i64
  %i.ach = and i16 %i.ace, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.aci = sub nsw i64 0, %i.acg
  %i.acj = getelementptr inbounds [248 x i8], ptr %.lcssa917.i.i.i.i.i.i.i.i, i64 %i.aci ; 2 uses
  %i.ack = add i64 %.val1213.i.i.i.i.i.i.i.i, -1  ; 6 uses
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.acj, i64 -240
  %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !154730 ; 2 uses
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, label %bb.gk

bb.gj:                                            ; preds = %bb.gn
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bg) #73
          to label %.body.i.i.i.i.i.i unwind label %bb.gp, !noalias !154731

bb.gk:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.acj, i64 -232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !154732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !154733
  store i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !noalias !154733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i196.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.i.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !154733
  %3 = icmp samesign ult i64 %i.abx, 38430716820228233
  call void @llvm.assume(i1 %3)
  %i.acl = load i64, ptr %i.bi, align 8, !range !412, !alias.scope !154734, !noalias !154713, !noundef !409
  %i.acm = icmp eq i64 %i.abx, %i.acl
  br i1 %i.acm, label %bb.go, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.gh
  %.sroa.7.0.copyload74180.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.gh ], [ %i.adf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !154735)
  call void @llvm.experimental.noalias.scope.decl(metadata !154736)
  call void @llvm.experimental.noalias.scope.decl(metadata !154737)
  call void @llvm.experimental.noalias.scope.decl(metadata !154738)
  call void @llvm.experimental.noalias.scope.decl(metadata !154739)
  call void @llvm.experimental.noalias.scope.decl(metadata !154740)
  %i.acn = icmp eq i64 %i.ack, 0
  br i1 %i.acn, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i
  %i.aco = phi i16 [ %i.add, %.noexc8.i.i.i.i.i.i ], [ %i.ach, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.acp = phi i64 [ %i.adb, %.noexc8.i.i.i.i.i.i ], [ %i.ack, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !154741)
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aco, 0
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !154742, !noalias !154713 ; 2 uses
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.promoted14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !154742, !noalias !154713
  br label %bb.gl

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.gl
  store ptr %i.acu, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !154742, !noalias !154713
  store ptr %i.act, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !154742, !noalias !154713
  br label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gl:                                            ; preds = %bb.gl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acq = phi ptr [ %.promoted14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acu, %bb.gl ] ; 2 uses
  %i.acr = phi ptr [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.act, %bb.gl ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.acq, align 16, !noalias !154743
  %i.acs = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.act = getelementptr inbounds i8, ptr %i.acr, i64 -3968 ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.acs to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gl, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acv = phi ptr [ %i.act, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aco, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.acw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.acx = zext nneg i16 %i.acw to i64
  %i.acy = sub nsw i64 0, %i.acx
  %i.acz = getelementptr inbounds [248 x i8], ptr %i.acv, i64 %i.acy
  %i.ada = getelementptr inbounds i8, ptr %i.acz, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.ada)
          to label %.noexc8.i.i.i.i.i.i unwind label %bb.gq, !noalias !154718

.noexc8.i.i.i.i.i.i:                              ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adb = add i64 %i.acp, -1                     ; 2 uses
  %i.adc = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.add = and i16 %i.adc, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.adb, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i
  %.sroa.975.0.copyload77.i.i = phi i64 [ %.sroa.685.0.copyload.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i ], [ %i.abx, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ], [ %i.abx, %.noexc8.i.i.i.i.i.i ]
  %.sroa.7.0.copyload74.i.i = phi ptr [ %.sroa.7.0.copyload74180.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i ], [ %i.abw, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ], [ %i.abw, %.noexc8.i.i.i.i.i.i ]
  %i.ade = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond22.i.i.i.i = or i1 %i.zt, %i.ade
  br i1 %or.cond22.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !154744
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i, %bb.gk
  %i.adf = phi ptr [ %.pre.i.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i ], [ %i.abw, %bb.gk ] ; 3 uses
  %i.adg = getelementptr inbounds nuw [240 x i8], ptr %i.adf, i64 %i.abx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.adg, ptr noundef nonnull align 8 dereferenceable(240) %i.bf, i64 240, i1 false), !noalias !154745
  %i.adh = add nuw nsw i64 %i.abx, 1              ; 2 uses
  store i64 %i.adh, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !154734, !noalias !154713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !154733
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.adi = icmp eq i64 %i.ack, 0
  br i1 %i.adi, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i, label %bb.gi

bb.gn:                                            ; preds = %bb.go
  %i.adj = landingpad { ptr, i32 }
          cleanup
  store i16 %i.ach, ptr %.sroa.2515.0..sroa_idx16.i.i.i.i, align 8, !alias.scope !154728, !noalias !154713
  store i64 %i.ack, ptr %.sroa.2719.0..sroa_idx20.i.i.i.i, align 8, !alias.scope !154746, !noalias !154713
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.bf) #73
          to label %bb.gj unwind label %bb.gp, !noalias !154745

bb.go:                                            ; preds = %bb.gk
  %i.adk = call i64 @llvm.uadd.sat.i64(i64 %i.ack, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef %i.abx, i64 noundef %i.adk, i64 noundef 8, i64 noundef 240)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i unwind label %bb.gn, !noalias !154747

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i: ; preds = %bb.go
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !154734, !noalias !154713
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

bb.gp:                                            ; preds = %bb.gn, %bb.gj
  %i.adl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !154745
  unreachable

bb.gq:                                            ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.gq, %bb.gj
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.adm, %bb.gq ], [ %i.adj, %bb.gj ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #73
          to label %.body30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154718

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.gm, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !154713
  %.sroa.071.0.copyload72.i.i = load i64, ptr %i.bi, align 8, !noalias !154748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !154713
  br label %.thread475.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.gc
  %lpad.loopexit.split-lp396 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !154718
  unreachable

bb.gr:                                            ; preds = %bb.gc
  %i.adn = icmp eq i64 %i.aax, 0
  br i1 %i.adn, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.gr, %.noexc.i.i.i.i.i
  %.sroa.19.1.i.i.i.i = phi ptr [ %.sroa.19.2.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.sroa.19.0.i.i.i.i, %bb.gr ] ; 2 uses
  %.sroa.10.1.i.i.i.i = phi ptr [ %.sroa.10.2.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.gr ] ; 2 uses
  %i.ado = phi i16 [ %i.aec, %.noexc.i.i.i.i.i ], [ %i.aau, %bb.gr ] ; 2 uses
  %i.adp = phi i64 [ %i.aea, %.noexc.i.i.i.i.i ], [ %i.aax, %bb.gr ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ado, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adq = phi ptr [ %i.adu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.adr = phi ptr [ %i.adt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adq, align 16, !noalias !154749
  %i.ads = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.adt = getelementptr inbounds i8, ptr %i.adr, i64 -3968 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ads to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.19.2.i.i.i.i = phi ptr [ %.sroa.19.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.2.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ado, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.adv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.adw = zext nneg i16 %i.adv to i64
  %i.adx = sub nsw i64 0, %i.adw
  %i.ady = getelementptr inbounds [248 x i8], ptr %.sroa.10.2.i.i.i.i, i64 %i.adx
  %i.adz = getelementptr inbounds i8, ptr %i.ady, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.adz)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !154750

.noexc.i.i.i.i.i:                                 ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aea = add i64 %i.adp, -1                     ; 2 uses
  %i.aeb = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aec = and i16 %i.aeb, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aea, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.gr
  %i.aed = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond23.i.i.i.i = or i1 %i.zt, %i.aed
  br i1 %or.cond23.i.i.i.i, label %.body30.i.i, label %bb.gs

bb.gs:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !154751
  br label %.body30.i.i

.thread475.i:                                     ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.gb, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.975.1.i.i = phi i64 [ 0, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.gb ], [ %.sroa.975.0.copyload77.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.7.1.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.gb ], [ %.sroa.7.0.copyload74.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.071.1.i.i = phi i64 [ 0, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.gb ], [ %.sroa.071.0.copyload72.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  store i8 0, ptr %i.zs, align 8, !noalias !154692
  br label %bb.hj

.body30.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gs, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.fu, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.fn, %bb.fi
  %i.aee = phi ptr [ %i.tz, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.tz, %bb.gs ], [ %i.uh, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.tz, %.body.i.i.i.i.i.i ], [ %i.uh, %bb.fn ], [ %i.uh, %bb.fu ], [ %i.uh, %bb.fi ], [ %i.tz, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aef = phi ptr [ %i.ua, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ua, %bb.gs ], [ %i.ui, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ua, %.body.i.i.i.i.i.i ], [ %i.ui, %bb.fn ], [ %i.ui, %bb.fu ], [ %i.ui, %bb.fi ], [ %i.ua, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aeg = phi ptr [ %i.ub, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ub, %bb.gs ], [ %i.uj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ub, %.body.i.i.i.i.i.i ], [ %i.uj, %bb.fn ], [ %i.uj, %bb.fu ], [ %i.uj, %bb.fi ], [ %i.ub, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aeh = phi ptr [ %i.uc, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.uc, %bb.gs ], [ %i.uk, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.uc, %.body.i.i.i.i.i.i ], [ %i.uk, %bb.fn ], [ %i.uk, %bb.fu ], [ %i.uk, %bb.fi ], [ %i.uc, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn11.pn.pn.i.i = phi { ptr, i32 } [ %i.abp, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.abp, %bb.gs ], [ %i.ux, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.ux, %bb.fn ], [ %.pn7.pn.pn.i.i, %bb.fu ], [ %i.ug, %bb.fi ], [ %lpad.loopexit.split-lp392, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %1, i64 376
end_hunk_9
begin_hunk_10_@_RNCNvNtNtCshkPeWWG1flk_5lance2io6commit15migrate_indices0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !175187, !nonnull !409, !noundef !409
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 2064
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %i.mf = load atomic ptr, ptr %i.me acquire, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mf, %i.md
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.av, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 2080
  %i.mh = load i64, ptr %i.mg, align 8, !noundef !409
  %i.mi = add i64 %i.mh, 1
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lt, i64 2096
  store i64 %i.mi, ptr %i.mj, align 8, !noalias !175187
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lt, i64 2080
  store atomic ptr %i.ly, ptr %i.mk release, align 8, !noalias !175187
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ly, i64 2072
  store ptr %i.lx, ptr %i.ml, align 8
  br label %bb.ba

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.at
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lt, i64 2096
  store i64 1, ptr %i.mm, align 8, !noalias !175187
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lt, i64 2080
  store atomic ptr null, ptr %i.mn release, align 8, !noalias !175187
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ap
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !175187
  unreachable

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.ar, %bb.ap, %bb.ao
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ll, %bb.ap ], [ %i.lv, %bb.ar ], [ %i.ll, %bb.ao ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.av) #73
          to label %bb.bb unwind label %bb.ay, !noalias !175192

bb.ay:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !175192
  unreachable

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.ba, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sroa.13.1.i.i.i.i = phi i64 [ %.sroa.13.0.copyload78.i.i.i.i, %bb.ba ], [ %.sroa.13.0.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.12.1.i.i.i.i = phi i64 [ %.sroa.12.0.copyload74.i.i.i.i, %bb.ba ], [ %.sroa.12.0.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.1063.1.i.i.i.i = phi i8 [ %.sroa.1063.0.copyload65.i.i.i.i, %bb.ba ], [ %.sroa.1063.0.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.958.1.i.i.i.i = phi i64 [ %.sroa.958.0.copyload60.i.i.i.i, %bb.ba ], [ %.sroa.958.0.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.853.1.i.i.i.i = phi ptr [ %.sroa.853.0.copyload55.i.i.i.i, %bb.ba ], [ %.sroa.853.0.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.748.1.i.i.i.i = phi i64 [ %.sroa.748.0.copyload50.i.i.i.i, %bb.ba ], [ %.sroa.748.0.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.643.1.i.i.i.i = phi ptr [ %.sroa.643.0.copyload45.i.i.i.i, %bb.ba ], [ %.sroa.643.0.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.040.1.i.i.i.i = phi i64 [ %.sroa.040.0.copyload41.i.i.i.i, %bb.ba ], [ %.sroa.040.0.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1276.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1168.i.i.i.i, i64 7, i1 false), !noalias !175193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1168.i.i.i.i)
  %i.mq = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.iq, %i.mq
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ca, label %bb.az

bb.az:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !175194
  br label %bb.ca

bb.ba:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.aw
  %i.mr = load ptr, ptr %i.kj, align 8, !alias.scope !175183, !noalias !175191, !nonnull !409, !noundef !409
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lt, i64 2104
  store atomic ptr null, ptr %i.ms monotonic, align 8, !noalias !175187
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  %i.mu = atomicrmw xchg ptr %i.mt, ptr %i.lx acq_rel, align 8, !noalias !175187
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 2088
  store atomic ptr %i.lx, ptr %i.mv release, align 8
  %.sroa.040.0.copyload41.i.i.i.i = load i64, ptr %i.av, align 8, !noalias !175182 ; 2 uses
  %.sroa.643.0.copyload45.i.i.i.i = load ptr, ptr %.sroa.643.0..sroa_idx.i.i.i.i, align 8, !noalias !175182 ; 2 uses
  %.sroa.748.0.copyload50.i.i.i.i = load i64, ptr %.sroa.748.0..sroa_idx.i.i.i.i, align 8, !noalias !175182 ; 2 uses
  %.sroa.853.0.copyload55.i.i.i.i = load ptr, ptr %i.kj, align 8, !noalias !175182 ; 2 uses
  %.sroa.958.0.copyload60.i.i.i.i = load i64, ptr %i.kn, align 8, !noalias !175182 ; 2 uses
  %.sroa.1063.0.copyload65.i.i.i.i = load i8, ptr %i.km, align 8, !noalias !175182 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1168.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1168.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !175182
  %.sroa.12.0.copyload74.i.i.i.i = load i64, ptr %i.ki, align 8, !noalias !175182 ; 2 uses
  %.sroa.13.0.copyload78.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !175182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !175181
  %i.mw = icmp eq i64 %i.la, 0
  br i1 %i.mw, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i, label %bb.ai

bb.bb:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i
  %i.mx = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond7.i.i.i.i.i.i = or i1 %i.iq, %i.mx
  br i1 %or.cond7.i.i.i.i.i.i, label %.body84.i, label %.body.sink.split.i.i

bb.bc:                                            ; preds = %bb.ag, %bb.ad
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.kf, %bb.ag ], [ %i.jx, %bb.ad ] ; 2 uses
  %i.my = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i = or i1 %i.iq, %i.my
  br i1 %or.cond.i.i, label %.body84.i, label %.body.sink.split.i.i

bb.bd:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !175195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !175196
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.jr, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mz = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jp, %bb.bd ] ; 2 uses
  %i.na = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0131.0.copyload.i, %bb.bd ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.mz, align 16, !noalias !175197
  %i.nb = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nc = getelementptr inbounds i8, ptr %i.na, i64 -384 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.nb to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd
  %.sroa.14.0.i.i.i.i.i = phi ptr [ %i.jp, %bb.bd ], [ %i.nd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.916.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0131.0.copyload.i, %bb.bd ], [ %i.nc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.jr, %bb.bd ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ne = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.nf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ng = zext nneg i16 %i.nf to i64
  %i.nh = and i16 %i.ne, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = sub nsw i64 0, %i.ng
  %i.nj = getelementptr inbounds [24 x i8], ptr %.sroa.916.0.copyload.i.i.i.i.i.i.i, i64 %i.ni ; 3 uses
  %i.nk = add nsw i64 %.val36.i, -1               ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %i.nj, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nl, align 8, !noalias !175198 ; 2 uses
  %.not.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i13.i.i, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !175196
  %i.nm = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.iq, %i.nm
  br i1 %or.cond.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !175199
  br label %._crit_edge.i.i.i.i

bb.bg:                                            ; preds = %bb.bi
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ap) #73
          to label %bb.bt unwind label %bb.bs, !noalias !175200

bb.bh:                                            ; preds = %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.nj, i64 -8
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !175198, !nonnull !409, !noundef !409
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.nj, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !175198
  %i.no = load ptr, ptr %i.cl, align 8, !noalias !175201, !nonnull !409, !align !410, !noundef !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !175196
  store i64 0, ptr %i.ap, align 8, !noalias !175196
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.no, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175196
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175196
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175196
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175196
  %.sroa.118.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 2040
  store i8 0, ptr %.sroa.118.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175196
  %i.np = shl nuw nsw i64 %.val36.i, 11           ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !175202
  %i.nq = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.np, i64 noundef range(i64 1, 17) 8) #68, !noalias !175202 ; 4 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.np) #72
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bg, !noalias !175200

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.nq, ptr noundef nonnull align 8 dereferenceable(2048) %i.ap, i64 2048, i1 false), !noalias !175200
  store i64 %.val36.i, ptr %i.aq, align 8, !noalias !175196
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.nq, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175196
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !175196
  %i.ns = icmp eq i64 %i.nk, 0
  br i1 %i.ns, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i.i14.i.i:                       ; preds = %bb.bj
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.114.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 2040
  br label %bb.bk

bb.bk:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i14.i.i
  %i.nt = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %i.oo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ]
  %i.nu = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %i.oq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa21.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.14.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %.lcssa20.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa1218.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.916.0.copyload.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %.lcssa1217.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nv = phi i16 [ %i.nh, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %i.oe, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val1314.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nk, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %i.oh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.nv, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nw = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i.i.i.i.i.i.i, %bb.bk ] ; 2 uses
  %i.nx = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1218.i.i.i.i.i.i.i.i.i, %bb.bk ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nw, align 16, !noalias !175203
  %i.ny = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nz = getelementptr inbounds i8, ptr %i.nx, i64 -384 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ny to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bk
  %.lcssa20.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa21.i.i.i.i.i.i.i.i.i, %bb.bk ], [ %i.oa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa1217.i.i.i.i.i.i.i.i.i = phi ptr [ %.lcssa1218.i.i.i.i.i.i.i.i.i, %bb.bk ], [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.nv, %bb.bk ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ob = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.oc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.od = zext nneg i16 %i.oc to i64
  %i.oe = and i16 %i.ob, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.of = sub nsw i64 0, %i.od
  %i.og = getelementptr inbounds [24 x i8], ptr %.lcssa1217.i.i.i.i.i.i.i.i.i, i64 %i.of ; 3 uses
  %i.oh = add nsw i64 %.val1314.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %i.og, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.oi, align 8, !noalias !175204 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i15.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i15.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.bn

bb.bl:                                            ; preds = %bb.bp
  %i.oj = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.iq, %i.oj
  br i1 %or.cond.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !175205
  br label %.body.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.og, i64 -8
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !175204, !nonnull !409, !noundef !409
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.og, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !175204
  %i.ok = load ptr, ptr %i.cl, align 8, !noalias !175206, !nonnull !409, !align !410, !noundef !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !175207
  store i64 0, ptr %i.ao, align 8, !noalias !175207
  store ptr %i.ok, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !175207
  store ptr %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !175207
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !175207
  store i64 %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !175207
  store i8 0, ptr %.sroa.114.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !175207
  %3 = icmp samesign ult i64 %i.nu, 4503599627370496
  call void @llvm.assume(i1 %3)
  %i.ol = load i64, ptr %i.aq, align 8, !range !412, !noalias !175207, !noundef !409
  %i.om = icmp eq i64 %i.nu, %i.ol
  br i1 %i.om, label %bb.bq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bj
  %i.on = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond30.i.i.i.i.i.i.i = or i1 %i.iq, %i.on
  br i1 %or.cond30.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !175208
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i, %bb.bn
  %i.oo = phi ptr [ %.pre.i.i.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i ], [ %i.nt, %bb.bn ] ; 2 uses
  %i.op = getelementptr inbounds nuw [2048 x i8], ptr %i.oo, i64 %i.nu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.op, ptr noundef nonnull align 8 dereferenceable(2048) %i.ao, i64 2048, i1 false), !noalias !175209
  %i.oq = add nuw nsw i64 %i.nu, 1                ; 2 uses
  store i64 %i.oq, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !175207
  %i.or = icmp eq i64 %i.oh, 0
  br i1 %i.or, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.bk

bb.bp:                                            ; preds = %bb.bq
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ao) #73
          to label %bb.bl unwind label %bb.br, !noalias !175209

bb.bq:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef %i.nu, i64 noundef range(i64 1, 0) %.val1314.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 2048)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i unwind label %bb.bp, !noalias !175209

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.bq
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !175207
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !175209
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.bm, %bb.bl
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.aq) #73
          to label %.body84.i unwind label %bb.bs, !noalias !175200

bb.bs:                                            ; preds = %.body.i.i.i.i.i.i.i, %bb.bg
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !175200
  unreachable

bb.bt:                                            ; preds = %bb.bg
  %i.ov = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond6.i.i.i.i.i = or i1 %i.iq, %i.ov
  br i1 %or.cond6.i.i.i.i.i, label %.body84.i, label %.body.sink.split.i.i

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.bo, %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !175210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !175196
  %.pre.i.i.i = load i64, ptr %i.ar, align 8, !range !412, !alias.scope !175211, !noalias !175195 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.pre9.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !175211, !noalias !175195 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175211)
  %i.ow = icmp ugt i64 %.pre.i.i.i, %.pre9.i.i.i
  br i1 %i.ow, label %bb.bu, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.410.0..sroa_idx.phi.trans.insert.i.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.410.0.copyload.pre.i.i.pre.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.phi.trans.insert.i.i.phi.trans.insert.i.i, align 8, !alias.scope !175211, !noalias !175195
  br label %._crit_edge.i.i.i.i

bb.bu:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !175212)
  call void @llvm.experimental.noalias.scope.decl(metadata !175213)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val10.i.i.i.i.i.i = load ptr, ptr %i.ox, align 8, !alias.scope !175214, !noalias !175195, !nonnull !409, !noundef !409 ; 2 uses
  %i.oy = shl nuw i64 %.pre.i.i.i, 11             ; 2 uses
  %i.oz = icmp eq i64 %.pre9.i.i.i, 0
  br i1 %i.oz, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, label %bb.bv

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bu
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i.i.i.i, i64 noundef %i.oy, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !175215
  br label %._crit_edge.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.pa = shl nuw i64 %.pre9.i.i.i, 11            ; 2 uses
  %i.pb = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i.i.i.i.i, i64 noundef %i.oy, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 8, 0) %i.pa) #68, !noalias !175215 ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.bx, label %._crit_edge.i.i.i.i

bb.bw:                                            ; preds = %bb.bx
  %i.pd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ar) #73
          to label %.body84.i unwind label %bb.bz, !noalias !175216

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.pa) #72
          to label %bb.by unwind label %bb.bw, !noalias !175217

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bw
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !175217
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %bb.bv, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i, %bb.bf, %bb.be
  %i.pf = phi i64 [ %.pre9.i.i.i, %bb.bv ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %.pre9.i.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i ], [ 0, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %.sroa.410.0.copyload.i.i.i.i = phi ptr [ %i.pb, %bb.bv ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %.sroa.410.0.copyload.pre.i.i.pre.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i ], [ inttoptr (i64 8 to ptr), %bb.bf ], [ inttoptr (i64 8 to ptr), %bb.be ]
  %i.pg = icmp ult i64 %i.pf, 4503599627370496
  call void @llvm.assume(i1 %i.pg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !175195
  br label %bb.ca

.body.sink.split.i.i:                             ; preds = %bb.bt, %bb.bc, %bb.bb
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %bb.bc ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %bb.bb ], [ %i.nn, %bb.bt ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !175218
  br label %.body84.i

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i, %bb.az, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i
  %.sroa.5.sroa.0.sroa.6.0.i.i = phi i64 [ undef, %._crit_edge.i.i.i.i ], [ %.sroa.13.1.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.13.1.i.i.i.i, %bb.az ]
  %.sroa.5.sroa.0.sroa.5.0.i.i = phi i64 [ undef, %._crit_edge.i.i.i.i ], [ %.sroa.12.1.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.12.1.i.i.i.i, %bb.az ]
  %.sroa.5.sroa.0.sroa.3.0.i.i = phi i8 [ undef, %._crit_edge.i.i.i.i ], [ %.sroa.1063.1.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.1063.1.i.i.i.i, %bb.az ]
  %.sroa.5.sroa.0.sroa.2.0.i.i = phi i64 [ undef, %._crit_edge.i.i.i.i ], [ %.sroa.958.1.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.958.1.i.i.i.i, %bb.az ]
  %.sroa.5.sroa.0.sroa.0.0.i.i = phi ptr [ undef, %._crit_edge.i.i.i.i ], [ %.sroa.853.1.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.853.1.i.i.i.i, %bb.az ]
  %.sroa.4.0.i.i = phi i64 [ %i.pf, %._crit_edge.i.i.i.i ], [ %.sroa.748.1.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.748.1.i.i.i.i, %bb.az ]
  %.sroa.3.0.i.i = phi ptr [ %.sroa.410.0.copyload.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.sroa.643.1.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.643.1.i.i.i.i, %bb.az ]
  %.sroa.0.0.i.i = phi i64 [ -1, %._crit_edge.i.i.i.i ], [ %.sroa.040.1.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.040.1.i.i.i.i, %bb.az ] ; 2 uses
  %.sroa.12109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12109.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1276.i.i, i64 7, i1 false), !noalias !175134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1276.i.i)
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %.sroa.0.0.i.i, ptr %i.ph, align 8, !noalias !175134
  %.sroa.7104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %.sroa.3.0.i.i, ptr %.sroa.7104.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.8105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 %.sroa.4.0.i.i, ptr %.sroa.8105.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.9106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %.sroa.5.sroa.0.sroa.0.0.i.i, ptr %.sroa.9106.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.10107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 %.sroa.5.sroa.0.sroa.2.0.i.i, ptr %.sroa.10107.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.11108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i8 %.sroa.5.sroa.0.sroa.3.0.i.i, ptr %.sroa.11108.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.13110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 %.sroa.5.sroa.0.sroa.5.0.i.i, ptr %.sroa.13110.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.14111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 %.sroa.5.sroa.0.sroa.6.0.i.i, ptr %.sroa.14111.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.15112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 0, ptr %.sroa.15112.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !175134
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !175134
  br label %bb.cd

.body84.i:                                        ; preds = %bb.bb, %bb.bc, %.body.i.i.i.i.i.i.i, %bb.bt, %bb.bw, %.body.sink.split.i.i, %bb.hc, %.body.i.i.i, %bb.fn, %.body60.i
  %i.pi = phi ptr [ %i.pl, %bb.hc ], [ %i.pl, %.body60.i ], [ %i.pl, %bb.fn ], [ %i.pl, %.body.i.i.i ], [ %i.ci, %bb.bc ], [ %i.ci, %.body.sink.split.i.i ], [ %i.ci, %bb.bt ], [ %i.ci, %bb.bw ], [ %i.ci, %.body.i.i.i.i.i.i.i ], [ %i.ci, %bb.bb ]
  %.pn18.pn.i = phi { ptr, i32 } [ %i.afk, %bb.hc ], [ %eh.lpad-body61.i, %.body60.i ], [ %i.aaw, %bb.fn ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.bc ], [ %eh.lpad-body.ph.i.i, %.body.sink.split.i.i ], [ %i.nn, %bb.bt ], [ %i.pd, %bb.bw ], [ %i.os, %.body.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !175134
  br label %bb.hg

.body118.thread:                                  ; preds = %bb.v, %bb.w, %bb.hg, %bb.ho
  %i.pj = phi ptr [ %i.ci, %bb.w ], [ %i.ahb, %bb.ho ], [ %i.ahb, %bb.hg ], [ %i.ci, %bb.v ]
  %.pn28.i = phi { ptr, i32 } [ %i.in, %bb.w ], [ %.pn22.pn.pn.pn.i, %bb.ho ], [ %.pn22.pn.pn.pn.i, %bb.hg ], [ %i.im, %bb.v ]
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i8 0, ptr %i.pk, align 8, !noalias !175134
  store i8 2, ptr %i.pj, align 1, !noalias !175134
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.z, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.y
  store i8 0, ptr %i.ck, align 8, !noalias !175134
  br label %bb.hq

bb.cb:                                            ; preds = %bb.i
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2708) #72
          to label %.noexc unwind label %.body118

.noexc:                                           ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.i
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2708) #72
          to label %.noexc120 unwind label %.body118

.noexc120:                                        ; preds = %bb.cc
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ea, %bb.dc, %bb.er, %bb.eg, %_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE28atomic_load_head_and_len_allCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %bb.es, %_RNvXs5_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread34.i.i.i.i, %bb.cw
  %lpad.loopexit.split-lp971 = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i

.body60.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %.body.i52.i, %bb.et, %bb.eo, %bb.ej, %bb.ef, %bb.ee, %bb.dy, %bb.dx, %.body.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_10
begin_hunk_11_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata0B9_:bb.a
bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200899)
  %i.bx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !range !421, !noalias !200900, !noundef !409
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !432

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i: ; preds = %bb.ag
  %.pre.i.i.i.i.i = load i64, ptr %i.bx, align 8, !noalias !200901
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !200901
  br label %.thread

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.cb = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc59 unwind label %bb.ah  ; 2 uses

.noexc59:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.cc = extractvalue { i64, i64 } %i.cb, 0
  %i.cd = extractvalue { i64, i64 } %i.cb, 1      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !noalias !200902
  store i8 1, ptr %i.by, align 8, !noalias !200902
  br label %.thread

.thread:                                          ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, %.noexc59
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ], [ %i.cd, %.noexc59 ]
  %i.cf = phi i64 [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ], [ %i.cc, %.noexc59 ] ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.bx, align 8, !noalias !200901
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !200898
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 %i.cf, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !200903
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 728
  store i64 %.pre-phi2.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !200903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !200904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !200905
  br label %bb.ay

bb.ah:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ai:                                            ; preds = %bb.af
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %.sroa.0212.0.copyload, ptr %i.bw, align 16, !alias.scope !200906
  %.sroa.6214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %1, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6214.0..sroa_idx215, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6214.0..sroa_idx, i64 40, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 712
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !200907 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200907)
  %.val3.i.i = load <16 x i8>, ptr %.sroa.0212.0.copyload, align 16, !noalias !200908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !200911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !200912
  %i.ci = icmp eq i64 %.pre, 0
  br i1 %i.ci, label %bb.ay, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0212.0.copyload, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cm = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cl, %bb.aj ] ; 2 uses
  %i.cn = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0212.0.copyload, %bb.aj ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cm, align 16, !noalias !200913
  %i.co = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -768 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.co to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.aj
  %.sroa.57.0.i.i = phi ptr [ %i.cl, %bb.aj ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.0.copyload.i.i.i.i = phi ptr [ %.sroa.0212.0.copyload, %bb.aj ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ck, %bb.aj ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cr = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = and i16 %i.cr, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.cv = sub nsw i64 0, %i.ct
  %i.cw = getelementptr inbounds [48 x i8], ptr %.sroa.07.0.copyload.i.i.i.i, i64 %i.cv ; 4 uses
  %i.cx = add nsw i64 %.pre, -1                   ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 -40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !200914, !nonnull !409, !noundef !409
  %i.cz = getelementptr i8, ptr %i.cw, i64 -32
  %.val3.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !200914, !noundef !409
  %i.da = getelementptr i8, ptr %i.cw, i64 -16
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.da, align 8, !noalias !200914, !nonnull !409, !noundef !409
  %i.db = getelementptr i8, ptr %i.cw, i64 -8
  %.val5.i.i.i.i.i.i = load i64, ptr %i.db, align 8, !noalias !200914, !noundef !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !200915
  store ptr %.val.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !200915
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.val3.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !200915
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.val4.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !200915
  %.sroa.62.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.val5.i.i.i.i.i.i, ptr %.sroa.62.0..sroa_idx.i.i.i.i.i, align 8, !noalias !200915
  invoke void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction10update_mapNtB5_14UpdateMapEntryINtNtCscI6d9CVNmLh_4core7convert4FromTReB1W_EE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j)
          to label %.noexc63 unwind label %bb.az

.noexc63:                                         ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !200915
  %.pr.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !200912 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.ay, label %bb.ao

bb.ak:                                            ; preds = %bb.ar
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200916)
  call void @llvm.experimental.noalias.scope.decl(metadata !200917), !noalias !200918
  call void @llvm.experimental.noalias.scope.decl(metadata !200919), !noalias !200918
  %i.dd = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.dd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i.i.i.i.i62 = load ptr, ptr %i.de, align 8, !alias.scope !200920, !noalias !200912, !nonnull !409, !noundef !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i62, i64 noundef %.pr.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !200921
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.al, %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !200922), !noalias !200918
  %i.dg = load i64, ptr %i.df, align 8, !range !414, !alias.scope !200923, !noalias !200912, !noundef !409 ; 3 uses
  %i.dh = icmp eq i64 %i.dg, -1
  br i1 %i.dh, label %.body64, label %bb.am

bb.am:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !200924), !noalias !200918
  call void @llvm.experimental.noalias.scope.decl(metadata !200925), !noalias !200918
  %i.di = icmp eq i64 %i.dg, 0
  br i1 %i.di, label %.body64, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.val1.i.i.i1.i.i.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !200926, !noalias !200912, !nonnull !409, !noundef !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1.i.i.i.i, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !200927
  br label %.body64

bb.ao:                                            ; preds = %.noexc63
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.pre, i64 4) ; 3 uses
  %i.dk = mul i64 %.sroa.0.0.i.i.i.i.i, 48        ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.pre, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ar, label %bb.ap, !prof !434

bb.ap:                                            ; preds = %bb.ao
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !200928
  %i.dm = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dk, i64 noundef range(i64 1, 17) 8) #68, !noalias !200928 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.aq ], [ 0, %bb.ao ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dk) #72
          to label %.noexc.i.i.i.i unwind label %bb.ak, !noalias !200912

.noexc.i.i.i.i:                                   ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ %i.dm, %bb.aq ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.ap ], [ %.sroa.0.0.i.i.i.i.i, %bb.aq ] ; 3 uses
  %i.do = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.do)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !200912
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.l, align 8, !noalias !200912
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !200912
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !200912
  call void @llvm.experimental.noalias.scope.decl(metadata !200929)
  call void @llvm.experimental.noalias.scope.decl(metadata !200930)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !200931
  %i.dp = icmp eq i64 %i.cx, 0
  br i1 %i.dp, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.at

bb.at:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dq = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ek, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dr = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.em, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 6 uses
  %.lcssa15.i.i.i.i.i.i = phi ptr [ %.sroa.57.0.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ds = phi i16 [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ %i.eb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.val611.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %i.ee, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.lcssa5910.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dt = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa15.i.i.i.i.i.i, %bb.at ] ; 2 uses
  %i.du = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa5910.i.i.i.i.i.i, %bb.at ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dt, align 16, !noalias !200932
  %i.dv = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -768 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dv to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.at
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i, %bb.at ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa58.i.i.i.i.i.i = phi ptr [ %.lcssa5910.i.i.i.i.i.i, %bb.at ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ds, %bb.at ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dy = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = and i16 %i.dy, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = sub nsw i64 0, %i.ea
  %i.ed = getelementptr inbounds [48 x i8], ptr %.lcssa58.i.i.i.i.i.i, i64 %i.ec ; 4 uses
  %i.ee = add i64 %.val611.i.i.i.i.i.i, -1        ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ed, i64 -40
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !200933, !nonnull !409, !noundef !409
  %i.eg = getelementptr i8, ptr %i.ed, i64 -32
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.eg, align 8, !noalias !200933, !noundef !409
  %i.eh = getelementptr i8, ptr %i.ed, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.eh, align 8, !noalias !200933, !nonnull !409, !noundef !409
  %i.ei = getelementptr i8, ptr %i.ed, i64 -8
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !noalias !200933, !noundef !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !200934
  store ptr %.val.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !200934
  store i64 %.val3.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !200934
  store ptr %.val4.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !200934
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !200934
  invoke void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction10update_mapNtB5_14UpdateMapEntryINtNtCscI6d9CVNmLh_4core7convert4FromTReB1W_EE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %.noexc6.i.i.i.i unwind label %bb.ax, !noalias !200912

.noexc6.i.i.i.i:                                  ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !200934
  %.pr.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !200935
  %.not.i.i5.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i, -1
  %.sroa.0.0.copyload1.pre.pre25.i.i = load i64, ptr %i.l, align 8, !noalias !200936 ; 2 uses
  br i1 %.not.i.i5.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %.noexc6.i.i.i.i
  %3 = icmp samesign ult i64 %i.dr, 192153584101141163
  call void @llvm.assume(i1 %3)
  %i.ej = icmp eq i64 %i.dr, %.sroa.0.0.copyload1.pre.pre25.i.i
  br i1 %i.ej, label %bb.aw, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i, %bb.au
  %i.ek = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i ], [ %i.dq, %bb.au ] ; 3 uses
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ek, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.el, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !200935
  %i.em = add nuw nsw i64 %i.dr, 1                ; 2 uses
  store i64 %i.em, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !200937, !noalias !200912
  %i.en = icmp eq i64 %i.ee, 0
  br i1 %i.en, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i, label %bb.at

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.0.0.copyload1.pre.pre.i.i = load i64, ptr %i.l, align 8, !noalias !200936
  br label %.loopexit.i.i.i.i

bb.av:                                            ; preds = %bb.aw
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.i) #73, !noalias !200935
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.dr, i64 noundef %.val611.i.i.i.i.i.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i unwind label %bb.av, !noalias !200938

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.aw
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !200937, !noalias !200912
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ax:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ax, %bb.av
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.ep, %bb.ax ], [ %i.eo, %bb.av ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.l) #73, !noalias !200912
  br label %.body64

.loopexit.i.i.i.i:                                ; preds = %.noexc6.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i, %bb.as
  %.sroa.6.0.copyload5.i.i = phi i64 [ 1, %bb.as ], [ %.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %i.dr, %.noexc6.i.i.i.i ]
  %.sroa.5.0.copyload3.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.as ], [ %i.ek, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %i.dq, %.noexc6.i.i.i.i ]
  %.sroa.0.0.copyload1.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i, %bb.as ], [ %.sroa.0.0.copyload1.pre.pre.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %.sroa.0.0.copyload1.pre.pre25.i.i, %.noexc6.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !200931
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %.loopexit.i.i.i.i, %.noexc63, %bb.ai
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc63 ], [ 0, %bb.ai ], [ 0, %.thread ]
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i, %.loopexit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.noexc63 ], [ inttoptr (i64 8 to ptr), %bb.ai ], [ inttoptr (i64 8 to ptr), %.thread ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc63 ], [ 0, %bb.ai ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !200912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !200911
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.bt, ptr %i.eq, align 8, !alias.scope !200939
  store i64 %.sroa.0.0.i.i, ptr %i.o, align 8, !alias.scope !200939
  %.sroa.5.0..sroa_idx.i.i61 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i61, align 8, !alias.scope !200939
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !200939
  %i.er = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %i.er, align 8, !alias.scope !200939
  %i.es = getelementptr inbounds nuw i8, ptr %i.o, i64 33
  store i8 2, ptr %i.es, align 1, !alias.scope !200939
  %i.et = invoke { ptr, ptr } @_RNvXs_NtNtCshkPeWWG1flk_5lance7dataset8metadataNtB4_21UpdateMetadataBuilderNtNtNtCscI6d9CVNmLh_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.o)
          to label %bb.ba unwind label %bb.az     ; 2 uses

.body64:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.am, %bb.an, %.body.i.i.i.i, %bb.az
  %.pn6 = phi { ptr, i32 } [ %i.eu, %bb.az ], [ %i.dc, %bb.an ], [ %i.dc, %bb.am ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.dc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.body70

bb.az:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i, %bb.ay
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body64

bb.ba:                                            ; preds = %bb.ay
  %i.ev = extractvalue { ptr, ptr } %i.et, 0      ; 2 uses
  %i.ew = extractvalue { ptr, ptr } %i.et, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.ev, ptr %i.ex, align 8
  store ptr %i.ew, ptr %i.bh, align 16
  br label %bb.bh

bb.bb:                                            ; preds = %.body70, %bb.ah
  %.pn27 = phi { ptr, i32 } [ %i.ch, %bb.ah ], [ %.pn24.pn, %.body70 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.ey) #73
          to label %.body55 unwind label %bb.u

bb.bc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3198.sroa.5, i64 24, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.dl, %bb.bc
  %.sroa.6.sroa.6.sroa.0.sroa.0.1 = phi i56 [ %.sroa.3198.sroa.3.sroa.0.sroa.0.0.copyload, %bb.bc ], [ undef, %bb.dl ] ; 2 uses
  %.sroa.6.sroa.6.sroa.8.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.7.0.copyload, %bb.bc ], [ %.sroa.6.sroa.6.sroa.8.2, %bb.dl ] ; 2 uses
  %.sroa.6.sroa.6.sroa.7.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.5.0.copyload, %bb.bc ], [ @39, %bb.dl ] ; 2 uses
  %.sroa.6.sroa.6.sroa.6.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.3.0.copyload, %bb.bc ], [ %.sroa.6.sroa.6.sroa.6.2, %bb.dl ] ; 2 uses
  %.sroa.6.sroa.0.1 = phi i8 [ %.sroa.3198.sroa.0.0.copyload, %bb.bc ], [ 31, %bb.dl ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.experimental.noalias.scope.decl(metadata !200940)
  call void @llvm.experimental.noalias.scope.decl(metadata !200941)
  %.val.i.i = load i64, ptr %i.ez, align 16, !range !412, !alias.scope !200942, !noundef !409 ; 2 uses
  %i.fa = icmp eq i64 %.val.i.i, 0
  br i1 %i.fa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val1.i.i = load ptr, ptr %i.fb, align 8, !alias.scope !200942, !nonnull !409, !noundef !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !200942
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit

.body55:                                          ; preds = %bb.v, %bb.ac, %bb.cv, %bb.bb
  %.pn29.pn = phi { ptr, i32 } [ %.pn27, %bb.bb ], [ %i.id, %bb.cv ], [ %i.bg, %bb.v ], [ %i.bo, %bb.ac ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.experimental.noalias.scope.decl(metadata !200943)
  call void @llvm.experimental.noalias.scope.decl(metadata !200944)
  %.val.i.i66 = load i64, ptr %i.fc, align 16, !range !412, !alias.scope !200945, !noundef !409 ; 2 uses
  %i.fd = icmp eq i64 %.val.i.i66, 0
  br i1 %i.fd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit68, label %bb.bf

bb.bf:                                            ; preds = %.body55
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val1.i.i67 = load ptr, ptr %i.fe, align 8, !alias.scope !200945, !nonnull !409, !noundef !409
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67, i64 noundef %.val.i.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !200945
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit68

bb.bg:                                            ; preds = %bb.bh
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val51 = load ptr, ptr %i.fg, align 8
  %.val52 = load ptr, ptr %i.fh, align 16, !nonnull !409, !align !410, !noundef !409
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBW_6string6StringB3k_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val51, ptr nonnull %.val52) #73
          to label %.body70 unwind label %bb.u

bb.bh:                                            ; preds = %bb.b, %bb.ba
  %.val54 = phi ptr [ %.val54.pre, %bb.b ], [ %i.ew, %bb.ba ]
  %.val53 = phi ptr [ %.val53.pre, %bb.b ], [ %i.ev, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.fh = getelementptr i8, ptr %1, i64 752       ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !invariant.load !409, !noalias !200946, !nonnull !409
  invoke void %i.fj(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noundef nonnull %.val53, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bg, !inline_history !200758

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bh
  %i.fk = load i8, ptr %i.n, align 8, !range !415, !noundef !409 ; 3 uses
  %i.fl = icmp eq i8 %i.fk, -2
  br i1 %i.fl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.bj:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.3245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3245, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3245.0..sroa_idx, i64 7, i1 false)
  %.sroa.3247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3247.0.copyload = load ptr, ptr %.sroa.3247.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4250.0.copyload = load ptr, ptr %.sroa.4250.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5253.0.copyload = load ptr, ptr %.sroa.5253.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6256, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6256.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val49 = load ptr, ptr %i.fg, align 8          ; 5 uses
  %.val50 = load ptr, ptr %i.fh, align 16, !nonnull !409, !align !410, !noundef !409 ; 5 uses
  %i.fm = load ptr, ptr %.val50, align 8, !invariant.load !409 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val49) ]
  invoke void %i.fm(ptr noundef nonnull %.val49)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fn = getelementptr inbounds nuw i8, ptr %.val50, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !range !412, !invariant.load !409 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBW_6string6StringB3k_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.bl
  %i.fq = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !range !413, !invariant.load !409
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val49) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef %i.fo, i64 noundef range(i64 1, -9223372036854775807) %i.fr) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBW_6string6StringB3k_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.bm:                                            ; preds = %bb.bk
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val50, i64 8
end_hunk_11
