Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 87
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !6859, !noalias !6839, !noundef !416 ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 0                    ; 2 uses
  br i1 %i.bm, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.preheader.i.i.i19

.preheader.i.i.i19:                               ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i17, %.preheader.i.i.i19
  %.sroa.04.0.i.i.i.i.i20 = phi i64 [ %i.bx, %.preheader.i.i.i19 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i17 ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i21 = phi i64 [ %i.bw, %.preheader.i.i.i19 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i17 ]
  %i.bn = getelementptr inbounds nuw [224 x i8], ptr %i.bj, i64 %.sroa.04.0.i.i.i.i.i20
  %i.bo = tail call fastcc noundef i64 @_RNvXs1j_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12DataFragmentNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.bn), !noalias !6860 ; 2 uses
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
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !6859, !noalias !6839, !nonnull !416, !noundef !416 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !6859, !noalias !6839, !noundef !416 ; 10 uses
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  br i1 %i.cd, label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i, label %.preheader.i2.i.i.preheader

.preheader.i2.i.i.preheader:                      ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %xtraiter757 = and i64 %i.cc, 1
  %i.ce = icmp eq i64 %i.cc, 1
  br i1 %i.ce, label %.preheader.i2.i.i.epil.preheader, label %.preheader.i2.i.i.preheader.new

.preheader.i2.i.i.preheader.new:                  ; preds = %.preheader.i2.i.i.preheader
  %unroll_iter761 = and i64 %i.cc, -2
  br label %.preheader.i2.i.i

.preheader.i2.i.i:                                ; preds = %.preheader.i2.i.i, %.preheader.i2.i.i.preheader.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.preheader.i2.i.i.preheader.new ], [ %i.cw, %.preheader.i2.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.preheader.i2.i.i.preheader.new ], [ %i.cv, %.preheader.i2.i.i ]
  %niter762 = phi i64 [ 0, %.preheader.i2.i.i.preheader.new ], [ %niter762.next.1, %.preheader.i2.i.i ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !6861, !noalias !6860, !noundef !416
  %i.cg = or i64 %.val.i.i.i.i, 1
  %i.ch = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = xor i64 %i.ch, 63
  %i.cj = mul nuw nsw i64 %i.ci, 9
  %i.ck = add nuw nsw i64 %i.cj, 73
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = add i64 %i.cl, %.sroa.02.0.i.i.i.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i.i.i.i.1 = load i64, ptr %i.co, align 8, !alias.scope !6861, !noalias !6860, !noundef !416
  %i.cp = or i64 %.val.i.i.i.i.1, 1
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = xor i64 %i.cq, 63
  %i.cs = mul nuw nsw i64 %i.cr, 9
  %i.ct = add nuw nsw i64 %i.cs, 73
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = add i64 %i.cu, %i.cm                    ; 3 uses
  %i.cw = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 2  ; 2 uses
  %niter762.next.1 = add nuw i64 %niter762, 2     ; 2 uses
  %niter762.ncmp.1 = icmp eq i64 %niter762.next.1, %unroll_iter761
  br i1 %niter762.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa, label %.preheader.i2.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa: ; preds = %.preheader.i2.i.i
  %lcmp.mod758.not = icmp eq i64 %xtraiter757, 0
  br i1 %lcmp.mod758.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.preheader.i2.i.i.epil.preheader

.preheader.i2.i.i.epil.preheader:                 ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa, %.preheader.i2.i.i.preheader
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i2.i.i.preheader ], [ %i.cw, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i2.i.i.preheader ], [ %i.cv, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa ]
  %lcmp.mod760 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod760)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i.i.epil.init
  %.val.i.i.i.i.epil = load i64, ptr %i.cx, align 8, !alias.scope !6861, !noalias !6860, !noundef !416
  %i.cy = or i64 %.val.i.i.i.i.epil, 1
  %i.cz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = xor i64 %i.cz, 63
  %i.db = mul nuw nsw i64 %i.da, 9
  %i.dc = add nuw nsw i64 %i.db, 73
  %i.dd = lshr i64 %i.dc, 6
  %i.de = add i64 %i.dd, %.sroa.02.0.i.i.i.i.epil.init
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa, %.preheader.i2.i.i.epil.preheader
  %.lcssa661 = phi i64 [ %i.cv, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.unr-lcssa ], [ %i.de, %.preheader.i2.i.i.epil.preheader ] ; 2 uses
  %i.df = or i64 %.lcssa661, 1
  %i.dg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = xor i64 %i.dg, 63
  %i.di = mul nuw nsw i64 %i.dh, 9
  %i.dj = add nuw nsw i64 %i.di, 73
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = add i64 %.lcssa661, 1
  %i.dm = add i64 %i.dl, %i.dk
  br label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i

_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.dm, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !6859, !noalias !6839, !noundef !416 ; 9 uses
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6838
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6863)
  %.idx.i.i22 = mul nuw nsw i64 %i.bl, 224
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i22
  br i1 %i.bm, label %._crit_edge.i.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i, %.lr.ph.i.i23
  %.sroa.0.09.i.i = phi ptr [ %i.ed, %.lr.ph.i.i23 ], [ %i.bj, %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.09.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6864
  %i.ee = icmp eq ptr %i.ed, %i.ec
  br i1 %i.ee, label %._crit_edge.i.i, label %.lr.ph.i.i23

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i23, %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6865)
  br i1 %i.cd, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6866)
  %.pre18.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !6867, !noalias !6868 ; 3 uses
  %.pre28.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !6867, !noalias !6868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6869), !noalias !6865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6870), !noalias !6865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6871), !noalias !6865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6872), !noalias !6865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6873), !noalias !6865
  %i.ef = icmp eq i64 %.pre28.i.i.i, %.pre18.i.i.i
  br i1 %i.ef, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6874
  %i.eg = load i64, ptr %i.au, align 8, !alias.scope !6875, !noalias !6874, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i, %bb.f
  %.sink1.i6.i.i.i = phi i64 [ %i.eg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i ], [ %.pre18.i.i.i, %bb.f ] ; 3 uses
  %i.eh = icmp sgt i64 %.sink1.i6.i.i.i, -1
  tail call void @llvm.assume(i1 %i.eh), !noalias !6865
  %i.ei = load ptr, ptr %i.av, align 8, !alias.scope !6875, !noalias !6874, !nonnull !416, !noundef !416
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sink1.i6.i.i.i
  store i8 18, ptr %i.ej, align 1, !noalias !6876
  %i.ek = add nuw i64 %.sink1.i6.i.i.i, 1
  store i64 %i.ek, ptr %i.au, align 8, !alias.scope !6875, !noalias !6874
  %xtraiter764 = and i64 %i.cc, 1
  %i.el = icmp eq i64 %i.cc, 1
  br i1 %i.el, label %.epil.preheader763, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %unroll_iter768 = and i64 %i.cc, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new
  %.sroa.04.0.i.i.i1.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new ], [ %i.fd, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i2.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new ], [ %i.fc, %bb.g ]
  %niter769 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.new ], [ %niter769.next.1, %bb.g ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i
  %.val.i.i.i3.i = load i64, ptr %i.em, align 8, !alias.scope !6865, !noalias !6877, !noundef !416
  %i.en = or i64 %.val.i.i.i3.i, 1
  %i.eo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = xor i64 %i.eo, 63
  %i.eq = mul nuw nsw i64 %i.ep, 9
  %i.er = add nuw nsw i64 %i.eq, 73
  %i.es = lshr i64 %i.er, 6
  %i.et = add i64 %i.es, %.sroa.02.0.i.i.i2.i
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.val.i.i.i3.i.1 = load i64, ptr %i.ev, align 8, !alias.scope !6865, !noalias !6877, !noundef !416
  %i.ew = or i64 %.val.i.i.i3.i.1, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = xor i64 %i.ex, 63
  %i.ez = mul nuw nsw i64 %i.ey, 9
  %i.fa = add nuw nsw i64 %i.ez, 73
  %i.fb = lshr i64 %i.fa, 6
  %i.fc = add i64 %i.fb, %i.et                    ; 3 uses
  %i.fd = add nuw nsw i64 %.sroa.04.0.i.i.i1.i, 2 ; 2 uses
  %niter769.next.1 = add nuw i64 %niter769, 2     ; 2 uses
  %niter769.ncmp.1 = icmp eq i64 %niter769.next.1, %unroll_iter768
  br i1 %niter769.ncmp.1, label %.lr.ph.preheader.i.i.i.unr-lcssa, label %bb.g

.lr.ph.preheader.i.i.i.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %.lr.ph.preheader.i.i.i, label %.epil.preheader763

.epil.preheader763:                               ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.04.0.i.i.i1.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.fd, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i2.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.fc, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod767 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod767)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i.epil.init
  %.val.i.i.i3.i.epil = load i64, ptr %i.fe, align 8, !alias.scope !6865, !noalias !6877, !noundef !416
  %i.ff = or i64 %.val.i.i.i3.i.epil, 1
  %i.fg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ff, i1 true)
  %i.fh = xor i64 %i.fg, 63
  %i.fi = mul nuw nsw i64 %i.fh, 9
  %i.fj = add nuw nsw i64 %i.fi, 73
  %i.fk = lshr i64 %i.fj, 6
  %i.fl = add i64 %i.fk, %.sroa.02.0.i.i.i2.i.epil.init
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %.epil.preheader763
  %.lcssa660 = phi i64 [ %i.fc, %.lr.ph.preheader.i.i.i.unr-lcssa ], [ %i.fl, %.epil.preheader763 ]
  %.idx.i.i.i = shl nuw nsw i64 %i.cc, 3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa660, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6868
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i ], [ %i.ca, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 8 ; 2 uses
  %i.fo = load i64, ptr %.sroa.0.02.i.i.i, align 8, !alias.scope !6865, !noalias !6877, !noundef !416
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.fo, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6868
  %i.fp = icmp eq ptr %i.fn, %i.fm
  br i1 %i.fp, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i
  br i1 %i.dp, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !6864, !noalias !6878 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6880)
  %.pre18.i4.i.i = load i64, ptr %i.au, align 8, !alias.scope !6881, !noalias !6864 ; 3 uses
  %.pre28.i5.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !6881, !noalias !6864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6886)
  %i.fr = icmp eq i64 %.pre28.i5.i.i, %.pre18.i4.i.i
  br i1 %i.fr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i4.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6887
  %i.fs = load i64, ptr %i.au, align 8, !alias.scope !6888, !noalias !6887, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i.i, %bb.h
  %.sink1.i6.i6.i.i = phi i64 [ %i.fs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i.i ], [ %.pre18.i4.i.i, %bb.h ] ; 3 uses
  %i.ft = icmp sgt i64 %.sink1.i6.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = load ptr, ptr %i.av, align 8, !alias.scope !6888, !noalias !6887, !nonnull !416, !noundef !416
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sink1.i6.i6.i.i
  store i8 26, ptr %i.fv, align 1, !noalias !6889
  %i.fw = add nuw i64 %.sink1.i6.i6.i.i, 1
  store i64 %i.fw, ptr %i.au, align 8, !alias.scope !6888, !noalias !6887
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.do, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6864
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6893)
  %i.fx = load i64, ptr %i.au, align 8, !alias.scope !6894, !noalias !6895, !noundef !416 ; 3 uses
  %i.fy = load i64, ptr %1, align 8, !range !419, !alias.scope !6894, !noalias !6895, !noundef !416
  %i.fz = sub i64 %i.fy, %i.fx
  %i.ga = icmp ugt i64 %i.do, %i.fz
  br i1 %i.ga, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i4.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i4.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fx, i64 noundef range(i64 0, -9223372036854775808) %i.do, i64 noundef 1, i64 noundef 1), !noalias !6895
  %i.gb = load i64, ptr %i.au, align 8, !alias.scope !6896, !noalias !6895, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i4.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i
  %.sink11.i.i = phi i64 [ %i.gb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i4.i ], [ %i.fx, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i.i ] ; 3 uses
  %i.gc = icmp sgt i64 %.sink11.i.i, -1
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = load ptr, ptr %i.av, align 8, !alias.scope !6896, !noalias !6895, !nonnull !416, !noundef !416
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sink11.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %i.do, i1 false), !noalias !6897
  %i.gf = add nuw i64 %.sink11.i.i, %i.do
  store i64 %i.gf, ptr %i.au, align 8, !alias.scope !6896, !noalias !6895
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.i:                                             ; preds = %bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6900)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre18.i.i28 = load i64, ptr %i.gh, align 8, !alias.scope !6901, !noalias !6898 ; 3 uses
  %.pre28.i.i29 = load i64, ptr %1, align 8, !range !419, !alias.scope !6901, !noalias !6898 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6906)
  %i.gj = icmp eq i64 %.pre28.i.i29, %.pre18.i.i28
  br i1 %i.gj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i28, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6907
  %i.gk = load i64, ptr %i.gh, align 8, !alias.scope !6908, !noalias !6907, !noundef !416
  %.pre27.pre.i.i42 = load i64, ptr %1, align 8, !range !419, !alias.scope !6901, !noalias !6898
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41, %bb.i
  %.pre27.i.i31 = phi i64 [ %.pre27.pre.i.i42, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41 ], [ %.pre28.i.i29, %bb.i ] ; 2 uses
  %.sink1.i.i.i32 = phi i64 [ %i.gk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i41 ], [ %.pre18.i.i28, %bb.i ] ; 3 uses
  %i.gl = icmp sgt i64 %.sink1.i.i.i32, -1
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = load ptr, ptr %i.gi, align 8, !alias.scope !6908, !noalias !6907, !nonnull !416, !noundef !416 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.sink1.i.i.i32
  store i8 -78, ptr %i.gn, align 1, !noalias !6909
  %i.go = add nuw i64 %.sink1.i.i.i32, 1          ; 3 uses
  store i64 %i.go, ptr %i.gh, align 8, !alias.scope !6908, !noalias !6907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6914)
  %i.gp = icmp eq i64 %.pre27.i.i31, %i.go
  br i1 %i.gp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i31, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !6915
  %i.gq = load i64, ptr %i.gh, align 8, !alias.scope !6916, !noalias !6915, !noundef !416
  %.pre.i40 = load ptr, ptr %i.gi, align 8, !alias.scope !6916, !noalias !6915
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30
  %i.gr = phi ptr [ %.pre.i40, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39 ], [ %i.gm, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30 ]
  %.sink1.i6.i.i34 = phi i64 [ %i.gq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i39 ], [ %i.go, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i30 ] ; 3 uses
  %i.gs = icmp sgt i64 %.sink1.i6.i.i34, -1
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink1.i6.i.i34
  store i8 6, ptr %i.gt, align 1, !noalias !6917
  %i.gu = add nuw i64 %.sink1.i6.i.i34, 1
  store i64 %i.gu, ptr %i.gh, align 8, !alias.scope !6916, !noalias !6915
  %i.gv = tail call fastcc noundef i64 @_RNvXsC_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_9OverwriteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.gg), !noalias !6899
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6898
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6918)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !6919, !noalias !6920, !nonnull !416, !noundef !416 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !6919, !noalias !6920, !noundef !416 ; 2 uses
  %.idx.i.i35 = mul nuw nsw i64 %i.gz, 224
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx.i.i35
  %i.hb = icmp eq i64 %i.gz, 0
  br i1 %i.hb, label %._crit_edge.i.i37, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33, %.lr.ph.i.i36
  %.sroa.0.011.i.i = phi ptr [ %i.hc, %.lr.ph.i.i36 ], [ %i.gx, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.011.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6919
  %i.hd = icmp eq ptr %i.hc, %i.ha
  br i1 %i.hd, label %._crit_edge.i.i37, label %.lr.ph.i.i36

._crit_edge.i.i37:                                ; preds = %.lr.ph.i.i36, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i33
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !6919, !noalias !6920, !nonnull !416, !noundef !416 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !6919, !noalias !6920, !noundef !416 ; 2 uses
  %.idx20.i.i = mul nuw nsw i64 %i.hh, 176
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx20.i.i
  %i.hj = icmp eq i64 %i.hh, 0
  br i1 %i.hj, label %._crit_edge15.i.i, label %.lr.ph14.i.i

.lr.ph14.i.i:                                     ; preds = %._crit_edge.i.i37, %.lr.ph14.i.i
  %.sroa.02.012.i.i = phi ptr [ %i.hk, %.lr.ph14.i.i ], [ %i.hf, %._crit_edge.i.i37 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i, i64 176 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.012.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6919
  %i.hl = icmp eq ptr %i.hk, %i.hi
  br i1 %i.hl, label %._crit_edge15.i.i, label %.lr.ph14.i.i

._crit_edge15.i.i:                                ; preds = %.lr.ph14.i.i, %._crit_edge.i.i37
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i38 = load ptr, ptr %i.hm, align 8, !alias.scope !6919, !noalias !6920
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val8.i.i = load i64, ptr %i.hn, align 8, !alias.scope !6921, !noalias !6922, !noundef !416
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VechEB1r_INvNtB4_6string6encodeB1r_ENvB1Q_11encoded_lenINvNtB4_5bytes6encodeB1r_B1r_EINvB2A_11encoded_lenB1r_EECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 3, ptr %.val.i.i38, i64 %.val8.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !6919
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val9.i.i = load ptr, ptr %i.ho, align 8, !alias.scope !6919, !noalias !6920
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val10.i.i = load i64, ptr %i.hp, align 8, !alias.scope !6923, !noalias !6924, !noundef !416
end_hunk_0
begin_hunk_1_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  tail call void @llvm.assume(i1 %i.sk)
  %i.sl = load ptr, ptr %i.sh, align 8, !alias.scope !7102, !noalias !7101, !nonnull !416, !noundef !416 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.sink1.i.i.i113
  store i8 -38, ptr %i.sm, align 1, !noalias !7102
  %i.sn = add nuw i64 %.sink1.i.i.i113, 1         ; 3 uses
  store i64 %i.sn, ptr %i.sg, align 8, !alias.scope !7102, !noalias !7101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7107)
  %i.so = icmp eq i64 %.pre27.i.i112, %i.sn
  br i1 %i.so, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i122, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i114, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i122: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i111
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i112, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7108
  %i.sp = load i64, ptr %i.sg, align 8, !alias.scope !7109, !noalias !7108, !noundef !416
  %.pre.i123 = load ptr, ptr %i.sh, align 8, !alias.scope !7109, !noalias !7108
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i114

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i114: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i122, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i111
  %i.sq = phi ptr [ %.pre.i123, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i122 ], [ %i.sl, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i111 ]
  %.sink1.i6.i.i115 = phi i64 [ %i.sp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i122 ], [ %i.sn, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i111 ] ; 3 uses
  %i.sr = icmp sgt i64 %.sink1.i6.i.i115, -1
  tail call void @llvm.assume(i1 %i.sr)
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 %.sink1.i6.i.i115
  store i8 6, ptr %i.ss, align 1, !noalias !7109
  %i.st = add nuw i64 %.sink1.i6.i.i115, 1
  store i64 %i.st, ptr %i.sg, align 8, !alias.scope !7109, !noalias !7108
  %i.su = icmp eq i32 %.val3, 0
  br i1 %i.su, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.y

bb.y:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i114
  %i.sv = or i32 %.val3, 1
  %i.sw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.sv, i1 true)
  %i.sx = xor i32 %i.sw, 31
  %i.sy = mul nuw nsw i32 %i.sx, 9
  %i.sz = add nuw nsw i32 %i.sy, 73
  %i.ta = lshr i32 %i.sz, 6
  %narrow.i.i.i = add nuw nsw i32 %i.ta, 1
  %i.tb = zext nneg i32 %narrow.i.i.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.tb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7111)
  %.pre18.i.i.i116 = load i64, ptr %i.sg, align 8, !alias.scope !7112, !noalias !416 ; 3 uses
  %.pre28.i.i.i117 = load i64, ptr %1, align 8, !range !419, !alias.scope !7112, !noalias !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7117)
  %i.tc = icmp eq i64 %.pre28.i.i.i117, %.pre18.i.i.i116
  br i1 %i.tc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i121, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i118, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i121: ; preds = %bb.y
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i116, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7118
  %i.td = load i64, ptr %i.sg, align 8, !alias.scope !7119, !noalias !7118, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i118

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i118: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i121, %bb.y
  %.sink1.i6.i.i.i119 = phi i64 [ %i.td, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i121 ], [ %.pre18.i.i.i116, %bb.y ] ; 3 uses
  %i.te = icmp sgt i64 %.sink1.i6.i.i.i119, -1
  tail call void @llvm.assume(i1 %i.te)
  %i.tf = load ptr, ptr %i.sh, align 8, !alias.scope !7119, !noalias !7118, !nonnull !416, !noundef !416
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.sink1.i6.i.i.i119
  store i8 8, ptr %i.tg, align 1, !noalias !7119
  %i.th = add nuw i64 %.sink1.i6.i.i.i119, 1
  store i64 %i.th, ptr %i.sg, align 8, !alias.scope !7119, !noalias !7118
  %i.ti = zext i32 %.val3 to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i114, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i118
  %.sink.i120 = phi i64 [ %i.ti, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i118 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i114 ]
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.sink.i120, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7122)
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 78 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 27 uses
  %.pre18.i.i126 = load i64, ptr %i.tj, align 8, !alias.scope !7123, !noalias !7120 ; 3 uses
  %.pre28.i.i127 = load i64, ptr %1, align 8, !range !419, !alias.scope !7123, !noalias !7120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7128)
  %i.tl = icmp eq i64 %.pre28.i.i127, %.pre18.i.i126
  br i1 %i.tl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i167, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i128, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i167: ; preds = %bb.z
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i126, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7129
  %i.tm = load i64, ptr %i.tj, align 8, !alias.scope !7130, !noalias !7129, !noundef !416
  %.pre27.pre.i.i168 = load i64, ptr %1, align 8, !range !419, !alias.scope !7123, !noalias !7120
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i128

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i128: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i167, %bb.z
  %.pre27.i.i129 = phi i64 [ %.pre27.pre.i.i168, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i167 ], [ %.pre28.i.i127, %bb.z ] ; 2 uses
  %.sink1.i.i.i130 = phi i64 [ %i.tm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i167 ], [ %.pre18.i.i126, %bb.z ] ; 3 uses
  %i.tn = icmp sgt i64 %.sink1.i.i.i130, -1
  tail call void @llvm.assume(i1 %i.tn)
  %i.to = load ptr, ptr %i.tk, align 8, !alias.scope !7130, !noalias !7129, !nonnull !416, !noundef !416
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %.sink1.i.i.i130
  store i8 -30, ptr %i.tp, align 1, !noalias !7131
  %i.tq = add nuw i64 %.sink1.i.i.i130, 1         ; 3 uses
  store i64 %i.tq, ptr %i.tj, align 8, !alias.scope !7130, !noalias !7129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7136)
  %i.tr = icmp eq i64 %.pre27.i.i129, %i.tq
  br i1 %i.tr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i166, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i131, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i166: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i128
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i129, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7137
  %i.ts = load i64, ptr %i.tj, align 8, !alias.scope !7138, !noalias !7137, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i131

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i131: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i166, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i128
  %.sink1.i6.i.i132 = phi i64 [ %i.ts, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i166 ], [ %i.tq, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i128 ] ; 3 uses
  %i.tt = icmp sgt i64 %.sink1.i6.i.i132, -1
  tail call void @llvm.assume(i1 %i.tt)
  %i.tu = load ptr, ptr %i.tk, align 8, !alias.scope !7138, !noalias !7137, !nonnull !416, !noundef !416
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %.sink1.i6.i.i132
  store i8 6, ptr %i.tv, align 1, !noalias !7139
  %i.tw = add nuw i64 %.sink1.i6.i.i132, 1
  store i64 %i.tw, ptr %i.tj, align 8, !alias.scope !7138, !noalias !7137
  %i.tx = tail call fastcc noundef i64 @_RNvXs21_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_6UpdateNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.tx, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7141)
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !7142, !noalias !7143, !nonnull !416, !noundef !416 ; 5 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ub = load i64, ptr %i.ua, align 8, !alias.scope !7142, !noalias !7143, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7144)
  %i.uc = icmp eq i64 %i.ub, 0
  br i1 %i.uc, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i144, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7145)
  %.pre18.i.i.i133 = load i64, ptr %i.tj, align 8, !alias.scope !7146, !noalias !7147 ; 3 uses
  %.pre28.i.i.i134 = load i64, ptr %1, align 8, !range !419, !alias.scope !7146, !noalias !7147
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7148), !noalias !7144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7149), !noalias !7144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7150), !noalias !7144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7151), !noalias !7144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7152), !noalias !7144
  %i.ud = icmp eq i64 %.pre28.i.i.i134, %.pre18.i.i.i133
  br i1 %i.ud, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i165, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i165: ; preds = %bb.aa
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i133, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7153
  %i.ue = load i64, ptr %i.tj, align 8, !alias.scope !7154, !noalias !7153, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i165, %bb.aa
  %.sink1.i6.i.i.i136 = phi i64 [ %i.ue, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i165 ], [ %.pre18.i.i.i133, %bb.aa ] ; 3 uses
  %i.uf = icmp sgt i64 %.sink1.i6.i.i.i136, -1
  tail call void @llvm.assume(i1 %i.uf), !noalias !7144
  %i.ug = load ptr, ptr %i.tk, align 8, !alias.scope !7154, !noalias !7153, !nonnull !416, !noundef !416
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.sink1.i6.i.i.i136
  store i8 10, ptr %i.uh, align 1, !noalias !7155
  %i.ui = add nuw i64 %.sink1.i6.i.i.i136, 1
  store i64 %i.ui, ptr %i.tj, align 8, !alias.scope !7154, !noalias !7153
  %xtraiter = and i64 %i.ub, 1
  %i.uj = icmp eq i64 %i.ub, 1
  br i1 %i.uj, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135
  %unroll_iter = and i64 %i.ub, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135.new
  %.sroa.04.0.i.i.i.i137 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135.new ], [ %i.vb, %bb.ab ] ; 3 uses
  %.sroa.02.0.i.i.i.i138 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135.new ], [ %i.va, %bb.ab ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135.new ], [ %niter.next.1, %bb.ab ]
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i137
  %.val.i.i.i.i139 = load i64, ptr %i.uk, align 8, !alias.scope !7144, !noalias !7156, !noundef !416
  %i.ul = or i64 %.val.i.i.i.i139, 1
  %i.um = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ul, i1 true)
  %i.un = xor i64 %i.um, 63
  %i.uo = mul nuw nsw i64 %i.un, 9
  %i.up = add nuw nsw i64 %i.uo, 73
  %i.uq = lshr i64 %i.up, 6
  %i.ur = add i64 %i.uq, %.sroa.02.0.i.i.i.i138
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i137
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %.val.i.i.i.i139.1 = load i64, ptr %i.ut, align 8, !alias.scope !7144, !noalias !7156, !noundef !416
  %i.uu = or i64 %.val.i.i.i.i139.1, 1
  %i.uv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.uu, i1 true)
  %i.uw = xor i64 %i.uv, 63
  %i.ux = mul nuw nsw i64 %i.uw, 9
  %i.uy = add nuw nsw i64 %i.ux, 73
  %i.uz = lshr i64 %i.uy, 6
  %i.va = add i64 %i.uz, %i.ur                    ; 3 uses
  %i.vb = add nuw nsw i64 %.sroa.04.0.i.i.i.i137, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.i140.unr-lcssa, label %bb.ab

.lr.ph.preheader.i.i.i140.unr-lcssa:              ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i.i140, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.i140.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135
  %.sroa.04.0.i.i.i.i137.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135 ], [ %i.vb, %.lr.ph.preheader.i.i.i140.unr-lcssa ]
  %.sroa.02.0.i.i.i.i138.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i135 ], [ %i.va, %.lr.ph.preheader.i.i.i140.unr-lcssa ]
  %lcmp.mod703 = trunc i64 %i.ub to i1
  tail call void @llvm.assume(i1 %lcmp.mod703)
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i137.epil.init
  %.val.i.i.i.i139.epil = load i64, ptr %i.vc, align 8, !alias.scope !7144, !noalias !7156, !noundef !416
  %i.vd = or i64 %.val.i.i.i.i139.epil, 1
  %i.ve = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.vd, i1 true)
  %i.vf = xor i64 %i.ve, 63
  %i.vg = mul nuw nsw i64 %i.vf, 9
  %i.vh = add nuw nsw i64 %i.vg, 73
  %i.vi = lshr i64 %i.vh, 6
  %i.vj = add i64 %i.vi, %.sroa.02.0.i.i.i.i138.epil.init
  br label %.lr.ph.preheader.i.i.i140

.lr.ph.preheader.i.i.i140:                        ; preds = %.lr.ph.preheader.i.i.i140.unr-lcssa, %.epil.preheader
  %.lcssa683 = phi i64 [ %i.va, %.lr.ph.preheader.i.i.i140.unr-lcssa ], [ %i.vj, %.epil.preheader ]
  %.idx.i.i.i141 = shl nuw nsw i64 %i.ub, 3
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.idx.i.i.i141
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa683, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7147
  br label %.lr.ph.i.i.i142

.lr.ph.i.i.i142:                                  ; preds = %.lr.ph.i.i.i142, %.lr.ph.preheader.i.i.i140
  %.sroa.0.02.i.i.i143 = phi ptr [ %i.vl, %.lr.ph.i.i.i142 ], [ %i.tz, %.lr.ph.preheader.i.i.i140 ] ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i143, i64 8 ; 2 uses
  %i.vm = load i64, ptr %.sroa.0.02.i.i.i143, align 8, !alias.scope !7144, !noalias !7156, !noundef !416
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.vm, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7147
  %i.vn = icmp eq ptr %i.vl, %i.vk
  br i1 %i.vn, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i144, label %.lr.ph.i.i.i142

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i144: ; preds = %.lr.ph.i.i.i142, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i131
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vp = load ptr, ptr %i.vo, align 8, !alias.scope !7142, !noalias !7143, !nonnull !416, !noundef !416 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !7142, !noalias !7143, !noundef !416 ; 2 uses
  %.idx.i.i145 = mul nuw nsw i64 %i.vr, 224
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx.i.i145
  %i.vt = icmp eq i64 %i.vr, 0
  br i1 %i.vt, label %._crit_edge.i.i147, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i144, %.lr.ph.i.i146
  %.sroa.0.0113.i.i = phi ptr [ %i.vu, %.lr.ph.i.i146 ], [ %i.vp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i144 ] ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.0113.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.0113.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7142
  %i.vv = icmp eq ptr %i.vu, %i.vs
  br i1 %i.vv, label %._crit_edge.i.i147, label %.lr.ph.i.i146

._crit_edge.i.i147:                               ; preds = %.lr.ph.i.i146, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i144
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vx = load ptr, ptr %i.vw, align 8, !alias.scope !7142, !noalias !7143, !nonnull !416, !noundef !416 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vz = load i64, ptr %i.vy, align 8, !alias.scope !7142, !noalias !7143, !noundef !416 ; 2 uses
  %.idx121.i.i = mul nuw nsw i64 %i.vz, 224
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.idx121.i.i
  %i.wb = icmp eq i64 %i.vz, 0
  br i1 %i.wb, label %._crit_edge117.i.i, label %.lr.ph116.i.i

.lr.ph116.i.i:                                    ; preds = %._crit_edge.i.i147, %.lr.ph116.i.i
  %.sroa.02.0114.i.i = phi ptr [ %i.wc, %.lr.ph116.i.i ], [ %i.vx, %._crit_edge.i.i147 ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.02.0114.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.02.0114.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7142
  %i.wd = icmp eq ptr %i.wc, %i.wa
  br i1 %i.wd, label %._crit_edge117.i.i, label %.lr.ph116.i.i

._crit_edge117.i.i:                               ; preds = %.lr.ph116.i.i, %._crit_edge.i.i147
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.wf = load ptr, ptr %i.we, align 8, !alias.scope !7142, !noalias !7143, !nonnull !416, !noundef !416 ; 5 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.wh = load i64, ptr %i.wg, align 8, !alias.scope !7142, !noalias !7143, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7157)
  %i.wi = icmp eq i64 %i.wh, 0
  br i1 %i.wi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge117.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7158)
  %.pre18.i86.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7159, !noalias !7160 ; 3 uses
  %.pre28.i87.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7159, !noalias !7160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7161), !noalias !7157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7162), !noalias !7157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7163), !noalias !7157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7164), !noalias !7157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7165), !noalias !7157
  %i.wj = icmp eq i64 %.pre28.i87.i.i, %.pre18.i86.i.i
  br i1 %i.wj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i89.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i89.i.i: ; preds = %bb.ac
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i86.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7166
  %i.wk = load i64, ptr %i.tj, align 8, !alias.scope !7167, !noalias !7166, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i89.i.i, %bb.ac
  %.sink1.i6.i88.i.i = phi i64 [ %i.wk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i89.i.i ], [ %.pre18.i86.i.i, %bb.ac ] ; 3 uses
  %i.wl = icmp sgt i64 %.sink1.i6.i88.i.i, -1
  tail call void @llvm.assume(i1 %i.wl), !noalias !7157
  %i.wm = load ptr, ptr %i.tk, align 8, !alias.scope !7167, !noalias !7166, !nonnull !416, !noundef !416
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 %.sink1.i6.i88.i.i
  store i8 34, ptr %i.wn, align 1, !noalias !7168
  %i.wo = add nuw i64 %.sink1.i6.i88.i.i, 1
  store i64 %i.wo, ptr %i.tj, align 8, !alias.scope !7167, !noalias !7166
  %xtraiter705 = and i64 %i.wh, 1
  %i.wp = icmp eq i64 %i.wh, 1
  br i1 %i.wp, label %.epil.preheader704, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i
  %unroll_iter709 = and i64 %i.wh, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new
  %.sroa.04.0.i.i12.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new ], [ %i.xj, %bb.ad ] ; 3 uses
  %.sroa.02.0.i.i13.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new ], [ %i.xi, %bb.ad ]
  %niter710 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i.new ], [ %niter710.next.1, %bb.ad ]
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.sroa.04.0.i.i12.i.i
  %.val.i.i14.i.i = load i32, ptr %i.wq, align 4, !alias.scope !7157, !noalias !7169, !noundef !416
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
  %.val.i.i14.i.i.1 = load i32, ptr %i.xa, align 4, !alias.scope !7157, !noalias !7169, !noundef !416
  %i.xb = or i32 %.val.i.i14.i.i.1, 1
  %i.xc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xb, i1 true)
  %i.xd = xor i32 %i.xc, 31
  %i.xe = mul nuw nsw i32 %i.xd, 9
  %i.xf = add nuw nsw i32 %i.xe, 73
  %i.xg = lshr i32 %i.xf, 6
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = add i64 %i.wy, %i.xh                    ; 3 uses
  %i.xj = add nuw nsw i64 %.sroa.04.0.i.i12.i.i, 2 ; 2 uses
  %niter710.next.1 = add nuw i64 %niter710, 2     ; 2 uses
  %niter710.ncmp.1 = icmp eq i64 %niter710.next.1, %unroll_iter709
  br i1 %niter710.ncmp.1, label %.lr.ph.preheader.i15.i.i.unr-lcssa, label %bb.ad

.lr.ph.preheader.i15.i.i.unr-lcssa:               ; preds = %bb.ad
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  br i1 %lcmp.mod706.not, label %.lr.ph.preheader.i15.i.i, label %.epil.preheader704

.epil.preheader704:                               ; preds = %.lr.ph.preheader.i15.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i
  %.sroa.04.0.i.i12.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i ], [ %i.xj, %.lr.ph.preheader.i15.i.i.unr-lcssa ]
  %.sroa.02.0.i.i13.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit90.i.i ], [ %i.xi, %.lr.ph.preheader.i15.i.i.unr-lcssa ]
  %lcmp.mod708 = trunc i64 %i.wh to i1
  tail call void @llvm.assume(i1 %lcmp.mod708)
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.sroa.04.0.i.i12.i.i.epil.init
  %.val.i.i14.i.i.epil = load i32, ptr %i.xk, align 4, !alias.scope !7157, !noalias !7169, !noundef !416
  %i.xl = or i32 %.val.i.i14.i.i.epil, 1
  %i.xm = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xl, i1 true)
  %i.xn = xor i32 %i.xm, 31
  %i.xo = mul nuw nsw i32 %i.xn, 9
  %i.xp = add nuw nsw i32 %i.xo, 73
  %i.xq = lshr i32 %i.xp, 6
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = add i64 %.sroa.02.0.i.i13.i.i.epil.init, %i.xr
  br label %.lr.ph.preheader.i15.i.i

.lr.ph.preheader.i15.i.i:                         ; preds = %.lr.ph.preheader.i15.i.i.unr-lcssa, %.epil.preheader704
  %.lcssa682 = phi i64 [ %i.xi, %.lr.ph.preheader.i15.i.i.unr-lcssa ], [ %i.xs, %.epil.preheader704 ]
  %.idx.i16.i.i = shl nuw nsw i64 %i.wh, 2
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.idx.i16.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa682, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7160
  br label %.lr.ph.i17.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.preheader.i15.i.i
  %.sroa.0.02.i18.i.i = phi ptr [ %i.xu, %.lr.ph.i17.i.i ], [ %i.wf, %.lr.ph.preheader.i15.i.i ] ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i18.i.i, i64 4 ; 2 uses
  %i.xv = load i32, ptr %.sroa.0.02.i18.i.i, align 4, !alias.scope !7157, !noalias !7169, !noundef !416
  %i.xw = zext i32 %i.xv to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.xw, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7160
  %i.xx = icmp eq ptr %i.xu, %i.xt
  br i1 %i.xx, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i17.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.lr.ph.i17.i.i, %._crit_edge117.i.i
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.xz = load ptr, ptr %i.xy, align 8, !alias.scope !7142, !noalias !7143, !nonnull !416, !noundef !416 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.yb = load i64, ptr %i.ya, align 8, !alias.scope !7142, !noalias !7143, !noundef !416 ; 2 uses
  %.idx122.i.i = shl nuw nsw i64 %i.yb, 5
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.idx122.i.i
  %i.yd = icmp eq i64 %i.yb, 0
  br i1 %i.yd, label %._crit_edge120.i.i, label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %.lr.ph119.i.i
  %.sroa.05.0118.i.i = phi ptr [ %i.ye, %.lr.ph119.i.i ], [ %i.xz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.05.0118.i.i, i64 32 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.05.0118.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7142
  %i.yf = icmp eq ptr %i.ye, %i.yc
  br i1 %i.yf, label %._crit_edge120.i.i, label %.lr.ph119.i.i

._crit_edge120.i.i:                               ; preds = %.lr.ph119.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.yh = load ptr, ptr %i.yg, align 8, !alias.scope !7142, !noalias !7143, !nonnull !416, !noundef !416 ; 5 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !7142, !noalias !7143, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7170)
  %i.yk = icmp eq i64 %i.yj, 0
  br i1 %i.yk, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge120.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7171)
  %.pre18.i91.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7172, !noalias !7173 ; 3 uses
  %.pre28.i92.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7172, !noalias !7173
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7174), !noalias !7170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7175), !noalias !7170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7176), !noalias !7170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7177), !noalias !7170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7178), !noalias !7170
  %i.yl = icmp eq i64 %.pre28.i92.i.i, %.pre18.i91.i.i
  br i1 %i.yl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i94.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i94.i.i: ; preds = %bb.ae
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i91.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7179
  %i.ym = load i64, ptr %i.tj, align 8, !alias.scope !7180, !noalias !7179, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i94.i.i, %bb.ae
  %.sink1.i6.i93.i.i = phi i64 [ %i.ym, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i94.i.i ], [ %.pre18.i91.i.i, %bb.ae ] ; 3 uses
  %i.yn = icmp sgt i64 %.sink1.i6.i93.i.i, -1
  tail call void @llvm.assume(i1 %i.yn), !noalias !7170
  %i.yo = load ptr, ptr %i.tk, align 8, !alias.scope !7180, !noalias !7179, !nonnull !416, !noundef !416
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 %.sink1.i6.i93.i.i
  store i8 50, ptr %i.yp, align 1, !noalias !7181
  %i.yq = add nuw i64 %.sink1.i6.i93.i.i, 1
  store i64 %i.yq, ptr %i.tj, align 8, !alias.scope !7180, !noalias !7179
  %xtraiter712 = and i64 %i.yj, 1
  %i.yr = icmp eq i64 %i.yj, 1
  br i1 %i.yr, label %.epil.preheader711, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i
  %unroll_iter716 = and i64 %i.yj, -2
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new
  %.sroa.04.0.i.i19.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new ], [ %i.zl, %bb.af ] ; 3 uses
  %.sroa.02.0.i.i20.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new ], [ %i.zk, %bb.af ]
  %niter717 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i.new ], [ %niter717.next.1, %bb.af ]
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.sroa.04.0.i.i19.i.i
  %.val.i.i21.i.i = load i32, ptr %i.ys, align 4, !alias.scope !7170, !noalias !7182, !noundef !416
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
  %.val.i.i21.i.i.1 = load i32, ptr %i.zc, align 4, !alias.scope !7170, !noalias !7182, !noundef !416
  %i.zd = or i32 %.val.i.i21.i.i.1, 1
  %i.ze = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.zd, i1 true)
  %i.zf = xor i32 %i.ze, 31
  %i.zg = mul nuw nsw i32 %i.zf, 9
  %i.zh = add nuw nsw i32 %i.zg, 73
  %i.zi = lshr i32 %i.zh, 6
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = add i64 %i.za, %i.zj                    ; 3 uses
  %i.zl = add nuw nsw i64 %.sroa.04.0.i.i19.i.i, 2 ; 2 uses
  %niter717.next.1 = add nuw i64 %niter717, 2     ; 2 uses
  %niter717.ncmp.1 = icmp eq i64 %niter717.next.1, %unroll_iter716
  br i1 %niter717.ncmp.1, label %.lr.ph.preheader.i22.i.i.unr-lcssa, label %bb.af

.lr.ph.preheader.i22.i.i.unr-lcssa:               ; preds = %bb.af
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %.lr.ph.preheader.i22.i.i, label %.epil.preheader711

.epil.preheader711:                               ; preds = %.lr.ph.preheader.i22.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i
  %.sroa.04.0.i.i19.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i ], [ %i.zl, %.lr.ph.preheader.i22.i.i.unr-lcssa ]
  %.sroa.02.0.i.i20.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit95.i.i ], [ %i.zk, %.lr.ph.preheader.i22.i.i.unr-lcssa ]
  %lcmp.mod715 = trunc i64 %i.yj to i1
  tail call void @llvm.assume(i1 %lcmp.mod715)
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.sroa.04.0.i.i19.i.i.epil.init
  %.val.i.i21.i.i.epil = load i32, ptr %i.zm, align 4, !alias.scope !7170, !noalias !7182, !noundef !416
  %i.zn = or i32 %.val.i.i21.i.i.epil, 1
  %i.zo = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.zn, i1 true)
  %i.zp = xor i32 %i.zo, 31
  %i.zq = mul nuw nsw i32 %i.zp, 9
  %i.zr = add nuw nsw i32 %i.zq, 73
  %i.zs = lshr i32 %i.zr, 6
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = add i64 %.sroa.02.0.i.i20.i.i.epil.init, %i.zt
  br label %.lr.ph.preheader.i22.i.i

.lr.ph.preheader.i22.i.i:                         ; preds = %.lr.ph.preheader.i22.i.i.unr-lcssa, %.epil.preheader711
  %.lcssa681 = phi i64 [ %i.zk, %.lr.ph.preheader.i22.i.i.unr-lcssa ], [ %i.zu, %.epil.preheader711 ]
  %.idx.i23.i.i = shl nuw nsw i64 %i.yj, 2
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yh, i64 %.idx.i23.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa681, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7173
  br label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i, %.lr.ph.preheader.i22.i.i
  %.sroa.0.02.i25.i.i = phi ptr [ %i.zw, %.lr.ph.i24.i.i ], [ %i.yh, %.lr.ph.preheader.i22.i.i ] ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i25.i.i, i64 4 ; 2 uses
  %i.zx = load i32, ptr %.sroa.0.02.i25.i.i, align 4, !alias.scope !7170, !noalias !7182, !noundef !416
  %i.zy = zext i32 %i.zx to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.zy, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7173
  %i.zz = icmp eq ptr %i.zw, %i.zv
  br i1 %i.zz, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i, label %.lr.ph.i24.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i: ; preds = %.lr.ph.i24.i.i, %._crit_edge120.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aab = load i32, ptr %i.aaa, align 8, !alias.scope !7142, !noalias !7143, !noundef !416 ; 2 uses
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7183)
  %.pre18.i96.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7184, !noalias !7142 ; 3 uses
  %.pre28.i97.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7184, !noalias !7142
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7189)
  %i.aad = icmp eq i64 %.pre28.i97.i.i, %.pre18.i96.i.i
  br i1 %i.aad, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i99.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit100.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i99.i.i: ; preds = %bb.ag
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i96.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7190
  %i.aae = load i64, ptr %i.tj, align 8, !alias.scope !7191, !noalias !7190, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit100.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit100.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i99.i.i, %bb.ag
  %.sink1.i6.i98.i.i = phi i64 [ %i.aae, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i99.i.i ], [ %.pre18.i96.i.i, %bb.ag ] ; 3 uses
  %i.aaf = icmp sgt i64 %.sink1.i6.i98.i.i, -1
  tail call void @llvm.assume(i1 %i.aaf)
  %i.aag = load ptr, ptr %i.tk, align 8, !alias.scope !7191, !noalias !7190, !nonnull !416, !noundef !416
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %.sink1.i6.i98.i.i
  store i8 56, ptr %i.aah, align 1, !noalias !7192
  %i.aai = add nuw i64 %.sink1.i6.i98.i.i, 1
  store i64 %i.aai, ptr %i.tj, align 8, !alias.scope !7191, !noalias !7190
  %i.aaj = sext i32 %i.aab to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aaj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7142
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit100.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit26.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aal = load i64, ptr %i.aak, align 8, !range !421, !alias.scope !7142, !noalias !7143, !noundef !416
  %.not.i.i = icmp eq i64 %i.aal, -1
  br i1 %.not.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7195)
  %.pre18.i.i.i.i148 = load i64, ptr %i.tj, align 8, !alias.scope !7196, !noalias !7197 ; 3 uses
  %.pre28.i.i.i.i149 = load i64, ptr %1, align 8, !range !419, !alias.scope !7196, !noalias !7197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7202)
  %i.aam = icmp eq i64 %.pre28.i.i.i.i149, %.pre18.i.i.i.i148
  br i1 %i.aam, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i164, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i150, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i164: ; preds = %bb.ai
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i148, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7203
  %i.aan = load i64, ptr %i.tj, align 8, !alias.scope !7204, !noalias !7203, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i150

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i150: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i164, %bb.ai
  %.sink1.i6.i.i.i.i151 = phi i64 [ %i.aan, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i164 ], [ %.pre18.i.i.i.i148, %bb.ai ] ; 3 uses
  %i.aao = icmp sgt i64 %.sink1.i6.i.i.i.i151, -1
  tail call void @llvm.assume(i1 %i.aao)
  %i.aap = load ptr, ptr %i.tk, align 8, !alias.scope !7204, !noalias !7203, !nonnull !416, !noundef !416
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %.sink1.i6.i.i.i.i151
  store i8 66, ptr %i.aaq, align 1, !noalias !7205
  %i.aar = add nuw i64 %.sink1.i6.i.i.i.i151, 1
  store i64 %i.aar, ptr %i.tj, align 8, !alias.scope !7204, !noalias !7203
  %i.aas = tail call fastcc noundef i64 @_RNvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aak), !noalias !7194
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aas, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7197
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7207)
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aau = load ptr, ptr %i.aat, align 8, !alias.scope !7208, !noalias !7209, !nonnull !416, !noundef !416 ; 5 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aaw = load i64, ptr %i.aav, align 8, !alias.scope !7208, !noalias !7209, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7210)
  %i.aax = icmp eq i64 %i.aaw, 0
  br i1 %i.aax, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7211)
  %.pre18.i.i.i.i.i152 = load i64, ptr %i.tj, align 8, !alias.scope !7212, !noalias !7213 ; 3 uses
  %.pre28.i.i.i.i.i153 = load i64, ptr %1, align 8, !range !419, !alias.scope !7212, !noalias !7213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7214), !noalias !7210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7215), !noalias !7210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7216), !noalias !7210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7217), !noalias !7210
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7218), !noalias !7210
  %i.aay = icmp eq i64 %.pre28.i.i.i.i.i153, %.pre18.i.i.i.i.i152
  br i1 %i.aay, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i163, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i163: ; preds = %bb.aj
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i152, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7219
  %i.aaz = load i64, ptr %i.tj, align 8, !alias.scope !7220, !noalias !7219, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i163, %bb.aj
  %.sink1.i6.i.i.i.i.i155 = phi i64 [ %i.aaz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i163 ], [ %.pre18.i.i.i.i.i152, %bb.aj ] ; 3 uses
  %i.aba = icmp sgt i64 %.sink1.i6.i.i.i.i.i155, -1
  tail call void @llvm.assume(i1 %i.aba), !noalias !7210
  %i.abb = load ptr, ptr %i.tk, align 8, !alias.scope !7220, !noalias !7219, !nonnull !416, !noundef !416
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %.sink1.i6.i.i.i.i.i155
  store i8 10, ptr %i.abc, align 1, !noalias !7221
  %i.abd = add nuw i64 %.sink1.i6.i.i.i.i.i155, 1
  store i64 %i.abd, ptr %i.tj, align 8, !alias.scope !7220, !noalias !7219
  %xtraiter719 = and i64 %i.aaw, 1
  %i.abe = icmp eq i64 %i.aaw, 1
  br i1 %i.abe, label %.epil.preheader718, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154
  %unroll_iter723 = and i64 %i.aaw, -2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154.new ], [ %i.aby, %bb.ak ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154.new ], [ %i.abx, %bb.ak ]
  %niter724 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154.new ], [ %niter724.next.1, %bb.ak ]
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %.sroa.04.0.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i32, ptr %i.abf, align 4, !alias.scope !7210, !noalias !7222, !noundef !416
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
  %.val.i.i.i.i.i.i.1 = load i32, ptr %i.abp, align 4, !alias.scope !7210, !noalias !7222, !noundef !416
  %i.abq = or i32 %.val.i.i.i.i.i.i.1, 1
  %i.abr = sext i32 %i.abq to i64
  %i.abs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.abr, i1 true)
  %i.abt = xor i64 %i.abs, 63
  %i.abu = mul nuw nsw i64 %i.abt, 9
  %i.abv = add nuw nsw i64 %i.abu, 73
  %i.abw = lshr i64 %i.abv, 6
  %i.abx = add i64 %i.abw, %i.abn                 ; 3 uses
  %i.aby = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i, 2 ; 2 uses
  %niter724.next.1 = add nuw i64 %niter724, 2     ; 2 uses
  %niter724.ncmp.1 = icmp eq i64 %niter724.next.1, %unroll_iter723
  br i1 %niter724.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, label %bb.ak

.lr.ph.preheader.i.i.i.i.i.unr-lcssa:             ; preds = %bb.ak
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %.lr.ph.preheader.i.i.i.i.i, label %.epil.preheader718

.epil.preheader718:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154 ], [ %i.aby, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i154 ], [ %i.abx, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod722 = trunc i64 %i.aaw to i1
  tail call void @llvm.assume(i1 %lcmp.mod722)
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.i.epil = load i32, ptr %i.abz, align 4, !alias.scope !7210, !noalias !7222, !noundef !416
  %i.aca = or i32 %.val.i.i.i.i.i.i.epil, 1
  %i.acb = sext i32 %i.aca to i64
  %i.acc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.acb, i1 true)
  %i.acd = xor i64 %i.acc, 63
  %i.ace = mul nuw nsw i64 %i.acd, 9
  %i.acf = add nuw nsw i64 %i.ace, 73
  %i.acg = lshr i64 %i.acf, 6
  %i.ach = add i64 %i.acg, %.sroa.02.0.i.i.i.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %.epil.preheader718
  %.lcssa680 = phi i64 [ %i.abx, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ], [ %i.ach, %.epil.preheader718 ]
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.aaw, 2
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aau, i64 %.idx.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa680, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7213
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i = phi ptr [ %i.acj, %.lr.ph.i.i.i.i.i ], [ %i.aau, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i, i64 4 ; 2 uses
  %i.ack = load i32, ptr %.sroa.0.02.i.i.i.i.i, align 4, !alias.scope !7210, !noalias !7222, !noundef !416
  %i.acl = sext i32 %i.ack to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.acl, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7213
  %i.acm = icmp eq ptr %i.acj, %i.aci
  br i1 %i.acm, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i150
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aco = load i64, ptr %i.acn, align 8, !range !418, !alias.scope !7208, !noalias !7209, !noundef !416 ; 2 uses
  %.not.i.i.i.i156 = icmp eq i64 %i.aco, -2
  br i1 %.not.i.i.i.i156, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7224)
  %.not.i.i.i.i.i = icmp eq i64 %i.aco, -1
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7227)
  %.pre18.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7228, !noalias !7229 ; 3 uses
  %.pre28.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7228, !noalias !7229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7234)
  %i.acp = icmp eq i64 %.pre28.i.i.i.i.i.i.i, %.pre18.i.i.i.i.i.i.i
  br i1 %i.acp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i: ; preds = %bb.am
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7235
  %i.acq = load i64, ptr %i.tj, align 8, !alias.scope !7236, !noalias !7235, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i, %bb.am
  %.sink1.i6.i.i.i.i.i.i.i = phi i64 [ %i.acq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i ], [ %.pre18.i.i.i.i.i.i.i, %bb.am ] ; 3 uses
  %i.acr = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.acr)
  %i.acs = load ptr, ptr %i.tk, align 8, !alias.scope !7236, !noalias !7235, !nonnull !416, !noundef !416
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 %.sink1.i6.i.i.i.i.i.i.i
  store i8 26, ptr %i.act, align 1, !noalias !7237
  %i.acu = add nuw i64 %.sink1.i6.i.i.i.i.i.i.i, 1
  store i64 %i.acu, ptr %i.tj, align 8, !alias.scope !7236, !noalias !7235
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.acw = load i64, ptr %i.acv, align 8, !alias.scope !7238, !noalias !7239, !noundef !416 ; 11 uses
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
  %.sroa.0.0.i.i.i.i.i.i.i157 = phi i64 [ %i.adg, %bb.an ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.adi = load i32, ptr %i.adh, align 8, !alias.scope !7238, !noalias !7239, !noundef !416 ; 3 uses
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
  %i.ads = load i64, ptr %i.adr, align 8, !alias.scope !7238, !noalias !7239, !noundef !416 ; 3 uses
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
  %.sroa.02.0.i.i.i.i.i.i.i158 = phi i64 [ %i.aea, %bb.ar ], [ 0, %bb.aq ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aec = load double, ptr %i.aeb, align 8, !alias.scope !7238, !noalias !7239, !noundef !416 ; 2 uses
  %i.aed = fcmp une double %i.aec, 0.000000e+00   ; 2 uses
  %..i.i.i.i.i.i.i = select i1 %i.aed, i64 9, i64 0
  %i.aee = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i157
  %i.aef = add nuw i64 %i.aee, %.sroa.02.0.i.i.i.i.i.i.i158
  %i.aeg = add nuw i64 %i.aef, %..i.i.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aeg, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7241)
  br i1 %i.acx, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RNvXs1H_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_11BloomFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i.i.i.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.aeh, align 8, !alias.scope !7242, !noalias !7243 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7245)
  %.pre18.i.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7246, !noalias !7242 ; 3 uses
  %.pre28.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7246, !noalias !7242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7251)
  %i.aei = icmp eq i64 %.pre28.i.i.i.i.i.i.i.i, %.pre18.i.i.i.i.i.i.i.i
  br i1 %i.aei, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i: ; preds = %bb.as
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7252
  %i.aej = load i64, ptr %i.tj, align 8, !alias.scope !7253, !noalias !7252, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i, %bb.as
  %.sink1.i6.i.i.i.i.i.i.i.i = phi i64 [ %i.aej, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i ], [ %.pre18.i.i.i.i.i.i.i.i, %bb.as ] ; 3 uses
  %i.aek = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aek)
  %i.ael = load ptr, ptr %i.tk, align 8, !alias.scope !7253, !noalias !7252, !nonnull !416, !noundef !416
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 %.sink1.i6.i.i.i.i.i.i.i.i
  store i8 10, ptr %i.aem, align 1, !noalias !7254
  %i.aen = add nuw i64 %.sink1.i6.i.i.i.i.i.i.i.i, 1
  store i64 %i.aen, ptr %i.tj, align 8, !alias.scope !7253, !noalias !7252
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.acw, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7255)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7256)
  %i.aeo = load i64, ptr %i.tj, align 8, !alias.scope !7257, !noalias !7258, !noundef !416 ; 3 uses
  %i.aep = load i64, ptr %1, align 8, !range !419, !alias.scope !7257, !noalias !7258, !noundef !416
  %i.aeq = sub i64 %i.aep, %i.aeo
  %i.aer = icmp ugt i64 %i.acw, %i.aeq
  br i1 %i.aer, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, !prof !426

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aeo, i64 noundef range(i64 0, -9223372036854775808) %i.acw, i64 noundef 1, i64 noundef 1), !noalias !7258
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7259, !noalias !7258 ; 3 uses
  %.pre1.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7259, !noalias !7258
  %.pre2.i.i.i.i.i.i.i.i.i = sub i64 %.pre1.i.i.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i.i.i
  %i.aes = icmp ugt i64 %i.acw, %.pre2.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7260)
  br i1 %i.aes, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, !prof !466

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.acw, i64 noundef 1, i64 noundef 1), !noalias !7258
  %i.aet = load i64, ptr %i.tj, align 8, !alias.scope !7261, !noalias !7258, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.afv = phi ptr [ %.pre1.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  %.sink1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afr, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.afw = icmp sgt i64 %.sink1.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.afw)
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 %.sink1.i.i.i.i.i.i.i.i.i.i
  store double %i.aec, ptr %i.afx, align 1, !noalias !7303
  %i.afy = add nuw i64 %.sink1.i.i.i.i.i.i.i.i.i.i, 8
  br label %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

bb.az:                                            ; preds = %bb.al
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i.i.i.i.i = load ptr, ptr %i.afz, align 8, !alias.scope !7304, !noalias !7305 ; 9 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i.i.i.i.i = load i64, ptr %i.aga, align 8, !alias.scope !7304, !noalias !7305 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7307)
  %.pre18.i.i2.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7308, !noalias !7304 ; 3 uses
  %.pre28.i.i3.i.i.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7308, !noalias !7304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7313)
  %i.agb = icmp eq i64 %.pre28.i.i3.i.i.i.i.i, %.pre18.i.i2.i.i.i.i.i
  br i1 %i.agb, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i: ; preds = %bb.az
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i2.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7314
  %i.agc = load i64, ptr %i.tj, align 8, !alias.scope !7315, !noalias !7314, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i, %bb.az
  %.sink1.i6.i.i5.i.i.i.i.i = phi i64 [ %i.agc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i ], [ %.pre18.i.i2.i.i.i.i.i, %bb.az ] ; 3 uses
  %i.agd = icmp sgt i64 %.sink1.i6.i.i5.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.agd)
  %i.age = load ptr, ptr %i.tk, align 8, !alias.scope !7315, !noalias !7314, !nonnull !416, !noundef !416 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 %.sink1.i6.i.i5.i.i.i.i.i
  store i8 18, ptr %i.agf, align 1, !noalias !7316
  %i.agg = add nuw i64 %.sink1.i6.i.i5.i.i.i.i.i, 1 ; 4 uses
  store i64 %i.agg, ptr %i.tj, align 8, !alias.scope !7315, !noalias !7314
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.agh = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.agh, label %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i
  %i.agi = add i64 %.val1.i.i.i.i.i, -1           ; 2 uses
  %xtraiter725 = and i64 %.val1.i.i.i.i.i, 1
  %i.agj = icmp eq i64 %i.agi, 0
  br i1 %i.agj, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter729 = and i64 %.val1.i.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i.i

_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7317)
  %.pre28.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7318, !noalias !7304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7323)
  %i.agk = icmp eq i64 %.pre28.i.i.i.i.i.i, %i.agg
  br i1 %i.agk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i: ; preds = %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.agg, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7324
  %i.agl = load i64, ptr %i.tj, align 8, !alias.scope !7325, !noalias !7324, !noundef !416
  %.pre.i.i.i.i.i = load ptr, ptr %i.tk, align 8, !alias.scope !7325, !noalias !7324
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i
  %i.agm = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i ], [ %i.age, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i ]
  %.sink1.i6.i.i.i.i.i.i = phi i64 [ %i.agl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i.i ], [ %i.agg, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.agn = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.agn)
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 %.sink1.i6.i.i.i.i.i.i
  store i8 0, ptr %i.ago, align 1, !noalias !7326
  %i.agp = add nuw i64 %.sink1.i6.i.i.i.i.i.i, 1
  br label %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ahh, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ahg, %.preheader.i.i.i.i.i.i.i.i ]
  %niter730 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter730.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agq, align 8, !alias.scope !7327, !noalias !7328, !noundef !416
  %i.agr = or i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.ags = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.agr, i1 true)
  %i.agt = xor i64 %i.ags, 63
  %i.agu = mul nuw nsw i64 %i.agt, 9
  %i.agv = add nuw nsw i64 %i.agu, 73
  %i.agw = lshr i64 %i.agv, 6
  %i.agx = add i64 %i.agw, %.sroa.02.0.i.i.i.i.i.i.i.i.i
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %.val.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.agz, align 8, !alias.scope !7327, !noalias !7328, !noundef !416
  %i.aha = or i64 %.val.i.i.i.i.i.i.i.i.i.1, 1
  %i.ahb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aha, i1 true)
  %i.ahc = xor i64 %i.ahb, 63
  %i.ahd = mul nuw nsw i64 %i.ahc, 9
  %i.ahe = add nuw nsw i64 %i.ahd, 73
  %i.ahf = lshr i64 %i.ahe, 6
  %i.ahg = add i64 %i.ahf, %i.agx                 ; 3 uses
  %i.ahh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter730.next.1 = add nuw i64 %niter730, 2     ; 2 uses
  %niter730.ncmp.1 = icmp eq i64 %niter730.next.1, %unroll_iter729
  br i1 %niter730.ncmp.1, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod726.not, label %bb.ba, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.ahh, %.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.ahg, %.unr-lcssa ]
  %lcmp.mod728 = trunc i64 %.val1.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod728)
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ahi, align 8, !alias.scope !7327, !noalias !7328, !noundef !416
  %i.ahj = or i64 %.val.i.i.i.i.i.i.i.i.i.epil, 1
  %i.ahk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ahj, i1 true)
  %i.ahl = xor i64 %i.ahk, 63
  %i.ahm = mul nuw nsw i64 %i.ahl, 9
  %i.ahn = add nuw nsw i64 %i.ahm, 73
  %i.aho = lshr i64 %i.ahn, 6
  %i.ahp = add i64 %i.aho, %.sroa.02.0.i.i.i.i.i.i.i.i.i.epil.init
  br label %bb.ba

bb.ba:                                            ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa679 = phi i64 [ %i.ahg, %.unr-lcssa ], [ %i.ahp, %.preheader.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ahq = or i64 %.lcssa679, 1
  %i.ahr = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ahq, i1 true)
  %i.ahs = xor i64 %i.ahr, 63
  %i.aht = mul nuw nsw i64 %i.ahs, 9
  %i.ahu = add nuw nsw i64 %i.aht, 73
  %i.ahv = lshr i64 %i.ahu, 6
  %i.ahw = add i64 %.lcssa679, 1
  %i.ahx = add i64 %i.ahw, %i.ahv
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ahx, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7331)
  %.pre18.i.i.i6.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !7332, !noalias !7333 ; 3 uses
  %.pre28.i.i.i7.i.i.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !7332, !noalias !7333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7334), !noalias !7330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7335), !noalias !7330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7336), !noalias !7330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7337), !noalias !7330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7338), !noalias !7330
  %i.ahy = icmp eq i64 %.pre28.i.i.i7.i.i.i.i.i, %.pre18.i.i.i6.i.i.i.i.i
  br i1 %i.ahy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i: ; preds = %bb.ba
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i6.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !7339
  %i.ahz = load i64, ptr %i.tj, align 8, !alias.scope !7340, !noalias !7339, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i, %bb.ba
  %.sink1.i6.i.i.i9.i.i.i.i.i = phi i64 [ %i.ahz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i ], [ %.pre18.i.i.i6.i.i.i.i.i, %bb.ba ] ; 3 uses
  %i.aia = icmp sgt i64 %.sink1.i6.i.i.i9.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aia), !noalias !7330
  %i.aib = load ptr, ptr %i.tk, align 8, !alias.scope !7340, !noalias !7339, !nonnull !416, !noundef !416
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 %.sink1.i6.i.i.i9.i.i.i.i.i
  store i8 10, ptr %i.aic, align 1, !noalias !7341
  %i.aid = add nuw i64 %.sink1.i6.i.i.i9.i.i.i.i.i, 1
  store i64 %i.aid, ptr %i.tj, align 8, !alias.scope !7340, !noalias !7339
  %xtraiter732 = and i64 %.val1.i.i.i.i.i, 1
  %i.aie = icmp eq i64 %i.agi, 0
  br i1 %i.aie, label %.epil.preheader731, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i
  %unroll_iter736 = and i64 %.val1.i.i.i.i.i, -2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new
  %.sroa.04.0.i.i.i4.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new ], [ %i.aiw, %bb.bb ] ; 3 uses
  %.sroa.02.0.i.i.i5.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new ], [ %i.aiv, %bb.bb ]
  %niter737 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i.new ], [ %niter737.next.1, %bb.bb ]
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i
  %.val.i.i.i6.i.i.i.i.i.i = load i64, ptr %i.aif, align 8, !alias.scope !7330, !noalias !7342, !noundef !416
  %i.aig = or i64 %.val.i.i.i6.i.i.i.i.i.i, 1
  %i.aih = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aig, i1 true)
  %i.aii = xor i64 %i.aih, 63
  %i.aij = mul nuw nsw i64 %i.aii, 9
  %i.aik = add nuw nsw i64 %i.aij, 73
  %i.ail = lshr i64 %i.aik, 6
  %i.aim = add i64 %i.ail, %.sroa.02.0.i.i.i5.i.i.i.i.i.i
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %.val.i.i.i6.i.i.i.i.i.i.1 = load i64, ptr %i.aio, align 8, !alias.scope !7330, !noalias !7342, !noundef !416
  %i.aip = or i64 %.val.i.i.i6.i.i.i.i.i.i.1, 1
  %i.aiq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aip, i1 true)
  %i.air = xor i64 %i.aiq, 63
  %i.ais = mul nuw nsw i64 %i.air, 9
  %i.ait = add nuw nsw i64 %i.ais, 73
  %i.aiu = lshr i64 %i.ait, 6
  %i.aiv = add i64 %i.aiu, %i.aim                 ; 3 uses
  %i.aiw = add nuw nsw i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i, 2 ; 2 uses
  %niter737.next.1 = add nuw i64 %niter737, 2     ; 2 uses
  %niter737.ncmp.1 = icmp eq i64 %niter737.next.1, %unroll_iter736
  br i1 %niter737.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa, label %bb.bb

.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa:       ; preds = %bb.bb
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  br i1 %lcmp.mod733.not, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %.epil.preheader731

.epil.preheader731:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i
  %.sroa.04.0.i.i.i4.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i ], [ %i.aiw, %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i5.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i8.i.i.i.i.i ], [ %i.aiv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod735 = trunc i64 %.val1.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod735)
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i.epil.init
  %.val.i.i.i6.i.i.i.i.i.i.epil = load i64, ptr %i.aix, align 8, !alias.scope !7330, !noalias !7342, !noundef !416
  %i.aiy = or i64 %.val.i.i.i6.i.i.i.i.i.i.epil, 1
  %i.aiz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aiy, i1 true)
  %i.aja = xor i64 %i.aiz, 63
  %i.ajb = mul nuw nsw i64 %i.aja, 9
  %i.ajc = add nuw nsw i64 %i.ajb, 73
  %i.ajd = lshr i64 %i.ajc, 6
  %i.aje = add i64 %i.ajd, %.sroa.02.0.i.i.i5.i.i.i.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa, %.epil.preheader731
  %.lcssa678 = phi i64 [ %i.aiv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.aje, %.epil.preheader731 ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val1.i.i.i.i.i, 3
  %i.ajf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa678, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7333
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi ptr [ %i.ajg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ajh = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, align 8, !alias.scope !7330, !noalias !7342, !noundef !416
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ajh, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !7333
  %i.aji = icmp eq ptr %i.ajg, %i.ajf
  br i1 %i.aji, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ %i.afy, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ], [ %i.agp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ]
  store i64 %.sink.i.i.i, ptr %i.tj, align 8, !alias.scope !7305, !noalias !7304
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, %bb.ax, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.ah
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val8.i.i159 = load ptr, ptr %i.ajj, align 8, !alias.scope !7142, !noalias !7143 ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val9.i.i160 = load i64, ptr %i.ajk, align 8, !alias.scope !7343, !noalias !7344, !noundef !416 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7346)
  %i.ajl = icmp eq i64 %.val9.i.i160, 0
  br i1 %i.ajl, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeyNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEINvNtB4_6uint646encodeB1Y_ENvB2A_11encoded_lenINvNtB4_7message6encodeBQ_B1Y_EINvB3k_11encoded_lenBQ_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i.i161

.lr.ph.i.i.i.i161:                                ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i159) ]
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.val8.i.i159, align 16, !noalias !7347
  %i.ajm = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.ajn = bitcast <16 x i1> %i.ajm to i16
  %i.ajo = getelementptr inbounds nuw i8, ptr %.val8.i.i159, i64 16
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %.lr.ph.i.i.i.i161
  %.sroa.14.018.i.i.i.i = phi i64 [ %.val9.i.i160, %.lr.ph.i.i.i.i161 ], [ %i.aka, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %.sroa.10.017.i.i.i.i = phi i16 [ %i.ajn, %.lr.ph.i.i.i.i161 ], [ %i.ajx, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i = phi ptr [ %i.ajo, %.lr.ph.i.i.i.i161 ], [ %.sroa.6.1.i.i.i.i, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.015.i.i.i.i = phi ptr [ %.val8.i.i159, %.lr.ph.i.i.i.i161 ], [ %.sroa.02.1.i.i.i.i, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %.sroa.10.017.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bc, %.lr.ph.i.i.i.i.i.i
  %i.ajp = phi ptr [ %i.ajt, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i, %bb.bc ] ; 2 uses
  %i.ajq = phi ptr [ %i.ajs, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.02.015.i.i.i.i, %bb.bc ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.ajp, align 16, !noalias !7348
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
  %.val.i.i27.i.i = load i64, ptr %i.akb, align 8, !noalias !7349, !noundef !416 ; 2 uses
  %i.akc = icmp eq i64 %.val.i.i27.i.i, 0         ; 2 uses
  %i.akd = getelementptr i8, ptr %i.ajz, i64 -16  ; 2 uses
  %.val17.i.i.i.i = load ptr, ptr %i.akd, align 8, !noalias !7349 ; 5 uses
  %i.ake = getelementptr i8, ptr %i.ajz, i64 -8   ; 2 uses
  %.val18.i.i.i.i = load i64, ptr %i.ake, align 8, !noalias !7349, !noundef !416 ; 5 uses
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
  %xtraiter738 = and i64 %.val18.i.i.i.i, 1
  %i.akn = icmp eq i64 %.val18.i.i.i.i, 1
  br i1 %i.akn, label %.preheader.i.i.i.i.i.i28.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.bg
  %unroll_iter742 = and i64 %.val18.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i28.i.i

.preheader.i.i.i.i.i.i28.i.i:                     ; preds = %.preheader.i.i.i.i.i.i28.i.i, %.new
  %.sroa.04.0.i.i.i.i.i.i.i29.i.i = phi i64 [ 0, %.new ], [ %i.alh, %.preheader.i.i.i.i.i.i28.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i30.i.i = phi i64 [ 0, %.new ], [ %i.alg, %.preheader.i.i.i.i.i.i28.i.i ]
  %niter743 = phi i64 [ 0, %.new ], [ %niter743.next.1, %.preheader.i.i.i.i.i.i28.i.i ]
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i29.i.i
  %.val.i.i.i.i.i.i.i31.i.i = load i32, ptr %i.ako, align 4, !alias.scope !7350, !noalias !7349, !noundef !416
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
  %.val.i.i.i.i.i.i.i31.i.i.1 = load i32, ptr %i.aky, align 4, !alias.scope !7350, !noalias !7349, !noundef !416
  %i.akz = or i32 %.val.i.i.i.i.i.i.i31.i.i.1, 1
  %i.ala = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.akz, i1 true)
  %i.alb = xor i32 %i.ala, 31
  %i.alc = mul nuw nsw i32 %i.alb, 9
  %i.ald = add nuw nsw i32 %i.alc, 73
  %i.ale = lshr i32 %i.ald, 6
  %i.alf = zext nneg i32 %i.ale to i64
  %i.alg = add i64 %i.akw, %i.alf                 ; 3 uses
  %i.alh = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i29.i.i, 2 ; 2 uses
  %niter743.next.1 = add nuw i64 %niter743, 2     ; 2 uses
  %niter743.ncmp.1 = icmp eq i64 %niter743.next.1, %unroll_iter742
  br i1 %niter743.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i28.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i28.i.i
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i28.i.i.epil.preheader

.preheader.i.i.i.i.i.i28.i.i.epil.preheader:      ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa, %bb.bg
  %.sroa.04.0.i.i.i.i.i.i.i29.i.i.epil.init = phi i64 [ 0, %bb.bg ], [ %i.alh, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i30.i.i.epil.init = phi i64 [ 0, %bb.bg ], [ %i.alg, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod741 = trunc i64 %.val18.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod741)
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i29.i.i.epil.init
  %.val.i.i.i.i.i.i.i31.i.i.epil = load i32, ptr %i.ali, align 4, !alias.scope !7350, !noalias !7349, !noundef !416
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
  %.lcssa675 = phi i64 [ %i.alg, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.alq, %.preheader.i.i.i.i.i.i28.i.i.epil.preheader ] ; 2 uses
  %i.alr = or i64 %.lcssa675, 1
  %i.als = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.alr, i1 true)
  %i.alt = xor i64 %i.als, 63
  %i.alu = mul nuw nsw i64 %i.alt, 9
  %i.alv = add nuw nsw i64 %i.alu, 73
  %i.alw = lshr i64 %i.alv, 6
  %i.alx = add i64 %.lcssa675, 1
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
  %i.ar = load ptr, ptr %i.an, align 8, !alias.scope !83574, !noalias !83573, !nonnull !416, !noundef !416
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink1.i6.i.i
  store i8 10, ptr %i.as, align 1, !noalias !83575
  %i.at = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.at, ptr %i.am, align 8, !alias.scope !83574, !noalias !83573
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83563
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83579)
  %i.au = load i64, ptr %i.am, align 8, !alias.scope !83580, !noalias !83581, !noundef !416 ; 3 uses
  %i.av = load i64, ptr %2, align 8, !range !419, !alias.scope !83580, !noalias !83581, !noundef !416
  %i.aw = sub i64 %i.av, %i.au
  %i.ax = icmp ugt i64 %i.e, %i.aw
  br i1 %i.ax, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.au, i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef 1, i64 noundef 1), !noalias !83581
  %i.ay = load i64, ptr %i.am, align 8, !alias.scope !83582, !noalias !83581, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sink16.i = phi i64 [ %i.ay, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i ], [ %i.au, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 3 uses
  %i.az = icmp sgt i64 %.sink16.i, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load ptr, ptr %i.an, align 8, !alias.scope !83582, !noalias !83581, !nonnull !416, !noundef !416
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink16.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !83583
  %i.bc = add nuw i64 %.sink16.i, %i.e
  store i64 %i.bc, ptr %i.am, align 8, !alias.scope !83582, !noalias !83581
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RNvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83584)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i4.i = load i64, ptr %i.bd, align 8, !alias.scope !83585, !noalias !83563 ; 3 uses
  %.pre28.i5.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83585, !noalias !83563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83590)
  %i.bf = icmp eq i64 %.pre28.i5.i, %.pre18.i4.i
  br i1 %i.bf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i4.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83591
  %i.bg = load i64, ptr %i.bd, align 8, !alias.scope !83592, !noalias !83591, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i, %bb.i
  %.sink1.i6.i6.i = phi i64 [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i7.i ], [ %.pre18.i4.i, %bb.i ] ; 3 uses
  %i.bh = icmp sgt i64 %.sink1.i6.i6.i, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load ptr, ptr %i.be, align 8, !alias.scope !83592, !noalias !83591, !nonnull !416, !noundef !416
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink1.i6.i6.i
  store i8 16, ptr %i.bj, align 1, !noalias !83593
  %i.bk = add nuw i64 %.sink1.i6.i6.i, 1
  store i64 %i.bk, ptr %i.bd, align 8, !alias.scope !83592, !noalias !83591
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83563
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit8.i, %bb.h
  br i1 %i.ab, label %_RINvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83594)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i9.i = load i64, ptr %i.bl, align 8, !alias.scope !83595, !noalias !83563 ; 3 uses
  %.pre28.i10.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83595, !noalias !83563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83600)
  %i.bn = icmp eq i64 %.pre28.i10.i, %.pre18.i9.i
  br i1 %i.bn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i12.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i12.i: ; preds = %bb.k
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i9.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83601
  %i.bo = load i64, ptr %i.bl, align 8, !alias.scope !83602, !noalias !83601, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i12.i, %bb.k
  %.sink1.i6.i11.i = phi i64 [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i12.i ], [ %.pre18.i9.i, %bb.k ] ; 3 uses
  %i.bp = icmp sgt i64 %.sink1.i6.i11.i, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = load ptr, ptr %i.bm, align 8, !alias.scope !83602, !noalias !83601, !nonnull !416, !noundef !416
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink1.i6.i11.i
  store i8 24, ptr %i.br, align 1, !noalias !83603
  %i.bs = add nuw i64 %.sink1.i6.i11.i, 1
  store i64 %i.bs, ptr %i.bl, align 8, !alias.scope !83602, !noalias !83601
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83563
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83753)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load i64, ptr %i.e, align 8, !range !421, !alias.scope !83752, !noalias !83753, !noundef !416
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !83752, !noalias !83753
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val14.i = load i64, ptr %i.h, align 8, !alias.scope !83752, !noalias !83753
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 1, ptr %.val13.i, i64 %.val14.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83752
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !83752, !noalias !83753, !nonnull !416, !noundef !416 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !83752, !noalias !83753, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83754)
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83755)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i.i = load i64, ptr %i.n, align 8, !alias.scope !83756, !noalias !83757 ; 3 uses
  %.pre28.i.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83756, !noalias !83757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83758), !noalias !83754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83759), !noalias !83754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83760), !noalias !83754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83761), !noalias !83754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83762), !noalias !83754
  %i.p = icmp eq i64 %.pre28.i.i, %.pre18.i.i
  br i1 %i.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i: ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83763
  %i.q = load i64, ptr %i.n, align 8, !alias.scope !83764, !noalias !83763, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i, %bb.d
  %.sink1.i6.i.i = phi i64 [ %i.q, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i ], [ %.pre18.i.i, %bb.d ] ; 3 uses
  %i.r = icmp sgt i64 %.sink1.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.r), !noalias !83754
  %i.s = load ptr, ptr %i.o, align 8, !alias.scope !83764, !noalias !83763, !nonnull !416, !noundef !416
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink1.i6.i.i
  store i8 18, ptr %i.t, align 1, !noalias !83765
  %i.u = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !83764, !noalias !83763
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
  %.val.i.i.i = load i32, ptr %i.w, align 4, !alias.scope !83754, !noalias !83766, !noundef !416
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
  %.val.i.i.i.1 = load i32, ptr %i.ag, align 4, !alias.scope !83754, !noalias !83766, !noundef !416
  %i.ah = or i32 %.val.i.i.i.1, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = xor i64 %i.aj, 63
  %i.al = mul nuw nsw i64 %i.ak, 9
  %i.am = add nuw nsw i64 %i.al, 73
  %i.an = lshr i64 %i.am, 6
  %i.ao = add i64 %i.an, %i.ae                    ; 3 uses
  %i.ap = add nuw nsw i64 %.sroa.04.0.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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
  %.val.i.i.i.epil = load i32, ptr %i.aq, align 4, !alias.scope !83754, !noalias !83766, !noundef !416
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa10, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83757
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.bb = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !83754, !noalias !83766, !noundef !416
  %i.bc = sext i32 %i.bb to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83757
  %i.bd = icmp eq ptr %i.ba, %i.az
  br i1 %i.bd, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !83752, !noalias !83753, !noundef !416 ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i = load ptr, ptr %i.bh, align 8, !alias.scope !83752, !noalias !83753 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83768)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i23.i = load i64, ptr %i.bi, align 8, !alias.scope !83769, !noalias !83752 ; 3 uses
  %.pre28.i24.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83769, !noalias !83752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83774)
  %i.bk = icmp eq i64 %.pre28.i24.i, %.pre18.i23.i
  br i1 %i.bk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i26.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i26.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i23.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83775
  %i.bl = load i64, ptr %i.bi, align 8, !alias.scope !83776, !noalias !83775, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i26.i, %bb.f
  %.sink1.i6.i25.i = phi i64 [ %i.bl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i26.i ], [ %.pre18.i23.i, %bb.f ] ; 3 uses
  %i.bm = icmp sgt i64 %.sink1.i6.i25.i, -1
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = load ptr, ptr %i.bj, align 8, !alias.scope !83776, !noalias !83775, !nonnull !416, !noundef !416
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink1.i6.i25.i
  store i8 26, ptr %i.bo, align 1, !noalias !83777
  %i.bp = add nuw i64 %.sink1.i6.i25.i, 1
  store i64 %i.bp, ptr %i.bi, align 8, !alias.scope !83776, !noalias !83775
  %i.bq = icmp sgt i64 %i.bf, -1
  tail call void @llvm.assume(i1 %i.bq)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83752
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83781)
  %i.br = load i64, ptr %i.bi, align 8, !alias.scope !83782, !noalias !83783, !noundef !416 ; 3 uses
  %i.bs = load i64, ptr %2, align 8, !range !419, !alias.scope !83782, !noalias !83783, !noundef !416
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = icmp ugt i64 %i.bf, %i.bt
  br i1 %i.bu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.br, i64 noundef range(i64 0, -9223372036854775808) %i.bf, i64 noundef 1, i64 noundef 1), !noalias !83783
  %i.bv = load i64, ptr %i.bi, align 8, !alias.scope !83784, !noalias !83783, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i
  %.sink67.i = phi i64 [ %i.bv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i ], [ %i.br, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit27.i ] ; 3 uses
  %i.bw = icmp sgt i64 %.sink67.i, -1
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = load ptr, ptr %i.bj, align 8, !alias.scope !83784, !noalias !83783, !nonnull !416, !noundef !416
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink67.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.bf, i1 false), !noalias !83785
  %i.bz = add nuw i64 %.sink67.i, %i.bf
  store i64 %i.bz, ptr %i.bi, align 8, !alias.scope !83784, !noalias !83783
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !83752, !noalias !83753, !noundef !416 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83786)
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i28.i = load i64, ptr %i.cd, align 8, !alias.scope !83787, !noalias !83752 ; 3 uses
  %.pre28.i29.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83787, !noalias !83752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83792)
  %i.cf = icmp eq i64 %.pre28.i29.i, %.pre18.i28.i
  br i1 %i.cf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i31.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit32.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i31.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i28.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83793
  %i.cg = load i64, ptr %i.cd, align 8, !alias.scope !83794, !noalias !83793, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit32.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit32.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i31.i, %bb.h
  %.sink1.i6.i30.i = phi i64 [ %i.cg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i31.i ], [ %.pre18.i28.i, %bb.h ] ; 3 uses
  %i.ch = icmp sgt i64 %.sink1.i6.i30.i, -1
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = load ptr, ptr %i.ce, align 8, !alias.scope !83794, !noalias !83793, !nonnull !416, !noundef !416
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink1.i6.i30.i
  store i8 32, ptr %i.cj, align 1, !noalias !83795
  %i.ck = add nuw i64 %.sink1.i6.i30.i, 1
  store i64 %i.ck, ptr %i.cd, align 8, !alias.scope !83794, !noalias !83793
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83752
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit32.i, %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !83752, !noalias !83753, !noundef !416 ; 9 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val11.i = load ptr, ptr %i.co, align 8, !alias.scope !83752, !noalias !83753 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83797)
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i33.i = load i64, ptr %i.cp, align 8, !alias.scope !83798, !noalias !83752 ; 3 uses
  %.pre28.i34.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83798, !noalias !83752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83803)
  %i.cr = icmp eq i64 %.pre28.i34.i, %.pre18.i33.i
  br i1 %i.cr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i36.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit37.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i36.i: ; preds = %bb.j
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i33.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83804
  %i.cs = load i64, ptr %i.cp, align 8, !alias.scope !83805, !noalias !83804, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit37.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit37.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i36.i, %bb.j
  %.sink1.i6.i35.i = phi i64 [ %i.cs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i36.i ], [ %.pre18.i33.i, %bb.j ] ; 3 uses
  %i.ct = icmp sgt i64 %.sink1.i6.i35.i, -1
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load ptr, ptr %i.cq, align 8, !alias.scope !83805, !noalias !83804, !nonnull !416, !noundef !416
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sink1.i6.i35.i
  store i8 42, ptr %i.cv, align 1, !noalias !83806
  %i.cw = add nuw i64 %.sink1.i6.i35.i, 1
  store i64 %i.cw, ptr %i.cp, align 8, !alias.scope !83805, !noalias !83804
  %i.cx = icmp sgt i64 %i.cm, -1
  tail call void @llvm.assume(i1 %i.cx)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83807)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83808)
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !83809, !noalias !83810, !noundef !416 ; 3 uses
  %i.cz = load i64, ptr %2, align 8, !range !419, !alias.scope !83809, !noalias !83810, !noundef !416
  %i.da = sub i64 %i.cz, %i.cy
  %i.db = icmp ugt i64 %i.cm, %i.da
  br i1 %i.db, label %.lr.ph.split.us.i.i.i.i, label %_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i.i.i.i, !prof !426

.lr.ph.split.us.i.i.i.i:                          ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit37.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cy, i64 noundef range(i64 0, -9223372036854775808) %i.cm, i64 noundef 1, i64 noundef 1), !noalias !83810
  %.pre.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !83811, !noalias !83810 ; 3 uses
  %.pre1.i.i.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83811, !noalias !83810
  %.pre2.i.i.i = sub i64 %.pre1.i.i.i, %.pre.i.i.i
  %i.dc = icmp ugt i64 %i.cm, %.pre2.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83812)
end_hunk_3
begin_hunk_4_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb13IndexMetadataINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.val8.i = load i32, ptr %i.dn, align 4, !alias.scope !83752, !noalias !83753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83815)
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i38.i = load i64, ptr %i.do, align 8, !alias.scope !83816, !noalias !83752 ; 3 uses
  %.pre28.i39.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83816, !noalias !83752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83821)
  %i.dq = icmp eq i64 %.pre28.i39.i, %.pre18.i38.i
  br i1 %i.dq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i41.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i41.i: ; preds = %bb.m
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i38.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83822
  %i.dr = load i64, ptr %i.do, align 8, !alias.scope !83823, !noalias !83822, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i41.i, %bb.m
  %.sink1.i6.i40.i = phi i64 [ %i.dr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i41.i ], [ %.pre18.i38.i, %bb.m ] ; 3 uses
  %i.ds = icmp sgt i64 %.sink1.i6.i40.i, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = load ptr, ptr %i.dp, align 8, !alias.scope !83823, !noalias !83822, !nonnull !416, !noundef !416
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sink1.i6.i40.i
  store i8 56, ptr %i.du, align 1, !noalias !83824
  %i.dv = add nuw i64 %.sink1.i6.i40.i, 1
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !83823, !noalias !83822
  %i.dw = sext i32 %.val8.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83752
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit42.i, %bb.l
  %i.dx = load i64, ptr %1, align 8, !range !442, !alias.scope !83752, !noalias !83753, !noundef !416
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9.i = load i64, ptr %i.dz, align 8, !alias.scope !83752, !noalias !83753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83825)
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i43.i = load i64, ptr %i.ea, align 8, !alias.scope !83826, !noalias !83752 ; 3 uses
  %.pre28.i44.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83826, !noalias !83752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83831)
  %i.ec = icmp eq i64 %.pre28.i44.i, %.pre18.i43.i
  br i1 %i.ec, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i46.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit47.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i46.i: ; preds = %bb.o
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i43.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83832
  %i.ed = load i64, ptr %i.ea, align 8, !alias.scope !83833, !noalias !83832, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit47.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit47.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i46.i, %bb.o
  %.sink1.i6.i45.i = phi i64 [ %i.ed, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i46.i ], [ %.pre18.i43.i, %bb.o ] ; 3 uses
  %i.ee = icmp sgt i64 %.sink1.i6.i45.i, -1
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = load ptr, ptr %i.eb, align 8, !alias.scope !83833, !noalias !83832, !nonnull !416, !noundef !416
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink1.i6.i45.i
  store i8 64, ptr %i.eg, align 1, !noalias !83834
  %i.eh = add nuw i64 %.sink1.i6.i45.i, 1
  store i64 %i.eh, ptr %i.ea, align 8, !alias.scope !83833, !noalias !83832
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.val9.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83752
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit47.i, %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ej = load i32, ptr %i.ei, align 8, !range !433, !alias.scope !83752, !noalias !83753, !noundef !416
  %i.ek = trunc nuw i32 %i.ej to i1
  br i1 %i.ek, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.val7.i = load i32, ptr %i.el, align 4, !alias.scope !83752, !noalias !83753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83835)
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i48.i = load i64, ptr %i.em, align 8, !alias.scope !83836, !noalias !83752 ; 3 uses
  %.pre28.i49.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83836, !noalias !83752
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83841)
  %i.eo = icmp eq i64 %.pre28.i49.i, %.pre18.i48.i
  br i1 %i.eo, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i51.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit52.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i51.i: ; preds = %bb.q
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i48.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83842
  %i.ep = load i64, ptr %i.em, align 8, !alias.scope !83843, !noalias !83842, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit52.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit52.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i51.i, %bb.q
  %.sink1.i6.i50.i = phi i64 [ %i.ep, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i51.i ], [ %.pre18.i48.i, %bb.q ] ; 3 uses
  %i.eq = icmp sgt i64 %.sink1.i6.i50.i, -1
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = load ptr, ptr %i.en, align 8, !alias.scope !83843, !noalias !83842, !nonnull !416, !noundef !416
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sink1.i6.i50.i
  store i8 72, ptr %i.es, align 1, !noalias !83844
  %i.et = add nuw i64 %.sink1.i6.i50.i, 1
  store i64 %i.et, ptr %i.em, align 8, !alias.scope !83843, !noalias !83842
  %i.eu = zext i32 %.val7.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83752
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit52.i, %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !83752, !noalias !83753, !nonnull !416, !noundef !416 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !83752, !noalias !83753, !noundef !416 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ey, 5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx.i
  %i.fa = icmp eq i64 %i.ey, 0
  br i1 %i.fa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.059.i = phi ptr [ %i.fb, %.lr.ph.i ], [ %i.ew, %bb.r ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.059.i, i64 32 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.059.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83752
  %i.fc = icmp eq ptr %i.fb, %i.ez
  br i1 %i.fc, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.r
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !83752, !noalias !83753, !nonnull !416, !noundef !416 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !83752, !noalias !83753, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83845)
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83846)
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i53.i = load i64, ptr %i.fi, align 8, !alias.scope !83847, !noalias !83848 ; 3 uses
  %.pre28.i54.i = load i64, ptr %2, align 8, !range !419, !alias.scope !83847, !noalias !83848
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83849), !noalias !83845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83850), !noalias !83845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83851), !noalias !83845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83852), !noalias !83845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83853), !noalias !83845
  %i.fk = icmp eq i64 %.pre28.i54.i, %.pre18.i53.i
  br i1 %i.fk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i56.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i56.i: ; preds = %bb.s
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i53.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !83854
  %i.fl = load i64, ptr %i.fi, align 8, !alias.scope !83855, !noalias !83854, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit57.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i56.i, %bb.s
  %.sink1.i6.i55.i = phi i64 [ %i.fl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i56.i ], [ %.pre18.i53.i, %bb.s ] ; 3 uses
  %i.fm = icmp sgt i64 %.sink1.i6.i55.i, -1
  tail call void @llvm.assume(i1 %i.fm), !noalias !83845
  %i.fn = load ptr, ptr %i.fj, align 8, !alias.scope !83855, !noalias !83854, !nonnull !416, !noundef !416
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sink1.i6.i55.i
  store i8 90, ptr %i.fo, align 1, !noalias !83856
  %i.fp = add nuw i64 %.sink1.i6.i55.i, 1
  store i64 %i.fp, ptr %i.fi, align 8, !alias.scope !83855, !noalias !83854
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
  %.val.i.i17.i = load i32, ptr %i.fr, align 4, !alias.scope !83845, !noalias !83857, !noundef !416
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
  %.val.i.i17.i.1 = load i32, ptr %i.gb, align 4, !alias.scope !83845, !noalias !83857, !noundef !416
  %i.gc = or i32 %.val.i.i17.i.1, 1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gd, i1 true)
  %i.gf = xor i64 %i.ge, 63
  %i.gg = mul nuw nsw i64 %i.gf, 9
  %i.gh = add nuw nsw i64 %i.gg, 73
  %i.gi = lshr i64 %i.gh, 6
  %i.gj = add i64 %i.gi, %i.fz                    ; 3 uses
  %i.gk = add nuw nsw i64 %.sroa.04.0.i.i15.i, 2  ; 2 uses
  %niter19.next.1 = add nuw i64 %niter19, 2       ; 2 uses
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
  %.val.i.i17.i.epil = load i32, ptr %i.gl, align 4, !alias.scope !83845, !noalias !83857, !noundef !416
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83848
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.preheader.i18.i
  %.sroa.0.02.i21.i = phi ptr [ %i.gv, %.lr.ph.i20.i ], [ %i.fe, %.lr.ph.preheader.i18.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i21.i, i64 4 ; 2 uses
  %i.gw = load i32, ptr %.sroa.0.02.i21.i, align 4, !alias.scope !83845, !noalias !83857, !noundef !416
  %i.gx = sext i32 %i.gw to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.gx, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !83848
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83979)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !range !421, !alias.scope !83979, !noundef !416
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
  %i.o = load i64, ptr %1, align 8, !range !437, !alias.scope !83979, !noundef !416 ; 3 uses
  %.not3.i = icmp eq i64 %i.o, -1                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83980)
  br i1 %.not3.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83982)
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !83983, !nonnull !416, !noundef !416 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !83983, !noundef !416 ; 6 uses
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
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !83984, !noalias !83983, !noundef !416 ; 3 uses
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
  %.val.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ag, align 8, !alias.scope !83984, !noalias !83983, !noundef !416 ; 3 uses
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
  %.val.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.as, align 8, !alias.scope !83984, !noalias !83983, !noundef !416 ; 3 uses
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
  %.val.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !83983, !noundef !416 ; 3 uses
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
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !83979, !noundef !416 ; 3 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84313)
  %i.cp = icmp eq i64 %.pre28.i21.i, %.pre18.i20.i
  br i1 %i.cp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i23.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i23.i: ; preds = %bb.m
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i20.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !84314
  %i.cq = load i64, ptr %i.cn, align 8, !alias.scope !84315, !noalias !84314, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i23.i, %bb.m
  %.sink1.i6.i22.i = phi i64 [ %i.cq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i23.i ], [ %.pre18.i20.i, %bb.m ] ; 3 uses
  %i.cr = icmp sgt i64 %.sink1.i6.i22.i, -1
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = load ptr, ptr %i.co, align 8, !alias.scope !84315, !noalias !84314, !nonnull !416, !noundef !416
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sink1.i6.i22.i
  store i8 34, ptr %i.ct, align 1, !noalias !84316
  %i.cu = add nuw i64 %.sink1.i6.i22.i, 1
  store i64 %i.cu, ptr %i.cn, align 8, !alias.scope !84315, !noalias !84314
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84256
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84320)
  %i.cv = load i64, ptr %i.cn, align 8, !alias.scope !84321, !noalias !84322, !noundef !416 ; 3 uses
  %i.cw = load i64, ptr %2, align 8, !range !419, !alias.scope !84321, !noalias !84322, !noundef !416
  %i.cx = sub i64 %i.cw, %i.cv
  %i.cy = icmp ugt i64 %i.ac, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i8.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit9.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i8.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cv, i64 noundef range(i64 0, -9223372036854775808) %i.ac, i64 noundef 1, i64 noundef 1), !noalias !84322
  %i.cz = load i64, ptr %i.cn, align 8, !alias.scope !84323, !noalias !84322, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit9.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit9.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i8.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i
  %.sink28.i = phi i64 [ %i.cz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i8.i ], [ %i.cv, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit24.i ] ; 3 uses
  %i.da = icmp sgt i64 %.sink28.i, -1
  tail call void @llvm.assume(i1 %i.da)
  %i.db = load ptr, ptr %i.co, align 8, !alias.scope !84323, !noalias !84322, !nonnull !416, !noundef !416
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sink28.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.ac, i1 false), !noalias !84324
  %i.dd = add nuw i64 %.sink28.i, %i.ac
  store i64 %i.dd, ptr %i.cn, align 8, !alias.scope !84323, !noalias !84322
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84447)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !84446, !noalias !84447, !noundef !416 ; 7 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !84446, !noalias !84447 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84449)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i.i = load i64, ptr %i.i, align 8, !alias.scope !84450, !noalias !84446 ; 3 uses
  %.pre28.i.i = load i64, ptr %2, align 8, !range !419, !alias.scope !84450, !noalias !84446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84455)
  %i.k = icmp eq i64 %.pre28.i.i, %.pre18.i.i
  br i1 %i.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !84456
  %i.l = load i64, ptr %i.i, align 8, !alias.scope !84457, !noalias !84456, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i, %bb.b
  %.sink1.i6.i.i = phi i64 [ %i.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i ], [ %.pre18.i.i, %bb.b ] ; 3 uses
  %i.m = icmp sgt i64 %.sink1.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !84457, !noalias !84456, !nonnull !416, !noundef !416
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink1.i6.i.i
  store i8 10, ptr %i.o, align 1, !noalias !84458
  %i.p = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !84457, !noalias !84456
  %i.q = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84446
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84462)
  %i.r = load i64, ptr %i.i, align 8, !alias.scope !84463, !noalias !84464, !noundef !416 ; 3 uses
  %i.s = load i64, ptr %2, align 8, !range !419, !alias.scope !84463, !noalias !84464, !noundef !416
  %i.t = sub i64 %i.s, %i.r
  %i.u = icmp ugt i64 %i.f, %i.t
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef 1, i64 noundef 1), !noalias !84464
  %i.v = load i64, ptr %i.i, align 8, !alias.scope !84465, !noalias !84464, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sink52.i = phi i64 [ %i.v, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i ], [ %i.r, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 3 uses
  %i.w = icmp sgt i64 %.sink52.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load ptr, ptr %i.j, align 8, !alias.scope !84465, !noalias !84464, !nonnull !416, !noundef !416
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink52.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !noalias !84466
  %i.z = add nuw i64 %.sink52.i, %i.f
  store i64 %i.z, ptr %i.i, align 8, !alias.scope !84465, !noalias !84464
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !84446, !noalias !84447, !nonnull !416, !noundef !416 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !84446, !noalias !84447, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84467)
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84468)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i14.i = load i64, ptr %i.af, align 8, !alias.scope !84469, !noalias !84470 ; 3 uses
  %.pre28.i15.i = load i64, ptr %2, align 8, !range !419, !alias.scope !84469, !noalias !84470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84471), !noalias !84467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84472), !noalias !84467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84473), !noalias !84467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84474), !noalias !84467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84475), !noalias !84467
  %i.ah = icmp eq i64 %.pre28.i15.i, %.pre18.i14.i
  br i1 %i.ah, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i17.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i17.i: ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i14.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !84476
  %i.ai = load i64, ptr %i.af, align 8, !alias.scope !84477, !noalias !84476, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit18.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i17.i, %bb.d
  %.sink1.i6.i16.i = phi i64 [ %i.ai, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i17.i ], [ %.pre18.i14.i, %bb.d ] ; 3 uses
  %i.aj = icmp sgt i64 %.sink1.i6.i16.i, -1
  tail call void @llvm.assume(i1 %i.aj), !noalias !84467
  %i.ak = load ptr, ptr %i.ag, align 8, !alias.scope !84477, !noalias !84476, !nonnull !416, !noundef !416
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink1.i6.i16.i
  store i8 18, ptr %i.al, align 1, !noalias !84478
  %i.am = add nuw i64 %.sink1.i6.i16.i, 1
  store i64 %i.am, ptr %i.af, align 8, !alias.scope !84477, !noalias !84476
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
  %.val.i.i.i = load i32, ptr %i.ao, align 4, !alias.scope !84467, !noalias !84479, !noundef !416
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
  %.val.i.i.i.1 = load i32, ptr %i.ay, align 4, !alias.scope !84467, !noalias !84479, !noundef !416
  %i.az = or i32 %.val.i.i.i.1, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63
  %i.bd = mul nuw nsw i64 %i.bc, 9
  %i.be = add nuw nsw i64 %i.bd, 73
  %i.bf = lshr i64 %i.be, 6
  %i.bg = add i64 %i.bf, %i.aw                    ; 3 uses
  %i.bh = add nuw nsw i64 %.sroa.04.0.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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
  %.val.i.i.i.epil = load i32, ptr %i.bi, align 4, !alias.scope !84467, !noalias !84479, !noundef !416
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa10, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84470
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.bt = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !84467, !noalias !84479, !noundef !416
  %i.bu = sext i32 %i.bt to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84470
  %i.bv = icmp eq ptr %i.bs, %i.br
  br i1 %i.bv, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !84446, !noalias !84447, !nonnull !416, !noundef !416 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !84446, !noalias !84447, !noundef !416 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84480)
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84481)
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i19.i = load i64, ptr %i.cb, align 8, !alias.scope !84482, !noalias !84483 ; 3 uses
  %.pre28.i20.i = load i64, ptr %2, align 8, !range !419, !alias.scope !84482, !noalias !84483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84484), !noalias !84480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84485), !noalias !84480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84486), !noalias !84480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84487), !noalias !84480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84488), !noalias !84480
  %i.cd = icmp eq i64 %.pre28.i20.i, %.pre18.i19.i
  br i1 %i.cd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i22.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i22.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i19.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !84489
  %i.ce = load i64, ptr %i.cb, align 8, !alias.scope !84490, !noalias !84489, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit23.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i22.i, %bb.f
  %.sink1.i6.i21.i = phi i64 [ %i.ce, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i22.i ], [ %.pre18.i19.i, %bb.f ] ; 3 uses
  %i.cf = icmp sgt i64 %.sink1.i6.i21.i, -1
  tail call void @llvm.assume(i1 %i.cf), !noalias !84480
  %i.cg = load ptr, ptr %i.cc, align 8, !alias.scope !84490, !noalias !84489, !nonnull !416, !noundef !416
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sink1.i6.i21.i
  store i8 26, ptr %i.ch, align 1, !noalias !84491
  %i.ci = add nuw i64 %.sink1.i6.i21.i, 1
  store i64 %i.ci, ptr %i.cb, align 8, !alias.scope !84490, !noalias !84489
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
  %.val.i.i8.i = load i32, ptr %i.ck, align 4, !alias.scope !84480, !noalias !84492, !noundef !416
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
  %.val.i.i8.i.1 = load i32, ptr %i.cu, align 4, !alias.scope !84480, !noalias !84492, !noundef !416
  %i.cv = or i32 %.val.i.i8.i.1, 1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cw, i1 true)
  %i.cy = xor i64 %i.cx, 63
  %i.cz = mul nuw nsw i64 %i.cy, 9
  %i.da = add nuw nsw i64 %i.cz, 73
  %i.db = lshr i64 %i.da, 6
  %i.dc = add i64 %i.db, %i.cs                    ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.04.0.i.i6.i, 2   ; 2 uses
  %niter19.next.1 = add nuw i64 %niter19, 2       ; 2 uses
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
  %.val.i.i8.i.epil = load i32, ptr %i.de, align 4, !alias.scope !84480, !noalias !84492, !noundef !416
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84483
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i9.i
  %.sroa.0.02.i12.i = phi ptr [ %i.do, %.lr.ph.i11.i ], [ %i.bx, %.lr.ph.preheader.i9.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i12.i, i64 4 ; 2 uses
  %i.dp = load i32, ptr %.sroa.0.02.i12.i, align 4, !alias.scope !84480, !noalias !84492, !noundef !416
  %i.dq = sext i32 %i.dp to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84483
  %i.dr = icmp eq ptr %i.do, %i.dn
  br i1 %i.dr, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i, label %.lr.ph.i11.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i: ; preds = %.lr.ph.i11.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dt = load i32, ptr %i.ds, align 8, !alias.scope !84446, !noalias !84447, !noundef !416 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84493)
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i24.i = load i64, ptr %i.dv, align 8, !alias.scope !84494, !noalias !84446 ; 3 uses
  %.pre28.i25.i = load i64, ptr %2, align 8, !range !419, !alias.scope !84494, !noalias !84446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84499)
  %i.dx = icmp eq i64 %.pre28.i25.i, %.pre18.i24.i
  br i1 %i.dx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i27.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit28.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i27.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i24.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !84500
  %i.dy = load i64, ptr %i.dv, align 8, !alias.scope !84501, !noalias !84500, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit28.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit28.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i27.i, %bb.h
  %.sink1.i6.i26.i = phi i64 [ %i.dy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i27.i ], [ %.pre18.i24.i, %bb.h ] ; 3 uses
  %i.dz = icmp sgt i64 %.sink1.i6.i26.i, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.dw, align 8, !alias.scope !84501, !noalias !84500, !nonnull !416, !noundef !416
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.sink1.i6.i26.i
  store i8 32, ptr %i.eb, align 1, !noalias !84502
  %i.ec = add nuw i64 %.sink1.i6.i26.i, 1
  store i64 %i.ec, ptr %i.dv, align 8, !alias.scope !84501, !noalias !84500
  %i.ed = zext i32 %i.dt to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ed, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84446
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit28.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit13.i
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ef = load i32, ptr %i.ee, align 4, !alias.scope !84446, !noalias !84447, !noundef !416 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84503)
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i29.i = load i64, ptr %i.eh, align 8, !alias.scope !84504, !noalias !84446 ; 3 uses
  %.pre28.i30.i = load i64, ptr %2, align 8, !range !419, !alias.scope !84504, !noalias !84446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84509)
  %i.ej = icmp eq i64 %.pre28.i30.i, %.pre18.i29.i
  br i1 %i.ej, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i32.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit33.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i32.i: ; preds = %bb.j
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i29.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !84510
  %i.ek = load i64, ptr %i.eh, align 8, !alias.scope !84511, !noalias !84510, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit33.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit33.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i32.i, %bb.j
  %.sink1.i6.i31.i = phi i64 [ %i.ek, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i32.i ], [ %.pre18.i29.i, %bb.j ] ; 3 uses
  %i.el = icmp sgt i64 %.sink1.i6.i31.i, -1
  tail call void @llvm.assume(i1 %i.el)
  %i.em = load ptr, ptr %i.ei, align 8, !alias.scope !84511, !noalias !84510, !nonnull !416, !noundef !416
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink1.i6.i31.i
  store i8 40, ptr %i.en, align 1, !noalias !84512
  %i.eo = add nuw i64 %.sink1.i6.i31.i, 1
  store i64 %i.eo, ptr %i.eh, align 8, !alias.scope !84511, !noalias !84510
  %i.ep = zext i32 %i.ef to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ep, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84446
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit33.i, %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !84446, !noalias !84447, !noundef !416 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84513)
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i34.i = load i64, ptr %i.et, align 8, !alias.scope !84514, !noalias !84446 ; 3 uses
  %.pre28.i35.i = load i64, ptr %2, align 8, !range !419, !alias.scope !84514, !noalias !84446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84519)
  %i.ev = icmp eq i64 %.pre28.i35.i, %.pre18.i34.i
  br i1 %i.ev, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i37.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i37.i: ; preds = %bb.l
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i34.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !84520
  %i.ew = load i64, ptr %i.et, align 8, !alias.scope !84521, !noalias !84520, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i37.i, %bb.l
  %.sink1.i6.i36.i = phi i64 [ %i.ew, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i37.i ], [ %.pre18.i34.i, %bb.l ] ; 3 uses
  %i.ex = icmp sgt i64 %.sink1.i6.i36.i, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load ptr, ptr %i.eu, align 8, !alias.scope !84521, !noalias !84520, !nonnull !416, !noundef !416
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.sink1.i6.i36.i
  store i8 48, ptr %i.ez, align 1, !noalias !84522
  %i.fa = add nuw i64 %.sink1.i6.i36.i, 1
  store i64 %i.fa, ptr %i.et, align 8, !alias.scope !84521, !noalias !84520
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.er, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84446
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit38.i, %bb.k
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fc = load i32, ptr %i.fb, align 8, !range !433, !alias.scope !84446, !noalias !84447, !noundef !416
  %i.fd = trunc nuw i32 %i.fc to i1
  br i1 %i.fd, label %bb.n, label %_RINvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.n:                                             ; preds = %bb.m
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.val2.i = load i32, ptr %i.fe, align 4, !alias.scope !84446, !noalias !84447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84523)
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i39.i = load i64, ptr %i.ff, align 8, !alias.scope !84524, !noalias !84446 ; 3 uses
  %.pre28.i40.i = load i64, ptr %2, align 8, !range !419, !alias.scope !84524, !noalias !84446
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84529)
  %i.fh = icmp eq i64 %.pre28.i40.i, %.pre18.i39.i
  br i1 %i.fh, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i42.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit43.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i42.i: ; preds = %bb.n
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i39.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !84530
  %i.fi = load i64, ptr %i.ff, align 8, !alias.scope !84531, !noalias !84530, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit43.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit43.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i42.i, %bb.n
  %.sink1.i6.i41.i = phi i64 [ %i.fi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i42.i ], [ %.pre18.i39.i, %bb.n ] ; 3 uses
  %i.fj = icmp sgt i64 %.sink1.i6.i41.i, -1
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = load ptr, ptr %i.fg, align 8, !alias.scope !84531, !noalias !84530, !nonnull !416, !noundef !416
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sink1.i6.i41.i
  store i8 56, ptr %i.fl, align 1, !noalias !84532
  %i.fm = add nuw i64 %.sink1.i6.i41.i, 1
  store i64 %i.fm, ptr %i.ff, align 8, !alias.scope !84531, !noalias !84530
  %i.fn = zext i32 %.val2.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !84446
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
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !126375
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.w, %.body.i.i
  resume { ptr, i32 } %.pn.i.i

bb.w:                                             ; preds = %.body.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.v, !noalias !126375

_RINvXso_NtCscI6d9CVNmLh_4core6resultINtB6_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBQ_6string6StringINtNtBQ_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtB8_4iter6traits7collect12FromIteratorIBz_B1i_B3k_EE9from_iterINtNtNtB48_8adapters3map3MapINtNtBO_9into_iter8IntoIterTB1j_NtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEENCNCNvNtNtCshkPeWWG1flk_5lance7dataset16schema_evolution24add_columns_to_fragments0s1_0EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !126375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !126375
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126463)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !126464, !noalias !126462 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !126464, !noalias !126462 ; 2 uses
  %.sroa.81.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.81.0.copyload.i = load i16, ptr %.sroa.81.0..sroa_idx.i, align 8, !alias.scope !126464, !noalias !126462 ; 2 uses
  %.sroa.92.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.92.0.copyload.i = load i64, ptr %.sroa.92.0..sroa_idx.i, align 8, !alias.scope !126464, !noalias !126462 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !126467
  %i.g = icmp eq i64 %.sroa.92.0.copyload.i, 0
  br i1 %i.g, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %.sroa.81.0.copyload.i, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.h = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload.i, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i, %bb.b ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !126468
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
  %i.s = add i64 %.sroa.92.0.copyload.i, -1       ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -48
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !126469
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !noalias !126470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !126469
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i unwind label %bb.c, !noalias !126471

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126473)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !419, !alias.scope !126474, !noalias !126469, !noundef !416 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %common.resume.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !126474, !noalias !126469, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !126475
  br label %common.resume.i.i.i

common.resume.i.i.i:                              ; preds = %.body.i.i.i, %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.d, %bb.c
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.v, %bb.d ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %i.aa, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i: ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !126476 ; 4 uses
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.417.i.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !126467 ; 3 uses
  %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.417.i.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !126467
  %.sroa.417.i.sroa.5.16.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !126467 ; 3 uses
  %.sroa.417.i.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.417.i.sroa.7.16.copyload.i.i = load ptr, ptr %.sroa.417.i.sroa.7.16..sroa_idx.i.i, align 8, !noalias !126467 ; 3 uses
  %.sroa.417.i.sroa.8.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.417.i.sroa.8.16.copyload.i.i = load i64, ptr %.sroa.417.i.sroa.8.16..sroa_idx.i.i, align 8, !noalias !126467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !126469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !126469
  %.not.i.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, label %bb.h

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !126477, !noalias !126478
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !126477, !noalias !126478
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !126477, !noalias !126478
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit

bb.e:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.016.0.copyload.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.0.0.copyload.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.0.0.copyload.i.i, i64 noundef %.sroa.016.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !126479
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.ac = icmp eq i64 %.sroa.417.i.sroa.5.16.copyload.i.i, 0
  br i1 %i.ac, label %common.resume.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.7.16.copyload.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.7.16.copyload.i.i, i64 noundef %.sroa.417.i.sroa.5.16.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !126480
  br label %common.resume.i.i.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.92.0.copyload.i, i64 4) ; 3 uses
  %i.ad = mul i64 %.sroa.0.0.i.i.i.i, 48          ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.sroa.92.0.copyload.i, 192153584101141162
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.i, !prof !441

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !126481
  %i.af = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, 17) 8) #68, !noalias !126481 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ad) #72
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !126467

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.af, %bb.j ] ; 8 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i.i.i, %bb.j ] ; 2 uses
  %i.ah = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.ah)
  store i64 %.sroa.016.0.copyload.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !126467
  %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.417.i.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !126467
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.417.i.sroa.4.0.copyload.i.i, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !126467
  %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 24
  store i64 %.sroa.417.i.sroa.5.16.copyload.i.i, ptr %.sroa.71.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !126467
  %.sroa.8.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 32
  store ptr %.sroa.417.i.sroa.7.16.copyload.i.i, ptr %.sroa.8.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !126467
  %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 40
  store i64 %.sroa.417.i.sroa.8.16.copyload.i.i, ptr %.sroa.9.0..sroa.10.0.i.i.sroa_idx.i.i, align 8, !noalias !126467
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.f, align 8, !noalias !126467
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !126467
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !126467
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126483)
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
  %i.ak = phi i64 [ 1, %.lr.ph.i.i.i.i.i ], [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 4 uses
  %.lcssa21.i.i.i.i.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i.i.i.i.i ], [ %.lcssa20.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %i.al = phi i16 [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.val1217.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.ax, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.lcssa111516.i.i.i.i.i = phi ptr [ %.sroa.010.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.lcssa1114.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.am = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.an = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa111516.i.i.i.i.i, %bb.m ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.am, align 16, !noalias !126484
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !126485
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %.noexc6.i.i.i unwind label %bb.s, !noalias !126467

.noexc6.i.i.i:                                    ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126485
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i unwind label %bb.n, !noalias !126486

bb.n:                                             ; preds = %.noexc6.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126488)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !419, !alias.scope !126489, !noalias !126485, !noundef !416 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bb, label %.body.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !126489, !noalias !126485, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !126490
  br label %.body.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i: ; preds = %.noexc6.i.i.i
  %.sroa.07.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !126491 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !126491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.24..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !126491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !126485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i.i.i.i.i, i64 40, i1 false), !noalias !126492
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i.i.i)
  %.not.i.i5.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i5.i.i.i, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !126493
  store i64 %.sroa.07.0.copyload.i.i.i.i.i, ptr %i.c, align 8, !noalias !126493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i, i64 40, i1 false), !noalias !126493
  %i.bc = load i64, ptr %i.f, align 8, !range !419, !alias.scope !126494, !noalias !126495, !noundef !416
  %i.bd = icmp eq i64 %i.ak, %i.bc
  br i1 %i.bd, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i, %bb.p
  %i.be = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i ], [ %i.aj, %bb.p ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !126493
  %i.bg = add nuw nsw i64 %i.ak, 1                ; 2 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !126494, !noalias !126495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !126493
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  %i.bh = icmp eq i64 %i.ax, 0
  br i1 %i.bh, label %.loopexit.i.i.i, label %bb.m

bb.q:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.c) #73, !noalias !126493
  br label %.body.i.i.i

bb.r:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %.val1217.i.i.i.i.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i unwind label %bb.q, !noalias !126495

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !126494, !noalias !126495
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.s:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.s, %bb.q, %bb.o, %bb.n
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bj, %bb.s ], [ %i.bi, %bb.q ], [ %i.ba, %bb.o ], [ %i.ba, %bb.n ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtBG_6string6StringB19_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.f) #73, !noalias !126467
  br label %common.resume.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTNtNtB6_6string6StringBF_EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !126478
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit

_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecTNtNtB8_6string6StringBH_EEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1e_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBH_BH_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB3W_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0EEB3Y_.exit: ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2F_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace11query_table0s6_0ENtNtNtB9_6traits8iterator8Iterator4nextB2H_.exit.thread.i.i.i, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !126467
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3b_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0EENtNtNtBa_6traits8iterator8Iterator7collectINtNtB1O_3vec3VecB1J_EECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !126531
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !noalias !126532, !nonnull !416, !noundef !416 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noalias !126532, !noundef !416
  switch i64 %i.i, label %bb.c [
    i64 6, label %.split.i.i.i.i.i.i
    i64 8, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !126532, !nonnull !416, !noundef !416 ; 2 uses
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
  %i.v = load ptr, ptr %i.u, align 8, !noalias !126532, !nonnull !416, !noundef !416
  %i.w = load i64, ptr %i.v, align 1
  %i.x = icmp ne i64 %i.w, 8242823587773248095
  %i.y = zext i1 %i.x to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  %i.z = icmp eq ptr %i.f, %2
  br i1 %i.z, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !126533
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.loopexit.i.i.i:                                  ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !126531
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !alias.scope !126531
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ad, align 8, !alias.scope !126531
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1O_8adapters6cloned6ClonedINtNtB30_6filter6FilterINtNtNtB1Q_5slice4iter4IterBG_ENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4v_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !126534
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.q, !noalias !126531

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !126531
  store ptr %i.g, ptr %i.b, align 8, !noalias !126531
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !126535
  %i.ah = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 17) 8) #68, !noalias !126535 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #72
          to label %.noexc9.i.i.i unwind label %bb.e, !noalias !126531

.noexc9.i.i.i:                                    ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  store ptr %i.g, ptr %i.ah, align 8, !noalias !126531
  store i64 4, ptr %i.c, align 8, !noalias !126531
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !126531
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !126531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !126531
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126537)
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
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !126538, !nonnull !416, !noundef !416 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !126538, !noundef !416
  switch i64 %i.aq, label %bb.k [
    i64 6, label %.split.i.i.i.i.i.i.i.i
    i64 8, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBY_14MergeInsertJob33create_indexed_scan_joined_stream0s0_0INtB7_5FnMutTRRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !126538, !nonnull !416, !noundef !416 ; 2 uses
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
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !126538, !nonnull !416, !noundef !416
  %i.be = load i64, ptr %i.bd, align 1
  %i.bf = icmp ne i64 %i.be, 8242823587773248095
  %i.bg = zext i1 %i.bf to i32
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.k

end_hunk_6
begin_hunk_7_@_RINvYINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator7collectINtNtB13_3vec3VecBZ_EECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !127000, !noalias !126998
  %.sroa.1715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.1715.0.copyload.i = load i16, ptr %.sroa.1715.0..sroa_idx.i, align 8, !alias.scope !127000, !noalias !126998 ; 2 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 50
  %.sroa.1919.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.1919.0.copyload.i = load i64, ptr %.sroa.1919.0..sroa_idx.i, align 8, !alias.scope !127000, !noalias !126998 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127003
  %i.c = icmp eq i64 %.sroa.1919.0.copyload.i, 0
  br i1 %i.c, label %.thread.i.i.i, label %bb.b

.thread.i.i.i:                                    ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !127004, !noalias !127005
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !alias.scope !127004, !noalias !127005
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.e, align 8, !alias.scope !127004, !noalias !127005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127003
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not12.i.i.i.i.i.i = icmp eq i16 %.sroa.1715.0.copyload.i, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.f = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.13.0.copyload.i, %bb.b ] ; 2 uses
  %i.g = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i, %bb.b ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.f, align 16, !noalias !127006
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
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !127007 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !127004, !noalias !127005
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !127004, !noalias !127005
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !127004, !noalias !127005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127003
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
  %.val10.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !127008
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
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !range !419, !alias.scope !127009, !noalias !127010, !noundef !416 ; 2 uses
  %i.ak = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr i8, ptr %i.ah, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !noalias !127010, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !127011
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
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !127012
  br label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtB8_6string6StringEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBG_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.ao, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !127013
  br label %bb.s

bb.h:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !127014 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i, align 8, !noalias !127014
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.1919.0.copyload.i, i64 4) ; 3 uses
  %i.ap = mul i64 %.sroa.0.0.i.i.i.i, 24          ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.sroa.1919.0.copyload.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.k, label %bb.i, !prof !441

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !127015
  %i.ar = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef range(i64 1, 17) 8) #68, !noalias !127015 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ap) #72
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !127003

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ar, %bb.j ] ; 5 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i.i.i, %bb.j ] ; 2 uses
  %i.at = icmp ule i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.at)
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %.sroa.10.0.i.i.i.i, align 8, !noalias !127003
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !127003
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !127003
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.b, align 8, !noalias !127003
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !127003
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !127003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127003
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !noalias !127016
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx3.i, align 8, !noalias !127016
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx6.i, align 8, !noalias !127016
  %.sroa.10.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx9.i, align 8, !noalias !127016
  %.sroa.13.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx11.i, align 8, !noalias !127016
  %.sroa.17.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.17.0.copyload.i, ptr %.sroa.17.0..sroa_idx13.i, align 8, !noalias !127016
  %.sroa.1715.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i16 %i.n, ptr %.sroa.1715.0..sroa_idx16.i, align 8, !noalias !127016
  %.sroa.19.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.19.0..sroa_idx18.i, ptr noundef nonnull readonly align 2 dereferenceable(6) %.sroa.19.0..sroa_idx.i, i64 6, i1 false), !noalias !126998
  %.sroa.1919.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i64 %i.q, ptr %.sroa.1919.0..sroa_idx20.i, align 8, !noalias !127016
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127020)
  %i.au = icmp eq i64 %i.q, 0
  br i1 %i.au, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.av = phi ptr [ %i.cg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.l ]
  %i.aw = phi i64 [ %i.ci, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 1, %bb.l ] ; 4 uses
  %.lcssa1528.i.i.i.i.i = phi ptr [ %.promoted10.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.13.0.i, %bb.l ] ; 2 uses
  %.lcssa1625.i.i.i.i.i = phi ptr [ %.promoted6.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.10.0.i, %bb.l ] ; 2 uses
  %i.ax = phi i16 [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.n, %bb.l ] ; 2 uses
  %.val1920.i.i.i.i.i = phi i64 [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.q, %bb.l ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127023)
  %.not12.i.i.i.i.i.i.i.i = icmp eq i16 %i.ax, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %.sroa.13.0..sroa_idx11.i, align 8, !alias.scope !127024, !noalias !127025
  store ptr %i.bb, ptr %.sroa.10.0..sroa_idx9.i, align 8, !alias.scope !127024, !noalias !127025
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa1528.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.az = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa1625.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ay, align 16, !noalias !127026
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
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !127027 ; 4 uses
  %.not.i.i.i5.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i5.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i, label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #73, !noalias !127028
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #73, !noalias !127003
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.m:                                             ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !127029 ; 3 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.sroa.6.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i.i.i, align 8, !noalias !127029
  %i.bl = load i64, ptr %i.b, align 8, !range !419, !alias.scope !127030, !noalias !127031, !noundef !416
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
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bq, align 16, !noalias !127032
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
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !range !419, !alias.scope !127033, !noalias !127034, !noundef !416 ; 2 uses
  %i.cd = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = getelementptr i8, ptr %i.ca, i64 -16
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !noalias !127034, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !127035
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
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !127036
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i, %bb.m
  %i.cg = phi ptr [ %.pre.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i ], [ %i.av, %bb.m ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.aw ; 3 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.ch, align 8, !noalias !127037
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !127037
  %.sroa.59.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %.sroa.6.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 8, !noalias !127037
  %i.ci = add nuw nsw i64 %i.aw, 1                ; 2 uses
  store i64 %i.ci, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !127030, !noalias !127031
  %i.cj = icmp eq i64 %i.bj, 0
  br i1 %i.cj, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.p:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store i16 %i.bg, ptr %.sroa.1715.0..sroa_idx16.i, align 8, !alias.scope !127024, !noalias !127025
  store i64 %i.bj, ptr %.sroa.1919.0..sroa_idx20.i, align 8, !alias.scope !127038, !noalias !127025
  %i.cl = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, 0
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !127039
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.m
  %i.cm = tail call i64 @llvm.uadd.sat.i64(i64 %i.bj, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.aw, i64 noundef %i.cm, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i unwind label %bb.p, !noalias !127031

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i: ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !127030, !noalias !127031
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.o, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringuEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !127005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127003
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
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cq, align 16, !noalias !127040
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
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8, !range !419, !alias.scope !127041, !noalias !127042, !noundef !416 ; 2 uses
  %i.dd = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.dd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.de = getelementptr i8, ptr %i.da, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !noalias !127042, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !127043
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
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload.i, i64 noundef %.sroa.6.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.copyload.i) #68, !noalias !127044
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
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !416, !noalias !127124, !nonnull !416 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 144 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 56 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXssf_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sroa.0.03 = phi ptr [ %0, %.lr.ph ], [ %i.i, %_RINvXssf_NtCs40MM8ukkVQd_9sqlparser3astNtB7_10CopyOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBU_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127125)
  %i.j = load i64, ptr %.sroa.0.03, align 8, !range !526, !alias.scope !127125, !noundef !416 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = add i64 %i.j, -9223372036854775807
  %i.m = select i1 %i.k, i64 %i.l, i64 0          ; 2 uses
  tail call void %i.d(ptr noundef nonnull %.0.val, i64 noundef %i.m), !noalias !127124, !inline_history !127049
end_hunk_7
begin_hunk_8_@_RNCINvXs_NtCsjjbR6Jfsbqw_8lance_io6traitsINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB7_6WriterEL_ENtB7_8WriteExt14write_protobufNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8MetadataE0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.bd = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.bd, align 8, !noalias !136080, !nonnull !416, !align !417, !noundef !416
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !416, !noalias !136081, !nonnull !416
  %i.bg = invoke { i64, ptr } %i.bf(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef range(i64 1, 9) %i.bb)
          to label %.noexc unwind label %bb.q, !inline_history !135954 ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.bh = extractvalue { i64, ptr } %i.bg, 0
  %i.bi = extractvalue { i64, ptr } %i.bg, 1      ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  switch i64 %i.bh, label %bb.s [
    i64 -1, label %bb.v
    i64 0, label %bb.t
  ]

bb.s:                                             ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  br label %.loopexit93

bb.t:                                             ; preds = %.noexc
  %i.bk = icmp eq ptr %i.bi, null
  br i1 %i.bk, label %.loopexit93, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = trunc i64 %i.bj to i8
  %i.bm = load i8, ptr %i.ax, align 4, !noalias !136079, !noundef !416
  %i.bn = add i8 %i.bm, %i.bl                     ; 3 uses
  store i8 %i.bn, ptr %i.ax, align 4, !noalias !136079
  %i.bo = icmp ult i8 %i.bn, 4
  br i1 %i.bo, label %.lr.ph.i, label %.loopexit94

bb.v:                                             ; preds = %.noexc
  store i8 -2, ptr %0, align 8
  br label %common.ret

.loopexit93:                                      ; preds = %bb.t, %bb.s
  %.sroa.6.0.i.ph = phi ptr [ %i.bi, %bb.s ], [ inttoptr (i64 98784247811 to ptr), %bb.t ]
  invoke void @_RNvXs8_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @991)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit51 unwind label %bb.am

.loopexit94:                                      ; preds = %bb.u, %bb.r
  %i.bp = phi ptr [ %i.as, %bb.r ], [ %i.au, %bb.u ]
  %i.bq = phi ptr [ %i.ar, %bb.r ], [ %i.av, %bb.u ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !416, !align !417, !noundef !416
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !416, !align !417, !noundef !416 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136083
  %i.bv = call fastcc noundef i64 @_RNvXse_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_8MetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bu), !noalias !136084 ; 5 uses
  %.not.i.i30 = icmp slt i64 %i.bv, 0
  br i1 %.not.i.i30, label %bb.y, label %bb.w, !prof !441

bb.w:                                             ; preds = %.loopexit94
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !136085
  %i.bx = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !136085 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.y, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i

bb.y:                                             ; preds = %bb.x, %.loopexit94
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.x ], [ 0, %.loopexit94 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.bv) #72
          to label %.noexc33 unwind label %bb.ai

.noexc33:                                         ; preds = %bb.y
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.w
  store i64 0, ptr %i.a, align 8, !noalias !136083
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bz, align 8, !noalias !136083
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %i.ca, align 8, !noalias !136083
  call void @llvm.experimental.noalias.scope.decl(metadata !136086)
  call void @llvm.experimental.noalias.scope.decl(metadata !136087)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !136088, !noalias !136089, !noundef !416 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.noexc2.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.x
  store i64 %i.bv, ptr %i.a, align 8, !noalias !136083
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.bx, ptr %i.ce, align 8, !noalias !136083
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.cf, align 8, !noalias !136083
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !136090, !noalias !136091, !noundef !416 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.noexc2.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !136092)
  call void @llvm.experimental.noalias.scope.decl(metadata !136093)
  call void @llvm.experimental.noalias.scope.decl(metadata !136094)
  call void @llvm.experimental.noalias.scope.decl(metadata !136095)
  call void @llvm.experimental.noalias.scope.decl(metadata !136096)
  call void @llvm.experimental.noalias.scope.decl(metadata !136097)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i
  %i.cj = load i64, ptr %i.ca, align 8, !alias.scope !136098, !noalias !136099, !noundef !416
  %.pre.i = load ptr, ptr %i.bz, align 8, !alias.scope !136098, !noalias !136099
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, %.noexc.i
  %i.ck = phi ptr [ %i.bz, %.noexc.i ], [ %i.ce, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ] ; 2 uses
  %i.cl = phi ptr [ %i.ca, %.noexc.i ], [ %i.cf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ] ; 2 uses
  %i.cm = phi i64 [ %i.cc, %.noexc.i ], [ %i.ch, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ]
  %i.cn = phi ptr [ %.pre.i, %.noexc.i ], [ %i.bx, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ]
  %.sink1.i6.i.i.i = phi i64 [ %i.cj, %.noexc.i ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ] ; 3 uses
  %i.co = icmp sgt i64 %.sink1.i6.i.i.i, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sink1.i6.i.i.i
  store i8 8, ptr %i.cp, align 1, !noalias !136100
  %i.cq = add nuw i64 %.sink1.i6.i.i.i, 1
  store i64 %i.cq, ptr %i.cl, align 8, !alias.scope !136098, !noalias !136099
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc2.i:                                        ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.cr = phi ptr [ %i.cf, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.cl, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.ca, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 15 uses
  %i.cs = phi ptr [ %i.ce, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i ], [ %i.ck, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.bz, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 18 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !136088, !noalias !136089, !nonnull !416, !noundef !416 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !136088, !noalias !136089, !noundef !416 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136101)
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc2.i
  call void @llvm.experimental.noalias.scope.decl(metadata !136102)
  %.pre18.i2.i.i = load i64, ptr %i.cr, align 8, !alias.scope !136103, !noalias !136104 ; 3 uses
  %.pre28.i3.i.i = load i64, ptr %i.a, align 8, !range !419, !alias.scope !136103, !noalias !136104
  call void @llvm.experimental.noalias.scope.decl(metadata !136105), !noalias !136101
  call void @llvm.experimental.noalias.scope.decl(metadata !136106), !noalias !136101
  call void @llvm.experimental.noalias.scope.decl(metadata !136107), !noalias !136101
  call void @llvm.experimental.noalias.scope.decl(metadata !136108), !noalias !136101
  call void @llvm.experimental.noalias.scope.decl(metadata !136109), !noalias !136101
  %i.cy = icmp eq i64 %.pre28.i3.i.i, %.pre18.i2.i.i
  br i1 %i.cy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i: ; preds = %bb.z
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i2.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc3.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i
  %i.cz = load i64, ptr %i.cr, align 8, !alias.scope !136110, !noalias !136111, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i: ; preds = %.noexc3.i, %bb.z
  %.sink1.i6.i4.i.i = phi i64 [ %i.cz, %.noexc3.i ], [ %.pre18.i2.i.i, %bb.z ] ; 3 uses
  %i.da = icmp sgt i64 %.sink1.i6.i4.i.i, -1
  call void @llvm.assume(i1 %i.da), !noalias !136101
  %i.db = load ptr, ptr %i.cs, align 8, !alias.scope !136110, !noalias !136111, !nonnull !416, !noundef !416
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sink1.i6.i4.i.i
  store i8 18, ptr %i.dc, align 1, !noalias !136112
  %i.dd = add nuw i64 %.sink1.i6.i4.i.i, 1
  store i64 %i.dd, ptr %i.cr, align 8, !alias.scope !136110, !noalias !136111
  %xtraiter = and i64 %i.cw, 1
  %i.de = icmp eq i64 %i.cw, 1
  br i1 %i.de, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i
  %unroll_iter = and i64 %i.cw, -2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new ], [ %i.dy, %bb.aa ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new ], [ %i.dx, %bb.aa ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.new ], [ %niter.next.1, %bb.aa ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load i32, ptr %i.df, align 4, !alias.scope !136101, !noalias !136113, !noundef !416
  %i.dg = or i32 %.val.i.i.i.i, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = xor i64 %i.di, 63
  %i.dk = mul nuw nsw i64 %i.dj, 9
  %i.dl = add nuw nsw i64 %i.dk, 73
  %i.dm = lshr i64 %i.dl, 6
  %i.dn = add i64 %i.dm, %.sroa.02.0.i.i.i.i
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.sroa.04.0.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.val.i.i.i.i.1 = load i32, ptr %i.dp, align 4, !alias.scope !136101, !noalias !136113, !noundef !416
  %i.dq = or i32 %.val.i.i.i.i.1, 1
  %i.dr = sext i32 %i.dq to i64
  %i.ds = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dr, i1 true)
  %i.dt = xor i64 %i.ds, 63
  %i.du = mul nuw nsw i64 %i.dt, 9
  %i.dv = add nuw nsw i64 %i.du, 73
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = add i64 %i.dw, %i.dn                    ; 3 uses
  %i.dy = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 2  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.i.unr-lcssa, label %bb.aa

.lr.ph.preheader.i.i.i.unr-lcssa:                 ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i ], [ %i.dy, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i ], [ %i.dx, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod179 = trunc i64 %i.cw to i1
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.sroa.04.0.i.i.i.i.epil.init
  %.val.i.i.i.i.epil = load i32, ptr %i.dz, align 4, !alias.scope !136101, !noalias !136113, !noundef !416
  %i.ea = or i32 %.val.i.i.i.i.epil, 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eb, i1 true)
  %i.ed = xor i64 %i.ec, 63
  %i.ee = mul nuw nsw i64 %i.ed, 9
  %i.ef = add nuw nsw i64 %i.ee, 73
  %i.eg = lshr i64 %i.ef, 6
  %i.eh = add i64 %i.eg, %.sroa.02.0.i.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa173 = phi i64 [ %i.dx, %.lr.ph.preheader.i.i.i.unr-lcssa ], [ %i.eh, %.epil.preheader ]
  %.idx.i.i.i = shl nuw nsw i64 %i.cw, 2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx.i.i.i
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa173, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.lr.ph.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i, %.noexc5.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.el, %.noexc5.i ], [ %i.cu, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ej = load i32, ptr %.sroa.0.02.i.i.i, align 4, !alias.scope !136101, !noalias !136113, !noundef !416
  %i.ek = sext i32 %i.ej to i64
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.ek, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !136083

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 4 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ei
  br i1 %i.em, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.noexc5.i, %.noexc2.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !136088, !noalias !136089, !noundef !416 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.noexc7.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !136114)
  %.pre18.i7.i.i = load i64, ptr %i.cr, align 8, !alias.scope !136115, !noalias !136116 ; 3 uses
  %.pre28.i8.i.i = load i64, ptr %i.a, align 8, !range !419, !alias.scope !136115, !noalias !136116
  call void @llvm.experimental.noalias.scope.decl(metadata !136117)
  call void @llvm.experimental.noalias.scope.decl(metadata !136118)
  call void @llvm.experimental.noalias.scope.decl(metadata !136119)
  call void @llvm.experimental.noalias.scope.decl(metadata !136120)
  call void @llvm.experimental.noalias.scope.decl(metadata !136121)
  %i.eq = icmp eq i64 %.pre28.i8.i.i, %.pre18.i7.i.i
  br i1 %i.eq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i: ; preds = %bb.ab
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i7.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc6.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i
  %i.er = load i64, ptr %i.cr, align 8, !alias.scope !136122, !noalias !136123, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i: ; preds = %.noexc6.i, %bb.ab
  %.sink1.i6.i9.i.i = phi i64 [ %i.er, %.noexc6.i ], [ %.pre18.i7.i.i, %bb.ab ] ; 3 uses
  %i.es = icmp sgt i64 %.sink1.i6.i9.i.i, -1
  call void @llvm.assume(i1 %i.es)
  %i.et = load ptr, ptr %i.cs, align 8, !alias.scope !136122, !noalias !136123, !nonnull !416, !noundef !416
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %.sink1.i6.i9.i.i
  store i8 24, ptr %i.eu, align 1, !noalias !136124
  %i.ev = add nuw i64 %.sink1.i6.i9.i.i, 1
  store i64 %i.ev, ptr %i.cr, align 8, !alias.scope !136122, !noalias !136123
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.eo, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc7.i:                                        ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !range !421, !alias.scope !136088, !noalias !136089, !noundef !416
  %.not.i1.i = icmp eq i64 %i.ex, -1
  br i1 %.not.i1.i, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %.noexc7.i
  call void @llvm.experimental.noalias.scope.decl(metadata !136125)
  call void @llvm.experimental.noalias.scope.decl(metadata !136126)
  call void @llvm.experimental.noalias.scope.decl(metadata !136127)
  %.pre18.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !136128, !noalias !136129 ; 3 uses
  %.pre28.i.i.i.i = load i64, ptr %i.a, align 8, !range !419, !alias.scope !136128, !noalias !136129
  call void @llvm.experimental.noalias.scope.decl(metadata !136130)
  call void @llvm.experimental.noalias.scope.decl(metadata !136131)
  call void @llvm.experimental.noalias.scope.decl(metadata !136132)
  call void @llvm.experimental.noalias.scope.decl(metadata !136133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136134)
  %i.ey = icmp eq i64 %.pre28.i.i.i.i, %.pre18.i.i.i.i
  br i1 %i.ey, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i: ; preds = %bb.ac
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc8.i:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i
  %i.ez = load i64, ptr %i.cr, align 8, !alias.scope !136135, !noalias !136136, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %.noexc8.i, %bb.ac
  %.sink1.i6.i.i.i.i = phi i64 [ %i.ez, %.noexc8.i ], [ %.pre18.i.i.i.i, %bb.ac ] ; 3 uses
  %i.fa = icmp sgt i64 %.sink1.i6.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %i.cs, align 8, !alias.scope !136135, !noalias !136136, !nonnull !416, !noundef !416
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sink1.i6.i.i.i.i
  store i8 42, ptr %i.fc, align 1, !noalias !136137
  %i.fd = add nuw i64 %.sink1.i6.i.i.i.i, 1
  store i64 %i.fd, ptr %i.cr, align 8, !alias.scope !136135, !noalias !136136
  call void @llvm.experimental.noalias.scope.decl(metadata !136138)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !136139, !noalias !136140, !nonnull !416, !noundef !416 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !136139, !noalias !136140, !noundef !416 ; 4 uses
  %i.fi = icmp eq i64 %i.fh, 0                    ; 2 uses
  br i1 %i.fi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.ft, %.preheader.i.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ %i.fs, %.preheader.i.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %i.fj = getelementptr inbounds nuw [176 x i8], ptr %i.ff, i64 %.sroa.04.0.i.i.i.i.i.i.i
  %i.fk = call fastcc noundef i64 @_RNvXsu_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.fj), !noalias !136141 ; 2 uses
  %i.fl = or i64 %i.fk, 1
  %i.fm = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fl, i1 true)
  %i.fn = xor i64 %i.fm, 63
  %i.fo = mul nuw nsw i64 %i.fn, 9
  %i.fp = add nuw nsw i64 %i.fo, 73
  %i.fq = lshr i64 %i.fp, 6
  %i.fr = add i64 %i.fk, %.sroa.02.0.i.i.i.i.i.i.i
  %i.fs = add i64 %i.fr, %i.fq                    ; 2 uses
  %i.ft = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, %i.fh
  br i1 %i.fu, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.preheader.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %i.fs, %.preheader.i.i.i.i.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !136139, !noalias !136140, !nonnull !416, !noundef !416 ; 8 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !136139, !noalias !136140, !noundef !416 ; 10 uses
  %i.fz = icmp eq i64 %i.fy, 0                    ; 2 uses
  br i1 %i.fz, label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i, label %.preheader.i1.i.i.i.i.preheader

.preheader.i1.i.i.i.i.preheader:                  ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %xtraiter180 = and i64 %i.fy, 1
  %i.ga = icmp eq i64 %i.fy, 1
  br i1 %i.ga, label %.preheader.i1.i.i.i.i.epil.preheader, label %.preheader.i1.i.i.i.i.preheader.new

.preheader.i1.i.i.i.i.preheader.new:              ; preds = %.preheader.i1.i.i.i.i.preheader
  %unroll_iter184 = and i64 %i.fy, -2
  br label %.preheader.i1.i.i.i.i

.preheader.i1.i.i.i.i:                            ; preds = %.preheader.i1.i.i.i.i, %.preheader.i1.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader.new ], [ %i.gu, %.preheader.i1.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader.new ], [ %i.gt, %.preheader.i1.i.i.i.i ]
  %niter185 = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader.new ], [ %niter185.next.1, %.preheader.i1.i.i.i.i ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.sroa.04.0.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i32, ptr %i.gb, align 4, !alias.scope !136142, !noalias !136141, !noundef !416
  %i.gc = or i32 %.val.i.i.i.i.i.i, 1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gd, i1 true)
  %i.gf = xor i64 %i.ge, 63
  %i.gg = mul nuw nsw i64 %i.gf, 9
  %i.gh = add nuw nsw i64 %i.gg, 73
  %i.gi = lshr i64 %i.gh, 6
  %i.gj = add i64 %i.gi, %.sroa.02.0.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %.val.i.i.i.i.i.i.1 = load i32, ptr %i.gl, align 4, !alias.scope !136142, !noalias !136141, !noundef !416
  %i.gm = or i32 %.val.i.i.i.i.i.i.1, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gn, i1 true)
  %i.gp = xor i64 %i.go, 63
  %i.gq = mul nuw nsw i64 %i.gp, 9
  %i.gr = add nuw nsw i64 %i.gq, 73
  %i.gs = lshr i64 %i.gr, 6
  %i.gt = add i64 %i.gs, %i.gj                    ; 3 uses
  %i.gu = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i, 2 ; 2 uses
  %niter185.next.1 = add nuw i64 %niter185, 2     ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa, label %.preheader.i1.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i1.i.i.i.i
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.preheader.i1.i.i.i.i.epil.preheader

.preheader.i1.i.i.i.i.epil.preheader:             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa, %.preheader.i1.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader ], [ %i.gu, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i1.i.i.i.i.preheader ], [ %i.gt, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod183 = trunc i64 %i.fy to i1
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.i.epil = load i32, ptr %i.gv, align 4, !alias.scope !136142, !noalias !136141, !noundef !416
  %i.gw = or i32 %.val.i.i.i.i.i.i.epil, 1
  %i.gx = sext i32 %i.gw to i64
  %i.gy = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gx, i1 true)
  %i.gz = xor i64 %i.gy, 63
  %i.ha = mul nuw nsw i64 %i.gz, 9
  %i.hb = add nuw nsw i64 %i.ha, 73
  %i.hc = lshr i64 %i.hb, 6
  %i.hd = add i64 %i.hc, %.sroa.02.0.i.i.i.i.i.i.epil.init
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa, %.preheader.i1.i.i.i.i.epil.preheader
  %.lcssa171 = phi i64 [ %i.gt, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.unr-lcssa ], [ %i.hd, %.preheader.i1.i.i.i.i.epil.preheader ] ; 2 uses
  %i.he = or i64 %.lcssa171, 1
  %i.hf = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.he, i1 true)
  %i.hg = xor i64 %i.hf, 63
  %i.hh = mul nuw nsw i64 %i.hg, 9
  %i.hi = add nuw nsw i64 %i.hh, 73
  %i.hj = lshr i64 %i.hi, 6
  %i.hk = add i64 %.lcssa171, 1
  %i.hl = add i64 %i.hk, %i.hj
  br label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i

_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.hl, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRljjNCNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3q_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !136139, !noalias !136140, !noundef !416 ; 3 uses
  %i.ho = icmp eq i64 %i.hn, 0                    ; 2 uses
  br i1 %i.ho, label %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i
  %i.hp = or i64 %i.hn, 1
  %i.hq = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hp, i1 true)
  %i.hr = xor i64 %i.hq, 63
  %i.hs = mul nuw nsw i64 %i.hr, 9
  %i.ht = add nuw nsw i64 %i.hs, 73
  %i.hu = lshr i64 %i.ht, 6
  %i.hv = add nuw nsw i64 %i.hu, 1
  br label %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i

_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i: ; preds = %bb.ad, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.hv, %bb.ad ], [ 0, %_RNvNtNtCskAO0uQb8M5a_5prost8encoding5int3218encoded_len_packed.exit.i.i.i.i ]
  %i.hw = add i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.fh
  %i.hx = add i64 %i.hw, %.sroa.0.0.i.i.i.i.i
  %i.hy = add i64 %i.hx, %.sroa.0.0.i.i.i.i
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.hy, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc9.i:                                        ; preds = %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i
  %.idx.i.i.i.i = mul nuw nsw i64 %i.fh, 176
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx.i.i.i.i
  br i1 %i.fi, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc9.i, %.noexc10.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ia, %.noexc10.i ], [ %i.ff, %.noexc9.i ] ; 2 uses
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.0.07.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !136083

.noexc10.i:                                       ; preds = %.lr.ph.i.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 176 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hz
  br i1 %i.ib, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i, %.noexc9.i
  call void @llvm.experimental.noalias.scope.decl(metadata !136143)
  br i1 %i.fz, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !136144)
  %.pre18.i.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !136145, !noalias !136146 ; 3 uses
  %.pre28.i.i.i.i.i = load i64, ptr %i.a, align 8, !range !419, !alias.scope !136145, !noalias !136146
  call void @llvm.experimental.noalias.scope.decl(metadata !136147), !noalias !136143
  call void @llvm.experimental.noalias.scope.decl(metadata !136148), !noalias !136143
  call void @llvm.experimental.noalias.scope.decl(metadata !136149), !noalias !136143
  call void @llvm.experimental.noalias.scope.decl(metadata !136150), !noalias !136143
  call void @llvm.experimental.noalias.scope.decl(metadata !136151), !noalias !136143
  %i.ic = icmp eq i64 %.pre28.i.i.i.i.i, %.pre18.i.i.i.i.i
  br i1 %i.ic, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i: ; preds = %bb.ae
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc11.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i
  %i.id = load i64, ptr %i.cr, align 8, !alias.scope !136152, !noalias !136153, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.noexc11.i, %bb.ae
  %.sink1.i6.i.i.i.i.i = phi i64 [ %i.id, %.noexc11.i ], [ %.pre18.i.i.i.i.i, %bb.ae ] ; 3 uses
  %i.ie = icmp sgt i64 %.sink1.i6.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ie), !noalias !136143
  %i.if = load ptr, ptr %i.cs, align 8, !alias.scope !136152, !noalias !136153, !nonnull !416, !noundef !416
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sink1.i6.i.i.i.i.i
  store i8 18, ptr %i.ig, align 1, !noalias !136154
  %i.ih = add nuw i64 %.sink1.i6.i.i.i.i.i, 1
  store i64 %i.ih, ptr %i.cr, align 8, !alias.scope !136152, !noalias !136153
  %xtraiter187 = and i64 %i.fy, 1
  %i.ii = icmp eq i64 %i.fy, 1
  br i1 %i.ii, label %.epil.preheader186, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %unroll_iter191 = and i64 %i.fy, -2
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new
  %.sroa.04.0.i.i.i1.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new ], [ %i.jc, %bb.af ] ; 3 uses
  %.sroa.02.0.i.i.i2.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new ], [ %i.jb, %bb.af ]
  %niter192 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.new ], [ %niter192.next.1, %bb.af ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.sroa.04.0.i.i.i1.i.i.i
  %.val.i.i.i3.i.i.i = load i32, ptr %i.ij, align 4, !alias.scope !136143, !noalias !136155, !noundef !416
  %i.ik = or i32 %.val.i.i.i3.i.i.i, 1
  %i.il = sext i32 %i.ik to i64
  %i.im = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.il, i1 true)
  %i.in = xor i64 %i.im, 63
  %i.io = mul nuw nsw i64 %i.in, 9
  %i.ip = add nuw nsw i64 %i.io, 73
  %i.iq = lshr i64 %i.ip, 6
  %i.ir = add i64 %i.iq, %.sroa.02.0.i.i.i2.i.i.i
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.sroa.04.0.i.i.i1.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %.val.i.i.i3.i.i.i.1 = load i32, ptr %i.it, align 4, !alias.scope !136143, !noalias !136155, !noundef !416
  %i.iu = or i32 %.val.i.i.i3.i.i.i.1, 1
  %i.iv = sext i32 %i.iu to i64
  %i.iw = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.iv, i1 true)
  %i.ix = xor i64 %i.iw, 63
  %i.iy = mul nuw nsw i64 %i.ix, 9
  %i.iz = add nuw nsw i64 %i.iy, 73
  %i.ja = lshr i64 %i.iz, 6
  %i.jb = add i64 %i.ja, %i.ir                    ; 3 uses
  %i.jc = add nuw nsw i64 %.sroa.04.0.i.i.i1.i.i.i, 2 ; 2 uses
  %niter192.next.1 = add nuw i64 %niter192, 2     ; 2 uses
  %niter192.ncmp.1 = icmp eq i64 %niter192.next.1, %unroll_iter191
  br i1 %niter192.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, label %bb.af

.lr.ph.preheader.i.i.i.i.i.unr-lcssa:             ; preds = %bb.af
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.preheader.i.i.i.i.i, label %.epil.preheader186

.epil.preheader186:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.sroa.04.0.i.i.i1.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ %i.jc, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i2.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ %i.jb, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod190 = trunc i64 %i.fy to i1
  call void @llvm.assume(i1 %lcmp.mod190)
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %.sroa.04.0.i.i.i1.i.i.i.epil.init
  %.val.i.i.i3.i.i.i.epil = load i32, ptr %i.jd, align 4, !alias.scope !136143, !noalias !136155, !noundef !416
  %i.je = or i32 %.val.i.i.i3.i.i.i.epil, 1
  %i.jf = sext i32 %i.je to i64
  %i.jg = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jf, i1 true)
  %i.jh = xor i64 %i.jg, 63
  %i.ji = mul nuw nsw i64 %i.jh, 9
  %i.jj = add nuw nsw i64 %i.ji, 73
  %i.jk = lshr i64 %i.jj, 6
  %i.jl = add i64 %i.jk, %.sroa.02.0.i.i.i2.i.i.i.epil.init
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %.epil.preheader186
  %.lcssa170 = phi i64 [ %i.jb, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ], [ %i.jl, %.epil.preheader186 ]
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.fy, 2
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx.i.i.i.i.i
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.lcssa170, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.lr.ph.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i, %.noexc13.i
  %.sroa.0.02.i.i.i.i.i = phi ptr [ %i.jp, %.noexc13.i ], [ %i.fw, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.jn = load i32, ptr %.sroa.0.02.i.i.i.i.i, align 4, !alias.scope !136143, !noalias !136155, !noundef !416
  %i.jo = sext i32 %i.jn to i64
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.jo, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.i, !noalias !136083

.noexc13.i:                                       ; preds = %.lr.ph.i.i.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i, i64 4 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.jm
  br i1 %i.jq, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %.noexc13.i, %._crit_edge.i.i.i.i
  br i1 %i.ho, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !136156)
  %.pre18.i2.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !136157, !noalias !136158 ; 3 uses
  %.pre28.i3.i.i.i.i = load i64, ptr %i.a, align 8, !range !419, !alias.scope !136157, !noalias !136158
  call void @llvm.experimental.noalias.scope.decl(metadata !136159)
  call void @llvm.experimental.noalias.scope.decl(metadata !136160)
  call void @llvm.experimental.noalias.scope.decl(metadata !136161)
  call void @llvm.experimental.noalias.scope.decl(metadata !136162)
  call void @llvm.experimental.noalias.scope.decl(metadata !136163)
  %i.jr = icmp eq i64 %.pre28.i3.i.i.i.i, %.pre18.i2.i.i.i.i
  br i1 %i.jr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i: ; preds = %bb.ag
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.pre18.i2.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.noexc14.i:                                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i
  %i.js = load i64, ptr %i.cr, align 8, !alias.scope !136164, !noalias !136165, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i: ; preds = %.noexc14.i, %bb.ag
  %.sink1.i6.i4.i.i.i.i = phi i64 [ %i.js, %.noexc14.i ], [ %.pre18.i2.i.i.i.i, %bb.ag ] ; 3 uses
  %i.jt = icmp sgt i64 %.sink1.i6.i4.i.i.i.i, -1
  call void @llvm.assume(i1 %i.jt)
  %i.ju = load ptr, ptr %i.cs, align 8, !alias.scope !136164, !noalias !136165, !nonnull !416, !noundef !416
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.sink1.i6.i4.i.i.i.i
  store i8 24, ptr %i.jv, align 1, !noalias !136166
  %i.jw = add nuw i64 %.sink1.i6.i4.i.i.i.i, 1
  store i64 %i.jw, ptr %i.cr, align 8, !alias.scope !136164, !noalias !136165
  invoke fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %i.hn, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !136083

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit22.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.lr.ph.i.i.i
  %lpad.loopexit25.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i, %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i, %.lr.ph.preheader.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i
  %i.jx = phi ptr [ %i.bz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i ], [ %i.ck, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.cs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i ], [ %i.cs, %.lr.ph.preheader.i.i.i ], [ %i.cs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i10.i.i ], [ %i.cs, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit11.i.i ], [ %i.cs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i ], [ %i.cs, %_RNvXs1_NtNtNtCsaSXGKSfiU2E_10lance_file6format2pb8metadataNtB5_18StatisticsMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i ], [ %i.cs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i.i.i ], [ %i.cs, %.lr.ph.preheader.i.i.i.i.i ], [ %i.cs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i5.i.i.i.i ], [ %i.cs, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %i.jy = phi ptr [ %i.cs, %.loopexit.i ], [ %i.cs, %.loopexit.split-lp.loopexit.i ], [ %i.cs, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %i.jx, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit22.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit25.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136167)
  %.val.i.i31 = load i64, ptr %i.a, align 8, !range !419, !alias.scope !136167, !noalias !136083, !noundef !416 ; 2 uses
  %i.jz = icmp eq i64 %.val.i.i31, 0
  br i1 %i.jz, label %.body34, label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp.i
  %.val1.i.i32 = load ptr, ptr %i.jy, align 8, !alias.scope !136167, !noalias !136083, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i32, i64 noundef %.val.i.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !136168
  br label %.body34

bb.ai:                                            ; preds = %bb.y
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.aj:                                            ; preds = %.noexc7.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit6.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !136082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136083
  %.val27 = load ptr, ptr %i.bp, align 8, !nonnull !416, !noundef !416
  %i.kb = getelementptr i8, ptr %1, i64 56
  %.val28 = load i64, ptr %i.kb, align 8, !noundef !416 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.bs, ptr %i.kc, align 8
  %.sroa.871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %.val27, ptr %.sroa.871.0..sroa_idx, align 8
  %.sroa.972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %.val28, ptr %.sroa.972.0..sroa_idx, align 8
  br label %bb.an

bb.ak:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aw
  %.pn13 = phi { ptr, i32 } [ %i.lg, %bb.aw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !136169)
  %.val.i36 = load i64, ptr %i.kd, align 8, !range !419, !alias.scope !136169, !noundef !416 ; 2 uses
  %i.ke = icmp eq i64 %.val.i36, 0
  br i1 %i.ke, label %.body34, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1.i = load ptr, ptr %i.kf, align 8, !alias.scope !136169, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !136169
  br label %.body34

bb.am:                                            ; preds = %.loopexit93
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit:                                        ; preds = %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.an:                                            ; preds = %._crit_edge121, %bb.aj
  %.pre.i37 = phi i64 [ %.pre.i37.pre, %._crit_edge121 ], [ %.val28, %bb.aj ]
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.an
  %i.kk = phi i64 [ %i.ky, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh8split_atCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %.pre.i37, %bb.an ] ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.km = load ptr, ptr %i.ki, align 8, !noalias !136076, !nonnull !416, !noundef !416
  %i.kn = load ptr, ptr %i.kh, align 8, !noalias !136076, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %.val.i38 = load ptr, ptr %i.kn, align 8, !nonnull !416, !noundef !416
  %i.ko = getelementptr i8, ptr %i.kn, i64 8
  %.val9.i = load ptr, ptr %i.ko, align 8, !nonnull !416, !align !417, !noundef !416
  %i.kp = getelementptr inbounds nuw i8, ptr %.val9.i, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !invariant.load !416, !noalias !136170, !nonnull !416
  %i.kr = invoke { i64, ptr } %i.kq(ptr noundef nonnull %.val.i38, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.km, i64 noundef range(i64 1, -9223372036854775808) %i.kk)
          to label %.noexc42 unwind label %.loopexit, !inline_history !335 ; 2 uses

.noexc42:                                         ; preds = %bb.ap
  %i.ks = extractvalue { i64, ptr } %i.kr, 0
  %i.kt = extractvalue { i64, ptr } %i.kr, 1      ; 4 uses
  switch i64 %i.ks, label %bb.aq [
    i64 -1, label %bb.at
    i64 0, label %bb.ar
  ]

bb.aq:                                            ; preds = %.noexc42
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  br label %.loopexit92

bb.ar:                                            ; preds = %.noexc42
  %i.ku = ptrtoint ptr %i.kt to i64               ; 3 uses
  %i.kv = load ptr, ptr %i.ki, align 8, !noalias !136076, !nonnull !416, !noundef !416
  %i.kw = load i64, ptr %i.kj, align 8, !noalias !136076, !noundef !416 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ki, align 8, !noalias !136076
end_hunk_8
begin_hunk_9_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob20create_joined_stream0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.082.0.copyload.i.i, align 16, !noalias !158511
  %i.aaa = icmp eq i64 %.sroa.583.0.copyload.i.i, 0 ; 4 uses
  br i1 %i.aaa, label %bb.gh, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.gg
  %i.aab = mul i64 %.sroa.583.0.copyload.i.i, 248 ; 2 uses
  %i.aac = add i64 %i.aab, 248
  %i.aad = icmp ult i64 %i.aac, -15
  call void @llvm.assume(i1 %i.aad)
  %i.aae = and i64 %i.aab, -16                    ; 2 uses
  %i.aaf = add i64 %i.aae, 256                    ; 2 uses
  %i.aag = add i64 %.sroa.583.0.copyload.i.i, 17
  %i.aah = add i64 %i.aag, %i.aaf                 ; 3 uses
  %i.aai = icmp uge i64 %i.aah, %i.aaf
  call void @llvm.assume(i1 %i.aai)
  %i.aaj = icmp ult i64 %i.aah, 9223372036854775793
  call void @llvm.assume(i1 %i.aaj)
  %i.aak = sub i64 -256, %i.aae
  %i.aal = getelementptr inbounds i8, ptr %.sroa.082.0.copyload.i.i, i64 %i.aak
  br label %bb.gh

bb.gh:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.gg
  %.sroa.511.0.i.i.i.i.i = phi ptr [ undef, %bb.gg ], [ %i.aal, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.410.0.i.i.i.i.i = phi i64 [ undef, %bb.gg ], [ %i.aah, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 7 uses
  %.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.gg ], [ 16, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ] ; 4 uses
  %i.aam = getelementptr i8, ptr %.sroa.082.0.copyload.i.i, i64 %.sroa.583.0.copyload.i.i
  %i.aan = getelementptr i8, ptr %i.aam, i64 1
  %i.aao = ptrtoint ptr %i.aan to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !158512
  %i.aap = icmp eq i64 %.sroa.685.0.copyload.i.i, 0
  br i1 %i.aap, label %.thread.i.i.i.i.i.i, label %bb.gi

.thread.i.i.i.i.i.i:                              ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !158512
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

bb.gi:                                            ; preds = %bb.gh
  %i.aaq = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.aar = bitcast <16 x i1> %i.aaq to i16        ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.082.0.copyload.i.i, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aar, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.gi, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aat = phi ptr [ %i.aax, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aas, %bb.gi ] ; 2 uses
  %i.aau = phi ptr [ %i.aaw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.082.0.copyload.i.i, %bb.gi ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aat, align 16, !noalias !158513
  %i.aav = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aaw = getelementptr inbounds i8, ptr %i.aau, i64 -3968 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aat, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aav to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.gi
  %.sroa.19.0.i.i.i.i = phi ptr [ %i.aas, %bb.gi ], [ %i.aax, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ %.sroa.082.0.copyload.i.i, %bb.gi ], [ %i.aaw, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aar, %bb.gi ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aay = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.aaz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aba = zext nneg i16 %i.aaz to i64
  %i.abb = and i16 %i.aay, %.lcssa.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.abc = sub nsw i64 0, %i.aba
  %i.abd = getelementptr inbounds [248 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.abc ; 2 uses
  %i.abe = add i64 %.sroa.685.0.copyload.i.i, -1  ; 7 uses
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.abd, i64 -240
  %.sroa.4.0.copyload3.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i, align 8, !noalias !158514 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.gj, label %bb.gm

bb.gj:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !158512
  %i.abf = icmp eq i64 %i.abe, 0
  br i1 %i.abf, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.gj, %.noexc29.i.i
  %.sroa.19.3.i.i.i.i = phi ptr [ %.sroa.19.4.i.i.i.i, %.noexc29.i.i ], [ %.sroa.19.0.i.i.i.i, %bb.gj ] ; 2 uses
  %.sroa.10.3.i.i.i.i = phi ptr [ %.sroa.10.4.i.i.i.i, %.noexc29.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.gj ] ; 2 uses
  %i.abg = phi i16 [ %i.abu, %.noexc29.i.i ], [ %i.abb, %bb.gj ] ; 2 uses
  %i.abh = phi i64 [ %i.abs, %.noexc29.i.i ], [ %i.abe, %bb.gj ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.abg, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abi = phi ptr [ %i.abm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.abj = phi ptr [ %i.abl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.abi, align 16, !noalias !158515
  %i.abk = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.abl = getelementptr inbounds i8, ptr %i.abj, i64 -3968 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abi, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.abk to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.19.4.i.i.i.i = phi ptr [ %.sroa.19.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.4.i.i.i.i = phi ptr [ %.sroa.10.3.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.abg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.abn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.abo = zext nneg i16 %i.abn to i64
  %i.abp = sub nsw i64 0, %i.abo
  %i.abq = getelementptr inbounds [248 x i8], ptr %.sroa.10.4.i.i.i.i, i64 %i.abp
  %i.abr = getelementptr inbounds i8, ptr %i.abq, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.abr)
          to label %.noexc29.i.i unwind label %bb.hc, !noalias !158492

.noexc29.i.i:                                     ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abs = add i64 %i.abh, -1                     ; 2 uses
  %i.abt = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.abu = and i16 %i.abt, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.abs, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc29.i.i, %bb.gj, %.thread.i.i.i.i.i.i
  %i.abv = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond.i.i.i197.i = or i1 %i.aaa, %i.abv
  br i1 %or.cond.i.i.i197.i, label %.thread477.i, label %bb.gk

bb.gk:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !158516
  br label %.thread477.i

bb.gl:                                            ; preds = %bb.gp
  %i.abw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.bh) #73
          to label %bb.ha unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !158517

bb.gm:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.abd, i64 -232
  %.sroa.6.0..sroa_idx9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !158512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !158517
  store i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i, ptr %i.bh, align 8, !noalias !158512
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.685.0.copyload.i.i, i64 4) ; 3 uses
  %i.abx = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 240  ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.685.0.copyload.i.i, 38430716820228232
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.gp, label %bb.gn, !prof !441

bb.gn:                                            ; preds = %bb.gm
  %i.aby = icmp eq i64 %i.abx, 0
  br i1 %i.aby, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !158518
  %i.abz = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.abx, i64 noundef range(i64 1, 17) 8) #68, !noalias !158518 ; 2 uses
  %i.aca = icmp eq ptr %i.abz, null
  br i1 %i.aca, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go, %bb.gm
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.go ], [ 0, %bb.gm ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.abx) #72
          to label %.noexc.i.i.i.i.i.i unwind label %bb.gl, !noalias !158517

.noexc.i.i.i.i.i.i:                               ; preds = %bb.gp
  unreachable

bb.gq:                                            ; preds = %bb.go, %bb.gn
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.gn ], [ %i.abz, %bb.go ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.gn ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.go ] ; 2 uses
  %i.acb = icmp ule i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.acb)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.10.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(240) %i.bh, i64 240, i1 false), !noalias !158517
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.bi, align 8, !noalias !158512
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !158512
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !158512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !158512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !158512
  store i64 %.sink.i.i.i.i.i.i, ptr %i.bg, align 8, !noalias !158519
  %.sroa.6.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %.sroa.410.0.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx3.i.i.i.i, align 8, !noalias !158519
  %.sroa.8.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %.sroa.511.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx6.i.i.i.i, align 8, !noalias !158519
  %.sroa.10.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 4 uses
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !noalias !158519
  %.sroa.19.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 4 uses
  store ptr %.sroa.19.0.i.i.i.i, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !noalias !158519
  %.sroa.25.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.aao, ptr %.sroa.25.0..sroa_idx13.i.i.i.i, align 8, !noalias !158519
  %.sroa.2515.0..sroa_idx16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  store i16 %i.abb, ptr %.sroa.2515.0..sroa_idx16.i.i.i.i, align 8, !noalias !158519
  %.sroa.2719.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  store i64 %i.abe, ptr %.sroa.2719.0..sroa_idx20.i.i.i.i, align 8, !noalias !158519
  call void @llvm.experimental.noalias.scope.decl(metadata !158520)
  call void @llvm.experimental.noalias.scope.decl(metadata !158521)
  call void @llvm.experimental.noalias.scope.decl(metadata !158522)
  call void @llvm.experimental.noalias.scope.decl(metadata !158523)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.acc = icmp eq i64 %i.abe, 0
  br i1 %i.acc, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.gq
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i196.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %bb.gr

bb.gr:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.acd = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.adm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ace = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ado, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %.lcssa821.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.19.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa820.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa918.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa917.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.acf = phi i16 [ %i.abb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aco, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val1213.i.i.i.i.i.i.i.i = phi i64 [ %i.abe, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.acr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !158524)
  call void @llvm.experimental.noalias.scope.decl(metadata !158525)
  call void @llvm.experimental.noalias.scope.decl(metadata !158526)
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.acf, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ack, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !158527, !noalias !158528
  store ptr %i.acj, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !158527, !noalias !158528
  br label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.acg = phi ptr [ %i.ack, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa821.i.i.i.i.i.i.i.i, %bb.gr ] ; 2 uses
  %i.ach = phi ptr [ %i.acj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa918.i.i.i.i.i.i.i.i, %bb.gr ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.acg, align 16, !noalias !158529
  %i.aci = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.acj = getelementptr inbounds i8, ptr %i.ach, i64 -3968 ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acg, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.aci to i16 ; 2 uses
  %.not.i.i.i.i.i7.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.gr
  %.lcssa820.i.i.i.i.i.i.i.i = phi ptr [ %i.ack, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa821.i.i.i.i.i.i.i.i, %bb.gr ]
  %.lcssa917.i.i.i.i.i.i.i.i = phi ptr [ %i.acj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa918.i.i.i.i.i.i.i.i, %bb.gr ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acf, %bb.gr ] ; 3 uses
  %i.acl = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.acm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.acn = zext nneg i16 %i.acm to i64
  %i.aco = and i16 %i.acl, %.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.acp = sub nsw i64 0, %i.acn
  %i.acq = getelementptr inbounds [248 x i8], ptr %.lcssa917.i.i.i.i.i.i.i.i, i64 %i.acp ; 2 uses
  %i.acr = add i64 %.val1213.i.i.i.i.i.i.i.i, -1  ; 6 uses
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.acq, i64 -240
  %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !158530 ; 2 uses
  %.not.i.i.i5.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i5.i.i.i.i.i.i, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, label %bb.gt

bb.gs:                                            ; preds = %bb.gw
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bg) #73
          to label %.body.i.i.i.i.i.i unwind label %bb.gy, !noalias !158531

bb.gt:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.acq, i64 -232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx4.i.i.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !158532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !158533
  store i64 %.sroa.4.0.copyload3.i.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !noalias !158533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i196.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.6.i.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !158533
  %i.acs = load i64, ptr %i.bi, align 8, !range !419, !alias.scope !158534, !noalias !158535, !noundef !416
  %i.act = icmp eq i64 %i.ace, %i.acs
  br i1 %i.act, label %bb.gx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, %bb.gq
  %.sroa.7.0.copyload74179.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %bb.gq ], [ %i.adm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  br label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i: ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !158536)
  call void @llvm.experimental.noalias.scope.decl(metadata !158537)
  call void @llvm.experimental.noalias.scope.decl(metadata !158538)
  call void @llvm.experimental.noalias.scope.decl(metadata !158539)
  call void @llvm.experimental.noalias.scope.decl(metadata !158540)
  call void @llvm.experimental.noalias.scope.decl(metadata !158541)
  %i.acu = icmp eq i64 %i.acr, 0
  br i1 %i.acu, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, %.noexc8.i.i.i.i.i.i
  %i.acv = phi i16 [ %i.adk, %.noexc8.i.i.i.i.i.i ], [ %i.aco, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.acw = phi i64 [ %i.adi, %.noexc8.i.i.i.i.i.i ], [ %i.acr, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !158542)
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.acv, 0
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !158543, !noalias !158544 ; 2 uses
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.promoted14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !158543, !noalias !158544
  br label %bb.gu

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.gu
  store ptr %i.adb, ptr %.sroa.19.0..sroa_idx11.i.i.i.i, align 8, !alias.scope !158543, !noalias !158544
  store ptr %i.ada, ptr %.sroa.10.0..sroa_idx9.i.i.i.i, align 8, !alias.scope !158543, !noalias !158544
  br label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gu:                                            ; preds = %bb.gu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acx = phi ptr [ %.promoted14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adb, %bb.gu ] ; 2 uses
  %i.acy = phi ptr [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ada, %bb.gu ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.acx, align 16, !noalias !158545
  %i.acz = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ada = getelementptr inbounds i8, ptr %i.acy, i64 -3968 ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.acz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gu, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adc = phi ptr [ %i.ada, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.acv, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.add = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ade = zext nneg i16 %i.add to i64
  %i.adf = sub nsw i64 0, %i.ade
  %i.adg = getelementptr inbounds [248 x i8], ptr %i.adc, i64 %i.adf
  %i.adh = getelementptr inbounds i8, ptr %i.adg, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.adh)
          to label %.noexc8.i.i.i.i.i.i unwind label %bb.gz, !noalias !158517

.noexc8.i.i.i.i.i.i:                              ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adi = add i64 %i.acw, -1                     ; 2 uses
  %i.adj = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.adk = and i16 %i.adj, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.adi, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i
  %.sroa.975.0.copyload77.i.i = phi i64 [ %.sroa.685.0.copyload.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i ], [ %i.ace, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ], [ %i.ace, %.noexc8.i.i.i.i.i.i ]
  %.sroa.7.0.copyload74.i.i = phi ptr [ %.sroa.7.0.copyload74179.i.i, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i ], [ %i.acd, %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i.i ], [ %i.acd, %.noexc8.i.i.i.i.i.i ]
  %i.adl = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond22.i.i.i.i = or i1 %i.aaa, %i.adl
  br i1 %or.cond22.i.i.i.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !158546
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i, %bb.gt
  %i.adm = phi ptr [ %.pre.i.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i ], [ %i.acd, %bb.gt ] ; 3 uses
  %i.adn = getelementptr inbounds nuw [240 x i8], ptr %i.adm, i64 %i.ace
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.adn, ptr noundef nonnull align 8 dereferenceable(240) %i.bf, i64 240, i1 false), !noalias !158547
  %i.ado = add nuw nsw i64 %i.ace, 1              ; 2 uses
  store i64 %i.ado, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !158534, !noalias !158535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !158533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  %i.adp = icmp eq i64 %i.acr, 0
  br i1 %i.adp, label %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.thread.i.i.i.i.i.i.i.i, label %bb.gr

bb.gw:                                            ; preds = %bb.gx
  %i.adq = landingpad { ptr, i32 }
          cleanup
  store i16 %i.aco, ptr %.sroa.2515.0..sroa_idx16.i.i.i.i, align 8, !alias.scope !158527, !noalias !158528
  store i64 %i.acr, ptr %.sroa.2719.0..sroa_idx20.i.i.i.i, align 8, !alias.scope !158548, !noalias !158528
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.bf) #73
          to label %bb.gs unwind label %bb.gy, !noalias !158547

bb.gx:                                            ; preds = %bb.gt
  %i.adr = call i64 @llvm.uadd.sat.i64(i64 %i.acr, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef %i.ace, i64 noundef %i.adr, i64 noundef 8, i64 noundef 240)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i unwind label %bb.gw, !noalias !158549

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i: ; preds = %bb.gx
  %.pre.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !158534, !noalias !158535
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gw, %bb.gs
  %i.ads = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !158547
  unreachable

bb.gz:                                            ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.gz, %bb.gs
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.adt, %bb.gz ], [ %i.adq, %bb.gs ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #73
          to label %.body30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !158517

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.gv, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !158512
  %.sroa.071.0.copyload72.i.i = load i64, ptr %i.bi, align 8, !noalias !158550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !158512
  br label %.thread477.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.gl
  %lpad.loopexit.split-lp369 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !158517
  unreachable

bb.ha:                                            ; preds = %bb.gl
  %i.adu = icmp eq i64 %i.abe, 0
  br i1 %i.adu, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ha, %.noexc.i.i.i.i.i
  %.sroa.19.1.i.i.i.i = phi ptr [ %.sroa.19.2.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.sroa.19.0.i.i.i.i, %bb.ha ] ; 2 uses
  %.sroa.10.1.i.i.i.i = phi ptr [ %.sroa.10.2.i.i.i.i, %.noexc.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i, %bb.ha ] ; 2 uses
  %i.adv = phi i16 [ %i.aej, %.noexc.i.i.i.i.i ], [ %i.abb, %bb.ha ] ; 2 uses
  %i.adw = phi i64 [ %i.aeh, %.noexc.i.i.i.i.i ], [ %i.abe, %bb.ha ]
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.adv, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adx = phi ptr [ %i.aeb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ady = phi ptr [ %i.aea, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adx, align 16, !noalias !158551
  %i.adz = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aea = getelementptr inbounds i8, ptr %i.ady, i64 -3968 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.adz to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.19.2.i.i.i.i = phi ptr [ %.sroa.19.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aeb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.2.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aea, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.adv, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aed = zext nneg i16 %i.aec to i64
  %i.aee = sub nsw i64 0, %i.aed
  %i.aef = getelementptr inbounds [248 x i8], ptr %.sroa.10.2.i.i.i.i, i64 %i.aee
  %i.aeg = getelementptr inbounds i8, ptr %i.aef, i64 -240
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(240) %i.aeg)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !158552

.noexc.i.i.i.i.i:                                 ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aeh = add i64 %i.adw, -1                     ; 2 uses
  %i.aei = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aej = and i16 %i.aei, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %.old3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aeh, 0
  br i1 %.old3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.ha
  %i.aek = icmp eq i64 %.sroa.410.0.i.i.i.i.i, 0
  %or.cond23.i.i.i.i = or i1 %i.aaa, %i.aek
  br i1 %or.cond23.i.i.i.i, label %.body30.i.i, label %bb.hb

bb.hb:                                            ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.511.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.511.0.i.i.i.i.i, i64 noundef %.sroa.410.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i.i) #68, !noalias !158553
  br label %.body30.i.i

bb.hc:                                            ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE9next_implKb0_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ael = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i.i

.thread477.i:                                     ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.gk, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.975.1.i.i = phi i64 [ 0, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.gk ], [ %.sroa.975.0.copyload77.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.7.1.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 8 to ptr), %bb.gk ], [ %.sroa.7.0.copyload74.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %.sroa.071.1.i.i = phi i64 [ 0, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.gk ], [ %.sroa.071.0.copyload72.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEINtB2_10SpecExtendBR_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map10IntoValuesyBR_EE11spec_extendCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  store i8 0, ptr %i.zz, align 8, !noalias !158488
  br label %bb.hu

.body30.i.i:                                      ; preds = %bb.hd, %bb.hc, %bb.hb, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.gd, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.fw, %bb.fr
  %i.aem = phi ptr [ %i.ug, %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTyNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEE13drop_elementsCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ug, %bb.hb ], [ %i.ug, %bb.hc ], [ %i.ug, %.body.i.i.i.i.i.i ], [ %i.uo, %bb.fw ], [ %i.uo, %bb.gd ], [ %i.uo, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.uo, %bb.fr ], [ %i.ug, %bb.hd ] ; 2 uses
end_hunk_9
begin_hunk_10_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob20create_joined_stream0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a

bb.pg:                                            ; preds = %bb.sa, %bb.pf
  %i.bac = phi ptr [ %i.bgq, %bb.sa ], [ %i.auz, %bb.pf ]
  %i.bad = phi ptr [ %i.bgr, %bb.sa ], [ %i.ava, %bb.pf ]
  %i.bae = getelementptr inbounds nuw i8, ptr %1, i64 292
  store i8 0, ptr %i.bae, align 4, !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !158680
  br label %bb.pn

bb.ph:                                            ; preds = %bb.ti, %bb.tg, %bb.tf, %bb.te, %bb.td, %bb.sd, %bb.sc, %bb.sb, %bb.ro, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsfR8GmIBoxTX_21lance_namespace_impls.exit167.i, %bb.rl
  %i.baf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !158681
  unreachable

.critedge.i:                                      ; preds = %bb.oz
  %i.bag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !158680
  br label %bb.pi

bb.pi:                                            ; preds = %.critedge.i, %bb.pe
  %.pn19.i = phi { ptr, i32 } [ %i.bab, %bb.pe ], [ %i.bag, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8216.i)
  br label %bb.pj

bb.pj:                                            ; preds = %bb.sb, %bb.pi, %bb.pd
  %i.bah = phi ptr [ %i.auz, %bb.pi ], [ %i.bgq, %bb.sb ], [ %i.bgq, %bb.pd ]
  %i.bai = phi ptr [ %i.ava, %bb.pi ], [ %i.bgr, %bb.sb ], [ %i.bgr, %bb.pd ]
  %.pn19.pn.i = phi { ptr, i32 } [ %.pn19.i, %bb.pi ], [ %.pn17.i, %bb.sb ], [ %.pn17.i, %bb.pd ]
  %i.baj = getelementptr inbounds nuw i8, ptr %1, i64 292
  store i8 0, ptr %i.baj, align 4, !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !158680
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.oy
  %i.bak = phi ptr [ %i.bah, %bb.pj ], [ %i.auz, %bb.oy ] ; 2 uses
  %i.bal = phi ptr [ %i.bai, %bb.pj ], [ %i.ava, %bb.oy ] ; 2 uses
  %.pn19.pn.pn.i = phi { ptr, i32 } [ %.pn19.pn.i, %bb.pj ], [ %i.azt, %bb.oy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !158680
  %i.bam = getelementptr inbounds nuw i8, ptr %1, i64 293
  %i.ban = load i8, ptr %i.bam, align 1, !range !428, !noalias !158680, !noundef !416
  %i.bao = trunc nuw i8 %i.ban to i1
  br i1 %i.bao, label %bb.sc, label %bb.pp

bb.pl:                                            ; preds = %bb.ow
  %i.bap = landingpad { ptr, i32 }
          cleanup
  br label %bb.po

bb.pm:                                            ; preds = %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !158725
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8207.i)
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pg
  %i.baq = phi ptr [ %i.auz, %bb.pm ], [ %i.bac, %bb.pg ]
  %i.bar = phi ptr [ %i.ava, %bb.pm ], [ %i.bad, %bb.pg ]
  %i.bas = getelementptr inbounds nuw i8, ptr %1, i64 293
  store i8 0, ptr %i.bas, align 1, !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !158680
  br label %bb.rc

bb.po:                                            ; preds = %bb.pl, %bb.ou
  %.pn23.i = phi { ptr, i32 } [ %i.bap, %bb.pl ], [ %i.azp, %bb.ou ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8207.i)
  br label %bb.pp

bb.pp:                                            ; preds = %bb.sc, %bb.po, %bb.pk
  %i.bat = phi ptr [ %i.auz, %bb.po ], [ %i.bak, %bb.sc ], [ %i.bak, %bb.pk ]
  %i.bau = phi ptr [ %i.ava, %bb.po ], [ %i.bal, %bb.sc ], [ %i.bal, %bb.pk ]
  %.pn23.pn.i = phi { ptr, i32 } [ %.pn23.i, %bb.po ], [ %.pn19.pn.pn.i, %bb.sc ], [ %.pn19.pn.pn.i, %bb.pk ]
  %i.bav = getelementptr inbounds nuw i8, ptr %1, i64 293
  store i8 0, ptr %i.bav, align 1, !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !158680
  br label %bb.re

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i56: ; preds = %bb.oq
  invoke void @_RNvXs2_NtNtCshkPeWWG1flk_5lance10datafusion9dataframeNtNtNtCseMy6uzTzNin_10datafusion9execution7context14SessionContextNtB5_17SessionContextExt10read_lance(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(address) dereferenceable(336) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.avq, ptr noundef nonnull %.val103.i, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.pr unwind label %bb.pq, !noalias !158681

bb.pq:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i56
  %i.baw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !158680
  br label %bb.qz

bb.pr:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7dataset7DatasetENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls.exit.i56
  call void @llvm.experimental.noalias.scope.decl(metadata !158731)
  %i.bax = load i64, ptr %i.aa, align 16, !range !774, !alias.scope !158732, !noalias !158733, !noundef !416 ; 2 uses
  %i.bay = icmp eq i64 %i.bax, -1
  %i.baz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8243.i, ptr noundef nonnull align 8 dereferenceable(40) %i.baz, i64 40, i1 false), !alias.scope !158734, !noalias !158680
  br i1 %i.bay, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !158735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8243.i, i64 40, i1 false), !noalias !158680
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2032)
          to label %bb.qy unwind label %bb.qx, !noalias !158681

bb.pt:                                            ; preds = %bb.pr
  %.sroa.10245.0..sroa_idx246.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.5249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5249.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10245.0..sroa_idx246.i, i64 288, i1 false), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !158680
  %.sroa.4248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4248.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8243.i, i64 40, i1 false), !noalias !158680
  store i8 1, ptr %i.avf, align 1, !noalias !158680
  store i64 %i.bax, ptr %i.ab, align 16, !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8243.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !158680
  %.val106.i = load ptr, ptr %i.avz, align 16, !noalias !158680, !nonnull !416, !noundef !416
  %i.bba = getelementptr inbounds nuw i8, ptr %.val106.i, i64 16
  invoke void @_RNvXs0_NtCsc2V0exE7CWf_11lance_arrow6schemaNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaNtB5_9SchemaExt11field_names(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bba)
          to label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i unwind label %bb.pu, !noalias !158681

bb.pu:                                            ; preds = %bb.pt
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtBG_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit161.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.pt
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val122.i = load ptr, ptr %i.bbc, align 8, !noalias !158680, !nonnull !416, !noundef !416 ; 5 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val123.i57 = load i64, ptr %i.bbd, align 8, !noalias !158680, !noundef !416 ; 8 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.bbf = add nuw nsw i64 %.val123.i57, 2        ; 5 uses
  %i.bbg = shl i64 %i.bbf, 4                      ; 4 uses
  %i.bbh = icmp ugt i64 %.val123.i57, 1152921504606846973
  %.not.i.i.i.i.i.i148.i = icmp ugt i64 %i.bbg, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.bbh, %.not.i.i.i.i.i.i148.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i66, label %bb.pv, !prof !441

bb.pv:                                            ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.bbi = icmp eq i64 %i.bbg, 0
  br i1 %i.bbi, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !158736
  %i.bbj = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bbg, i64 noundef range(i64 1, 17) 8) #68, !noalias !158736 ; 2 uses
  %i.bbk = icmp eq ptr %i.bbj, null
  br i1 %i.bbk, label %.noexc.i.i.i.i.i66, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i66:                               ; preds = %bb.pw, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i149.i = phi i64 [ 8, %bb.pw ], [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i149.i, i64 %i.bbg) #72
          to label %.noexc150.i unwind label %.body152.i67, !noalias !158681

.noexc150.i:                                      ; preds = %.noexc.i.i.i.i.i66
  unreachable

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %bb.pw, %bb.pv
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.pv ], [ %i.bbj, %bb.pw ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.pv ], [ %i.bbf, %bb.pw ] ; 2 uses
  %i.bbl = icmp samesign ule i64 %i.bbf, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bbl)
  %i.bbm = icmp eq i64 %.val123.i57, 0
  br i1 %i.bbm, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %xtraiter409 = and i64 %.val123.i57, 1
  %i.bbn = icmp eq i64 %.val123.i57, 1
  br i1 %i.bbn, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter414 = and i64 %.val123.i57, 1152921504606846974
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %i.bbo = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.bce, %.preheader.i ] ; 4 uses
  %niter415 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter415.next.1, %.preheader.i ]
  %i.bbp = getelementptr inbounds nuw [8 x i8], ptr %.val122.i, i64 %i.bbo
  %.val10.i.i.i.i.i.i.i.i.i.i.i58 = load ptr, ptr %i.bbp, align 8, !noalias !158737, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i58, i64 8
  %i.bbr = load ptr, ptr %i.bbq, align 8, !noalias !158737, !nonnull !416, !noundef !416
  %i.bbs = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i58, i64 16
  %i.bbt = load i64, ptr %i.bbs, align 8, !noalias !158737, !noundef !416
  %i.bbu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.bbo ; 2 uses
  store ptr %i.bbr, ptr %i.bbu, align 8, !noalias !158738
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 8
  store i64 %i.bbt, ptr %i.bbv, align 8, !noalias !158739
  %i.bbw = or disjoint i64 %i.bbo, 1              ; 2 uses
  %i.bbx = getelementptr inbounds nuw [8 x i8], ptr %.val122.i, i64 %i.bbw
  %.val10.i.i.i.i.i.i.i.i.i.i.i58.1 = load ptr, ptr %i.bbx, align 8, !noalias !158737, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i58.1, i64 8
  %i.bbz = load ptr, ptr %i.bby, align 8, !noalias !158737, !nonnull !416, !noundef !416
  %i.bca = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i58.1, i64 16
  %i.bcb = load i64, ptr %i.bca, align 8, !noalias !158737, !noundef !416
  %i.bcc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.bbw ; 2 uses
  store ptr %i.bbz, ptr %i.bcc, align 8, !noalias !158738
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 8
  store i64 %i.bcb, ptr %i.bcd, align 8, !noalias !158739
  %i.bce = add nuw nsw i64 %i.bbo, 2              ; 2 uses
  %niter415.next.1 = add nuw nsw i64 %niter415, 2 ; 2 uses
  %niter415.ncmp.1 = icmp eq i64 %niter415.next.1, %unroll_iter414
  br i1 %niter415.ncmp.1, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod412.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod412.not, label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init411 = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bce, %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod413 = trunc i64 %.val123.i57 to i1
  call void @llvm.assume(i1 %lcmp.mod413)
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %.val122.i, i64 %.epil.init411
  %.val10.i.i.i.i.i.i.i.i.i.i.i58.epil = load ptr, ptr %i.bcf, align 8, !noalias !158737, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i58.epil, i64 8
  %i.bch = load ptr, ptr %i.bcg, align 8, !noalias !158737, !nonnull !416, !noundef !416
  %i.bci = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i58.epil, i64 16
  %i.bcj = load i64, ptr %i.bci, align 8, !noalias !158737, !noundef !416
  %i.bck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.epil.init411 ; 2 uses
  store ptr %i.bch, ptr %i.bck, align 8, !noalias !158738
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 8
  store i64 %i.bcj, ptr %i.bcl, align 8, !noalias !158739
  br label %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.epil.preheader, %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2t_14MergeInsertJob31create_full_table_joined_stream0s1_0EINtNtNtBa_5array4iter8IntoIterReKj2_EENtNtNtB8_6traits8iterator8Iterator9size_hintCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.bcm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.val123.i57 ; 4 uses
  store ptr @132, ptr %i.bcm, align 8, !noalias !158740
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 8
  store i64 6, ptr %i.bcn, align 8, !noalias !158741
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcm, i64 16
  store ptr @134, ptr %i.bco, align 8, !noalias !158740
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcm, i64 24
  store i64 8, ptr %i.bcp, align 8, !noalias !158741
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.bbe, align 8, !noalias !158742
  %.sroa.4333.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4333.0..sroa_idx.i, align 16, !noalias !158742
  %.sroa.5334.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  store i64 %i.bbf, ptr %.sroa.5334.0..sroa_idx.i, align 8, !noalias !158742
  %.val120.i59 = load i64, ptr %i.z, align 8, !noalias !158680 ; 2 uses
  %i.bcq = icmp eq i64 %.val120.i59, 0
  br i1 %i.bcq, label %bb.py, label %bb.px

.body152.i67:                                     ; preds = %.noexc.i.i.i.i.i66
  %i.bcr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val118.i = load i64, ptr %i.z, align 8, !noalias !158680 ; 2 uses
  %i.bcs = icmp eq i64 %.val118.i, 0
  br i1 %i.bcs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecRNtNtBG_6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit161.i, label %bb.qw

bb.px:                                            ; preds = %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %i.bct = shl nuw i64 %.val120.i59, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val122.i, i64 noundef %i.bct, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !158681
  %.val112.pre.i = load ptr, ptr %.sroa.4333.0..sroa_idx.i, align 16, !noalias !158680
  %.val113.pre.i = load i64, ptr %.sroa.5334.0..sroa_idx.i, align 8, !noalias !158680
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.val113.i60 = phi i64 [ %i.bbf, %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %.val113.pre.i, %bb.px ]
  %.val112.i61 = phi ptr [ %.sroa.10.0.i.i.i.i.i.i, %_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs40k4W9msRzi_5alloc6string6StringENCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2b_14MergeInsertJob31create_full_table_joined_stream0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB42_8for_each4callReNCINvMsj_NtB1s_3vecINtB5h_3VecB56_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtNtBc_5array4iter8IntoIterB56_Kj2_EEE0E0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ], [ %.val112.pre.i, %bb.px ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8259.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !158680
  store i8 0, ptr %i.avf, align 1, !noalias !158680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.w, ptr noundef nonnull align 16 dereferenceable(336) %i.ab, i64 336, i1 false), !noalias !158680
  invoke void @_RNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtB5_9DataFrame14select_columns(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(address) dereferenceable(336) %i.x, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val112.i61, i64 noundef %.val113.i60)
          to label %bb.pz unwind label %bb.qt, !noalias !158681

bb.pz:                                            ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !158680
  call void @llvm.experimental.noalias.scope.decl(metadata !158743)
  %i.bcu = load i64, ptr %i.x, align 16, !range !774, !alias.scope !158744, !noalias !158745, !noundef !416 ; 2 uses
  %i.bcv = icmp eq i64 %i.bcu, -1
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8259.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bcw, i64 40, i1 false), !alias.scope !158746, !noalias !158680
  br i1 %i.bcv, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !158747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8259.i, i64 40, i1 false), !noalias !158680
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2031)
          to label %bb.qp unwind label %bb.qo, !noalias !158681

bb.qb:                                            ; preds = %bb.pz
  %.sroa.10261.0..sroa_idx262.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.5265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5265.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10261.0..sroa_idx262.i, i64 288, i1 false), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !158680
  %.sroa.4264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4264.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8259.i, i64 40, i1 false), !noalias !158680
  store i64 %i.bcu, ptr %i.y, align 16, !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8259.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !158680
  store i8 0, ptr %i.avg, align 2, !noalias !158680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.u, ptr noundef nonnull align 16 dereferenceable(336) %i.y, i64 336, i1 false), !noalias !158680
  invoke void @_RNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB5_14MergeInsertJob14prefix_columns(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(address) dereferenceable(336) %i.v, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2027, i64 noundef 7)
          to label %bb.qd unwind label %bb.qc, !noalias !158681

bb.qc:                                            ; preds = %bb.qb
  %i.bcx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !158680
  br label %bb.qn

bb.qd:                                            ; preds = %bb.qb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !158680
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.avj, i64 348
  %i.bcz = load i8, ptr %i.bcy, align 4, !range !428, !noalias !158681, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8268.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !158680
  store i8 0, ptr %i.avc, align 16, !noalias !158680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.r, ptr noundef nonnull align 16 dereferenceable(336) %i.ao, i64 336, i1 false), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !158680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.q, ptr noundef nonnull align 16 dereferenceable(336) %i.v, i64 336, i1 false), !noalias !158680
  %.val110.i62 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 16, !noalias !158680, !nonnull !416, !noundef !416
  %.val111.i63 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !158680, !noundef !416
  %.val108.i64 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i133.i, align 16, !noalias !158680, !nonnull !416, !noundef !416
  %.val109.i65 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i134.i, align 8, !noalias !158680, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !158680
  store i64 -2, ptr %i.p, align 16, !noalias !158680
  invoke void @_RNvMs0_NtCseMy6uzTzNin_10datafusion9dataframeNtB5_9DataFrame4join(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.s, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.r, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(336) %i.q, i8 noundef %i.bcz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val110.i62, i64 noundef %.val111.i63, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val108.i64, i64 noundef %.val109.i65, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.p)
          to label %bb.qe unwind label %.critedge76.i, !noalias !158681

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !158680
  call void @llvm.experimental.noalias.scope.decl(metadata !158748)
  %i.bda = load i64, ptr %i.s, align 16, !range !774, !alias.scope !158749, !noalias !158750, !noundef !416 ; 2 uses
  %i.bdb = icmp eq i64 %i.bda, -1
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8268.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bdc, i64 40, i1 false), !alias.scope !158751, !noalias !158680
  br i1 %i.bdb, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !158680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !158752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8268.i, i64 40, i1 false), !noalias !158680
  invoke void @_RNvXsl_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2030)
          to label %bb.qj unwind label %bb.qi, !noalias !158681

bb.qg:                                            ; preds = %bb.qe
  %.sroa.10270.0..sroa_idx271.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.5274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5274.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.10270.0..sroa_idx271.i, i64 288, i1 false), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !158680
  %.sroa.4273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4273.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8268.i, i64 40, i1 false), !noalias !158680
  store i64 %i.bda, ptr %i.t, align 16, !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8268.i)
  store i8 0, ptr %i.avh, align 1, !noalias !158680
  %i.bdd = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.bdd, ptr noundef nonnull align 16 dereferenceable(336) %i.t, i64 336, i1 false), !noalias !158680
  %.sroa.8289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1384
  store i8 0, ptr %.sroa.8289.0..sroa_idx.i, align 8, !noalias !158680
  br label %bb.se

bb.qh:                                            ; preds = %bb.st, %bb.si, %bb.sd
  %.pn45.i32 = phi { ptr, i32 } [ %i.bjb, %bb.st ], [ %i.bhn, %bb.si ], [ %i.bhh, %bb.sd ] ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.bdf = load i8, ptr %i.bde, align 1, !range !428, !noalias !158680, !noundef !416
  %i.bdg = trunc nuw i8 %i.bdf to i1
  br i1 %i.bdg, label %bb.td, label %bb.qm

bb.qi:                                            ; preds = %bb.qf
  %i.bdh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ql

bb.qj:                                            ; preds = %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !158752
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8268.i)
  br label %bb.qk

bb.qk:                                            ; preds = %bb.su, %bb.qj
  %i.bdi = phi ptr [ %i.bhi, %bb.su ], [ %i.auz, %bb.qj ]
  %i.bdj = phi ptr [ %i.bhj, %bb.su ], [ %i.ava, %bb.qj ]
  %i.bdk = getelementptr inbounds nuw i8, ptr %1, i64 289
  store i8 0, ptr %i.bdk, align 1, !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !158680
  br label %bb.qq

.critedge76.i:                                    ; preds = %bb.qd
  %i.bdl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !158680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !158680
  br label %bb.ql

bb.ql:                                            ; preds = %.critedge76.i, %bb.qi
  %.pn47.i = phi { ptr, i32 } [ %i.bdh, %bb.qi ], [ %i.bdl, %.critedge76.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8268.i)
  br label %bb.qm
end_hunk_10
begin_hunk_11_@_RNCNvNtNtCshkPeWWG1flk_5lance2io6commit15migrate_indices0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !179563, !nonnull !416, !noundef !416
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 2064
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %i.mf = load atomic ptr, ptr %i.me acquire, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mf, %i.md
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.av, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 2080
  %i.mh = load i64, ptr %i.mg, align 8, !noundef !416
  %i.mi = add i64 %i.mh, 1
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lt, i64 2096
  store i64 %i.mi, ptr %i.mj, align 8, !noalias !179563
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lt, i64 2080
  store atomic ptr %i.ly, ptr %i.mk release, align 8, !noalias !179563
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ly, i64 2072
  store ptr %i.lx, ptr %i.ml, align 8
  br label %bb.ba

.critedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.at
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lt, i64 2096
  store i64 1, ptr %i.mm, align 8, !noalias !179563
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lt, i64 2080
  store atomic ptr null, ptr %i.mn release, align 8, !noalias !179563
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ap
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !179563
  unreachable

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.ar, %bb.ap, %bb.ao
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ll, %bb.ap ], [ %i.lv, %bb.ar ], [ %i.ll, %bb.ao ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.av) #73
          to label %bb.bb unwind label %bb.ay, !noalias !179568

bb.ay:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !179568
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1276.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1168.i.i.i.i, i64 7, i1 false), !noalias !179569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1168.i.i.i.i)
  %i.mq = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.iq, %i.mq
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ca, label %bb.az

bb.az:                                            ; preds = %_RNvXsE_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_11RawIntoIterTReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !179570
  br label %bb.ca

bb.ba:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i, %bb.aw
  %i.mr = load ptr, ptr %i.kj, align 8, !alias.scope !179558, !noalias !179567, !nonnull !416, !noundef !416
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lt, i64 2104
  store atomic ptr null, ptr %i.ms monotonic, align 8, !noalias !179563
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  %i.mu = atomicrmw xchg ptr %i.mt, ptr %i.lx acq_rel, align 8, !noalias !179563
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 2088
  store atomic ptr %i.lx, ptr %i.mv release, align 8
  %.sroa.040.0.copyload41.i.i.i.i = load i64, ptr %i.av, align 8, !noalias !179557 ; 2 uses
  %.sroa.643.0.copyload45.i.i.i.i = load ptr, ptr %.sroa.643.0..sroa_idx.i.i.i.i, align 8, !noalias !179557 ; 2 uses
  %.sroa.748.0.copyload50.i.i.i.i = load i64, ptr %.sroa.748.0..sroa_idx.i.i.i.i, align 8, !noalias !179557 ; 2 uses
  %.sroa.853.0.copyload55.i.i.i.i = load ptr, ptr %i.kj, align 8, !noalias !179557 ; 2 uses
  %.sroa.958.0.copyload60.i.i.i.i = load i64, ptr %i.kn, align 8, !noalias !179557 ; 2 uses
  %.sroa.1063.0.copyload65.i.i.i.i = load i8, ptr %i.km, align 8, !noalias !179557 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1168.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1168.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !179557
  %.sroa.12.0.copyload74.i.i.i.i = load i64, ptr %i.ki, align 8, !noalias !179557 ; 2 uses
  %.sroa.13.0.copyload78.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !179557 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !179556
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !179571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !179572
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.jr, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mz = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jp, %bb.bd ] ; 2 uses
  %i.na = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0132.0.copyload.i, %bb.bd ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.mz, align 16, !noalias !179573
  %i.nb = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.nc = getelementptr inbounds i8, ptr %i.na, i64 -384 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.nb to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd
  %.sroa.14.0.i.i.i.i.i = phi ptr [ %i.jp, %bb.bd ], [ %i.nd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.916.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0132.0.copyload.i, %bb.bd ], [ %i.nc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.jr, %bb.bd ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ne = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.nf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ng = zext nneg i16 %i.nf to i64
  %i.nh = and i16 %i.ne, %.lcssa.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = sub nsw i64 0, %i.ng
  %i.nj = getelementptr inbounds [24 x i8], ptr %.sroa.916.0.copyload.i.i.i.i.i.i.i, i64 %i.ni ; 3 uses
  %i.nk = add nsw i64 %.val36.i, -1               ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %i.nj, i64 -24
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nl, align 8, !noalias !179574 ; 2 uses
  %.not.i.i.i.i.i.i.i13.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i13.i.i, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !179572
  %i.nm = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.iq, %i.nm
  br i1 %or.cond.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !179575
  br label %._crit_edge.i.i.i.i

bb.bg:                                            ; preds = %bb.bi
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ap) #73
          to label %bb.bt unwind label %bb.bs, !noalias !179576

bb.bh:                                            ; preds = %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.nj, i64 -8
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !179574, !nonnull !416, !noundef !416
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.nj, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !179574
  %i.no = load ptr, ptr %i.cl, align 8, !noalias !179577, !nonnull !416, !align !417, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !179572
  store i64 0, ptr %i.ap, align 8, !noalias !179572
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.no, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179572
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179572
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179572
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179572
  %.sroa.118.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 2040
  store i8 0, ptr %.sroa.118.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179572
  %i.np = shl nuw nsw i64 %.val36.i, 11           ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !179578
  %i.nq = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.np, i64 noundef range(i64 1, 17) 8) #68, !noalias !179578 ; 4 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.np) #72
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.bg, !noalias !179576

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.nq, ptr noundef nonnull align 8 dereferenceable(2048) %i.ap, i64 2048, i1 false), !noalias !179576
  store i64 %.val36.i, ptr %i.aq, align 8, !noalias !179572
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.nq, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179572
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !179572
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
  %i.nu = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %i.oq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.lcssa21.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.14.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %.lcssa20.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa1218.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.916.0.copyload.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %.lcssa1217.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nv = phi i16 [ %i.nh, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %i.oe, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val1314.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nk, %.lr.ph.i.i.i.i.i.i.i14.i.i ], [ %i.oh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.nv, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nw = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i.i.i.i.i.i.i, %bb.bk ] ; 2 uses
  %i.nx = phi ptr [ %i.nz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa1218.i.i.i.i.i.i.i.i.i, %bb.bk ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.nw, align 16, !noalias !179579
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
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.oi, align 8, !noalias !179580 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i15.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i15.i.i, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.bn

bb.bl:                                            ; preds = %bb.bp
  %i.oj = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.iq, %i.oj
  br i1 %or.cond.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !179581
  br label %.body.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.og, i64 -8
  %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !179580, !nonnull !416, !noundef !416
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.og, i64 -16
  %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !179580
  %i.ok = load ptr, ptr %i.cl, align 8, !noalias !179582, !nonnull !416, !align !417, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !179583
  store i64 0, ptr %i.ao, align 8, !noalias !179583
  store ptr %i.ok, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !179583
  store ptr %.sroa.6.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !179583
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !179583
  store i64 %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !179583
  store i8 0, ptr %.sroa.114.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !179583
  %i.ol = load i64, ptr %i.aq, align 8, !range !419, !noalias !179583, !noundef !416
  %i.om = icmp eq i64 %i.nu, %i.ol
  br i1 %i.om, label %bb.bq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i, %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bj
  %i.on = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond30.i.i.i.i.i.i.i = or i1 %i.iq, %i.on
  br i1 %or.cond30.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !179584
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i, %bb.bn
  %i.oo = phi ptr [ %.pre.i.i.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i ], [ %i.nt, %bb.bn ] ; 2 uses
  %i.op = getelementptr inbounds nuw [2048 x i8], ptr %i.oo, i64 %i.nu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.op, ptr noundef nonnull align 8 dereferenceable(2048) %i.ao, i64 2048, i1 false), !noalias !179585
  %i.oq = add nuw nsw i64 %i.nu, 1                ; 2 uses
  store i64 %i.oq, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !179583
  %i.or = icmp eq i64 %i.oh, 0
  br i1 %i.or, label %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.bk

bb.bp:                                            ; preds = %bb.bq
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.ao) #73
          to label %bb.bl unwind label %bb.br, !noalias !179585

bb.bq:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef %i.nu, i64 noundef range(i64 1, 0) %.val1314.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 2048)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i unwind label %bb.bp, !noalias !179585

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.bq
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !179583
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !179585
  unreachable

.body.i.i.i.i.i.i.i:                              ; preds = %bb.bm, %bb.bl
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.aq) #73
          to label %.body84.i unwind label %bb.bs, !noalias !179576

bb.bs:                                            ; preds = %.body.i.i.i.i.i.i.i, %bb.bg
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !179576
  unreachable

bb.bt:                                            ; preds = %bb.bg
  %i.ov = icmp eq i64 %.sroa.413.0.i.i.i.i, 0
  %or.cond6.i.i.i.i.i = or i1 %i.iq, %i.ov
  br i1 %or.cond6.i.i.i.i.i, label %.body84.i, label %.body.sink.split.i.i

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.bo, %_RNvXsF_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !179586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !179572
  %.pre.i.i.i = load i64, ptr %i.ar, align 8, !range !419, !alias.scope !179587, !noalias !179571 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.pre9.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !179587, !noalias !179571 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179587)
  %i.ow = icmp ugt i64 %.pre.i.i.i, %.pre9.i.i.i
  br i1 %i.ow, label %bb.bu, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.410.0..sroa_idx.phi.trans.insert.i.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.410.0.copyload.pre.i.i.pre.i.i = load ptr, ptr %.sroa.410.0..sroa_idx.phi.trans.insert.i.i.phi.trans.insert.i.i, align 8, !alias.scope !179587, !noalias !179571
  br label %._crit_edge.i.i.i.i

bb.bu:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !179588)
  call void @llvm.experimental.noalias.scope.decl(metadata !179589)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val10.i.i.i.i.i.i = load ptr, ptr %i.ox, align 8, !alias.scope !179590, !noalias !179571, !nonnull !416, !noundef !416 ; 2 uses
  %i.oy = shl nuw i64 %.pre.i.i.i, 11             ; 2 uses
  %i.oz = icmp eq i64 %.pre9.i.i.i, 0
  br i1 %i.oz, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, label %bb.bv

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.bu
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i.i.i.i, i64 noundef %i.oy, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !179591
  br label %._crit_edge.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.pa = shl nuw i64 %.pre9.i.i.i, 11            ; 2 uses
  %i.pb = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.val10.i.i.i.i.i.i, i64 noundef %i.oy, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 8, 0) %i.pa) #68, !noalias !179591 ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.bx, label %._crit_edge.i.i.i.i

bb.bw:                                            ; preds = %bb.bx
  %i.pd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_00EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ar) #73
          to label %.body84.i unwind label %bb.bz, !noalias !179592

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.pa) #72
          to label %bb.by unwind label %bb.bw, !noalias !179593

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bw
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !179593
  unreachable

._crit_edge.i.i.i.i:                              ; preds = %bb.bv, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i, %bb.bf, %bb.be
  %i.pf = phi i64 [ %.pre9.i.i.i, %bb.bv ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %.pre9.i.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i ], [ 0, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %.sroa.410.0.copyload.i.i.i.i = phi ptr [ %i.pb, %bb.bv ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ], [ %.sroa.410.0.copyload.pre.i.i.pre.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapIB4_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataENCNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0s0_0ENcNtINtNtNtCs9p5Dg9WVwvP_12futures_util6future10maybe_done9MaybeDoneNCNCB2W_s0_00E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecB4p_EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.._crit_edge.i.i_crit_edge.i.i ], [ inttoptr (i64 8 to ptr), %bb.bf ], [ inttoptr (i64 8 to ptr), %bb.be ]
  %i.pg = icmp ult i64 %i.pf, 4503599627370496
  call void @llvm.assume(i1 %i.pg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !179571
  br label %bb.ca

.body.sink.split.i.i:                             ; preds = %bb.bt, %bb.bc, %bb.bb
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %bb.bc ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %bb.bb ], [ %i.nn, %bb.bt ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.i.i.i.i, i64 noundef %.sroa.413.0.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i.i) #68, !noalias !179594
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
  %.sroa.12110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12110.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1276.i.i, i64 7, i1 false), !noalias !179505
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1276.i.i)
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %.sroa.0.0.i.i, ptr %i.ph, align 8, !noalias !179505
  %.sroa.7105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %.sroa.3.0.i.i, ptr %.sroa.7105.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.8106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i64 %.sroa.4.0.i.i, ptr %.sroa.8106.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.9107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %.sroa.5.sroa.0.sroa.0.0.i.i, ptr %.sroa.9107.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.10108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 %.sroa.5.sroa.0.sroa.2.0.i.i, ptr %.sroa.10108.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.11109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i8 %.sroa.5.sroa.0.sroa.3.0.i.i, ptr %.sroa.11109.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.13111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 %.sroa.5.sroa.0.sroa.5.0.i.i, ptr %.sroa.13111.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.14112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 %.sroa.5.sroa.0.sroa.6.0.i.i, ptr %.sroa.14112.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.15113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 0, ptr %.sroa.15113.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !179505
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 0, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !179505
  br label %bb.cd

.body84.i:                                        ; preds = %bb.bb, %bb.bc, %.body.i.i.i.i.i.i.i, %bb.bt, %bb.bw, %.body.sink.split.i.i, %bb.he, %.body.i.i.i, %bb.fp, %.body60.i
  %i.pi = phi ptr [ %i.pl, %bb.he ], [ %i.pl, %.body60.i ], [ %i.pl, %bb.fp ], [ %i.pl, %.body.i.i.i ], [ %i.ci, %bb.bc ], [ %i.ci, %.body.sink.split.i.i ], [ %i.ci, %bb.bt ], [ %i.ci, %bb.bw ], [ %i.ci, %.body.i.i.i.i.i.i.i ], [ %i.ci, %bb.bb ]
  %.pn18.pn.i = phi { ptr, i32 } [ %i.afl, %bb.he ], [ %eh.lpad-body61.i, %.body60.i ], [ %i.aax, %bb.fp ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i.i, %bb.bc ], [ %eh.lpad-body.ph.i.i, %.body.sink.split.i.i ], [ %i.nn, %bb.bt ], [ %i.pd, %bb.bw ], [ %i.os, %.body.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !179505
  br label %bb.hi

.body118.thread:                                  ; preds = %bb.v, %bb.w, %bb.hi, %bb.hq
  %i.pj = phi ptr [ %i.ci, %bb.w ], [ %i.ahc, %bb.hq ], [ %i.ahc, %bb.hi ], [ %i.ci, %bb.v ]
  %.pn28.i = phi { ptr, i32 } [ %i.in, %bb.w ], [ %.pn22.pn.pn.pn.i, %bb.hq ], [ %.pn22.pn.pn.pn.i, %bb.hi ], [ %i.im, %bb.v ]
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i8 0, ptr %i.pk, align 8, !noalias !179505
  store i8 2, ptr %i.pj, align 1, !noalias !179505
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtNtCshkPeWWG1flk_5lance5index6vector7details28infer_missing_vector_details0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapReRNtNtNtCs9KQ7US1M400_11lance_table6format5index13IndexMetadataEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.z, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.y
  store i8 0, ptr %i.ck, align 8, !noalias !179505
  br label %bb.hs

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

.loopexit.i:                                      ; preds = %bb.et
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i

.loopexit.split-lp.loopexit.i.loopexit:           ; preds = %bb.dc
end_hunk_11
begin_hunk_12_@_RNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB7_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata0B9_:bb.a
bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205913)
  %i.by = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !range !428, !noalias !205914, !noundef !416
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !439

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i: ; preds = %bb.ah
  %.pre.i.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !205915
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !205915
  br label %.thread

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.cc = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc59 unwind label %bb.ai  ; 2 uses

.noexc59:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.cd = extractvalue { i64, i64 } %i.cc, 0
  %i.ce = extractvalue { i64, i64 } %i.cc, 1      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !noalias !205916
  store i8 1, ptr %i.bz, align 8, !noalias !205916
  br label %.thread

.thread:                                          ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i, %.noexc59
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ], [ %i.ce, %.noexc59 ]
  %i.cg = phi i64 [ %.pre.i.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge.i.i.i.i.i ], [ %i.cd, %.noexc59 ] ; 2 uses
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.by, align 8, !noalias !205915
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) @99, i64 32, i1 false), !noalias !205912
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 %i.cg, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !205917, !noalias !205912
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 728
  store i64 %.pre-phi2.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !205917, !noalias !205912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !205918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !205919
  br label %bb.ba

bb.ai:                                            ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.aj:                                            ; preds = %bb.ag
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %.sroa.0212.0.copyload, ptr %i.bx, align 16, !alias.scope !205920
  %.sroa.6214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %1, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6214.0..sroa_idx215, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6214.0..sroa_idx, i64 40, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 712
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !205921, !noalias !205922 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205921)
  %.val3.i.i = load <16 x i8>, ptr %.sroa.0212.0.copyload, align 16, !noalias !205923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205925)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !205926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !205927
  %i.cj = icmp eq i64 %.pre, 0
  br i1 %i.cj, label %bb.ba, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0212.0.copyload, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ak, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cn = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cm, %bb.ak ] ; 2 uses
  %i.co = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0212.0.copyload, %bb.ak ]
  %.val10.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cn, align 16, !noalias !205928
  %i.cp = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -768 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.cp to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.ak
  %.sroa.57.0.i.i = phi ptr [ %i.cm, %bb.ak ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.0.copyload.i.i.i.i = phi ptr [ %.sroa.0212.0.copyload, %bb.ak ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.cl, %bb.ak ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cs = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.ct = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.cu = zext nneg i16 %i.ct to i64
  %i.cv = and i16 %i.cs, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.cw = sub nsw i64 0, %i.cu
  %i.cx = getelementptr inbounds [48 x i8], ptr %.sroa.07.0.copyload.i.i.i.i, i64 %i.cw ; 4 uses
  %i.cy = add i64 %.pre, -1                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 -40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !noalias !205929, !nonnull !416, !noundef !416
  %i.da = getelementptr i8, ptr %i.cx, i64 -32
  %.val3.i.i.i.i.i.i = load i64, ptr %i.da, align 8, !noalias !205929, !noundef !416
  %i.db = getelementptr i8, ptr %i.cx, i64 -16
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.db, align 8, !noalias !205929, !nonnull !416, !noundef !416
  %i.dc = getelementptr i8, ptr %i.cx, i64 -8
  %.val5.i.i.i.i.i.i = load i64, ptr %i.dc, align 8, !noalias !205929, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !205930
  store ptr %.val.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !205930
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.val3.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !205930
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.val4.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !205930
  %.sroa.62.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.val5.i.i.i.i.i.i, ptr %.sroa.62.0..sroa_idx.i.i.i.i.i, align 8, !noalias !205930
  invoke void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction10update_mapNtB5_14UpdateMapEntryINtNtCscI6d9CVNmLh_4core7convert4FromTReB1W_EE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j)
          to label %.noexc63 unwind label %bb.az

.noexc63:                                         ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !205930
  %.pr.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !205927 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.ba, label %bb.ap

bb.al:                                            ; preds = %bb.as
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205931)
  call void @llvm.experimental.noalias.scope.decl(metadata !205932), !noalias !205933
  call void @llvm.experimental.noalias.scope.decl(metadata !205934), !noalias !205933
  %i.de = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %i.de, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val1.i.i.i.i.i.i62 = load ptr, ptr %i.df, align 8, !alias.scope !205935, !noalias !205927, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i62, i64 noundef %.pr.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !205936
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %i.dg = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !205937), !noalias !205933
  %i.dh = load i64, ptr %i.dg, align 8, !range !421, !alias.scope !205938, !noalias !205927, !noundef !416 ; 3 uses
  %i.di = icmp eq i64 %i.dh, -1
  br i1 %i.di, label %.body64, label %bb.an

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !205939), !noalias !205933
  call void @llvm.experimental.noalias.scope.decl(metadata !205940), !noalias !205933
  %i.dj = icmp eq i64 %i.dh, 0
  br i1 %i.dj, label %.body64, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.val1.i.i.i1.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !205941, !noalias !205927, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1.i.i.i.i, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !205942
  br label %.body64

bb.ap:                                            ; preds = %.noexc63
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.pre, i64 4) ; 3 uses
  %i.dl = mul i64 %.sroa.0.0.i.i.i.i.i, 48        ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.pre, 192153584101141162
  br i1 %or.cond.i.i.i.i.i.i, label %bb.as, label %bb.aq, !prof !441

bb.aq:                                            ; preds = %bb.ap
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !205943
  %i.dn = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.dl, i64 noundef range(i64 1, 17) 8) #68, !noalias !205943 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.ar ], [ 0, %bb.ap ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dl) #72
          to label %.noexc.i.i.i.i unwind label %bb.al, !noalias !205927

.noexc.i.i.i.i:                                   ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.aq ], [ %i.dn, %bb.ar ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.aq ], [ %.sroa.0.0.i.i.i.i.i, %bb.ar ] ; 3 uses
  %i.dp = icmp ule i64 %.sroa.0.0.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.dp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !205927
  store i64 %.sroa.4.0.i.i.i.i.i, ptr %i.l, align 8, !noalias !205927
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !205927
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !205927
  call void @llvm.experimental.noalias.scope.decl(metadata !205944)
  call void @llvm.experimental.noalias.scope.decl(metadata !205945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !205946
  %i.dq = icmp eq i64 %i.cy, 0
  br i1 %i.dq, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.at
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.au

bb.au:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dr = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.el, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ds = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i ], [ %i.en, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 5 uses
  %.lcssa15.i.i.i.i.i.i = phi ptr [ %.sroa.57.0.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dt = phi i16 [ %i.cv, %.lr.ph.i.i.i.i.i.i ], [ %i.ec, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.val611.i.i.i.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %i.ef, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.lcssa5910.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa58.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.dt, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.du = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa15.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %i.dv = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa5910.i.i.i.i.i.i, %bb.au ]
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.du, align 16, !noalias !205947
  %i.dw = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -768 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dw to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.au
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i, %bb.au ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.lcssa58.i.i.i.i.i.i = phi ptr [ %.lcssa5910.i.i.i.i.i.i, %bb.au ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.dt, %bb.au ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dz = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ea = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = and i16 %i.dz, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = sub nsw i64 0, %i.eb
  %i.ee = getelementptr inbounds [48 x i8], ptr %.lcssa58.i.i.i.i.i.i, i64 %i.ed ; 4 uses
  %i.ef = add i64 %.val611.i.i.i.i.i.i, -1        ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 -40
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.eg, align 8, !noalias !205948, !nonnull !416, !noundef !416
  %i.eh = getelementptr i8, ptr %i.ee, i64 -32
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 8, !noalias !205948, !noundef !416
  %i.ei = getelementptr i8, ptr %i.ee, i64 -16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.ei, align 8, !noalias !205948, !nonnull !416, !noundef !416
  %i.ej = getelementptr i8, ptr %i.ee, i64 -8
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.ej, align 8, !noalias !205948, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !205949
  store ptr %.val.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !205949
  store i64 %.val3.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !205949
  store ptr %.val4.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !205949
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %.sroa.62.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !205949
  invoke void @_RNvXs1_NtNtCs9KQ7US1M400_11lance_table11transaction10update_mapNtB5_14UpdateMapEntryINtNtCscI6d9CVNmLh_4core7convert4FromTReB1W_EE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h)
          to label %.noexc6.i.i.i.i unwind label %bb.ay, !noalias !205927

.noexc6.i.i.i.i:                                  ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !205949
  %.pr.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !205950
  %.not.i.i5.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i, -1
  %.sroa.0.0.copyload1.pre.pre25.i.i = load i64, ptr %i.l, align 8, !noalias !205951 ; 2 uses
  br i1 %.not.i.i5.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.noexc6.i.i.i.i
  %i.ek = icmp eq i64 %i.ds, %.sroa.0.0.copyload1.pre.pre25.i.i
  br i1 %i.ek, label %bb.ax, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i, %bb.av
  %i.el = phi ptr [ %.pre.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i ], [ %i.dr, %bb.av ] ; 3 uses
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.el, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.em, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !205950
  %i.en = add nuw nsw i64 %i.ds, 1                ; 2 uses
  store i64 %i.en, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !205952, !noalias !205953
  %i.eo = icmp eq i64 %i.ef, 0
  br i1 %i.eo, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i, label %bb.au

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.0.0.copyload1.pre.pre.i.i = load i64, ptr %i.l, align 8, !noalias !205951
  br label %.loopexit.i.i.i.i

bb.aw:                                            ; preds = %bb.ax
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(48) %i.i) #73, !noalias !205950
  br label %.body.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.ds, i64 noundef %.val611.i.i.i.i.i.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i unwind label %bb.aw, !noalias !205953

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.ax
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !205952, !noalias !205953
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i.i.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.ay, %bb.aw
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.eq, %bb.ay ], [ %i.ep, %bb.aw ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.l) #73, !noalias !205927
  br label %.body64

.loopexit.i.i.i.i:                                ; preds = %.noexc6.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i, %bb.at
  %.sroa.6.0.copyload5.i.i = phi i64 [ 1, %bb.at ], [ %.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %i.ds, %.noexc6.i.i.i.i ]
  %.sroa.5.0.copyload3.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.at ], [ %i.el, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %i.dr, %.noexc6.i.i.i.i ]
  %.sroa.0.0.copyload1.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i, %bb.at ], [ %.sroa.0.0.copyload1.pre.pre.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i..loopexit.i.i.loopexit_crit_edge.i.i ], [ %.sroa.0.0.copyload1.pre.pre25.i.i, %.noexc6.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !205946
  br label %bb.ba

bb.az:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1S_ENCNCNvXsd_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtB2J_18DirectoryNamespaceNtNtCsjqC71KfQTl6_15lance_namespace9namespace14LanceNamespace28update_table_schema_metadata00ENvYTReB5q_EINtNtBb_7convert4IntoNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE4intoENtNtNtB9_6traits8iterator8Iterator4nextB2L_.exit.i.i.i.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body64

bb.ba:                                            ; preds = %.thread, %.loopexit.i.i.i.i, %.noexc63, %bb.aj
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.copyload5.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc63 ], [ 0, %bb.aj ], [ 0, %.thread ]
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload3.i.i, %.loopexit.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.noexc63 ], [ inttoptr (i64 8 to ptr), %bb.aj ], [ inttoptr (i64 8 to ptr), %.thread ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc63 ], [ 0, %bb.aj ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !205927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !205926
  %i.es = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.bu, ptr %i.es, align 8, !alias.scope !205954, !noalias !205955
  store i64 %.sroa.0.0.i.i, ptr %i.o, align 8, !alias.scope !205954, !noalias !205955
  %.sroa.5.0..sroa_idx.i.i61 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i61, align 8, !alias.scope !205954, !noalias !205955
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !205954, !noalias !205955
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %i.et, align 8, !alias.scope !205954, !noalias !205955
  %i.eu = getelementptr inbounds nuw i8, ptr %i.o, i64 33
  store i8 2, ptr %i.eu, align 1, !alias.scope !205954, !noalias !205955
  %i.ev = invoke { ptr, ptr } @_RNvXs_NtNtCshkPeWWG1flk_5lance7dataset8metadataNtB4_21UpdateMetadataBuilderNtNtNtCscI6d9CVNmLh_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.o)
          to label %bb.bc unwind label %bb.bb     ; 2 uses

.body64:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.an, %bb.ao, %.body.i.i.i.i, %bb.az, %bb.bb
  %.pn6 = phi { ptr, i32 } [ %i.ew, %bb.bb ], [ %i.dd, %bb.ao ], [ %i.er, %bb.az ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.dd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ], [ %i.dd, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.body70

bb.bb:                                            ; preds = %bb.ba
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body64

bb.bc:                                            ; preds = %bb.ba
  %i.ex = extractvalue { ptr, ptr } %i.ev, 0      ; 2 uses
  %i.ey = extractvalue { ptr, ptr } %i.ev, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.ex, ptr %i.ez, align 8
  store ptr %i.ey, ptr %i.bh, align 16
  br label %bb.bj

bb.bd:                                            ; preds = %.body70, %bb.ai
  %.pn27 = phi { ptr, i32 } [ %i.ci, %bb.ai ], [ %.pn24.pn, %.body70 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshkPeWWG1flk_5lance7dataset7DatasetECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.fa) #73
          to label %.body55 unwind label %bb.u

bb.be:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs5_NtCsfR8GmIBoxTX_21lance_namespace_impls3dirNtBJ_18DirectoryNamespace12load_dataset0EBL_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3198.sroa.5, i64 24, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.dp, %bb.be
  %.sroa.6.sroa.6.sroa.0.sroa.0.1 = phi i56 [ %.sroa.3198.sroa.3.sroa.0.sroa.0.0.copyload, %bb.be ], [ undef, %bb.dp ] ; 2 uses
  %.sroa.6.sroa.6.sroa.8.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.7.0.copyload, %bb.be ], [ %.sroa.6.sroa.6.sroa.8.2, %bb.dp ] ; 2 uses
  %.sroa.6.sroa.6.sroa.7.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.5.0.copyload, %bb.be ], [ @39, %bb.dp ] ; 2 uses
  %.sroa.6.sroa.6.sroa.6.1 = phi ptr [ %.sroa.3198.sroa.3.sroa.3.0.copyload, %bb.be ], [ %.sroa.6.sroa.6.sroa.6.2, %bb.dp ] ; 2 uses
  %.sroa.6.sroa.0.1 = phi i8 [ %.sroa.3198.sroa.0.0.copyload, %bb.be ], [ 31, %bb.dp ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.experimental.noalias.scope.decl(metadata !205956)
  call void @llvm.experimental.noalias.scope.decl(metadata !205957)
  %.val.i.i = load i64, ptr %i.fb, align 16, !range !419, !alias.scope !205958, !noundef !416 ; 2 uses
  %i.fc = icmp eq i64 %.val.i.i, 0
  br i1 %i.fc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val1.i.i = load ptr, ptr %i.fd, align 8, !alias.scope !205958, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !205958
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit

.body55:                                          ; preds = %bb.v, %bb.ac, %bb.af, %bb.cz, %bb.bd
  %.pn29.pn = phi { ptr, i32 } [ %.pn27, %bb.bd ], [ %i.ih, %bb.cz ], [ %i.bs, %bb.af ], [ %i.bo, %bb.ac ], [ %i.bg, %bb.v ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.experimental.noalias.scope.decl(metadata !205959)
  call void @llvm.experimental.noalias.scope.decl(metadata !205960)
  %.val.i.i66 = load i64, ptr %i.fe, align 16, !range !419, !alias.scope !205961, !noundef !416 ; 2 uses
  %i.ff = icmp eq i64 %.val.i.i66, 0
  br i1 %i.ff, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit68, label %bb.bh

bb.bh:                                            ; preds = %.body55
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val1.i.i67 = load ptr, ptr %i.fg, align 8, !alias.scope !205961, !nonnull !416, !noundef !416
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67, i64 noundef %.val.i.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !205961
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit68

bb.bi:                                            ; preds = %bb.bj
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val51 = load ptr, ptr %i.fi, align 8
  %.val52 = load ptr, ptr %i.fj, align 16, !nonnull !416, !align !417, !noundef !416
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBW_6string6StringB3k_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val51, ptr nonnull %.val52) #73
          to label %.body70 unwind label %bb.u

bb.bj:                                            ; preds = %bb.b, %bb.bc
  %.val54 = phi ptr [ %.val54.pre, %bb.b ], [ %i.ey, %bb.bc ]
  %.val53 = phi ptr [ %.val53.pre, %bb.b ], [ %i.ex, %bb.bc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.fj = getelementptr i8, ptr %1, i64 752       ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !invariant.load !416, !noalias !205962, !nonnull !416
  invoke void %i.fl(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noundef nonnull %.val53, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bi, !inline_history !205772

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.bj
  %i.fm = load i8, ptr %i.n, align 8, !range !422, !noundef !416 ; 3 uses
  %i.fn = icmp eq i8 %i.fm, -2
  br i1 %i.fn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 -3, ptr %0, align 8
  br label %common.ret

bb.bl:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB10_6string6StringB36_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsfR8GmIBoxTX_21lance_namespace_impls.exit
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
  %.val49 = load ptr, ptr %i.fi, align 8          ; 5 uses
  %.val50 = load ptr, ptr %i.fj, align 16, !nonnull !416, !align !417, !noundef !416 ; 5 uses
  %i.fo = load ptr, ptr %.val50, align 8, !invariant.load !416 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val49) ]
  invoke void %i.fo(ptr noundef nonnull %.val49)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %.val50, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !419, !invariant.load !416 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBW_6string6StringB3k_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.bn
  %i.fs = getelementptr inbounds nuw i8, ptr %.val50, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !range !420, !invariant.load !416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val49) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) %i.ft) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBW_6string6StringB3k_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
end_hunk_12
