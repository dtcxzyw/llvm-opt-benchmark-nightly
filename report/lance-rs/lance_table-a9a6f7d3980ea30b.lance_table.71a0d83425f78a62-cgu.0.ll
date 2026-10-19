Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEBd_:bb.a
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !2996, !noundef !62 ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 0                    ; 2 uses
  br i1 %i.bm, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEB19_.exit.i.i, label %.preheader.i.i.i19

.preheader.i.i.i19:                               ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i17, %.preheader.i.i.i19
  %.sroa.04.0.i.i.i.i.i20 = phi i64 [ %i.bx, %.preheader.i.i.i19 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i17 ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i21 = phi i64 [ %i.bw, %.preheader.i.i.i19 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i17 ]
  %i.bn = getelementptr inbounds nuw [224 x i8], ptr %i.bj, i64 %.sroa.04.0.i.i.i.i.i20
  %i.bo = tail call fastcc noundef i64 @_RNvXs1j_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12DataFragmentNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.bn), !noalias !2997 ; 2 uses
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
  br i1 %i.by, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEB19_.exit.i.i, label %.preheader.i.i.i19

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEB19_.exit.i.i: ; preds = %.preheader.i.i.i19, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i17
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i17 ], [ %i.bw, %.preheader.i.i.i19 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !2996, !nonnull !62, !noundef !62 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !2996, !noundef !62 ; 10 uses
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  br i1 %i.cd, label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i, label %.preheader.i2.i.i.preheader

.preheader.i2.i.i.preheader:                      ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEB19_.exit.i.i
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
  %.val.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !2998, !noalias !2997, !noundef !62
  %i.cg = or i64 %.val.i.i.i.i, 1
  %i.ch = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = xor i64 %i.ch, 63
  %i.cj = mul nuw nsw i64 %i.ci, 9
  %i.ck = add nuw nsw i64 %i.cj, 73
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = add i64 %i.cl, %.sroa.02.0.i.i.i.i
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i.i.i.i.1 = load i64, ptr %i.co, align 8, !alias.scope !2998, !noalias !2997, !noundef !62
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
  br i1 %niter762.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.unr-lcssa, label %.preheader.i2.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.unr-lcssa: ; preds = %.preheader.i2.i.i
  %lcmp.mod758.not = icmp eq i64 %xtraiter757, 0
  br i1 %lcmp.mod758.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i, label %.preheader.i2.i.i.epil.preheader

.preheader.i2.i.i.epil.preheader:                 ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.unr-lcssa, %.preheader.i2.i.i.preheader
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i2.i.i.preheader ], [ %i.cw, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i2.i.i.preheader ], [ %i.cv, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.unr-lcssa ]
  %lcmp.mod760 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod760)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i.i.epil.init
  %.val.i.i.i.i.epil = load i64, ptr %i.cx, align 8, !alias.scope !2998, !noalias !2997, !noundef !62
  %i.cy = or i64 %.val.i.i.i.i.epil, 1
  %i.cz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = xor i64 %i.cz, 63
  %i.db = mul nuw nsw i64 %i.da, 9
  %i.dc = add nuw nsw i64 %i.db, 73
  %i.dd = lshr i64 %i.dc, 6
  %i.de = add i64 %i.dd, %.sroa.02.0.i.i.i.i.epil.init
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.unr-lcssa, %.preheader.i2.i.i.epil.preheader
  %.lcssa661 = phi i64 [ %i.cv, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.unr-lcssa ], [ %i.de, %.preheader.i2.i.i.epil.preheader ] ; 2 uses
  %i.df = or i64 %.lcssa661, 1
  %i.dg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = xor i64 %i.dg, 63
  %i.di = mul nuw nsw i64 %i.dh, 9
  %i.dj = add nuw nsw i64 %i.di, 73
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = add i64 %.lcssa661, 1
  %i.dm = add i64 %i.dl, %i.dk
  br label %_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i

_RNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed.exit.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEB19_.exit.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.dm, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRyjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint6418encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message20encoded_len_repeatedNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentEB19_.exit.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !2996, !noundef !62 ; 9 uses
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !2975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3000)
  %.idx.i.i22 = mul nuw nsw i64 %i.bl, 224
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i22
  br i1 %i.bm, label %._crit_edge.i.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i, %.lr.ph.i.i23
  %.sroa.0.09.i.i = phi ptr [ %i.ed, %.lr.ph.i.i23 ], [ %i.bj, %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.09.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3001
  %i.ee = icmp eq ptr %i.ed, %i.ec
  br i1 %i.ee, label %._crit_edge.i.i, label %.lr.ph.i.i23

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i23, %_RNvXsw_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_6DeleteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3002)
  br i1 %i.cd, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3003)
  %.pre18.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !3004, !noalias !3002 ; 3 uses
  %.pre28.i.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3004, !noalias !3002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3005), !noalias !3002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3006), !noalias !3002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3007), !noalias !3002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3008), !noalias !3002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3009), !noalias !3002
  %i.ef = icmp eq i64 %.pre28.i.i.i, %.pre18.i.i.i
  br i1 %i.ef, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3010
  %i.eg = load i64, ptr %i.au, align 8, !alias.scope !3011, !noalias !3002, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i, %bb.f
  %.sink1.i6.i.i.i = phi i64 [ %i.eg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i ], [ %.pre18.i.i.i, %bb.f ] ; 3 uses
  %i.eh = icmp sgt i64 %.sink1.i6.i.i.i, -1
  tail call void @llvm.assume(i1 %i.eh), !noalias !3002
  %i.ei = load ptr, ptr %i.av, align 8, !alias.scope !3011, !noalias !3002, !nonnull !62, !noundef !62
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.sink1.i6.i.i.i
  store i8 18, ptr %i.ej, align 1, !noalias !3012
  %i.ek = add nuw i64 %.sink1.i6.i.i.i, 1
  store i64 %i.ek, ptr %i.au, align 8, !alias.scope !3011, !noalias !3002
  %xtraiter764 = and i64 %i.cc, 1
  %i.el = icmp eq i64 %i.cc, 1
  br i1 %i.el, label %.epil.preheader763, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i
  %unroll_iter768 = and i64 %i.cc, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.new
  %.sroa.04.0.i.i.i1.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.new ], [ %i.fd, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i2.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.new ], [ %i.fc, %bb.g ]
  %niter769 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.new ], [ %niter769.next.1, %bb.g ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i
  %.val.i.i.i3.i = load i64, ptr %i.em, align 8, !alias.scope !3002, !noalias !3013, !noundef !62
  %i.en = or i64 %.val.i.i.i3.i, 1
  %i.eo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.en, i1 true)
  %i.ep = xor i64 %i.eo, 63
  %i.eq = mul nuw nsw i64 %i.ep, 9
  %i.er = add nuw nsw i64 %i.eq, 73
  %i.es = lshr i64 %i.er, 6
  %i.et = add i64 %i.es, %.sroa.02.0.i.i.i2.i
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.val.i.i.i3.i.1 = load i64, ptr %i.ev, align 8, !alias.scope !3002, !noalias !3013, !noundef !62
  %i.ew = or i64 %.val.i.i.i3.i.1, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = xor i64 %i.ex, 63
  %i.ez = mul nuw nsw i64 %i.ey, 9
  %i.fa = add nuw nsw i64 %i.ez, 73
  %i.fb = lshr i64 %i.fa, 6
  %i.fc = add i64 %i.fb, %i.et                    ; 3 uses
  %i.fd = add nuw nsw i64 %.sroa.04.0.i.i.i1.i, 2 ; 2 uses
  %niter769.next.1 = add i64 %niter769, 2         ; 2 uses
  %niter769.ncmp.1 = icmp eq i64 %niter769.next.1, %unroll_iter768
  br i1 %niter769.ncmp.1, label %.lr.ph.preheader.i.i.i.unr-lcssa, label %bb.g

.lr.ph.preheader.i.i.i.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %.lr.ph.preheader.i.i.i, label %.epil.preheader763

.epil.preheader763:                               ; preds = %.lr.ph.preheader.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i
  %.sroa.04.0.i.i.i1.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.fd, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i2.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.fc, %.lr.ph.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod767 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod767)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sroa.04.0.i.i.i1.i.epil.init
  %.val.i.i.i3.i.epil = load i64, ptr %i.fe, align 8, !alias.scope !3002, !noalias !3013, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa660, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3014
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.02.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i ], [ %i.ca, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i, i64 8 ; 2 uses
  %i.fo = load i64, ptr %.sroa.0.02.i.i.i, align 8, !alias.scope !3002, !noalias !3013, !noundef !62
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.fo, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3014
  %i.fp = icmp eq ptr %i.fn, %i.fm
  br i1 %i.fp, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i, label %.lr.ph.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i
  br i1 %i.dp, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i = load ptr, ptr %i.fq, align 8, !alias.scope !3001 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  %.pre18.i4.i.i = load i64, ptr %i.au, align 8, !alias.scope !3017 ; 3 uses
  %.pre28.i5.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  %i.fr = icmp eq i64 %.pre28.i5.i.i, %.pre18.i4.i.i
  br i1 %i.fr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i7.i.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i4.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3023
  %i.fs = load i64, ptr %i.au, align 8, !alias.scope !3024, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i7.i.i, %bb.h
  %.sink1.i6.i6.i.i = phi i64 [ %i.fs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i7.i.i ], [ %.pre18.i4.i.i, %bb.h ] ; 3 uses
  %i.ft = icmp sgt i64 %.sink1.i6.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = load ptr, ptr %i.av, align 8, !alias.scope !3024, !nonnull !62, !noundef !62
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %.sink1.i6.i6.i.i
  store i8 26, ptr %i.fv, align 1, !noalias !3025
  %i.fw = add nuw i64 %.sink1.i6.i6.i.i, 1
  store i64 %i.fw, ptr %i.au, align 8, !alias.scope !3024
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.do, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3001
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  %i.fx = load i64, ptr %i.au, align 8, !alias.scope !3030, !noundef !62 ; 3 uses
  %i.fy = load i64, ptr %1, align 8, !range !66, !alias.scope !3030, !noundef !62
  %i.fz = sub i64 %i.fy, %i.fx
  %i.ga = icmp ugt i64 %i.do, %i.fz
  br i1 %i.ga, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i4.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i4.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fx, i64 noundef range(i64 0, -9223372036854775808) %i.do, i64 noundef 1, i64 noundef 1), !noalias !3031
  %i.gb = load i64, ptr %i.au, align 8, !alias.scope !3032, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i4.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i.i
  %.sink11.i.i = phi i64 [ %i.gb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i4.i ], [ %i.fx, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i.i ] ; 3 uses
  %i.gc = icmp sgt i64 %.sink11.i.i, -1
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = load ptr, ptr %i.av, align 8, !alias.scope !3032, !nonnull !62, !noundef !62
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sink11.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %i.do, i1 false), !noalias !3033
  %i.gf = add nuw i64 %.sink11.i.i, %i.do
  store i64 %i.gf, ptr %i.au, align 8, !alias.scope !3032
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit

bb.i:                                             ; preds = %bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre18.i.i28 = load i64, ptr %i.gh, align 8, !alias.scope !3037 ; 3 uses
  %.pre28.i.i29 = load i64, ptr %1, align 8, !range !66, !alias.scope !3037 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3042)
  %i.gj = icmp eq i64 %.pre28.i.i29, %.pre18.i.i28
  br i1 %i.gj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i41, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i30, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i41: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i28, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3043
  %i.gk = load i64, ptr %i.gh, align 8, !alias.scope !3044, !noundef !62
  %.pre27.pre.i.i42 = load i64, ptr %1, align 8, !range !66, !alias.scope !3037
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i30

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i30: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i41, %bb.i
  %.pre27.i.i31 = phi i64 [ %.pre27.pre.i.i42, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i41 ], [ %.pre28.i.i29, %bb.i ] ; 2 uses
  %.sink1.i.i.i32 = phi i64 [ %i.gk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i41 ], [ %.pre18.i.i28, %bb.i ] ; 3 uses
  %i.gl = icmp sgt i64 %.sink1.i.i.i32, -1
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = load ptr, ptr %i.gi, align 8, !alias.scope !3044, !nonnull !62, !noundef !62 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.sink1.i.i.i32
  store i8 -78, ptr %i.gn, align 1, !noalias !3045
  %i.go = add nuw i64 %.sink1.i.i.i32, 1          ; 3 uses
  store i64 %i.go, ptr %i.gh, align 8, !alias.scope !3044
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  %i.gp = icmp eq i64 %.pre27.i.i31, %i.go
  br i1 %i.gp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i39, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i33, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i39: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i30
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i31, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3051
  %i.gq = load i64, ptr %i.gh, align 8, !alias.scope !3052, !noundef !62
  %.pre.i40 = load ptr, ptr %i.gi, align 8, !alias.scope !3052
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i33

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i33: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i39, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i30
  %i.gr = phi ptr [ %.pre.i40, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i39 ], [ %i.gm, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i30 ]
  %.sink1.i6.i.i34 = phi i64 [ %i.gq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i39 ], [ %i.go, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i30 ] ; 3 uses
  %i.gs = icmp sgt i64 %.sink1.i6.i.i34, -1
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink1.i6.i.i34
  store i8 6, ptr %i.gt, align 1, !noalias !3053
  %i.gu = add nuw i64 %.sink1.i6.i.i34, 1
  store i64 %i.gu, ptr %i.gh, align 8, !alias.scope !3052
  %i.gv = tail call fastcc noundef i64 @_RNvXsC_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_9OverwriteNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.gg), !noalias !3035
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.gv, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !3055, !nonnull !62, !noundef !62 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !3055, !noundef !62 ; 2 uses
  %.idx.i.i35 = mul nuw nsw i64 %i.gz, 224
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx.i.i35
  %i.hb = icmp eq i64 %i.gz, 0
  br i1 %i.hb, label %._crit_edge.i.i37, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i33, %.lr.ph.i.i36
  %.sroa.0.011.i.i = phi ptr [ %i.hc, %.lr.ph.i.i36 ], [ %i.gx, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i33 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.011.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3055
  %i.hd = icmp eq ptr %i.hc, %i.ha
  br i1 %i.hd, label %._crit_edge.i.i37, label %.lr.ph.i.i36

._crit_edge.i.i37:                                ; preds = %.lr.ph.i.i36, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i33
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !3055, !nonnull !62, !noundef !62 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !3055, !noundef !62 ; 2 uses
  %.idx20.i.i = mul nuw nsw i64 %i.hh, 176
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.idx20.i.i
  %i.hj = icmp eq i64 %i.hh, 0
  br i1 %i.hj, label %._crit_edge15.i.i, label %.lr.ph14.i.i

.lr.ph14.i.i:                                     ; preds = %._crit_edge.i.i37, %.lr.ph14.i.i
  %.sroa.02.012.i.i = phi ptr [ %i.hk, %.lr.ph14.i.i ], [ %i.hf, %._crit_edge.i.i37 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i, i64 176 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i32 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %.sroa.02.012.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3055
  %i.hl = icmp eq ptr %i.hk, %i.hi
  br i1 %i.hl, label %._crit_edge15.i.i, label %.lr.ph14.i.i

._crit_edge15.i.i:                                ; preds = %.lr.ph14.i.i, %._crit_edge.i.i37
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val9.i.i = load ptr, ptr %i.hm, align 8, !alias.scope !3055
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val10.i.i = load i64, ptr %i.hn, align 8, !alias.scope !3056, !noundef !62
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VechEB1r_INvNtB4_6string6encodeB1r_ENvB1Q_11encoded_lenINvNtB4_5bytes6encodeB1r_B1r_EINvB2A_11encoded_lenB1r_EECs9KQ7US1M400_11lance_table(i32 noundef 3, ptr %.val9.i.i, i64 %.val10.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3055
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val.i.i38 = load ptr, ptr %i.ho, align 8, !alias.scope !3055
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val8.i.i = load i64, ptr %i.hp, align 8, !alias.scope !3057, !noundef !62
end_hunk_0
begin_hunk_1_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEBd_:bb.a
  tail call void @llvm.assume(i1 %i.sk)
  %i.sl = load ptr, ptr %i.sh, align 8, !alias.scope !3231, !nonnull !62, !noundef !62 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.sink1.i.i.i114
  store i8 -38, ptr %i.sm, align 1, !noalias !3231
  %i.sn = add nuw i64 %.sink1.i.i.i114, 1         ; 3 uses
  store i64 %i.sn, ptr %i.sg, align 8, !alias.scope !3231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3236)
  %i.so = icmp eq i64 %.pre27.i.i113, %i.sn
  br i1 %i.so, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i123, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i115, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i123: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i112
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i113, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3237
  %i.sp = load i64, ptr %i.sg, align 8, !alias.scope !3238, !noundef !62
  %.pre.i124 = load ptr, ptr %i.sh, align 8, !alias.scope !3238
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i115

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i115: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i123, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i112
  %i.sq = phi ptr [ %.pre.i124, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i123 ], [ %i.sl, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i112 ]
  %.sink1.i6.i.i116 = phi i64 [ %i.sp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i123 ], [ %i.sn, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i112 ] ; 3 uses
  %i.sr = icmp sgt i64 %.sink1.i6.i.i116, -1
  tail call void @llvm.assume(i1 %i.sr)
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 %.sink1.i6.i.i116
  store i8 6, ptr %i.ss, align 1, !noalias !3238
  %i.st = add nuw i64 %.sink1.i6.i.i116, 1
  store i64 %i.st, ptr %i.sg, align 8, !alias.scope !3238
  %i.su = icmp eq i32 %.val3, 0
  br i1 %i.su, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit, label %bb.y

bb.y:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i115
  %i.sv = or i32 %.val3, 1
  %i.sw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.sv, i1 true)
  %i.sx = xor i32 %i.sw, 31
  %i.sy = mul nuw nsw i32 %i.sx, 9
  %i.sz = add nuw nsw i32 %i.sy, 73
  %i.ta = lshr i32 %i.sz, 6
  %narrow.i.i.i = add nuw nsw i32 %i.ta, 1
  %i.tb = zext nneg i32 %narrow.i.i.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.tb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  %.pre18.i.i.i117 = load i64, ptr %i.sg, align 8, !alias.scope !3241 ; 3 uses
  %.pre28.i.i.i118 = load i64, ptr %1, align 8, !range !66, !alias.scope !3241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3246)
  %i.tc = icmp eq i64 %.pre28.i.i.i118, %.pre18.i.i.i117
  br i1 %i.tc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i122, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i119, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i122: ; preds = %bb.y
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i117, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3247
  %i.td = load i64, ptr %i.sg, align 8, !alias.scope !3248, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i119

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i119: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i122, %bb.y
  %.sink1.i6.i.i.i120 = phi i64 [ %i.td, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i122 ], [ %.pre18.i.i.i117, %bb.y ] ; 3 uses
  %i.te = icmp sgt i64 %.sink1.i6.i.i.i120, -1
  tail call void @llvm.assume(i1 %i.te)
  %i.tf = load ptr, ptr %i.sh, align 8, !alias.scope !3248, !nonnull !62, !noundef !62
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.sink1.i6.i.i.i120
  store i8 8, ptr %i.tg, align 1, !noalias !3248
  %i.th = add nuw i64 %.sink1.i6.i.i.i120, 1
  store i64 %i.th, ptr %i.sg, align 8, !alias.scope !3248
  %i.ti = zext i32 %.val3 to i64
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction16ReserveFragmentsINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i115, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i119
  %.sink.i121 = phi i64 [ %i.ti, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i119 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i115 ]
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.sink.i121, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction6AppendINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit

bb.z:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3251)
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 78 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 27 uses
  %.pre18.i.i127 = load i64, ptr %i.tj, align 8, !alias.scope !3252 ; 3 uses
  %.pre28.i.i128 = load i64, ptr %1, align 8, !range !66, !alias.scope !3252 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  %i.tl = icmp eq i64 %.pre28.i.i128, %.pre18.i.i127
  br i1 %i.tl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i168, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i129, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i168: ; preds = %bb.z
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i127, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3258
  %i.tm = load i64, ptr %i.tj, align 8, !alias.scope !3259, !noundef !62
  %.pre27.pre.i.i169 = load i64, ptr %1, align 8, !range !66, !alias.scope !3252
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i129

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i129: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i168, %bb.z
  %.pre27.i.i130 = phi i64 [ %.pre27.pre.i.i169, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i168 ], [ %.pre28.i.i128, %bb.z ] ; 2 uses
  %.sink1.i.i.i131 = phi i64 [ %i.tm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i168 ], [ %.pre18.i.i127, %bb.z ] ; 3 uses
  %i.tn = icmp sgt i64 %.sink1.i.i.i131, -1
  tail call void @llvm.assume(i1 %i.tn)
  %i.to = load ptr, ptr %i.tk, align 8, !alias.scope !3259, !nonnull !62, !noundef !62
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %.sink1.i.i.i131
  store i8 -30, ptr %i.tp, align 1, !noalias !3260
  %i.tq = add nuw i64 %.sink1.i.i.i131, 1         ; 3 uses
  store i64 %i.tq, ptr %i.tj, align 8, !alias.scope !3259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3265)
  %i.tr = icmp eq i64 %.pre27.i.i130, %i.tq
  br i1 %i.tr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i167, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i132, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i167: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i129
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i130, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3266
  %i.ts = load i64, ptr %i.tj, align 8, !alias.scope !3267, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i132

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i132: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i167, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i129
  %.sink1.i6.i.i133 = phi i64 [ %i.ts, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i167 ], [ %i.tq, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8Cs9KQ7US1M400_11lance_table.exit.i.i129 ] ; 3 uses
  %i.tt = icmp sgt i64 %.sink1.i6.i.i133, -1
  tail call void @llvm.assume(i1 %i.tt)
  %i.tu = load ptr, ptr %i.tk, align 8, !alias.scope !3267, !nonnull !62, !noundef !62
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %.sink1.i6.i.i133
  store i8 6, ptr %i.tv, align 1, !noalias !3268
  %i.tw = add nuw i64 %.sink1.i6.i.i133, 1
  store i64 %i.tw, ptr %i.tj, align 8, !alias.scope !3267
  %i.tx = tail call fastcc noundef i64 @_RNvXs21_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_6UpdateNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.tx, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !alias.scope !3271, !nonnull !62, !noundef !62 ; 5 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ub = load i64, ptr %i.ua, align 8, !alias.scope !3271, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3272)
  %i.uc = icmp eq i64 %i.ub, 0
  br i1 %i.uc, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i145, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  %.pre18.i.i.i134 = load i64, ptr %i.tj, align 8, !alias.scope !3274, !noalias !3272 ; 3 uses
  %.pre28.i.i.i135 = load i64, ptr %1, align 8, !range !66, !alias.scope !3274, !noalias !3272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3275), !noalias !3272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3276), !noalias !3272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3277), !noalias !3272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3278), !noalias !3272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3279), !noalias !3272
  %i.ud = icmp eq i64 %.pre28.i.i.i135, %.pre18.i.i.i134
  br i1 %i.ud, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i166, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i166: ; preds = %bb.aa
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i134, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3280
  %i.ue = load i64, ptr %i.tj, align 8, !alias.scope !3281, !noalias !3272, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i166, %bb.aa
  %.sink1.i6.i.i.i137 = phi i64 [ %i.ue, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i166 ], [ %.pre18.i.i.i134, %bb.aa ] ; 3 uses
  %i.uf = icmp sgt i64 %.sink1.i6.i.i.i137, -1
  tail call void @llvm.assume(i1 %i.uf), !noalias !3272
  %i.ug = load ptr, ptr %i.tk, align 8, !alias.scope !3281, !noalias !3272, !nonnull !62, !noundef !62
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.sink1.i6.i.i.i137
  store i8 10, ptr %i.uh, align 1, !noalias !3282
  %i.ui = add nuw i64 %.sink1.i6.i.i.i137, 1
  store i64 %i.ui, ptr %i.tj, align 8, !alias.scope !3281, !noalias !3272
  %xtraiter = and i64 %i.ub, 1
  %i.uj = icmp eq i64 %i.ub, 1
  br i1 %i.uj, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136
  %unroll_iter = and i64 %i.ub, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136.new
  %.sroa.04.0.i.i.i.i138 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136.new ], [ %i.vb, %bb.ab ] ; 3 uses
  %.sroa.02.0.i.i.i.i139 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136.new ], [ %i.va, %bb.ab ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136.new ], [ %niter.next.1, %bb.ab ]
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i138
  %.val.i.i.i.i140 = load i64, ptr %i.uk, align 8, !alias.scope !3272, !noalias !3271, !noundef !62
  %i.ul = or i64 %.val.i.i.i.i140, 1
  %i.um = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ul, i1 true)
  %i.un = xor i64 %i.um, 63
  %i.uo = mul nuw nsw i64 %i.un, 9
  %i.up = add nuw nsw i64 %i.uo, 73
  %i.uq = lshr i64 %i.up, 6
  %i.ur = add i64 %i.uq, %.sroa.02.0.i.i.i.i139
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i138
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %.val.i.i.i.i140.1 = load i64, ptr %i.ut, align 8, !alias.scope !3272, !noalias !3271, !noundef !62
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

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.i141.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136
  %.sroa.04.0.i.i.i.i138.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136 ], [ %i.vb, %.lr.ph.preheader.i.i.i141.unr-lcssa ]
  %.sroa.02.0.i.i.i.i139.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i136 ], [ %i.va, %.lr.ph.preheader.i.i.i141.unr-lcssa ]
  %lcmp.mod703 = trunc i64 %i.ub to i1
  tail call void @llvm.assume(i1 %lcmp.mod703)
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %.sroa.04.0.i.i.i.i138.epil.init
  %.val.i.i.i.i140.epil = load i64, ptr %i.vc, align 8, !alias.scope !3272, !noalias !3271, !noundef !62
  %i.vd = or i64 %.val.i.i.i.i140.epil, 1
  %i.ve = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.vd, i1 true)
  %i.vf = xor i64 %i.ve, 63
  %i.vg = mul nuw nsw i64 %i.vf, 9
  %i.vh = add nuw nsw i64 %i.vg, 73
  %i.vi = lshr i64 %i.vh, 6
  %i.vj = add i64 %i.vi, %.sroa.02.0.i.i.i.i139.epil.init
  br label %.lr.ph.preheader.i.i.i141

.lr.ph.preheader.i.i.i141:                        ; preds = %.lr.ph.preheader.i.i.i141.unr-lcssa, %.epil.preheader
  %.lcssa683 = phi i64 [ %i.va, %.lr.ph.preheader.i.i.i141.unr-lcssa ], [ %i.vj, %.epil.preheader ]
  %.idx.i.i.i142 = shl nuw nsw i64 %i.ub, 3
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.idx.i.i.i142
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa683, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3283
  br label %.lr.ph.i.i.i143

.lr.ph.i.i.i143:                                  ; preds = %.lr.ph.i.i.i143, %.lr.ph.preheader.i.i.i141
  %.sroa.0.02.i.i.i144 = phi ptr [ %i.vl, %.lr.ph.i.i.i143 ], [ %i.tz, %.lr.ph.preheader.i.i.i141 ] ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i144, i64 8 ; 2 uses
  %i.vm = load i64, ptr %.sroa.0.02.i.i.i144, align 8, !alias.scope !3272, !noalias !3271, !noundef !62
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.vm, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3283
  %i.vn = icmp eq ptr %i.vl, %i.vk
  br i1 %i.vn, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i145, label %.lr.ph.i.i.i143

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i145: ; preds = %.lr.ph.i.i.i143, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i132
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.vp = load ptr, ptr %i.vo, align 8, !alias.scope !3271, !nonnull !62, !noundef !62 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !3271, !noundef !62 ; 2 uses
  %.idx.i.i146 = mul nuw nsw i64 %i.vr, 224
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 %.idx.i.i146
  %i.vt = icmp eq i64 %i.vr, 0
  br i1 %i.vt, label %._crit_edge.i.i148, label %.lr.ph.i.i147

.lr.ph.i.i147:                                    ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i145, %.lr.ph.i.i147
  %.sroa.0.0115.i.i = phi ptr [ %i.vu, %.lr.ph.i.i147 ], [ %i.vp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i145 ] ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.0115.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.0.0115.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3271
  %i.vv = icmp eq ptr %i.vu, %i.vs
  br i1 %i.vv, label %._crit_edge.i.i148, label %.lr.ph.i.i147

._crit_edge.i.i148:                               ; preds = %.lr.ph.i.i147, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint6413encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i145
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vx = load ptr, ptr %i.vw, align 8, !alias.scope !3271, !nonnull !62, !noundef !62 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.vz = load i64, ptr %i.vy, align 8, !alias.scope !3271, !noundef !62 ; 2 uses
  %.idx123.i.i = mul nuw nsw i64 %i.vz, 224
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.idx123.i.i
  %i.wb = icmp eq i64 %i.vz, 0
  br i1 %i.wb, label %._crit_edge119.i.i, label %.lr.ph118.i.i

.lr.ph118.i.i:                                    ; preds = %._crit_edge.i.i148, %.lr.ph118.i.i
  %.sroa.02.0116.i.i = phi ptr [ %i.wc, %.lr.ph118.i.i ], [ %i.vx, %._crit_edge.i.i148 ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.02.0116.i.i, i64 224 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12DataFragmentINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.02.0116.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3271
  %i.wd = icmp eq ptr %i.wc, %i.wa
  br i1 %i.wd, label %._crit_edge119.i.i, label %.lr.ph118.i.i

._crit_edge119.i.i:                               ; preds = %.lr.ph118.i.i, %._crit_edge.i.i148
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.wf = load ptr, ptr %i.we, align 8, !alias.scope !3271, !nonnull !62, !noundef !62 ; 5 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.wh = load i64, ptr %i.wg, align 8, !alias.scope !3271, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  %i.wi = icmp eq i64 %i.wh, 0
  br i1 %i.wi, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge119.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  %.pre18.i88.i.i = load i64, ptr %i.tj, align 8, !alias.scope !3286, !noalias !3284 ; 3 uses
  %.pre28.i89.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3286, !noalias !3284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3287), !noalias !3284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3288), !noalias !3284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3289), !noalias !3284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3290), !noalias !3284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291), !noalias !3284
  %i.wj = icmp eq i64 %.pre28.i89.i.i, %.pre18.i88.i.i
  br i1 %i.wj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i91.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i91.i.i: ; preds = %bb.ac
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i88.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3292
  %i.wk = load i64, ptr %i.tj, align 8, !alias.scope !3293, !noalias !3284, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i91.i.i, %bb.ac
  %.sink1.i6.i90.i.i = phi i64 [ %i.wk, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i91.i.i ], [ %.pre18.i88.i.i, %bb.ac ] ; 3 uses
  %i.wl = icmp sgt i64 %.sink1.i6.i90.i.i, -1
  tail call void @llvm.assume(i1 %i.wl), !noalias !3284
  %i.wm = load ptr, ptr %i.tk, align 8, !alias.scope !3293, !noalias !3284, !nonnull !62, !noundef !62
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 %.sink1.i6.i90.i.i
  store i8 34, ptr %i.wn, align 1, !noalias !3294
  %i.wo = add nuw i64 %.sink1.i6.i90.i.i, 1
  store i64 %i.wo, ptr %i.tj, align 8, !alias.scope !3293, !noalias !3284
  %xtraiter705 = and i64 %i.wh, 1
  %i.wp = icmp eq i64 %i.wh, 1
  br i1 %i.wp, label %.epil.preheader704, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i
  %unroll_iter709 = and i64 %i.wh, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i.new
  %.sroa.04.0.i.i12.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i.new ], [ %i.xj, %bb.ad ] ; 3 uses
  %.sroa.02.0.i.i13.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i.new ], [ %i.xi, %bb.ad ]
  %niter710 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i.new ], [ %niter710.next.1, %bb.ad ]
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.sroa.04.0.i.i12.i.i
  %.val.i.i14.i.i = load i32, ptr %i.wq, align 4, !alias.scope !3284, !noalias !3271, !noundef !62
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
  %.val.i.i14.i.i.1 = load i32, ptr %i.xa, align 4, !alias.scope !3284, !noalias !3271, !noundef !62
  %i.xb = or i32 %.val.i.i14.i.i.1, 1
  %i.xc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xb, i1 true)
  %i.xd = xor i32 %i.xc, 31
  %i.xe = mul nuw nsw i32 %i.xd, 9
  %i.xf = add nuw nsw i32 %i.xe, 73
  %i.xg = lshr i32 %i.xf, 6
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = add i64 %i.wy, %i.xh                    ; 3 uses
  %i.xj = add nuw nsw i64 %.sroa.04.0.i.i12.i.i, 2 ; 2 uses
  %niter710.next.1 = add i64 %niter710, 2         ; 2 uses
  %niter710.ncmp.1 = icmp eq i64 %niter710.next.1, %unroll_iter709
  br i1 %niter710.ncmp.1, label %.lr.ph.preheader.i15.i.i.unr-lcssa, label %bb.ad

.lr.ph.preheader.i15.i.i.unr-lcssa:               ; preds = %bb.ad
  %lcmp.mod706.not = icmp eq i64 %xtraiter705, 0
  br i1 %lcmp.mod706.not, label %.lr.ph.preheader.i15.i.i, label %.epil.preheader704

.epil.preheader704:                               ; preds = %.lr.ph.preheader.i15.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i
  %.sroa.04.0.i.i12.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i ], [ %i.xj, %.lr.ph.preheader.i15.i.i.unr-lcssa ]
  %.sroa.02.0.i.i13.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit92.i.i ], [ %i.xi, %.lr.ph.preheader.i15.i.i.unr-lcssa ]
  %lcmp.mod708 = trunc i64 %i.wh to i1
  tail call void @llvm.assume(i1 %lcmp.mod708)
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.sroa.04.0.i.i12.i.i.epil.init
  %.val.i.i14.i.i.epil = load i32, ptr %i.xk, align 4, !alias.scope !3284, !noalias !3271, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa682, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3295
  br label %.lr.ph.i17.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.preheader.i15.i.i
  %.sroa.0.02.i18.i.i = phi ptr [ %i.xu, %.lr.ph.i17.i.i ], [ %i.wf, %.lr.ph.preheader.i15.i.i ] ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i18.i.i, i64 4 ; 2 uses
  %i.xv = load i32, ptr %.sroa.0.02.i18.i.i, align 4, !alias.scope !3284, !noalias !3271, !noundef !62
  %i.xw = zext i32 %i.xv to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.xw, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3295
  %i.xx = icmp eq ptr %i.xu, %i.xt
  br i1 %i.xx, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i, label %.lr.ph.i17.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %.lr.ph.i17.i.i, %._crit_edge119.i.i
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.xz = load ptr, ptr %i.xy, align 8, !alias.scope !3271, !nonnull !62, !noundef !62 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.yb = load i64, ptr %i.ya, align 8, !alias.scope !3271, !noundef !62 ; 2 uses
  %.idx124.i.i = shl nuw nsw i64 %i.yb, 5
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.idx124.i.i
  %i.yd = icmp eq i64 %i.yb, 0
  br i1 %i.yd, label %._crit_edge122.i.i, label %.lr.ph121.i.i

.lr.ph121.i.i:                                    ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i, %.lr.ph121.i.i
  %.sroa.05.0120.i.i = phi ptr [ %i.ye, %.lr.ph121.i.i ], [ %i.xz, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.05.0120.i.i, i64 32 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb16CompactedSsTableINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.05.0120.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3271
  %i.yf = icmp eq ptr %i.ye, %i.yc
  br i1 %i.yf, label %._crit_edge122.i.i, label %.lr.ph121.i.i

._crit_edge122.i.i:                               ; preds = %.lr.ph121.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.yh = load ptr, ptr %i.yg, align 8, !alias.scope !3271, !nonnull !62, !noundef !62 ; 5 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !3271, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3296)
  %i.yk = icmp eq i64 %i.yj, 0
  br i1 %i.yk, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit26.i.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge122.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3297)
  %.pre18.i93.i.i = load i64, ptr %i.tj, align 8, !alias.scope !3298, !noalias !3296 ; 3 uses
  %.pre28.i94.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3298, !noalias !3296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299), !noalias !3296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3300), !noalias !3296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3301), !noalias !3296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3302), !noalias !3296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3303), !noalias !3296
  %i.yl = icmp eq i64 %.pre28.i94.i.i, %.pre18.i93.i.i
  br i1 %i.yl, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i96.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i96.i.i: ; preds = %bb.ae
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i93.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3304
  %i.ym = load i64, ptr %i.tj, align 8, !alias.scope !3305, !noalias !3296, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i96.i.i, %bb.ae
  %.sink1.i6.i95.i.i = phi i64 [ %i.ym, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i96.i.i ], [ %.pre18.i93.i.i, %bb.ae ] ; 3 uses
  %i.yn = icmp sgt i64 %.sink1.i6.i95.i.i, -1
  tail call void @llvm.assume(i1 %i.yn), !noalias !3296
  %i.yo = load ptr, ptr %i.tk, align 8, !alias.scope !3305, !noalias !3296, !nonnull !62, !noundef !62
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 %.sink1.i6.i95.i.i
  store i8 50, ptr %i.yp, align 1, !noalias !3306
  %i.yq = add nuw i64 %.sink1.i6.i95.i.i, 1
  store i64 %i.yq, ptr %i.tj, align 8, !alias.scope !3305, !noalias !3296
  %xtraiter712 = and i64 %i.yj, 1
  %i.yr = icmp eq i64 %i.yj, 1
  br i1 %i.yr, label %.epil.preheader711, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i
  %unroll_iter716 = and i64 %i.yj, -2
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i.new
  %.sroa.04.0.i.i19.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i.new ], [ %i.zl, %bb.af ] ; 3 uses
  %.sroa.02.0.i.i20.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i.new ], [ %i.zk, %bb.af ]
  %niter717 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i.new ], [ %niter717.next.1, %bb.af ]
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.sroa.04.0.i.i19.i.i
  %.val.i.i21.i.i = load i32, ptr %i.ys, align 4, !alias.scope !3296, !noalias !3271, !noundef !62
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
  %.val.i.i21.i.i.1 = load i32, ptr %i.zc, align 4, !alias.scope !3296, !noalias !3271, !noundef !62
  %i.zd = or i32 %.val.i.i21.i.i.1, 1
  %i.ze = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.zd, i1 true)
  %i.zf = xor i32 %i.ze, 31
  %i.zg = mul nuw nsw i32 %i.zf, 9
  %i.zh = add nuw nsw i32 %i.zg, 73
  %i.zi = lshr i32 %i.zh, 6
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = add i64 %i.za, %i.zj                    ; 3 uses
  %i.zl = add nuw nsw i64 %.sroa.04.0.i.i19.i.i, 2 ; 2 uses
  %niter717.next.1 = add i64 %niter717, 2         ; 2 uses
  %niter717.ncmp.1 = icmp eq i64 %niter717.next.1, %unroll_iter716
  br i1 %niter717.ncmp.1, label %.lr.ph.preheader.i22.i.i.unr-lcssa, label %bb.af

.lr.ph.preheader.i22.i.i.unr-lcssa:               ; preds = %bb.af
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %.lr.ph.preheader.i22.i.i, label %.epil.preheader711

.epil.preheader711:                               ; preds = %.lr.ph.preheader.i22.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i
  %.sroa.04.0.i.i19.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i ], [ %i.zl, %.lr.ph.preheader.i22.i.i.unr-lcssa ]
  %.sroa.02.0.i.i20.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit97.i.i ], [ %i.zk, %.lr.ph.preheader.i22.i.i.unr-lcssa ]
  %lcmp.mod715 = trunc i64 %i.yj to i1
  tail call void @llvm.assume(i1 %lcmp.mod715)
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.sroa.04.0.i.i19.i.i.epil.init
  %.val.i.i21.i.i.epil = load i32, ptr %i.zm, align 4, !alias.scope !3296, !noalias !3271, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa681, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3307
  br label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %.lr.ph.i24.i.i, %.lr.ph.preheader.i22.i.i
  %.sroa.0.02.i25.i.i = phi ptr [ %i.zw, %.lr.ph.i24.i.i ], [ %i.yh, %.lr.ph.preheader.i22.i.i ] ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i25.i.i, i64 4 ; 2 uses
  %i.zx = load i32, ptr %.sroa.0.02.i25.i.i, align 4, !alias.scope !3296, !noalias !3271, !noundef !62
  %i.zy = zext i32 %i.zx to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.zy, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3307
  %i.zz = icmp eq ptr %i.zw, %i.zv
  br i1 %i.zz, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit26.i.i, label %.lr.ph.i24.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit26.i.i: ; preds = %.lr.ph.i24.i.i, %._crit_edge122.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aab = load i32, ptr %i.aaa, align 8, !alias.scope !3271, !noundef !62 ; 2 uses
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit26.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3308)
  %.pre18.i98.i.i = load i64, ptr %i.tj, align 8, !alias.scope !3309 ; 3 uses
  %.pre28.i99.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3314)
  %i.aad = icmp eq i64 %.pre28.i99.i.i, %.pre18.i98.i.i
  br i1 %i.aad, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i101.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit102.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i101.i.i: ; preds = %bb.ag
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i98.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3315
  %i.aae = load i64, ptr %i.tj, align 8, !alias.scope !3316, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit102.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit102.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i101.i.i, %bb.ag
  %.sink1.i6.i100.i.i = phi i64 [ %i.aae, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i101.i.i ], [ %.pre18.i98.i.i, %bb.ag ] ; 3 uses
  %i.aaf = icmp sgt i64 %.sink1.i6.i100.i.i, -1
  tail call void @llvm.assume(i1 %i.aaf)
  %i.aag = load ptr, ptr %i.tk, align 8, !alias.scope !3316, !nonnull !62, !noundef !62
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %.sink1.i6.i100.i.i
  store i8 56, ptr %i.aah, align 1, !noalias !3317
  %i.aai = add nuw i64 %.sink1.i6.i100.i.i, 1
  store i64 %i.aai, ptr %i.tj, align 8, !alias.scope !3316
  %i.aaj = sext i32 %i.aab to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.aaj, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3271
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit102.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6uint3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit26.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aal = load i64, ptr %i.aak, align 8, !range !64, !alias.scope !3271, !noundef !62
  %.not.i.i = icmp eq i64 %i.aal, -1
  br i1 %.not.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3320)
  %.pre18.i.i.i.i149 = load i64, ptr %i.tj, align 8, !alias.scope !3321 ; 3 uses
  %.pre28.i.i.i.i150 = load i64, ptr %1, align 8, !range !66, !alias.scope !3321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3326)
  %i.aam = icmp eq i64 %.pre28.i.i.i.i150, %.pre18.i.i.i.i149
  br i1 %i.aam, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i165, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i151, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i165: ; preds = %bb.ai
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i149, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3327
  %i.aan = load i64, ptr %i.tj, align 8, !alias.scope !3328, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i151

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i151: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i165, %bb.ai
  %.sink1.i6.i.i.i.i152 = phi i64 [ %i.aan, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i165 ], [ %.pre18.i.i.i.i149, %bb.ai ] ; 3 uses
  %i.aao = icmp sgt i64 %.sink1.i6.i.i.i.i152, -1
  tail call void @llvm.assume(i1 %i.aao)
  %i.aap = load ptr, ptr %i.tk, align 8, !alias.scope !3328, !nonnull !62, !noundef !62
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %.sink1.i6.i.i.i.i152
  store i8 66, ptr %i.aaq, align 1, !noalias !3329
  %i.aar = add nuw i64 %.sink1.i6.i.i.i.i152, 1
  store i64 %i.aar, ptr %i.tj, align 8, !alias.scope !3328
  %i.aas = tail call fastcc noundef i64 @_RNvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.aak), !noalias !3319
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.aas, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aau = load ptr, ptr %i.aat, align 8, !alias.scope !3333, !nonnull !62, !noundef !62 ; 5 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aaw = load i64, ptr %i.aav, align 8, !alias.scope !3333, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3334)
  %i.aax = icmp eq i64 %i.aaw, 0
  br i1 %i.aax, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3335)
  %.pre18.i.i.i.i.i153 = load i64, ptr %i.tj, align 8, !alias.scope !3336, !noalias !3334 ; 3 uses
  %.pre28.i.i.i.i.i154 = load i64, ptr %1, align 8, !range !66, !alias.scope !3336, !noalias !3334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3337), !noalias !3334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3338), !noalias !3334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3339), !noalias !3334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3340), !noalias !3334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3341), !noalias !3334
  %i.aay = icmp eq i64 %.pre28.i.i.i.i.i154, %.pre18.i.i.i.i.i153
  br i1 %i.aay, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i164, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i164: ; preds = %bb.aj
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i153, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3342
  %i.aaz = load i64, ptr %i.tj, align 8, !alias.scope !3343, !noalias !3334, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i164, %bb.aj
  %.sink1.i6.i.i.i.i.i156 = phi i64 [ %i.aaz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i164 ], [ %.pre18.i.i.i.i.i153, %bb.aj ] ; 3 uses
  %i.aba = icmp sgt i64 %.sink1.i6.i.i.i.i.i156, -1
  tail call void @llvm.assume(i1 %i.aba), !noalias !3334
  %i.abb = load ptr, ptr %i.tk, align 8, !alias.scope !3343, !noalias !3334, !nonnull !62, !noundef !62
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %.sink1.i6.i.i.i.i.i156
  store i8 10, ptr %i.abc, align 1, !noalias !3344
  %i.abd = add nuw i64 %.sink1.i6.i.i.i.i.i156, 1
  store i64 %i.abd, ptr %i.tj, align 8, !alias.scope !3343, !noalias !3334
  %xtraiter719 = and i64 %i.aaw, 1
  %i.abe = icmp eq i64 %i.aaw, 1
  br i1 %i.abe, label %.epil.preheader718, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155
  %unroll_iter723 = and i64 %i.aaw, -2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155.new ], [ %i.aby, %bb.ak ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155.new ], [ %i.abx, %bb.ak ]
  %niter724 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155.new ], [ %niter724.next.1, %bb.ak ]
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %.sroa.04.0.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i32, ptr %i.abf, align 4, !alias.scope !3334, !noalias !3345, !noundef !62
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
  %.val.i.i.i.i.i.i.1 = load i32, ptr %i.abp, align 4, !alias.scope !3334, !noalias !3345, !noundef !62
  %i.abq = or i32 %.val.i.i.i.i.i.i.1, 1
  %i.abr = sext i32 %i.abq to i64
  %i.abs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.abr, i1 true)
  %i.abt = xor i64 %i.abs, 63
  %i.abu = mul nuw nsw i64 %i.abt, 9
  %i.abv = add nuw nsw i64 %i.abu, 73
  %i.abw = lshr i64 %i.abv, 6
  %i.abx = add i64 %i.abw, %i.abn                 ; 3 uses
  %i.aby = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i, 2 ; 2 uses
  %niter724.next.1 = add i64 %niter724, 2         ; 2 uses
  %niter724.ncmp.1 = icmp eq i64 %niter724.next.1, %unroll_iter723
  br i1 %niter724.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, label %bb.ak

.lr.ph.preheader.i.i.i.i.i.unr-lcssa:             ; preds = %bb.ak
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  br i1 %lcmp.mod720.not, label %.lr.ph.preheader.i.i.i.i.i, label %.epil.preheader718

.epil.preheader718:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155 ], [ %i.aby, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i155 ], [ %i.abx, %.lr.ph.preheader.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod722 = trunc i64 %i.aaw to i1
  tail call void @llvm.assume(i1 %lcmp.mod722)
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.i.epil = load i32, ptr %i.abz, align 4, !alias.scope !3334, !noalias !3345, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa680, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3346
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i = phi ptr [ %i.acj, %.lr.ph.i.i.i.i.i ], [ %i.aau, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i, i64 4 ; 2 uses
  %i.ack = load i32, ptr %.sroa.0.02.i.i.i.i.i, align 4, !alias.scope !3334, !noalias !3345, !noundef !62
  %i.acl = sext i32 %i.ack to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.acl, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3346
  %i.acm = icmp eq ptr %i.acj, %i.aci
  br i1 %i.acm, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i151
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aco = load i64, ptr %i.acn, align 8, !range !81, !alias.scope !3333, !noundef !62 ; 2 uses
  %.not.i.i.i.i157 = icmp eq i64 %i.aco, -2
  br i1 %.not.i.i.i.i157, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  %.not.i.i.i.i.i = icmp eq i64 %i.aco, -1
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3351)
  %.pre18.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !3352 ; 3 uses
  %.pre28.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3357)
  %i.acp = icmp eq i64 %.pre28.i.i.i.i.i.i.i, %.pre18.i.i.i.i.i.i.i
  br i1 %i.acp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i: ; preds = %bb.am
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3358
  %i.acq = load i64, ptr %i.tj, align 8, !alias.scope !3359, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i, %bb.am
  %.sink1.i6.i.i.i.i.i.i.i = phi i64 [ %i.acq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i ], [ %.pre18.i.i.i.i.i.i.i, %bb.am ] ; 3 uses
  %i.acr = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.acr)
  %i.acs = load ptr, ptr %i.tk, align 8, !alias.scope !3359, !nonnull !62, !noundef !62
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 %.sink1.i6.i.i.i.i.i.i.i
  store i8 26, ptr %i.act, align 1, !noalias !3360
  %i.acu = add nuw i64 %.sink1.i6.i.i.i.i.i.i.i, 1
  store i64 %i.acu, ptr %i.tj, align 8, !alias.scope !3359
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.acw = load i64, ptr %i.acv, align 8, !alias.scope !3361, !noundef !62 ; 11 uses
  %i.acx = icmp eq i64 %i.acw, 0                  ; 2 uses
  br i1 %i.acx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
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

bb.ao:                                            ; preds = %bb.an, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i158 = phi i64 [ %i.adg, %bb.an ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i ]
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.adi = load i32, ptr %i.adh, align 8, !alias.scope !3361, !noundef !62 ; 3 uses
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
  %i.ads = load i64, ptr %i.adr, align 8, !alias.scope !3361, !noundef !62 ; 3 uses
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
  %i.aec = load double, ptr %i.aeb, align 8, !alias.scope !3361, !noundef !62 ; 2 uses
  %i.aed = fcmp une double %i.aec, 0.000000e+00   ; 2 uses
  %..i.i.i.i.i.i.i = select i1 %i.aed, i64 9, i64 0
  %i.aee = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i158
  %i.aef = add nuw i64 %i.aee, %.sroa.02.0.i.i.i.i.i.i.i159
  %i.aeg = add nuw i64 %i.aef, %..i.i.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.aeg, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  br i1 %i.acx, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RNvXs1H_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_11BloomFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.i.i.i.i.i.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.aeh, align 8, !alias.scope !3365 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3367)
  %.pre18.i.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !3368 ; 3 uses
  %.pre28.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  %i.aei = icmp eq i64 %.pre28.i.i.i.i.i.i.i.i, %.pre18.i.i.i.i.i.i.i.i
  br i1 %i.aei, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i: ; preds = %bb.as
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3374
  %i.aej = load i64, ptr %i.tj, align 8, !alias.scope !3375, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i, %bb.as
  %.sink1.i6.i.i.i.i.i.i.i.i = phi i64 [ %i.aej, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i.i.i ], [ %.pre18.i.i.i.i.i.i.i.i, %bb.as ] ; 3 uses
  %i.aek = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aek)
  %i.ael = load ptr, ptr %i.tk, align 8, !alias.scope !3375, !nonnull !62, !noundef !62
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 %.sink1.i6.i.i.i.i.i.i.i.i
  store i8 10, ptr %i.aem, align 1, !noalias !3376
  %i.aen = add nuw i64 %.sink1.i6.i.i.i.i.i.i.i.i, 1
  store i64 %i.aen, ptr %i.tj, align 8, !alias.scope !3375
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.acw, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3377)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3378)
  %i.aeo = load i64, ptr %i.tj, align 8, !alias.scope !3379, !noundef !62 ; 3 uses
  %i.aep = load i64, ptr %1, align 8, !range !66, !alias.scope !3379, !noundef !62
  %i.aeq = sub i64 %i.aep, %i.aeo
  %i.aer = icmp ugt i64 %i.acw, %i.aeq
  br i1 %i.aer, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i, !prof !65

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aeo, i64 noundef range(i64 0, -9223372036854775808) %i.acw, i64 noundef 1, i64 noundef 1), !noalias !3380
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !3381 ; 3 uses
  %.pre1.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3381
  %.pre2.i.i.i.i.i.i.i.i.i = sub i64 %.pre1.i.i.i.i.i.i.i.i.i, %.pre.i.i.i.i.i.i.i.i.i
  %i.aes = icmp ugt i64 %i.acw, %.pre2.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  br i1 %i.aes, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.us.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i, !prof !82

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.us.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.acw, i64 noundef 1, i64 noundef 1), !noalias !3380
  %i.aet = load i64, ptr %i.tj, align 8, !alias.scope !3383, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_RINvMs3j_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_9Operation6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEBd_:bb.a
_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i
  %i.afv = phi ptr [ %.pre1.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i ]
  %.sink1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afr, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.afw = icmp sgt i64 %.sink1.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.afw)
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 %.sink1.i.i.i.i.i.i.i.i.i.i
  store double %i.aec, ptr %i.afx, align 1, !noalias !3425
  %i.afy = add nuw i64 %.sink1.i.i.i.i.i.i.i.i.i.i, 8
  br label %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBd_.exit.sink.split.i.i.i

bb.az:                                            ; preds = %bb.al
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i.i.i.i.i = load ptr, ptr %i.afz, align 8, !alias.scope !3426 ; 9 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i.i.i.i.i = load i64, ptr %i.aga, align 8, !alias.scope !3426 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3428)
  %.pre18.i.i2.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !3429 ; 3 uses
  %.pre28.i.i3.i.i.i.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3434)
  %i.agb = icmp eq i64 %.pre28.i.i3.i.i.i.i.i, %.pre18.i.i2.i.i.i.i.i
  br i1 %i.agb, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i4.i.i.i.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i: ; preds = %bb.az
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i2.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3435
  %i.agc = load i64, ptr %i.tj, align 8, !alias.scope !3436, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i4.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i4.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i, %bb.az
  %.sink1.i6.i.i5.i.i.i.i.i = phi i64 [ %i.agc, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i11.i.i.i.i.i ], [ %.pre18.i.i2.i.i.i.i.i, %bb.az ] ; 3 uses
  %i.agd = icmp sgt i64 %.sink1.i6.i.i5.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.agd)
  %i.age = load ptr, ptr %i.tk, align 8, !alias.scope !3436, !nonnull !62, !noundef !62 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 %.sink1.i6.i.i5.i.i.i.i.i
  store i8 18, ptr %i.agf, align 1, !noalias !3437
  %i.agg = add nuw i64 %.sink1.i6.i.i5.i.i.i.i.i, 1 ; 4 uses
  store i64 %i.agg, ptr %i.tj, align 8, !alias.scope !3436
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.agh = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.agh, label %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i4.i.i.i.i.i
  %i.agi = add i64 %.val1.i.i.i.i.i, -1           ; 2 uses
  %xtraiter725 = and i64 %.val1.i.i.i.i.i, 1
  %i.agj = icmp eq i64 %i.agi, 0
  br i1 %i.agj, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter729 = and i64 %.val1.i.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i.i

_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i4.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  %.pre28.i.i.i.i.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  %i.agk = icmp eq i64 %.pre28.i.i.i.i.i.i, %i.agg
  br i1 %i.agk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i: ; preds = %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.agg, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3445
  %i.agl = load i64, ptr %i.tj, align 8, !alias.scope !3446, !noundef !62
  %.pre.i.i.i.i.i = load ptr, ptr %i.tk, align 8, !alias.scope !3446
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i
  %i.agm = phi ptr [ %.pre.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i ], [ %i.age, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i ]
  %.sink1.i6.i.i.i.i.i.i = phi i64 [ %i.agl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i.i.i.i ], [ %i.agg, %_RNvXs1B_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB6_17ExactKeySetFilterNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i.i.i.i.i.i ] ; 3 uses
  %i.agn = icmp sgt i64 %.sink1.i6.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.agn)
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 %.sink1.i6.i.i.i.i.i.i
  store i8 0, ptr %i.ago, align 1, !noalias !3447
  %i.agp = add nuw i64 %.sink1.i6.i.i.i.i.i.i, 1
  br label %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBd_.exit.sink.split.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ahh, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ahg, %.preheader.i.i.i.i.i.i.i.i ]
  %niter730 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter730.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agq, align 8, !alias.scope !3448, !noalias !3449, !noundef !62
  %i.agr = or i64 %.val.i.i.i.i.i.i.i.i.i, 1
  %i.ags = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.agr, i1 true)
  %i.agt = xor i64 %i.ags, 63
  %i.agu = mul nuw nsw i64 %i.agt, 9
  %i.agv = add nuw nsw i64 %i.agu, 73
  %i.agw = lshr i64 %i.agv, 6
  %i.agx = add i64 %i.agw, %.sroa.02.0.i.i.i.i.i.i.i.i.i
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %.val.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.agz, align 8, !alias.scope !3448, !noalias !3449, !noundef !62
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
  %.val.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.ahi, align 8, !alias.scope !3448, !noalias !3449, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.ahx, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3452)
  %.pre18.i.i.i6.i.i.i.i.i = load i64, ptr %i.tj, align 8, !alias.scope !3453, !noalias !3451 ; 3 uses
  %.pre28.i.i.i7.i.i.i.i.i = load i64, ptr %1, align 8, !range !66, !alias.scope !3453, !noalias !3451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454), !noalias !3451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3455), !noalias !3451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3456), !noalias !3451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3457), !noalias !3451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3458), !noalias !3451
  %i.ahy = icmp eq i64 %.pre28.i.i.i7.i.i.i.i.i, %.pre18.i.i.i6.i.i.i.i.i
  br i1 %i.ahy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i: ; preds = %bb.ba
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i6.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !3459
  %i.ahz = load i64, ptr %i.tj, align 8, !alias.scope !3460, !noalias !3451, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i, %bb.ba
  %.sink1.i6.i.i.i9.i.i.i.i.i = phi i64 [ %i.ahz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i.i10.i.i.i.i.i ], [ %.pre18.i.i.i6.i.i.i.i.i, %bb.ba ] ; 3 uses
  %i.aia = icmp sgt i64 %.sink1.i6.i.i.i9.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aia), !noalias !3451
  %i.aib = load ptr, ptr %i.tk, align 8, !alias.scope !3460, !noalias !3451, !nonnull !62, !noundef !62
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 %.sink1.i6.i.i.i9.i.i.i.i.i
  store i8 10, ptr %i.aic, align 1, !noalias !3461
  %i.aid = add nuw i64 %.sink1.i6.i.i.i9.i.i.i.i.i, 1
  store i64 %i.aid, ptr %i.tj, align 8, !alias.scope !3460, !noalias !3451
  %xtraiter732 = and i64 %.val1.i.i.i.i.i, 1
  %i.aie = icmp eq i64 %i.agi, 0
  br i1 %i.aie, label %.epil.preheader731, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i
  %unroll_iter736 = and i64 %.val1.i.i.i.i.i, -2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i.new
  %.sroa.04.0.i.i.i4.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i.new ], [ %i.aiw, %bb.bb ] ; 3 uses
  %.sroa.02.0.i.i.i5.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i.new ], [ %i.aiv, %bb.bb ]
  %niter737 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i.new ], [ %niter737.next.1, %bb.bb ]
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i
  %.val.i.i.i6.i.i.i.i.i.i = load i64, ptr %i.aif, align 8, !alias.scope !3451, !noalias !3462, !noundef !62
  %i.aig = or i64 %.val.i.i.i6.i.i.i.i.i.i, 1
  %i.aih = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aig, i1 true)
  %i.aii = xor i64 %i.aih, 63
  %i.aij = mul nuw nsw i64 %i.aii, 9
  %i.aik = add nuw nsw i64 %i.aij, 73
  %i.ail = lshr i64 %i.aik, 6
  %i.aim = add i64 %i.ail, %.sroa.02.0.i.i.i5.i.i.i.i.i.i
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  %.val.i.i.i6.i.i.i.i.i.i.1 = load i64, ptr %i.aio, align 8, !alias.scope !3451, !noalias !3462, !noundef !62
  %i.aip = or i64 %.val.i.i.i6.i.i.i.i.i.i.1, 1
  %i.aiq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aip, i1 true)
  %i.air = xor i64 %i.aiq, 63
  %i.ais = mul nuw nsw i64 %i.air, 9
  %i.ait = add nuw nsw i64 %i.ais, 73
  %i.aiu = lshr i64 %i.ait, 6
  %i.aiv = add i64 %i.aiu, %i.aim                 ; 3 uses
  %i.aiw = add nuw nsw i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i, 2 ; 2 uses
  %niter737.next.1 = add i64 %niter737, 2         ; 2 uses
  %niter737.ncmp.1 = icmp eq i64 %niter737.next.1, %unroll_iter736
  br i1 %niter737.ncmp.1, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa, label %bb.bb

.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa:       ; preds = %bb.bb
  %lcmp.mod733.not = icmp eq i64 %xtraiter732, 0
  br i1 %lcmp.mod733.not, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %.epil.preheader731

.epil.preheader731:                               ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i
  %.sroa.04.0.i.i.i4.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i ], [ %i.aiw, %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i5.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i8.i.i.i.i.i ], [ %i.aiv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod735 = trunc i64 %.val1.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod735)
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.04.0.i.i.i4.i.i.i.i.i.i.epil.init
  %.val.i.i.i6.i.i.i.i.i.i.epil = load i64, ptr %i.aix, align 8, !alias.scope !3451, !noalias !3462, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa678, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3463
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi ptr [ %i.ajg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ajh = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, align 8, !alias.scope !3451, !noalias !3462, !noundef !62
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.ajh, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3463
  %i.aji = icmp eq ptr %i.ajg, %i.ajf
  br i1 %i.aji, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBd_.exit.sink.split.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ %i.afy, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6double6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i ], [ %i.agp, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i ]
  store i64 %.sink.i.i.i, ptr %i.tj, align 8, !alias.scope !3464
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RINvXs1N_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB7_18KeyExistenceFilterNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBd_.exit.sink.split.i.i.i, %bb.ax, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.i.i.i, %bb.ah
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val8.i.i160 = load ptr, ptr %i.ajj, align 8, !alias.scope !3271 ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val9.i.i161 = load i64, ptr %i.ajk, align 8, !alias.scope !3465, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  %i.ajl = icmp eq i64 %.val9.i.i161, 0
  br i1 %i.ajl, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeyNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEINvNtB4_6uint646encodeB1Y_ENvB2A_11encoded_lenINvNtB4_7message6encodeBQ_B1Y_EINvB3k_11encoded_lenBQ_EEBY_.exit.i.i, label %.lr.ph.i.i.i.i162

.lr.ph.i.i.i.i162:                                ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction18KeyExistenceFilterINtNtCs40k4W9msRzi_5alloc3vec3VechEEBW_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i160) ]
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %.val8.i.i160, align 16, !noalias !3468
  %i.ajm = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.ajn = bitcast <16 x i1> %i.ajm to i16
  %i.ajo = getelementptr inbounds nuw i8, ptr %.val8.i.i160, i64 16
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callBZ_.exit.i.i.i.i, %.lr.ph.i.i.i.i162
  %.sroa.14.018.i.i.i.i = phi i64 [ %.val9.i.i161, %.lr.ph.i.i.i.i162 ], [ %i.aka, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callBZ_.exit.i.i.i.i ]
  %.sroa.10.017.i.i.i.i = phi i16 [ %i.ajn, %.lr.ph.i.i.i.i162 ], [ %i.ajx, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callBZ_.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i = phi ptr [ %i.ajo, %.lr.ph.i.i.i.i162 ], [ %.sroa.6.1.i.i.i.i, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callBZ_.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.015.i.i.i.i = phi ptr [ %.val8.i.i160, %.lr.ph.i.i.i.i162 ], [ %.sroa.02.1.i.i.i.i, %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11transaction10UInt32ListINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBR_QB1Z_EE4callBZ_.exit.i.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %.sroa.10.017.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bc, %.lr.ph.i.i.i.i.i.i
  %i.ajp = phi ptr [ %i.ajt, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i, %bb.bc ] ; 2 uses
  %i.ajq = phi ptr [ %i.ajs, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.02.015.i.i.i.i, %bb.bc ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.ajp, align 16, !noalias !3469
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
  %.val.i.i27.i.i = load i64, ptr %i.akb, align 8, !noalias !3470, !noundef !62 ; 2 uses
  %i.akc = icmp eq i64 %.val.i.i27.i.i, 0         ; 2 uses
  %i.akd = getelementptr i8, ptr %i.ajz, i64 -16  ; 2 uses
  %.val17.i.i.i.i = load ptr, ptr %i.akd, align 8, !noalias !3470 ; 5 uses
  %i.ake = getelementptr i8, ptr %i.ajz, i64 -8   ; 2 uses
  %.val18.i.i.i.i = load i64, ptr %i.ake, align 8, !noalias !3470, !noundef !62 ; 5 uses
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
  %.val.i.i.i.i.i.i.i31.i.i = load i32, ptr %i.ako, align 4, !alias.scope !3471, !noalias !3470, !noundef !62
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
  %.val.i.i.i.i.i.i.i31.i.i.1 = load i32, ptr %i.aky, align 4, !alias.scope !3471, !noalias !3470, !noundef !62
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
  br i1 %niter743.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i28.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i28.i.i
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i28.i.i.epil.preheader

.preheader.i.i.i.i.i.i28.i.i.epil.preheader:      ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.unr-lcssa, %bb.bg
  %.sroa.04.0.i.i.i.i.i.i.i29.i.i.epil.init = phi i64 [ 0, %bb.bg ], [ %i.alh, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i30.i.i.epil.init = phi i64 [ 0, %bb.bg ], [ %i.alg, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod741 = trunc i64 %.val18.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod741)
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.val17.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i29.i.i.epil.init
  %.val.i.i.i.i.i.i.i31.i.i.epil = load i32, ptr %i.ali, align 4, !alias.scope !3471, !noalias !3470, !noundef !62
  %i.alj = or i32 %.val.i.i.i.i.i.i.i31.i.i.epil, 1
  %i.alk = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.alj, i1 true)
  %i.all = xor i32 %i.alk, 31
  %i.alm = mul nuw nsw i32 %i.all, 9
  %i.aln = add nuw nsw i32 %i.alm, 73
  %i.alo = lshr i32 %i.aln, 6
  %i.alp = zext nneg i32 %i.alo to i64
  %i.alq = add i64 %.sroa.02.0.i.i.i.i.i.i.i30.i.i.epil.init, %i.alp
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i28.i.i.epil.preheader
  %.lcssa675 = phi i64 [ %i.alg, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECs9KQ7US1M400_11lance_table.exit.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.alq, %.preheader.i.i.i.i.i.i28.i.i.epil.preheader ] ; 2 uses
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
begin_hunk_3_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb12ExternalFileINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_:bb.a
  %i.ar = load ptr, ptr %i.an, align 8, !alias.scope !19572, !nonnull !62, !noundef !62
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink1.i6.i.i
  store i8 10, ptr %i.as, align 1, !noalias !19573
  %i.at = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.at, ptr %i.am, align 8, !alias.scope !19572
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19561
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19577)
  %i.au = load i64, ptr %i.am, align 8, !alias.scope !19578, !noundef !62 ; 3 uses
  %i.av = load i64, ptr %2, align 8, !range !66, !alias.scope !19578, !noundef !62
  %i.aw = sub i64 %i.av, %i.au
  %i.ax = icmp ugt i64 %i.e, %i.aw
  br i1 %i.ax, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.au, i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef 1, i64 noundef 1), !noalias !19579
  %i.ay = load i64, ptr %i.am, align 8, !alias.scope !19580, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  %.sink16.i = phi i64 [ %i.ay, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i ], [ %i.au, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i ] ; 3 uses
  %i.az = icmp sgt i64 %.sink16.i, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load ptr, ptr %i.an, align 8, !alias.scope !19580, !nonnull !62, !noundef !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sink16.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %.val2.i, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !19581
  %i.bc = add nuw i64 %.sink16.i, %i.e
  store i64 %i.bc, ptr %i.am, align 8, !alias.scope !19580
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, %_RNvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19582)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i4.i = load i64, ptr %i.bd, align 8, !alias.scope !19583 ; 3 uses
  %.pre28.i5.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19583
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19588)
  %i.bf = icmp eq i64 %.pre28.i5.i, %.pre18.i4.i
  br i1 %i.bf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i7.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i7.i: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i4.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19589
  %i.bg = load i64, ptr %i.bd, align 8, !alias.scope !19590, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i7.i, %bb.i
  %.sink1.i6.i6.i = phi i64 [ %i.bg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i7.i ], [ %.pre18.i4.i, %bb.i ] ; 3 uses
  %i.bh = icmp sgt i64 %.sink1.i6.i6.i, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load ptr, ptr %i.be, align 8, !alias.scope !19590, !nonnull !62, !noundef !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink1.i6.i6.i
  store i8 16, ptr %i.bj, align 1, !noalias !19591
  %i.bk = add nuw i64 %.sink1.i6.i6.i, 1
  store i64 %i.bk, ptr %i.bd, align 8, !alias.scope !19590
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19561
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit8.i, %bb.h
  br i1 %i.ab, label %_RINvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19592)
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i9.i = load i64, ptr %i.bl, align 8, !alias.scope !19593 ; 3 uses
  %.pre28.i10.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19593
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19598)
  %i.bn = icmp eq i64 %.pre28.i10.i, %.pre18.i9.i
  br i1 %i.bn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i12.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i12.i: ; preds = %bb.k
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i9.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19599
  %i.bo = load i64, ptr %i.bl, align 8, !alias.scope !19600, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i12.i, %bb.k
  %.sink1.i6.i11.i = phi i64 [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i12.i ], [ %.pre18.i9.i, %bb.k ] ; 3 uses
  %i.bp = icmp sgt i64 %.sink1.i6.i11.i, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = load ptr, ptr %i.bm, align 8, !alias.scope !19600, !nonnull !62, !noundef !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink1.i6.i11.i
  store i8 24, ptr %i.br, align 1, !noalias !19601
  %i.bs = add nuw i64 %.sink1.i6.i11.i, 1
  store i64 %i.bs, ptr %i.bl, align 8, !alias.scope !19600
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19561
  br label %_RINvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit

_RINvXs21_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_12ExternalFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit: ; preds = %bb.j, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb13IndexMetadataINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef range(i32 1, 3) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext nneg i32 %i.b to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.c, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.d = tail call fastcc noundef i64 @_RNvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB5_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.d, ptr noalias noundef align 8 dereferenceable(24) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19749)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load i64, ptr %i.e, align 8, !range !64, !alias.scope !19748, !noundef !62
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val12.i = load ptr, ptr %i.g, align 8, !alias.scope !19748
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val13.i = load i64, ptr %i.h, align 8, !alias.scope !19748
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb4UuidINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 1, ptr %.val12.i, i64 %.val13.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19748
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !19748, !nonnull !62, !noundef !62 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !19748, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19750)
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19751)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i.i = load i64, ptr %i.n, align 8, !alias.scope !19752, !noalias !19750 ; 3 uses
  %.pre28.i.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19752, !noalias !19750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19753), !noalias !19750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19754), !noalias !19750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19755), !noalias !19750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19756), !noalias !19750
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19757), !noalias !19750
  %i.p = icmp eq i64 %.pre28.i.i, %.pre18.i.i
  br i1 %i.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i: ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19758
  %i.q = load i64, ptr %i.n, align 8, !alias.scope !19759, !noalias !19750, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i, %bb.d
  %.sink1.i6.i.i = phi i64 [ %i.q, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i ], [ %.pre18.i.i, %bb.d ] ; 3 uses
  %i.r = icmp sgt i64 %.sink1.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.r), !noalias !19750
  %i.s = load ptr, ptr %i.o, align 8, !alias.scope !19759, !noalias !19750, !nonnull !62, !noundef !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink1.i6.i.i
  store i8 18, ptr %i.t, align 1, !noalias !19760
  %i.u = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !19759, !noalias !19750
  %xtraiter = and i64 %i.l, 1
  %i.v = icmp eq i64 %i.l, 1
  br i1 %i.v, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  %unroll_iter = and i64 %i.l, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.new ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.new ], [ %i.ao, %bb.e ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i.new ], [ %niter.next.1, %bb.e ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i32, ptr %i.w, align 4, !alias.scope !19750, !noalias !19761, !noundef !62
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
  %.val.i.i.i.1 = load i32, ptr %i.ag, align 4, !alias.scope !19750, !noalias !19761, !noundef !62
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

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i ], [ %i.ap, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i ], [ %i.ao, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i32, ptr %i.aq, align 4, !alias.scope !19750, !noalias !19761, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa10, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19762
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.bb = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !19750, !noalias !19761, !noundef !62
  %i.bc = sext i32 %i.bb to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19762
  %i.bd = icmp eq ptr %i.ba, %i.az
  br i1 %i.bd, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, label %.lr.ph.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !19748, !noundef !62 ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val10.i = load ptr, ptr %i.bh, align 8, !alias.scope !19748 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19764)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i23.i = load i64, ptr %i.bi, align 8, !alias.scope !19765 ; 3 uses
  %.pre28.i24.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19765
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19770)
  %i.bk = icmp eq i64 %.pre28.i24.i, %.pre18.i23.i
  br i1 %i.bk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i26.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit27.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i26.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i23.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19771
  %i.bl = load i64, ptr %i.bi, align 8, !alias.scope !19772, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit27.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit27.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i26.i, %bb.f
  %.sink1.i6.i25.i = phi i64 [ %i.bl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i26.i ], [ %.pre18.i23.i, %bb.f ] ; 3 uses
  %i.bm = icmp sgt i64 %.sink1.i6.i25.i, -1
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = load ptr, ptr %i.bj, align 8, !alias.scope !19772, !nonnull !62, !noundef !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink1.i6.i25.i
  store i8 26, ptr %i.bo, align 1, !noalias !19773
  %i.bp = add nuw i64 %.sink1.i6.i25.i, 1
  store i64 %i.bp, ptr %i.bi, align 8, !alias.scope !19772
  %i.bq = icmp sgt i64 %i.bf, -1
  tail call void @llvm.assume(i1 %i.bq)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19748
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19777)
  %i.br = load i64, ptr %i.bi, align 8, !alias.scope !19778, !noundef !62 ; 3 uses
  %i.bs = load i64, ptr %2, align 8, !range !66, !alias.scope !19778, !noundef !62
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = icmp ugt i64 %i.bf, %i.bt
  br i1 %i.bu, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit27.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.br, i64 noundef range(i64 0, -9223372036854775808) %i.bf, i64 noundef 1, i64 noundef 1), !noalias !19779
  %i.bv = load i64, ptr %i.bi, align 8, !alias.scope !19780, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit27.i
  %.sink67.i = phi i64 [ %i.bv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i ], [ %i.br, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit27.i ] ; 3 uses
  %i.bw = icmp sgt i64 %.sink67.i, -1
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = load ptr, ptr %i.bj, align 8, !alias.scope !19780, !nonnull !62, !noundef !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink67.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull readonly align 1 %.val10.i, i64 range(i64 0, -9223372036854775808) %i.bf, i1 false), !noalias !19781
  %i.bz = add nuw i64 %.sink67.i, %i.bf
  store i64 %i.bz, ptr %i.bi, align 8, !alias.scope !19780
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !19748, !noundef !62 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19782)
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i28.i = load i64, ptr %i.cd, align 8, !alias.scope !19783 ; 3 uses
  %.pre28.i29.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19783
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19788)
  %i.cf = icmp eq i64 %.pre28.i29.i, %.pre18.i28.i
  br i1 %i.cf, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i31.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit32.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i31.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i28.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19789
  %i.cg = load i64, ptr %i.cd, align 8, !alias.scope !19790, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit32.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit32.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i31.i, %bb.h
  %.sink1.i6.i30.i = phi i64 [ %i.cg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i31.i ], [ %.pre18.i28.i, %bb.h ] ; 3 uses
  %i.ch = icmp sgt i64 %.sink1.i6.i30.i, -1
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = load ptr, ptr %i.ce, align 8, !alias.scope !19790, !nonnull !62, !noundef !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink1.i6.i30.i
  store i8 32, ptr %i.cj, align 1, !noalias !19791
  %i.ck = add nuw i64 %.sink1.i6.i30.i, 1
  store i64 %i.ck, ptr %i.cd, align 8, !alias.scope !19790
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19748
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit32.i, %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !19748, !noundef !62 ; 9 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBM_ECs9KQ7US1M400_11lance_table.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val7.i = load ptr, ptr %i.co, align 8, !alias.scope !19748 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19793)
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i33.i = load i64, ptr %i.cp, align 8, !alias.scope !19794 ; 3 uses
  %.pre28.i34.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19794
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19799)
  %i.cr = icmp eq i64 %.pre28.i34.i, %.pre18.i33.i
  br i1 %i.cr, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i36.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit37.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i36.i: ; preds = %bb.j
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i33.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19800
  %i.cs = load i64, ptr %i.cp, align 8, !alias.scope !19801, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit37.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit37.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i36.i, %bb.j
  %.sink1.i6.i35.i = phi i64 [ %i.cs, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i36.i ], [ %.pre18.i33.i, %bb.j ] ; 3 uses
  %i.ct = icmp sgt i64 %.sink1.i6.i35.i, -1
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = load ptr, ptr %i.cq, align 8, !alias.scope !19801, !nonnull !62, !noundef !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sink1.i6.i35.i
  store i8 42, ptr %i.cv, align 1, !noalias !19802
  %i.cw = add nuw i64 %.sink1.i6.i35.i, 1
  store i64 %i.cw, ptr %i.cp, align 8, !alias.scope !19801
  %i.cx = icmp sgt i64 %i.cm, -1
  tail call void @llvm.assume(i1 %i.cx)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19803)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19804)
  %i.cy = load i64, ptr %i.cp, align 8, !alias.scope !19805, !noundef !62 ; 3 uses
  %i.cz = load i64, ptr %2, align 8, !range !66, !alias.scope !19805, !noundef !62
  %i.da = sub i64 %i.cz, %i.cy
  %i.db = icmp ugt i64 %i.cm, %i.da
  br i1 %i.db, label %.lr.ph.split.us.i.i.i.i, label %_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i.i.i.i, !prof !65

.lr.ph.split.us.i.i.i.i:                          ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit37.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cy, i64 noundef range(i64 0, -9223372036854775808) %i.cm, i64 noundef 1, i64 noundef 1), !noalias !19806
  %.pre.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !19807 ; 3 uses
  %.pre1.i.i.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19807
  %.pre2.i.i.i = sub i64 %.pre1.i.i.i, %.pre.i.i.i
  %i.dc = icmp ugt i64 %i.cm, %.pre2.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19808)
end_hunk_3
begin_hunk_4_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb13IndexMetadataINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_:bb.a
bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.val14.i = load i32, ptr %i.dn, align 4, !alias.scope !19748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19811)
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i38.i = load i64, ptr %i.do, align 8, !alias.scope !19812 ; 3 uses
  %.pre28.i39.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19817)
  %i.dq = icmp eq i64 %.pre28.i39.i, %.pre18.i38.i
  br i1 %i.dq, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i41.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit42.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i41.i: ; preds = %bb.m
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i38.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19818
  %i.dr = load i64, ptr %i.do, align 8, !alias.scope !19819, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit42.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit42.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i41.i, %bb.m
  %.sink1.i6.i40.i = phi i64 [ %i.dr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i41.i ], [ %.pre18.i38.i, %bb.m ] ; 3 uses
  %i.ds = icmp sgt i64 %.sink1.i6.i40.i, -1
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = load ptr, ptr %i.dp, align 8, !alias.scope !19819, !nonnull !62, !noundef !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sink1.i6.i40.i
  store i8 56, ptr %i.du, align 1, !noalias !19820
  %i.dv = add nuw i64 %.sink1.i6.i40.i, 1
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !19819
  %i.dw = sext i32 %.val14.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19748
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit42.i, %bb.l
  %i.dx = load i64, ptr %1, align 8, !range !70, !alias.scope !19748, !noundef !62
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.dz, align 8, !alias.scope !19748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19821)
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i43.i = load i64, ptr %i.ea, align 8, !alias.scope !19822 ; 3 uses
  %.pre28.i44.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19822
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19827)
  %i.ec = icmp eq i64 %.pre28.i44.i, %.pre18.i43.i
  br i1 %i.ec, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i46.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit47.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i46.i: ; preds = %bb.o
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i43.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19828
  %i.ed = load i64, ptr %i.ea, align 8, !alias.scope !19829, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit47.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit47.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i46.i, %bb.o
  %.sink1.i6.i45.i = phi i64 [ %i.ed, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i46.i ], [ %.pre18.i43.i, %bb.o ] ; 3 uses
  %i.ee = icmp sgt i64 %.sink1.i6.i45.i, -1
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = load ptr, ptr %i.eb, align 8, !alias.scope !19829, !nonnull !62, !noundef !62
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink1.i6.i45.i
  store i8 64, ptr %i.eg, align 1, !noalias !19830
  %i.eh = add nuw i64 %.sink1.i6.i45.i, 1
  store i64 %i.eh, ptr %i.ea, align 8, !alias.scope !19829
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.val.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19748
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit47.i, %bb.n
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ej = load i32, ptr %i.ei, align 8, !range !99, !alias.scope !19748, !noundef !62
  %i.ek = trunc nuw i32 %i.ej to i1
  br i1 %i.ek, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.val9.i = load i32, ptr %i.el, align 4, !alias.scope !19748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19831)
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i48.i = load i64, ptr %i.em, align 8, !alias.scope !19832 ; 3 uses
  %.pre28.i49.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19832
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19837)
  %i.eo = icmp eq i64 %.pre28.i49.i, %.pre18.i48.i
  br i1 %i.eo, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i51.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit52.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i51.i: ; preds = %bb.q
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i48.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19838
  %i.ep = load i64, ptr %i.em, align 8, !alias.scope !19839, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit52.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit52.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i51.i, %bb.q
  %.sink1.i6.i50.i = phi i64 [ %i.ep, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i51.i ], [ %.pre18.i48.i, %bb.q ] ; 3 uses
  %i.eq = icmp sgt i64 %.sink1.i6.i50.i, -1
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = load ptr, ptr %i.en, align 8, !alias.scope !19839, !nonnull !62, !noundef !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sink1.i6.i50.i
  store i8 72, ptr %i.es, align 1, !noalias !19840
  %i.et = add nuw i64 %.sink1.i6.i50.i, 1
  store i64 %i.et, ptr %i.em, align 8, !alias.scope !19839
  %i.eu = zext i32 %.val9.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19748
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit52.i, %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !19748, !nonnull !62, !noundef !62 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !19748, !noundef !62 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ey, 5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx.i
  %i.fa = icmp eq i64 %i.ey, 0
  br i1 %i.fa, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %.sroa.0.059.i = phi ptr [ %i.fb, %.lr.ph.i ], [ %i.ew, %bb.r ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.059.i, i64 32 ; 2 uses
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.059.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19748
  %i.fc = icmp eq ptr %i.fb, %i.ez
  br i1 %i.fc, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.r
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !19748, !nonnull !62, !noundef !62 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !19748, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19841)
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBa_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19842)
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i53.i = load i64, ptr %i.fi, align 8, !alias.scope !19843, !noalias !19841 ; 3 uses
  %.pre28.i54.i = load i64, ptr %2, align 8, !range !66, !alias.scope !19843, !noalias !19841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19844), !noalias !19841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19845), !noalias !19841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19846), !noalias !19841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19847), !noalias !19841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19848), !noalias !19841
  %i.fk = icmp eq i64 %.pre28.i54.i, %.pre18.i53.i
  br i1 %i.fk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i56.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i56.i: ; preds = %bb.s
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i53.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !19849
  %i.fl = load i64, ptr %i.fi, align 8, !alias.scope !19850, !noalias !19841, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i56.i, %bb.s
  %.sink1.i6.i55.i = phi i64 [ %i.fl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i56.i ], [ %.pre18.i53.i, %bb.s ] ; 3 uses
  %i.fm = icmp sgt i64 %.sink1.i6.i55.i, -1
  tail call void @llvm.assume(i1 %i.fm), !noalias !19841
  %i.fn = load ptr, ptr %i.fj, align 8, !alias.scope !19850, !noalias !19841, !nonnull !62, !noundef !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sink1.i6.i55.i
  store i8 90, ptr %i.fo, align 1, !noalias !19851
  %i.fp = add nuw i64 %.sink1.i6.i55.i, 1
  store i64 %i.fp, ptr %i.fi, align 8, !alias.scope !19850, !noalias !19841
  %xtraiter14 = and i64 %i.fg, 1
  %i.fq = icmp eq i64 %i.fg, 1
  br i1 %i.fq, label %.epil.preheader13, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i
  %unroll_iter18 = and i64 %i.fg, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i.new
  %.sroa.04.0.i.i15.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i.new ], [ %i.gk, %bb.t ] ; 3 uses
  %.sroa.02.0.i.i16.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i.new ], [ %i.gj, %bb.t ]
  %niter19 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i.new ], [ %niter19.next.1, %bb.t ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.sroa.04.0.i.i15.i
  %.val.i.i17.i = load i32, ptr %i.fr, align 4, !alias.scope !19841, !noalias !19761, !noundef !62
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
  %.val.i.i17.i.1 = load i32, ptr %i.gb, align 4, !alias.scope !19841, !noalias !19761, !noundef !62
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

.epil.preheader13:                                ; preds = %.lr.ph.preheader.i18.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i
  %.sroa.04.0.i.i15.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i ], [ %i.gk, %.lr.ph.preheader.i18.i.unr-lcssa ]
  %.sroa.02.0.i.i16.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit57.i ], [ %i.gj, %.lr.ph.preheader.i18.i.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %i.fg to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.sroa.04.0.i.i15.i.epil.init
  %.val.i.i17.i.epil = load i32, ptr %i.gl, align 4, !alias.scope !19841, !noalias !19761, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19852
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.preheader.i18.i
  %.sroa.0.02.i21.i = phi ptr [ %i.gv, %.lr.ph.i20.i ], [ %i.fe, %.lr.ph.preheader.i18.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i21.i, i64 4 ; 2 uses
  %i.gw = load i32, ptr %.sroa.0.02.i21.i, align 4, !alias.scope !19841, !noalias !19761, !noundef !62
  %i.gx = sext i32 %i.gw to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.gx, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !19852
  %i.gy = icmp eq ptr %i.gv, %i.gu
  br i1 %i.gy, label %_RINvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBa_.exit, label %.lr.ph.i20.i

_RINvXsY_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_13IndexMetadataNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBa_.exit: ; preds = %.lr.ph.i20.i, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb15DataOverlayFileINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef range(i32 2, 12) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext nneg i32 %i.b to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.c, ptr noalias noundef align 8 dereferenceable(24) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19974)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !range !64, !alias.scope !19974, !noundef !62
  %.not.i = icmp eq i64 %i.e, -1                  ; 2 uses
  br i1 %.not.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i, label %bb.b

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
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.o = load i64, ptr %1, align 8, !range !91, !alias.scope !19974, !noundef !62 ; 3 uses
  %.not3.i = icmp eq i64 %i.o, -1                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19975)
  br i1 %.not3.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19977)
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !19978, !nonnull !62, !noundef !62 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !19978, !noundef !62 ; 6 uses
  %i.s = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader

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
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !19979, !noalias !19978, !noundef !62 ; 3 uses
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
  %.val.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ag, align 8, !alias.scope !19979, !noalias !19978, !noundef !62 ; 3 uses
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
  br i1 %niter.ncmp.1, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.aq, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ap, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %.val2.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %.val1.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.epil.init
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %.val.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.as, align 8, !alias.scope !19979, !noalias !19978, !noundef !62 ; 3 uses
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
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.epil.preheader, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.loopexit.unr-lcssa, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i.loopexit.unr-lcssa ], [ %i.bb, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %i.bc = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %.val2.i.i.i.i ; 2 uses
  %i.bd = or i64 %i.bc, 1
  %i.be = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bd, i1 true)
  br label %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !19978, !noundef !62 ; 3 uses
  %i.bg = or i64 %.val.i.i.i.i, 1
  %i.bh = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = icmp sgt i64 %.val.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.bi)
  br label %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i

_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i: ; preds = %bb.e, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i
  %.val.sink.i.i.i.i = phi i64 [ %.val.i.i.i.i, %bb.e ], [ %i.bc, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i ]
  %.sink3.in.in.in.in.i.i.i.i = phi i64 [ %i.bh, %bb.e ], [ %i.be, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message11encoded_lenNtNtNtCs9KQ7US1M400_11lance_table6format2pb13FieldCoverageEB10_.exit.i.i.i.i ]
  %.sink3.in.in.in.i.i.i.i = xor i64 %.sink3.in.in.in.in.i.i.i.i, 63
  %.sink3.in.in.i.i.i.i = mul nuw nsw i64 %.sink3.in.in.in.i.i.i.i, 9
  %.sink3.in.i.i.i.i = add nuw nsw i64 %.sink3.in.in.i.i.i.i, 73
  %.sink3.i.i.i.i = lshr i64 %.sink3.in.i.i.i.i, 6
  %i.bj = add i64 %.val.sink.i.i.i.i, 1
  %i.bk = add i64 %i.bj, %.sink3.i.i.i.i
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i: ; preds = %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i
  %.sroa.02.0.i4.i = phi i64 [ %i.bk, %_RNvYNvMs3_NtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_fileNtB8_8Coverage11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceBe_.exit.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileE6map_orjNCNvXs1A_BL_NtBL_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0EBP_.exit.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !19974, !noundef !62 ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0                    ; 2 uses
  br i1 %i.bn, label %_RNvXs1A_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_15DataOverlayFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17data_overlay_file8CoverageE6map_orjNvMs3_BL_BJ_11encoded_lenEBR_.exit.i
  %i.bo = or i64 %i.bm, 1
  %i.bp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.bq = xor i64 %i.bp, 63
  %i.br = mul nuw nsw i64 %i.bq, 9
  %i.bs = add nuw nsw i64 %i.br, 73
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = add nuw nsw i64 %i.bt, 1
end_hunk_4
begin_hunk_5_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20641)
  %i.cp = icmp eq i64 %.pre28.i21.i, %.pre18.i20.i
  br i1 %i.cp, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i23.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i23.i: ; preds = %bb.m
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i20.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !20642
  %i.cq = load i64, ptr %i.cn, align 8, !alias.scope !20643, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i23.i, %bb.m
  %.sink1.i6.i22.i = phi i64 [ %i.cq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i23.i ], [ %.pre18.i20.i, %bb.m ] ; 3 uses
  %i.cr = icmp sgt i64 %.sink1.i6.i22.i, -1
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = load ptr, ptr %i.co, align 8, !alias.scope !20643, !nonnull !62, !noundef !62
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sink1.i6.i22.i
  store i8 34, ptr %i.ct, align 1, !noalias !20644
  %i.cu = add nuw i64 %.sink1.i6.i22.i, 1
  store i64 %i.cu, ptr %i.cn, align 8, !alias.scope !20643
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20584
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20648)
  %i.cv = load i64, ptr %i.cn, align 8, !alias.scope !20649, !noundef !62 ; 3 uses
  %i.cw = load i64, ptr %2, align 8, !range !66, !alias.scope !20649, !noundef !62
  %i.cx = sub i64 %i.cw, %i.cv
  %i.cy = icmp ugt i64 %i.ac, %i.cx
  br i1 %i.cy, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i8.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit9.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i8.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cv, i64 noundef range(i64 0, -9223372036854775808) %i.ac, i64 noundef 1, i64 noundef 1), !noalias !20650
  %i.cz = load i64, ptr %i.cn, align 8, !alias.scope !20651, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit9.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit9.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i8.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i
  %.sink28.i = phi i64 [ %i.cz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i8.i ], [ %i.cv, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit24.i ] ; 3 uses
  %i.da = icmp sgt i64 %.sink28.i, -1
  tail call void @llvm.assume(i1 %i.da)
  %i.db = load ptr, ptr %i.co, align 8, !alias.scope !20651, !nonnull !62, !noundef !62
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sink28.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull readonly align 1 %.val1.i, i64 range(i64 0, -9223372036854775808) %i.ac, i1 false), !noalias !20652
  %i.dd = add nuw i64 %.sink28.i, %i.ac
  store i64 %i.dd, ptr %i.cn, align 8, !alias.scope !20651
  br label %_RINvXsL_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8BasePathNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBa_.exit

_RINvXsL_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8BasePathNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBa_.exit: ; preds = %bb.l, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit9.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb8DataFileINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef range(i32 1, 3) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext nneg i32 %i.b to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.c, ptr noalias noundef align 8 dereferenceable(24) %2)
  %i.d = tail call fastcc noundef i64 @_RNvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB6_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.d, ptr noalias noundef align 8 dereferenceable(24) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20773)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !20772, !noundef !62 ; 7 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.h, align 8, !alias.scope !20772 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20775)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre18.i.i = load i64, ptr %i.i, align 8, !alias.scope !20776 ; 3 uses
  %.pre28.i.i = load i64, ptr %2, align 8, !range !66, !alias.scope !20776
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20781)
  %i.k = icmp eq i64 %.pre28.i.i, %.pre18.i.i
  br i1 %i.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i: ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !20782
  %i.l = load i64, ptr %i.i, align 8, !alias.scope !20783, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i, %bb.b
  %.sink1.i6.i.i = phi i64 [ %i.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i.i ], [ %.pre18.i.i, %bb.b ] ; 3 uses
  %i.m = icmp sgt i64 %.sink1.i6.i.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !20783, !nonnull !62, !noundef !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink1.i6.i.i
  store i8 10, ptr %i.o, align 1, !noalias !20784
  %i.p = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !20783
  %i.q = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.q)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20772
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20785)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20788)
  %i.r = load i64, ptr %i.i, align 8, !alias.scope !20789, !noundef !62 ; 3 uses
  %i.s = load i64, ptr %2, align 8, !range !66, !alias.scope !20789, !noundef !62
  %i.t = sub i64 %i.s, %i.r
  %i.u = icmp ugt i64 %i.f, %i.t
  br i1 %i.u, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef 1, i64 noundef 1), !noalias !20790
  %i.v = load i64, ptr %i.i, align 8, !alias.scope !20791, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  %.sink52.i = phi i64 [ %i.v, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i.i ], [ %i.r, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i ] ; 3 uses
  %i.w = icmp sgt i64 %.sink52.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load ptr, ptr %i.j, align 8, !alias.scope !20791, !nonnull !62, !noundef !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sink52.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %.val4.i, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !noalias !20792
  %i.z = add nuw i64 %.sink52.i, %i.f
  store i64 %i.z, ptr %i.i, align 8, !alias.scope !20791
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !20772, !nonnull !62, !noundef !62 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !20772, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20793)
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20794)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i14.i = load i64, ptr %i.af, align 8, !alias.scope !20795, !noalias !20793 ; 3 uses
  %.pre28.i15.i = load i64, ptr %2, align 8, !range !66, !alias.scope !20795, !noalias !20793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20796), !noalias !20793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20797), !noalias !20793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20798), !noalias !20793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20799), !noalias !20793
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20800), !noalias !20793
  %i.ah = icmp eq i64 %.pre28.i15.i, %.pre18.i14.i
  br i1 %i.ah, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i17.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i17.i: ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i14.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !20801
  %i.ai = load i64, ptr %i.af, align 8, !alias.scope !20802, !noalias !20793, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i17.i, %bb.d
  %.sink1.i6.i16.i = phi i64 [ %i.ai, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i17.i ], [ %.pre18.i14.i, %bb.d ] ; 3 uses
  %i.aj = icmp sgt i64 %.sink1.i6.i16.i, -1
  tail call void @llvm.assume(i1 %i.aj), !noalias !20793
  %i.ak = load ptr, ptr %i.ag, align 8, !alias.scope !20802, !noalias !20793, !nonnull !62, !noundef !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink1.i6.i16.i
  store i8 18, ptr %i.al, align 1, !noalias !20803
  %i.am = add nuw i64 %.sink1.i6.i16.i, 1
  store i64 %i.am, ptr %i.af, align 8, !alias.scope !20802, !noalias !20793
  %xtraiter = and i64 %i.ad, 1
  %i.an = icmp eq i64 %i.ad, 1
  br i1 %i.an, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i
  %unroll_iter = and i64 %i.ad, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i.new ], [ %i.bh, %bb.e ] ; 3 uses
  %.sroa.02.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i.new ], [ %i.bg, %bb.e ]
  %niter = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i.new ], [ %niter.next.1, %bb.e ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i32, ptr %i.ao, align 4, !alias.scope !20793, !noalias !20804, !noundef !62
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
  %.val.i.i.i.1 = load i32, ptr %i.ay, align 4, !alias.scope !20793, !noalias !20804, !noundef !62
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

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i ], [ %i.bh, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit18.i ], [ %i.bg, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i.epil = load i32, ptr %i.bi, align 4, !alias.scope !20793, !noalias !20804, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa10, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20805
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.bt = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !20793, !noalias !20804, !noundef !62
  %i.bu = sext i32 %i.bt to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20805
  %i.bv = icmp eq ptr %i.bs, %i.br
  br i1 %i.bv, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i, label %.lr.ph.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !20772, !nonnull !62, !noundef !62 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !20772, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20806)
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20807)
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i19.i = load i64, ptr %i.cb, align 8, !alias.scope !20808, !noalias !20806 ; 3 uses
  %.pre28.i20.i = load i64, ptr %2, align 8, !range !66, !alias.scope !20808, !noalias !20806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20809), !noalias !20806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20810), !noalias !20806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20811), !noalias !20806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20812), !noalias !20806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20813), !noalias !20806
  %i.cd = icmp eq i64 %.pre28.i20.i, %.pre18.i19.i
  br i1 %i.cd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i22.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i22.i: ; preds = %bb.f
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i19.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !20814
  %i.ce = load i64, ptr %i.cb, align 8, !alias.scope !20815, !noalias !20806, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i22.i, %bb.f
  %.sink1.i6.i21.i = phi i64 [ %i.ce, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i22.i ], [ %.pre18.i19.i, %bb.f ] ; 3 uses
  %i.cf = icmp sgt i64 %.sink1.i6.i21.i, -1
  tail call void @llvm.assume(i1 %i.cf), !noalias !20806
  %i.cg = load ptr, ptr %i.cc, align 8, !alias.scope !20815, !noalias !20806, !nonnull !62, !noundef !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sink1.i6.i21.i
  store i8 26, ptr %i.ch, align 1, !noalias !20816
  %i.ci = add nuw i64 %.sink1.i6.i21.i, 1
  store i64 %i.ci, ptr %i.cb, align 8, !alias.scope !20815, !noalias !20806
  %xtraiter14 = and i64 %i.bz, 1
  %i.cj = icmp eq i64 %i.bz, 1
  br i1 %i.cj, label %.epil.preheader13, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i
  %unroll_iter18 = and i64 %i.bz, -2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i.new
  %.sroa.04.0.i.i6.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i.new ], [ %i.dd, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i7.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i.new ], [ %i.dc, %bb.g ]
  %niter19 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i.new ], [ %niter19.next.1, %bb.g ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.04.0.i.i6.i
  %.val.i.i8.i = load i32, ptr %i.ck, align 4, !alias.scope !20806, !noalias !20804, !noundef !62
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
  %.val.i.i8.i.1 = load i32, ptr %i.cu, align 4, !alias.scope !20806, !noalias !20804, !noundef !62
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

.epil.preheader13:                                ; preds = %.lr.ph.preheader.i9.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i
  %.sroa.04.0.i.i6.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i ], [ %i.dd, %.lr.ph.preheader.i9.i.unr-lcssa ]
  %.sroa.02.0.i.i7.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit23.i ], [ %i.dc, %.lr.ph.preheader.i9.i.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.04.0.i.i6.i.epil.init
  %.val.i.i8.i.epil = load i32, ptr %i.de, align 4, !alias.scope !20806, !noalias !20804, !noundef !62
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
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20817
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i9.i
  %.sroa.0.02.i12.i = phi ptr [ %i.do, %.lr.ph.i11.i ], [ %i.bx, %.lr.ph.preheader.i9.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i12.i, i64 4 ; 2 uses
  %i.dp = load i32, ptr %.sroa.0.02.i12.i, align 4, !alias.scope !20806, !noalias !20804, !noundef !62
  %i.dq = sext i32 %i.dp to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20817
  %i.dr = icmp eq ptr %i.do, %i.dn
  br i1 %i.dr, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i, label %.lr.ph.i11.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i: ; preds = %.lr.ph.i11.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dt = load i32, ptr %i.ds, align 8, !alias.scope !20772, !noundef !62 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20818)
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i24.i = load i64, ptr %i.dv, align 8, !alias.scope !20819 ; 3 uses
  %.pre28.i25.i = load i64, ptr %2, align 8, !range !66, !alias.scope !20819
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20824)
  %i.dx = icmp eq i64 %.pre28.i25.i, %.pre18.i24.i
  br i1 %i.dx, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i27.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit28.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i27.i: ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i24.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !20825
  %i.dy = load i64, ptr %i.dv, align 8, !alias.scope !20826, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit28.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit28.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i27.i, %bb.h
  %.sink1.i6.i26.i = phi i64 [ %i.dy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i27.i ], [ %.pre18.i24.i, %bb.h ] ; 3 uses
  %i.dz = icmp sgt i64 %.sink1.i6.i26.i, -1
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = load ptr, ptr %i.dw, align 8, !alias.scope !20826, !nonnull !62, !noundef !62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.sink1.i6.i26.i
  store i8 32, ptr %i.eb, align 1, !noalias !20827
  %i.ec = add nuw i64 %.sink1.i6.i26.i, 1
  store i64 %i.ec, ptr %i.dv, align 8, !alias.scope !20826
  %i.ed = zext i32 %i.dt to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.ed, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20772
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit28.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding5int3213encode_packedINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit13.i
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ef = load i32, ptr %i.ee, align 4, !alias.scope !20772, !noundef !62 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20828)
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i29.i = load i64, ptr %i.eh, align 8, !alias.scope !20829 ; 3 uses
  %.pre28.i30.i = load i64, ptr %2, align 8, !range !66, !alias.scope !20829
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20834)
  %i.ej = icmp eq i64 %.pre28.i30.i, %.pre18.i29.i
  br i1 %i.ej, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i32.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit33.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i32.i: ; preds = %bb.j
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i29.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !20835
  %i.ek = load i64, ptr %i.eh, align 8, !alias.scope !20836, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit33.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit33.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i32.i, %bb.j
  %.sink1.i6.i31.i = phi i64 [ %i.ek, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i32.i ], [ %.pre18.i29.i, %bb.j ] ; 3 uses
  %i.el = icmp sgt i64 %.sink1.i6.i31.i, -1
  tail call void @llvm.assume(i1 %i.el)
  %i.em = load ptr, ptr %i.ei, align 8, !alias.scope !20836, !nonnull !62, !noundef !62
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink1.i6.i31.i
  store i8 40, ptr %i.en, align 1, !noalias !20837
  %i.eo = add nuw i64 %.sink1.i6.i31.i, 1
  store i64 %i.eo, ptr %i.eh, align 8, !alias.scope !20836
  %i.ep = zext i32 %i.ef to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.ep, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20772
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit33.i, %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !20772, !noundef !62 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20838)
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i34.i = load i64, ptr %i.et, align 8, !alias.scope !20839 ; 3 uses
  %.pre28.i35.i = load i64, ptr %2, align 8, !range !66, !alias.scope !20839
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20844)
  %i.ev = icmp eq i64 %.pre28.i35.i, %.pre18.i34.i
  br i1 %i.ev, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i37.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit38.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i37.i: ; preds = %bb.l
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i34.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !20845
  %i.ew = load i64, ptr %i.et, align 8, !alias.scope !20846, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit38.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit38.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i37.i, %bb.l
  %.sink1.i6.i36.i = phi i64 [ %i.ew, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i37.i ], [ %.pre18.i34.i, %bb.l ] ; 3 uses
  %i.ex = icmp sgt i64 %.sink1.i6.i36.i, -1
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load ptr, ptr %i.eu, align 8, !alias.scope !20846, !nonnull !62, !noundef !62
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.sink1.i6.i36.i
  store i8 48, ptr %i.ez, align 1, !noalias !20847
  %i.fa = add nuw i64 %.sink1.i6.i36.i, 1
  store i64 %i.fa, ptr %i.et, align 8, !alias.scope !20846
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.er, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20772
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit38.i, %bb.k
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fc = load i32, ptr %i.fb, align 8, !range !99, !alias.scope !20772, !noundef !62
  %i.fd = trunc nuw i32 %i.fc to i1
  br i1 %i.fd, label %bb.n, label %_RINvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit

bb.n:                                             ; preds = %bb.m
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.val1.i = load i32, ptr %i.fe, align 4, !alias.scope !20772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20848)
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre18.i39.i = load i64, ptr %i.ff, align 8, !alias.scope !20849 ; 3 uses
  %.pre28.i40.i = load i64, ptr %2, align 8, !range !66, !alias.scope !20849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20854)
  %i.fh = icmp eq i64 %.pre28.i40.i, %.pre18.i39.i
  br i1 %i.fh, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i42.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit43.i, !prof !65

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i42.i: ; preds = %bb.n
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.pre18.i39.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !20855
  %i.fi = load i64, ptr %i.ff, align 8, !alias.scope !20856, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit43.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit43.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i42.i, %bb.n
  %.sink1.i6.i41.i = phi i64 [ %i.fi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCs9KQ7US1M400_11lance_table.exit.thread.i.i.i.i.i7.i42.i ], [ %.pre18.i39.i, %bb.n ] ; 3 uses
  %i.fj = icmp sgt i64 %.sink1.i6.i41.i, -1
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = load ptr, ptr %i.fg, align 8, !alias.scope !20856, !nonnull !62, !noundef !62
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sink1.i6.i41.i
  store i8 56, ptr %i.fl, align 1, !noalias !20857
  %i.fm = add nuw i64 %.sink1.i6.i41.i, 1
  store i64 %i.fm, ptr %i.ff, align 8, !alias.scope !20856
  %i.fn = zext i32 %.val1.i to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table(i64 noundef %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !20772
  br label %_RINvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit

_RINvXs1r_NtNtCs9KQ7US1M400_11lance_table6format2pbNtB7_8DataFileNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEEBb_.exit: ; preds = %bb.m, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECs9KQ7US1M400_11lance_table.exit43.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeNtNtNtCs9KQ7US1M400_11lance_table6format2pb9IndexFileINtNtCs40k4W9msRzi_5alloc3vec3VechEEBU_(i32 noundef range(i32 5, 11) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
end_hunk_5
begin_hunk_6_@_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB2_10RowIdIndex3new:bb.a

bb.fx:                                            ; preds = %bb.fv, %bb.fu
  %i.ape = load ptr, ptr %i.jn, align 8, !alias.scope !48742, !nonnull !62, !noundef !62
  %i.apf = getelementptr inbounds nuw [136 x i8], ptr %i.ape, i64 %i.aoz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.apf, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.ax, i64 136, i1 false), !noalias !48742
  %i.apg = add i64 %i.aoz, 1
  store i64 %i.apg, ptr %i.jm, align 8, !alias.scope !48742
  br label %bb.fr

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids5index13RawIndexChunkEEB1v_.exit76: ; preds = %bb.ft, %.loopexit227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !48744)
  %.val.i = load ptr, ptr %i.jn, align 8, !alias.scope !48744, !nonnull !62, !noundef !62 ; 2 uses
  %.val1.i = load i64, ptr %i.jm, align 8, !alias.scope !48744, !noundef !62 ; 2 uses
  %i.aph = icmp eq i64 %.val1.i, 0
  br i1 %i.aph, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1z_EEENtNtBL_4drop4Drop4dropB1F_.exit.i, label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids5index13RawIndexChunkEEB1v_.exit76, %.lr.ph.i.i.i80
  %.sroa.0.07.i.i.i = phi i64 [ %i.apj, %.lr.ph.i.i.i80 ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids5index13RawIndexChunkEEB1v_.exit76 ] ; 2 uses
  %i.api = getelementptr inbounds nuw [136 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 2 uses
  %i.apj = add nuw nsw i64 %.sroa.0.07.i.i.i, 1   ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.api, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(112) %i.apk), !noalias !48744
  %i.apl = getelementptr inbounds nuw i8, ptr %i.api, i64 80
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEBH_(ptr noalias noundef readonly align 8 dereferenceable(56) %i.apl), !noalias !48744
  %i.apm = icmp eq i64 %i.apj, %.val1.i
  br i1 %i.apm, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1z_EEENtNtBL_4drop4Drop4dropB1F_.exit.i, label %.lr.ph.i.i.i80

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1z_EEENtNtBL_4drop4Drop4dropB1F_.exit.i: ; preds = %.lr.ph.i.i.i80, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids5index13RawIndexChunkEEB1v_.exit76
  %.val2.i = load i64, ptr %i.ba, align 8, !range !66, !alias.scope !48744, !noundef !62 ; 2 uses
  %i.apn = icmp eq i64 %.val2.i, 0
  br i1 %i.apn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1M_EEEEB1S_.exit, label %bb.fy

bb.fy:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtNtCscI6d9CVNmLh_4core3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1z_EEENtNtBL_4drop4Drop4dropB1F_.exit.i
  %i.apo = mul nuw i64 %.val2.i, 136
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.apo, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !48744
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1M_EEEEB1S_.exit

.thread173:                                       ; preds = %.body70, %.thread170
  %.pn169 = phi { ptr, i32 } [ %eh.lpad-body71, %.body70 ], [ %.pn57.pn.i, %.thread170 ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTINtNtNtB4_3ops5range14RangeInclusiveyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1M_EEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.ba) #81
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB2_10RowIdIndex8get_many(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = shl nuw nsw i64 %3, 4                    ; 10 uses
  %.not.i.i.i = icmp samesign ugt i64 %3, 576460752303423487
  br i1 %.not.i.i.i, label %bb.d, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !48813
  %i.d = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 9) 8) #76, !noalias !48813 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core5utils7address10RowAddressEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.10.0.ph.i.i = phi i64 [ %i.b, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #80, !noalias !48814
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core5utils7address10RowAddressEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.c
  %.not.i = icmp eq i64 %3, 1                     ; 2 uses
  br i1 %.not.i, label %.loopexit206, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core5utils7address10RowAddressEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i
  %i.f = add nsw i64 %3, -1                       ; 2 uses
  %i.g = add nsw i64 %3, -2
  %xtraiter = and i64 %i.f, 7                     ; 3 uses
  %i.h = icmp ult i64 %i.g, 7
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.f, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.023.i.i = phi ptr [ %i.d, %.lr.ph.i.i.preheader.new ], [ %i.p, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  store i64 0, ptr %.sroa.0.023.i.i, align 8, !noalias !48815
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 16
  store i64 0, ptr %i.i, align 8, !noalias !48815
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 32
  store i64 0, ptr %i.j, align 8, !noalias !48815
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 48
  store i64 0, ptr %i.k, align 8, !noalias !48815
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 64
  store i64 0, ptr %i.l, align 8, !noalias !48815
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 80
  store i64 0, ptr %i.m, align 8, !noalias !48815
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 96
  store i64 0, ptr %i.n, align 8, !noalias !48815
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 112
  store i64 0, ptr %i.o, align 8, !noalias !48815
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit206.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTyjEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit
  %.sink345 = phi i64 [ %3, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTyjEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit ], [ 0, %bb.b ] ; 2 uses
  %.sink344 = phi ptr [ %i.d, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTyjEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit ], [ inttoptr (i64 8 to ptr), %bb.b ]
  store i64 %.sink345, ptr %0, align 8
  %.sroa.7.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink344, ptr %.sroa.7.0..sroa_idx166, align 8
  %.sroa.10.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink345, ptr %.sroa.10.0..sroa_idx168, align 8
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyjEEECs9KQ7US1M400_11lance_table.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag, %.thread
  %.pn.pn191 = phi { ptr, i32 } [ %i.q, %.thread ], [ %i.er, %bb.ag ], [ %lpad.loopexit.split-lp357, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #76
  resume { ptr, i32 } %.pn.pn191

.thread:                                          ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyjEEECs9KQ7US1M400_11lance_table.exit

.loopexit206.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit206, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit206.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.023.i.i.epil.init = phi ptr [ %i.d, %.lr.ph.i.i.preheader ], [ %i.p, %.loopexit206.loopexit.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod366)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.023.i.i.epil = phi ptr [ %i.r, %.lr.ph.i.i.epil ], [ %.sroa.0.023.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  store i64 0, ptr %.sroa.0.023.i.i.epil, align 8, !noalias !48815
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit206, label %.lr.ph.i.i.epil, !llvm.loop !48751

.loopexit206:                                     ; preds = %.loopexit206.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core5utils7address10RowAddressEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i
  %.sroa.0.0.lcssa30.i.i = phi ptr [ %i.d, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core5utils7address10RowAddressEE7reserveCs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.p, %.loopexit206.loopexit.unr-lcssa ], [ %i.r, %.lr.ph.i.i.epil ]
  store i64 0, ptr %.sroa.0.0.lcssa30.i.i, align 8, !noalias !48815
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !48816
  %i.s = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 9) 8) #76, !noalias !48816 ; 19 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.loopexit206
  %xtraiter367 = and i64 %3, 3                    ; 3 uses
  %i.u = icmp samesign ult i64 %3, 4
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter371 = and i64 %3, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i

bb.f:                                             ; preds = %.loopexit206
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #80
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.f
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.v = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i.i.i.i.i ] ; 7 uses
  %niter372 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter372.next.3, %.lr.ph.i.i.i.i.i.i ]
  %i.w = or disjoint i64 %i.v, 1                  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !noalias !48817, !noundef !62
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.v ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !noalias !48818
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.v, ptr %i.aa, align 8, !noalias !48818
  %i.ab = or disjoint i64 %i.v, 2                 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.w
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !48817, !noundef !62
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.w ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !noalias !48818
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.w, ptr %i.af, align 8, !noalias !48818
  %i.ag = or disjoint i64 %i.v, 3                 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ab
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !48817, !noundef !62
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ab ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !noalias !48818
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ab, ptr %i.ak, align 8, !noalias !48818
  %i.al = add nuw nsw i64 %i.v, 4                 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.an = load i64, ptr %i.am, align 8, !noalias !48817, !noundef !62
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ag ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !noalias !48818
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.ag, ptr %i.ap, align 8, !noalias !48818
  %niter372.next.3 = add i64 %niter372, 4         ; 2 uses
  %niter372.ncmp.3 = icmp eq i64 %niter372.next.3, %unroll_iter371
  br i1 %niter372.ncmp.3, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod369.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod369.not, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit.unr-lcssa ]
  %lcmp.mod370 = icmp ne i64 %xtraiter367, 0
  tail call void @llvm.assume(i1 %lcmp.mod370)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %i.aq = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter368 = phi i64 [ %epil.iter368.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !noalias !48817, !noundef !62
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.aq ; 2 uses
  store i64 %i.at, ptr %i.au, align 8, !noalias !48818
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.aq, ptr %i.av, align 8, !noalias !48818
  %epil.iter368.next = add i64 %epil.iter368, 1   ; 2 uses
  %epil.iter368.cmp.not = icmp eq i64 %epil.iter368.next, %xtraiter367
  br i1 %epil.iter368.cmp.not, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !48778

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit.unr-lcssa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48819
  br i1 %.not.i, label %.lr.ph, label %bb.g, !prof !48820

bb.g:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit
  %i.aw = icmp samesign ult i64 %3, 21
  br i1 %i.aw, label %bb.i, label %bb.h, !prof !74

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortTyjENCINvMB6_SBT_20sort_unstable_by_keyyNCNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB1C_10RowIdIndex8get_many0E0EB1G_(ptr noalias noundef nonnull align 8 %i.s, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.lr.ph unwind label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.b
  %.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTyjENCINvMB8_SB18_20sort_unstable_by_keyyNCNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB1S_10RowIdIndex8get_many0E0EB1W_.exit.i.i, %bb.i
  %.sroa.0.04.i.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTyjENCINvMB8_SB18_20sort_unstable_by_keyyNCNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB1S_10RowIdIndex8get_many0E0EB1W_.exit.i.i ], [ %.sroa.0.01.i.i, %bb.i ] ; 4 uses
  %.pn3.i.i = phi ptr [ %.sroa.0.04.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTyjENCINvMB8_SB18_20sort_unstable_by_keyyNCNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB1S_10RowIdIndex8get_many0E0EB1W_.exit.i.i ], [ %i.s, %bb.i ] ; 5 uses
  %.val9.i.i.i = load i64, ptr %.sroa.0.04.i.i, align 8, !alias.scope !48821, !noundef !62 ; 3 uses
  %.val10.i.i.i = load i64, ptr %.pn3.i.i, align 8, !alias.scope !48821, !noundef !62
  %i.ay = icmp ult i64 %.val9.i.i.i, %.val10.i.i.i
  br i1 %i.ay, label %bb.j, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTyjENCINvMB8_SB18_20sort_unstable_by_keyyNCNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB1S_10RowIdIndex8get_many0E0EB1W_.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i68
  %i.az = getelementptr inbounds nuw i8, ptr %.pn3.i.i, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !48821, !noundef !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.pn3.i.i, i64 16, i1 false), !alias.scope !48821
  %i.bb = icmp eq ptr %.pn3.i.i, %i.s
  br i1 %i.bb, label %._crit_edge, label %.lr.ph354

bb.k:                                             ; preds = %.lr.ph354
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i69353, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !48821
  %i.bc = icmp eq ptr %i.bd, %i.s
  br i1 %i.bc, label %._crit_edge, label %.lr.ph354

.lr.ph354:                                        ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i.i69353 = phi ptr [ %i.bd, %bb.k ], [ %.pn3.i.i, %bb.j ] ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i69353, i64 -16 ; 4 uses
  %.val8.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !48821, !noundef !62
  %i.be = icmp ult i64 %.val9.i.i.i, %.val8.i.i.i
  br i1 %i.be, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %.lr.ph354, %bb.j
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %.sroa.0.0.i.i.i69353, %.lr.ph354 ] ; 2 uses
  store i64 %.val9.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i, align 8, !alias.scope !48821, !noalias !48822
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa.i.i, i64 8
  store i64 %i.ba, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !48821, !noalias !48822
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTyjENCINvMB8_SB18_20sort_unstable_by_keyyNCNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB1S_10RowIdIndex8get_many0E0EB1W_.exit.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTyjENCINvMB8_SB18_20sort_unstable_by_keyyNCNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB1S_10RowIdIndex8get_many0E0EB1W_.exit.i.i: ; preds = %._crit_edge, %.lr.ph.i.i68
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i, %i.ax
  br i1 %.not.i.i, label %.lr.ph, label %.lr.ph.i.i68

.lr.ph:                                           ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTyjENCINvMB8_SB18_20sort_unstable_by_keyyNCNvMNtNtCs9KQ7US1M400_11lance_table6rowids5indexNtB1S_10RowIdIndex8get_many0E0EB1W_.exit.i.i, %bb.h, %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTyjEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtB1H_6copied6CopiedINtNtNtB1L_5slice4iter4IteryEEINtNtNtB1L_3ops5range5RangejEEE9from_iterCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48819
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.b
  %i.bg = load ptr, ptr %1, align 8, !noundef !62 ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %.not = icmp ne ptr %i.bg, null                 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8
  %.sroa.513.0 = select i1 %.not, i64 %i.bj, i64 0
  %.sroa.012.sroa.0.0 = zext i1 %.not to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %.sroa.012.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.bl, i64 undef
  br label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.y, %.critedge.i87, %bb.ae
  %lpad.loopexit.split-lp357 = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !48823
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTyjEEECs9KQ7US1M400_11lance_table.exit

bb.l:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.15.0 = phi i64 [ %i.bh, %.lr.ph ], [ %.sroa.15.3, %.backedge ]
  %.sroa.28.0 = phi i64 [ %.sroa.012.sroa.5.sroa.6.0, %.lr.ph ], [ %.sroa.28.3, %.backedge ]
  %spec.select.i.i.i277 = phi ptr [ undef, %.lr.ph ], [ %spec.select.i.i.i275, %.backedge ]
  %.sroa.4.0..sroa_idx.i73.promoted274 = phi ptr [ undef, %.lr.ph ], [ %.sroa.4.0..sroa_idx.i73.promoted272, %.backedge ] ; 2 uses
  %.sroa.5179.0269 = phi ptr [ %i.s, %.lr.ph ], [ %i.bm, %.backedge ] ; 3 uses
  %.promoted230268 = phi i1 [ false, %.lr.ph ], [ true, %.backedge ]
  %.sroa.415.0..sroa_idx.promoted238267 = phi i64 [ %.sroa.513.0, %.lr.ph ], [ %.sroa.415.0..sroa_idx.promoted235, %.backedge ] ; 2 uses
  %.promoted223248266 = phi i64 [ %.sroa.012.sroa.0.0, %.lr.ph ], [ %.promoted223245, %.backedge ] ; 2 uses
  %.sroa.014.sroa.4.0..sroa_idx.promoted256265 = phi ptr [ null, %.lr.ph ], [ %.sroa.014.sroa.4.0..sroa_idx.promoted253, %.backedge ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.5179.0269, i64 16 ; 2 uses
  %i.bn = load i64, ptr %.sroa.5179.0269, align 8, !noalias !48824, !noundef !62 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.5179.0269, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !48824, !noundef !62 ; 3 uses
  br label %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2f_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB2l_.exit

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTyjEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit: ; preds = %.backedge, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_TRINtNtNtB5_3ops5range14RangeInclusiveyERTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1s_EEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB30_8PeekableINtNtCseeNzlfJOvtk_8rangemap13inclusive_map4IteryB1r_EE4peek0EB1y_.exit82
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !48825
  br label %bb.e

_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2f_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB2l_.exit: ; preds = %bb.w, %bb.l
  %.sroa.15.1 = phi i64 [ %.sroa.15.0, %bb.l ], [ %.sroa.15.3, %bb.w ] ; 4 uses
  %.sroa.28.1 = phi i64 [ %.sroa.28.0, %bb.l ], [ %.sroa.28.3, %bb.w ] ; 8 uses
  %spec.select.i.i.i276 = phi ptr [ %spec.select.i.i.i277, %bb.l ], [ %spec.select.i.i.i275, %bb.w ]
  %.sroa.4.0..sroa_idx.i73.promoted273 = phi ptr [ %.sroa.4.0..sroa_idx.i73.promoted274, %bb.l ], [ %.sroa.4.0..sroa_idx.i73.promoted272, %bb.w ]
  %.sroa.014.sroa.4.0..sroa_idx.promoted255 = phi ptr [ %.sroa.014.sroa.4.0..sroa_idx.promoted256265, %bb.l ], [ %.sroa.014.sroa.4.0..sroa_idx.promoted253, %bb.w ] ; 2 uses
  %.promoted223247 = phi i64 [ %.promoted223248266, %bb.l ], [ %.promoted223245, %bb.w ] ; 3 uses
  %.sroa.415.0..sroa_idx.promoted237 = phi i64 [ %.sroa.415.0..sroa_idx.promoted238267, %bb.l ], [ %.sroa.415.0..sroa_idx.promoted235, %bb.w ] ; 2 uses
  %.promoted229 = phi i1 [ %.promoted230268, %bb.l ], [ false, %bb.w ]
  %.sroa.0.0.i115225 = phi ptr [ %.sroa.4.0..sroa_idx.i73.promoted274, %bb.l ], [ %.sroa.0.0.i115224, %bb.w ]
  %i.bq = phi ptr [ %.sroa.014.sroa.4.0..sroa_idx.promoted256265, %bb.l ], [ %i.dw, %bb.w ] ; 4 uses
  %i.br = phi i64 [ %.promoted223248266, %bb.l ], [ %i.dx, %bb.w ] ; 3 uses
  %i.bs = phi i64 [ %.sroa.415.0..sroa_idx.promoted238267, %bb.l ], [ %i.dy, %bb.w ] ; 3 uses
  br i1 %.promoted229, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_TRINtNtNtB5_3ops5range14RangeInclusiveyERTNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB1s_EEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB30_8PeekableINtNtCseeNzlfJOvtk_8rangemap13inclusive_map4IteryB1r_EE4peek0EB1y_.exit, label %bb.m

bb.m:                                             ; preds = %_RNvXsk_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_4IterINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2f_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextB2l_.exit
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.noexc75, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = add i64 %i.bs, -1                       ; 2 uses
  %i.bv = trunc nuw i64 %i.br to i1
  br i1 %i.bv, label %bb.o, label %.critedge.i87

bb.o:                                             ; preds = %bb.n
  %.not.i.i88 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i88, label %bb.p, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2V_EE10init_frontB31_.exit.i93

bb.p:                                             ; preds = %bb.o
  %i.bw = inttoptr i64 %.sroa.15.1 to ptr         ; 3 uses
  %i.bx = icmp eq i64 %.sroa.28.1, 0
  br i1 %i.bx, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2V_EE10init_frontB31_.exit.i93, label %.lr.ph.i.i118.preheader

.lr.ph.i.i118.preheader:                          ; preds = %bb.p
  %xtraiter373 = and i64 %.sroa.28.1, 7           ; 2 uses
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %.lr.ph.i.i118.prol.loopexit, label %.lr.ph.i.i118.prol

.lr.ph.i.i118.prol:                               ; preds = %.lr.ph.i.i118.preheader, %.lr.ph.i.i118.prol
  %.sroa.013.017.i.i119.prol = phi ptr [ %.sroa.013.0.i.i121.prol, %.lr.ph.i.i118.prol ], [ %i.bw, %.lr.ph.i.i118.preheader ]
  %.sroa.011.016.i.i120.prol = phi i64 [ %i.bz, %.lr.ph.i.i118.prol ], [ %.sroa.28.1, %.lr.ph.i.i118.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i118.prol ], [ 0, %.lr.ph.i.i118.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i119.prol, i64 1512
  %i.bz = add i64 %.sroa.011.016.i.i120.prol, -1  ; 2 uses
  %.sroa.013.0.i.i121.prol = load ptr, ptr %i.by, align 8, !noalias !48826, !nonnull !62, !noundef !62 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter373
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i118.prol.loopexit, label %.lr.ph.i.i118.prol, !llvm.loop !48798

.lr.ph.i.i118.prol.loopexit:                      ; preds = %.lr.ph.i.i118.prol, %.lr.ph.i.i118.preheader
  %.sroa.013.0.i.i121.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i118.preheader ], [ %.sroa.013.0.i.i121.prol, %.lr.ph.i.i118.prol ]
  %.sroa.013.017.i.i119.unr = phi ptr [ %i.bw, %.lr.ph.i.i118.preheader ], [ %.sroa.013.0.i.i121.prol, %.lr.ph.i.i118.prol ]
  %.sroa.011.016.i.i120.unr = phi i64 [ %.sroa.28.1, %.lr.ph.i.i118.preheader ], [ %i.bz, %.lr.ph.i.i118.prol ]
  %i.ca = icmp ult i64 %.sroa.28.1, 8
  br i1 %i.ca, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtCseeNzlfJOvtk_8rangemap13range_wrapper26RangeInclusiveStartWrapperyETNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentB2V_EE10init_frontB31_.exit.i93, label %.lr.ph.i.i118

.lr.ph.i.i118:                                    ; preds = %.lr.ph.i.i118.prol.loopexit, %.lr.ph.i.i118
  %.sroa.013.017.i.i119 = phi ptr [ %.sroa.013.0.i.i121.7, %.lr.ph.i.i118 ], [ %.sroa.013.017.i.i119.unr, %.lr.ph.i.i118.prol.loopexit ]
  %.sroa.011.016.i.i120 = phi i64 [ %i.cj, %.lr.ph.i.i118 ], [ %.sroa.011.016.i.i120.unr, %.lr.ph.i.i118.prol.loopexit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i119, i64 1512
  %.sroa.013.0.i.i121 = load ptr, ptr %i.cb, align 8, !noalias !48826, !nonnull !62, !noundef !62
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i121, i64 1512
  %.sroa.013.0.i.i121.1 = load ptr, ptr %i.cc, align 8, !noalias !48826, !nonnull !62, !noundef !62
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i121.1, i64 1512
  %.sroa.013.0.i.i121.2 = load ptr, ptr %i.cd, align 8, !noalias !48826, !nonnull !62, !noundef !62
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i121.2, i64 1512
  %.sroa.013.0.i.i121.3 = load ptr, ptr %i.ce, align 8, !noalias !48826, !nonnull !62, !noundef !62
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i121.3, i64 1512
  %.sroa.013.0.i.i121.4 = load ptr, ptr %i.cf, align 8, !noalias !48826, !nonnull !62, !noundef !62
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i121.4, i64 1512
  %.sroa.013.0.i.i121.5 = load ptr, ptr %i.cg, align 8, !noalias !48826, !nonnull !62, !noundef !62
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i121.5, i64 1512
  %.sroa.013.0.i.i121.6 = load ptr, ptr %i.ch, align 8, !noalias !48826, !nonnull !62, !noundef !62
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i121.6, i64 1512
  %i.cj = add i64 %.sroa.011.016.i.i120, -8       ; 2 uses
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB6_9operation9Operation22get_delete_config_keys:bb.a
  br label %.body.i

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_delete_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ae, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %bb.i, !noalias !54568

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.k
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54593, !noalias !54568
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.l:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_delete_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.j, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.as, %bb.j ], [ %i.as, %bb.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81, !noalias !54568
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.backedge.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %.body.i, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.y, %bb.d ], [ %i.y, %bb.e ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit: ; preds = %.loopexit24.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !54568
  br label %bb.m

bb.m:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_delete_config_keys0EE9from_iterB3q_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtB6_9operation9Operation22get_upsert_config_keys(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = load i64, ptr %1, align 8, !range !80, !noundef !62 ; 3 uses
  %i.h = icmp ne i64 %i.g, -9223372036854775798
  tail call void @llvm.assume(i1 %i.h)
  %i.i = xor i64 %i.g, -9223372036854775808
  %i.j = icmp slt i64 %i.g, 0
  %i.k = select i1 %i.j, i64 %i.i, i64 10
  switch i64 %i.k, label %bb.b [
    i64 2, label %bb.c
    i64 12, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !noundef !62 ; 5 uses
  %.not1 = icmp eq ptr %i.o, null
  br i1 %.not1, label %bb.b, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !64, !noundef !62
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.b, label %bb.u

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54669)
  %.val3.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !54670
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !54669, !noundef !62 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54672
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.v, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.x = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.o, %bb.f ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !54673
  %i.z = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -768 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.z to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.sroa.6.0 = phi ptr [ %i.w, %bb.f ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %.sroa.018.0.copyload.i = phi ptr [ %i.o, %bb.f ], [ %i.aa, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.v, %bb.f ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ac = add i16 %.lcssa.i.i.i.i.i, -1
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = and i16 %i.ac, %.lcssa.i.i.i.i.i
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [48 x i8], ptr %.sroa.018.0.copyload.i, i64 %i.ag
  %i.ai = add nsw i64 %i.s, -1                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -48
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj), !noalias !54674
  %.pr.i = load i64, ptr %i.e, align 8, !noalias !54672 ; 4 uses
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, label %bb.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i, %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !54671
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8, !alias.scope !54671
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8, !alias.scope !54671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54672
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit

bb.g:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = icmp eq i64 %.pr.i, 0
  br i1 %i.an, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !54675
  br label %common.resume

bb.i:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !54672 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !54672
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 4) ; 3 uses
  %i.ao = mul i64 %.sroa.0.0.i.i, 24              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.s, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.j, !prof !63

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !54676
  %i.aq = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 8) #76, !noalias !54676 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.k ], [ 0, %bb.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ao) #80
          to label %.noexc.i unwind label %bb.g, !noalias !54672

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.aq, %bb.k ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %i.as = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.as)
  store i64 %.pr.i, ptr %.sroa.10.0.i.i, align 8, !noalias !54672
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !54672
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !54672
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !54672
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !54672
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !54672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54672
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54678)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54679
  %i.at = icmp eq i64 %i.ai, 0
  br i1 %i.at, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.lr.ph.i.i.i
  %i.au = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.bm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ]
  %i.av = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 5 uses
  %.lcssa26.i.i.i = phi ptr [ %.sroa.6.0, %.lr.ph.i.i.i ], [ %.lcssa25.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %i.aw = phi i16 [ %i.af, %.lr.ph.i.i.i ], [ %i.bf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.val1722.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %i.bi, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.lcssa152021.i.i.i = phi ptr [ %.sroa.018.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1519.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa26.i.i.i, %bb.n ] ; 2 uses
  %i.ay = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa152021.i.i.i, %bb.n ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ax, align 16, !noalias !54680
  %i.az = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -768 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.az to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.n
  %.lcssa25.i.i.i = phi ptr [ %.lcssa26.i.i.i, %bb.n ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1519.i.i.i = phi ptr [ %.lcssa152021.i.i.i, %bb.n ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.aw, %bb.n ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bc = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = and i16 %i.bc, %.lcssa.i.i.i.i.i.i.i
  %i.bg = sub nsw i64 0, %i.be
  %i.bh = getelementptr inbounds [48 x i8], ptr %.lcssa1519.i.i.i, i64 %i.bg
  %i.bi = add i64 %.val1722.i.i.i, -1             ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -48
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %.noexc6.i unwind label %bb.s, !noalias !54672

.noexc6.i:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i
  %.pr.i.i.i = load i64, ptr %i.d, align 8, !noalias !54679 ; 4 uses
  %.not.i.i5.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %.noexc6.i
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !54679 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !54679
  %2 = icmp samesign ult i64 %i.av, 384307168202282326
  tail call void @llvm.assume(i1 %2)
  %i.bk = load i64, ptr %i.f, align 8, !range !66, !alias.scope !54681, !noalias !54672, !noundef !62
  %i.bl = icmp eq i64 %i.av, %i.bk
  br i1 %i.bl, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i, %bb.o
  %i.bm = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i ], [ %i.au, %bb.o ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.av ; 3 uses
  store i64 %.pr.i.i.i, ptr %i.bn, align 8, !noalias !54679
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !54679
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !54679
  %i.bo = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.bo, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !54681, !noalias !54672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54679
  %i.bp = icmp eq i64 %i.bi, 0
  br i1 %i.bp, label %.loopexit.i, label %bb.n

bb.p:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.br, label %.body.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %.pr.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !54682
  br label %.body.i

bb.r:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.av, i64 noundef range(i64 1, 0) %.val1722.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i unwind label %bb.p, !noalias !54683

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i_crit_edge.i: ; preds = %bb.r
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !54681, !noalias !54672
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i

bb.s:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.i.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.q, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bs, %bb.s ], [ %i.bq, %bb.q ], [ %i.bq, %bb.p ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81, !noalias !54672
  br label %common.resume

.loopexit.i:                                      ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i, %.noexc6.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !54684
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit

common.resume:                                    ; preds = %bb.v, %bb.w, %.body.i13, %bb.g, %bb.h, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.h ], [ %eh.lpad-body.i, %.body.i ], [ %i.am, %bb.g ], [ %eh.lpad-body.i14, %.body.i13 ], [ %i.ch, %bb.v ], [ %i.ch, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit: ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysNtNtCs40k4W9msRzi_5alloc6string6StringB1T_EENtNtNtB8_6traits8iterator8Iterator4nextCs9KQ7US1M400_11lance_table.exit.thread.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54672
  br label %bb.t

bb.t:                                             ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_upsert_config_keys0EE9from_iterB3q_.exit, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysB11_B11_EEE9from_iterCs9KQ7US1M400_11lance_table.exit, %bb.b
  ret void

bb.u:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !62 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bw, 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54685)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !54685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54687)
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %.loopexit24.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %bb.u, %.backedge.i.i.i
  %i.bz = phi ptr [ %i.ca, %.backedge.i.i.i ], [ %i.bu, %bb.u ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54691)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !range !64, !alias.scope !54692, !noalias !54693, !noundef !62
  %.not.i.i.i.i.i3 = icmp eq i64 %i.cc, -1
  br i1 %.not.i.i.i.i.i3, label %.critedge.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bz), !noalias !54694
  %.pr.i.i.i4 = load i64, ptr %i.b, align 8, !noalias !54685 ; 4 uses
  %i.cd = icmp eq i64 %.pr.i.i.i4, -1
  br i1 %i.cd, label %.backedge.i.i.i, label %bb.x

.backedge.i.i.i:                                  ; preds = %.critedge.i.i.i, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i
  %i.ce = icmp eq ptr %i.ca, %i.bx
  br i1 %i.ce, label %.loopexit24.i, label %.lr.ph.i.i.i2

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i2
  store i64 -1, ptr %i.b, align 8, !alias.scope !54695, !noalias !54685
  br label %.backedge.i.i.i

.loopexit24.i:                                    ; preds = %.backedge.i.i.i, %bb.u
  store i64 0, ptr %0, align 8, !alias.scope !54685
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cf, align 8, !alias.scope !54685
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !54685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54685
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB3o_9conflictsNtNtB3o_9operation9Operation22get_upsert_config_keys0EE9from_iterB3q_.exit

bb.v:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = icmp eq i64 %.pr.i.i.i4, 0
  br i1 %i.ci, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.copyload.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.510.0.copyload.i, i64 noundef %.pr.i.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !54696
  br label %common.resume

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.510.0.copyload.i = load ptr, ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !54685 ; 3 uses
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload.i5 = load i64, ptr %.sroa.6.0..sroa_idx13.i, align 8, !noalias !54685
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !54697
  %i.cj = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #76, !noalias !54697 ; 6 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #80
          to label %.noexc.i24 unwind label %bb.v, !noalias !54685

.noexc.i24:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  store i64 %.pr.i.i.i4, ptr %i.cj, align 8, !noalias !54685
  %.sroa.419.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.sroa.510.0.copyload.i, ptr %.sroa.419.0..sroa_idx.i6, align 8, !noalias !54685
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %.sroa.6.0.copyload.i5, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !54685
  store i64 4, ptr %i.c, align 8, !noalias !54685
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i7, align 8, !noalias !54685
  %.sroa.6.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i8, align 8, !noalias !54685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54685
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54699)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54700
  %i.cl = icmp eq ptr %i.ca, %i.bx
  br i1 %i.cl, label %.loopexit.i21, label %.lr.ph.i.i.preheader.lr.ph.i.i.i

.lr.ph.i.i.preheader.lr.ph.i.i.i:                 ; preds = %bb.z
  %.sroa.5.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i20, %.lr.ph.i.i.preheader.lr.ph.i.i.i
  %i.cm = phi ptr [ %i.cj, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.cx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i20 ]
  %i.cn = phi i64 [ 1, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.cz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i20 ] ; 5 uses
  %.sroa.0.021.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.preheader.lr.ph.i.i.i ], [ %i.cp, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs9KQ7US1M400_11lance_table.exit.i.i.i20 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54702)
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.backedge.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i
  %i.co = phi ptr [ %i.cp, %.backedge.i.i.i.i.i ], [ %.sroa.0.021.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54706)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !range !64, !alias.scope !54707, !noalias !54708, !noundef !62
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %i.cr, -1
  br i1 %.not.i.i.i.i.i.i.i12, label %.critedge.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i11
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co)
          to label %.noexc6.i17 unwind label %bb.ad, !noalias !54685

.noexc6.i17:                                      ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs_NtNtCs9KQ7US1M400_11lance_table11transaction9conflictsNtNtBX_9operation9Operation22get_upsert_config_keys0INtB7_5FnMutTRNtNtBX_10update_map14UpdateMapEntryEE8call_mutBZ_.exit.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !54700 ; 4 uses
  %i.cs = icmp eq i64 %.pr.i.i.i.i.i, -1
  br i1 %i.cs, label %.backedge.i.i.i.i.i, label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryENCNvMs_NtB1E_9conflictsNtNtB1E_9operation9Operation22get_upsert_config_keys0ENtNtNtB9_6traits8iterator8Iterator4nextB1G_.exit.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %.critedge.i.i.i.i.i, %.noexc6.i17
  %i.ct = icmp eq ptr %i.cp, %i.bx
  br i1 %i.ct, label %.loopexit.i21, label %.lr.ph.i.i.i.i.i11

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i11
  store i64 -1, ptr %i.a, align 8, !alias.scope !54709, !noalias !54700
end_hunk_7
begin_hunk_8_@_RNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map24translate_config_updates:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58075)
  %i.az = load i64, ptr %i.f, align 8, !range !66, !alias.scope !58075, !noundef !62
  %i.ba = icmp eq i64 %i.r, %i.az
  br i1 %i.ba, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge34 unwind label %bb.m, !noalias !58076

._crit_edge34:                                    ; preds = %bb.l
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !58075
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.e) #81, !noalias !58075
  br label %.body

bb.n:                                             ; preds = %._crit_edge34, %bb.k
  %i.bc = phi ptr [ %.pre, %._crit_edge34 ], [ %i.q, %bb.k ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !58075
  %i.be = add i64 %i.r, 1                         ; 3 uses
  store i64 %i.be, ptr %i.h, align 8, !alias.scope !58075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bf = icmp eq i64 %i.ad, 0
  br i1 %i.bf, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.48.i.i.i = alloca [40 x i8], align 8     ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58129)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !58129, !nonnull !62, !noundef !62 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !58130
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !58129, !noundef !62 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !58131
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.b ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.n, align 16, !noalias !58132
  %i.p = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -768 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.p to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.67.0 = phi ptr [ %i.m, %bb.b ], [ %i.r, %.lr.ph.i.i.i.i.i ]
  %.sroa.010.0.copyload.i = phi ptr [ %i.g, %bb.b ], [ %i.q, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.l, %bb.b ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.s = add i16 %.lcssa.i.i.i.i.i, -1
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = and i16 %i.s, %.lcssa.i.i.i.i.i
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [48 x i8], ptr %.sroa.010.0.copyload.i, i64 %i.w ; 2 uses
  %i.y = add nsw i64 %i.i, -1                     ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -48
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !58133
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !noalias !58134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58133
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i unwind label %bb.c, !noalias !58135

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58136)
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !58136, !noalias !58133 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ac, label %common.resume.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !58136, !noalias !58133, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !58137
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, %.body.i, %bb.d, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.ab, %bb.c ], [ %i.ab, %bb.d ], [ %eh.lpad-body.i, %.body.i ], [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i: ; preds = %._crit_edge19.i.i.i.i.i
  %.sroa.417.i.sroa.5.16.copyload = load i64, ptr %i.d, align 8, !noalias !58131 ; 3 uses
  %.sroa.417.i.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.417.i.sroa.7.16.copyload = load ptr, ptr %.sroa.417.i.sroa.7.16..sroa_idx, align 8, !noalias !58131 ; 3 uses
  %.sroa.417.i.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.417.i.sroa.8.16.copyload = load i64, ptr %.sroa.417.i.sroa.8.16..sroa_idx, align 8, !noalias !58131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58133
  %.sroa.016.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !58138 ; 4 uses
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.417.i.sroa.0.0.copyload = load ptr, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !58131 ; 3 uses
  %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.417.i.sroa.4.0.copyload = load i64, ptr %.sroa.417.i.sroa.4.0..sroa.417.0..sroa_idx.i.sroa_idx, align 8, !noalias !58131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !58133
  %.not.i = icmp eq i64 %.sroa.016.0.copyload.i, -1
  br i1 %.not.i, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit, label %bb.h

bb.e:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %.sroa.016.0.copyload.i, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.0.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.0.0.copyload, i64 noundef %.sroa.016.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !58139
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.f, %bb.e
  %i.ag = icmp sgt i64 %.sroa.417.i.sroa.5.16.copyload, 0
  br i1 %i.ag, label %bb.g, label %common.resume.i

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.i.sroa.7.16.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.i.sroa.7.16.copyload, i64 noundef %.sroa.417.i.sroa.5.16.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !58140
  br label %common.resume.i

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 4) ; 3 uses
  %i.ah = mul i64 %.sroa.0.0.i.i, 48              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.i, 192153584101141162
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.i, !prof !63

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !58141
  %i.aj = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ah, i64 noundef range(i64 1, 9) 8) #76, !noalias !58141 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.ah) #80
          to label %.noexc.i unwind label %bb.e, !noalias !58131

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.aj, %bb.j ] ; 9 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.i ], [ %.sroa.0.0.i.i, %bb.j ] ; 3 uses
  %i.al = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.al)
  store i64 %.sroa.016.0.copyload.i, ptr %.sroa.10.0.i.i, align 8, !noalias !58131
  %.sroa.514.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.417.i.sroa.0.0.copyload, ptr %.sroa.514.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !58131
  %.sroa.7.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.417.i.sroa.4.0.copyload, ptr %.sroa.7.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !58131
  %.sroa.715.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store i64 %.sroa.417.i.sroa.5.16.copyload, ptr %.sroa.715.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !58131
  %.sroa.816.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.417.i.sroa.7.16.copyload, ptr %.sroa.816.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !58131
  %.sroa.917.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.sroa.417.i.sroa.8.16.copyload, ptr %.sroa.917.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !58131
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !58131
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !58131
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !58131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58143)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.am = icmp eq i64 %i.y, 0
  br i1 %i.am, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %.sroa.48.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.48.i.i.i, i64 16
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i, %.lr.ph.i.i.i
  %i.an = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.bh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ao = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 6 uses
  %.lcssa21.i.i.i = phi ptr [ %.sroa.67.0, %.lr.ph.i.i.i ], [ %.lcssa20.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ap = phi i16 [ %i.v, %.lr.ph.i.i.i ], [ %i.ay, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.val1217.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %i.bb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.lcssa111516.i.i.i = phi ptr [ %.sroa.010.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1114.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %i.aq = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa21.i.i.i, %bb.m ] ; 2 uses
  %i.ar = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa111516.i.i.i, %bb.m ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aq, align 16, !noalias !58144
  %i.as = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -768 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.as to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.lcssa20.i.i.i = phi ptr [ %.lcssa21.i.i.i, %bb.m ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa1114.i.i.i = phi ptr [ %.lcssa111516.i.i.i, %bb.m ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ap, %bb.m ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.av = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = and i16 %i.av, %.lcssa.i.i.i.i.i.i.i
  %i.az = sub nsw i64 0, %i.ax
  %i.ba = getelementptr inbounds [48 x i8], ptr %.lcssa1114.i.i.i, i64 %i.az ; 2 uses
  %i.bb = add i64 %.val1217.i.i.i, -1             ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58145
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %.noexc6.i unwind label %bb.s, !noalias !58131

.noexc6.i:                                        ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58145
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i unwind label %bb.n, !noalias !58146

bb.n:                                             ; preds = %.noexc6.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58147)
  %.val.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !58147, !noalias !58145 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bf, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !58147, !noalias !58145, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !58148
  br label %.body.i

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i: ; preds = %.noexc6.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !58149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58145
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !noalias !58149 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !58149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.48.i.i.i, i64 40, i1 false), !noalias !58150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i)
  %.not.i.i5.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i, -1
  %.sroa.0.0.copyload1.pre.pre29 = load i64, ptr %i.f, align 8, !noalias !58151 ; 2 uses
  br i1 %.not.i.i5.i, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58152
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !58152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i, i64 40, i1 false), !noalias !58152
  %2 = icmp samesign ult i64 %i.ao, 192153584101141163
  tail call void @llvm.assume(i1 %2)
  %i.bg = icmp eq i64 %i.ao, %.sroa.0.0.copyload1.pre.pre29
  br i1 %i.bg, label %bb.r, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i, %bb.p
  %i.bh = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i ], [ %i.an, %bb.p ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !58152
  %i.bj = add nuw nsw i64 %i.ao, 1                ; 3 uses
  store i64 %i.bj, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !58153, !noalias !58131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.bk = icmp eq i64 %i.bb, 0
  br i1 %i.bk, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge, label %bb.m

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i
  %.sroa.0.0.copyload1.pre.pre = load i64, ptr %i.f, align 8, !noalias !58151
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #81, !noalias !58152
  br label %.body.i

bb.r:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ao, i64 noundef %.val1217.i.i.i, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i unwind label %bb.q, !noalias !58154

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i_crit_edge.i: ; preds = %bb.r
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !58153, !noalias !58131
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i

bb.s:                                             ; preds = %._crit_edge19.i.i.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.q, %bb.o, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %i.bl, %bb.q ], [ %i.be, %bb.o ], [ %i.be, %bb.n ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81, !noalias !58131
  br label %common.resume.i

.loopexit.i:                                      ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge, %bb.l
  %.sroa.6.0.copyload5 = phi i64 [ 1, %bb.l ], [ %i.bj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %i.ao, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i ]
  %.sroa.5.0.copyload3 = phi ptr [ %.sroa.10.0.i.i, %bb.l ], [ %i.bh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %i.an, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i ]
  %.sroa.0.0.copyload1 = phi i64 [ %.sroa.4.0.i.i, %bb.l ], [ %.sroa.0.0.copyload1.pre.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %.sroa.0.0.copyload1.pre.pre29, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit

_RNvXNtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table11transaction10update_map14UpdateMapEntryEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtB6_6string6StringB4o_ENCNvB13_33translate_schema_metadata_updates0EE9from_iterB17_.exit: ; preds = %bb.a, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i, %.loopexit.i
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload5, %.loopexit.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i ], [ 0, %bb.a ]
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload3, %.loopexit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i ], [ inttoptr (i64 8 to ptr), %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %.loopexit.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterNtNtCs40k4W9msRzi_5alloc6string6StringB1O_ENCNvNtNtCs9KQ7US1M400_11lance_table11transaction10update_map33translate_schema_metadata_updates0ENtNtNtB9_6traits8iterator8Iterator4nextB2D_.exit.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !58131
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bn, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version31resolve_update_version_metadata(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 38430716820228233) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef range(i64 0, 38430716820228233) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [64 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.5.i = alloca i64, align 8                ; 4 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.8.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 14 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [56 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 12 uses
  %i.z = alloca [40 x i8], align 8                ; 7 uses
  %i.aa = alloca [56 x i8], align 8               ; 8 uses
  %i.ab = alloca [56 x i8], align 8               ; 6 uses
  %.sroa.5508 = alloca [24 x i8], align 8         ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.636 = alloca [32 x i8], align 8          ; 5 uses
  %i.ad = alloca [40 x i8], align 8               ; 10 uses
  %i.ae = alloca [40 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [72 x i8], align 8               ; 14 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 5 uses
  %i.ak = alloca [48 x i8], align 8               ; 8 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [56 x i8], align 8               ; 10 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [56 x i8], align 8               ; 10 uses
  %i.aq = alloca [48 x i8], align 8               ; 20 uses
  %i.ar = alloca [80 x i8], align 8               ; 8 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  store i64 %5, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %.idx = mul nuw nsw i64 %4, 240
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  store ptr null, ptr %i.ar, align 8
  %.sroa.041.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr null, ptr %.sroa.041.sroa.5.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store ptr %3, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr %i.at, ptr %.sroa.643.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !58642
  %i.au = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 17 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 8 uses
  %i.aw = load i8, ptr %i.av, align 8, !range !71, !noalias !58643, !noundef !62
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i, !prof !74

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.au, align 8, !noalias !58644
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !58644
  br label %bb.c

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i: ; preds = %bb.a
  %i.ay = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc.i unwind label %bb.n, !noalias !58642 ; 2 uses

.noexc.i:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs9KQ7US1M400_11lance_table.exit.i.i.i.i
  %i.az = extractvalue { i64, i64 } %i.ay, 0
  %i.ba = extractvalue { i64, i64 } %i.ay, 1      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !noalias !58645
  store i8 1, ptr %i.av, align 8, !noalias !58645
  br label %bb.c

bb.b:                                             ; preds = %_RNCNvNtNtCs9KQ7US1M400_11lance_table11transaction11row_version31resolve_update_version_metadata0B7_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i, %.noexc.i
  %.pre-phi13.i = phi i64 [ %i.ba, %.noexc.i ], [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.az, %.noexc.i ], [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i.i.i ] ; 3 uses
  %i.bd = add i64 %.pre-phi.i, 1
  store i64 %i.bd, ptr %i.au, align 8, !noalias !58644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) @66, i64 32, i1 false), !noalias !58642
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  store i64 %.pre-phi.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !58642
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  store i64 %.pre-phi13.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !58642
  %i.be = icmp eq i64 %4, 0                       ; 2 uses
  br i1 %i.be, label %_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1d_8adapters7flatten7FlatMapINtNtB2n_10filter_map9FilterMapINtNtNtB1f_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtNtB3U_11transaction11row_version31resolve_update_version_metadata0EINtNtCs40k4W9msRzi_5alloc3vec3VecyENCB4N_s_0EEB3U_.exit.thread, label %bb.d

_RINvXs7_NtNtNtCsgczF5crJ4sT_3std11collections4hash3setINtB6_7HashSetyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratoryE9from_iterINtNtNtB1d_8adapters7flatten7FlatMapINtNtB2n_10filter_map9FilterMapINtNtNtB1f_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNvNtNtB3U_11transaction11row_version31resolve_update_version_metadata0EINtNtCs40k4W9msRzi_5alloc3vec3VecyENCB4N_s_0EEB3U_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !58642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  br label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9KQ7US1M400_11lance_table.exit_crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.7.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtB1h_6rowids13RowIdSequenceuNCNvNtNtB1h_11transaction11row_version31resolve_update_version_metadata0NCINvNtB6_3map8map_foldB27_INtNtCs40k4W9msRzi_5alloc3vec3VecyEuNCB2E_s_0NCINvNvMsg_NtB6_7flattenINtB57_13FlattenCompatppE9iter_fold7flattenB4d_uNCINvNvXsi_B57_B5k_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB4g_9into_iter8IntoIteryEuNCIB3P_yTyuEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB81_7HashSetyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB6t_7collect6ExtendyE6extendINtB57_7FlatMapINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2C_EB4d_B4N_EE0NCINvNvB6p_8for_each4callB7N_NCINvXs1i_NtB83_3mapINtBbZ_7HashMapyuB8L_EIB9A_B7N_E6extendINtB3R_3MapBa6_B7S_EE0E0E0E0E0E0E0B1h_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.cj, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentNtNtB1h_6rowids13RowIdSequenceuNCNvNtNtB1h_11transaction11row_version31resolve_update_version_metadata0NCINvNtB6_3map8map_foldB27_INtNtCs40k4W9msRzi_5alloc3vec3VecyEuNCB2E_s_0NCINvNvMsg_NtB6_7flattenINtB57_13FlattenCompatppE9iter_fold7flattenB4d_uNCINvNvXsi_B57_B5k_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB4g_9into_iter8IntoIteryEuNCIB3P_yTyuEuNCINvXs8_NtCsfKiFC1ztrmh_9hashbrown3setINtB81_7HashSetyNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB6t_7collect6ExtendyE6extendINtB57_7FlatMapINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2C_EB4d_B4N_EE0NCINvNvB6p_8for_each4callB7N_NCINvXs1i_NtB83_3mapINtBbZ_7HashMapyuB8L_EIB9A_B7N_E6extendINtB3R_3MapBa6_B7S_EE0E0E0E0E0E0E0B1h_.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [240 x i8], ptr %3, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 112
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !range !81, !noalias !58646, !noundef !62
  %i.bj = getelementptr i8, ptr %i.bh, i64 120
end_hunk_8
begin_hunk_9_@_RNvXsb_NtNtCs9KQ7US1M400_11lance_table6format8manifestNtNtB7_2pb8ManifestINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_8ManifestE4from:bb.a
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %bb.bk
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body74

.body74:                                          ; preds = %bb.bq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77, %bb.bm, %bb.bn, %.body.i67, %bb.bh
  %eh.lpad-body75 = phi { ptr, i32 } [ %i.em, %bb.bh ], [ %i.fo, %bb.bm ], [ %i.fo, %bb.bn ], [ %eh.lpad-body.i68, %.body.i67 ], [ %i.fp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77 ], [ %i.fp, %bb.bq ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.t)
  br label %bb.bf

bb.bi:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !75327)
  %i.eo = load ptr, ptr %i.en, align 16, !alias.scope !75327, !nonnull !62, !noundef !62 ; 4 uses
  %.val3.i.i57 = load <16 x i8>, ptr %i.eo, align 16, !noalias !75328
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !75327, !noundef !62 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !75329
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.cf, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.es = icmp sgt <16 x i8> %.val3.i.i57, splat (i8 -1)
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not12.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bj, %.lr.ph.i.i.i.i.i
  %i.ev = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i ], [ %i.eu, %bb.bj ] ; 2 uses
  %i.ew = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %i.eo, %bb.bj ]
  %.val10.i.i.i.i.i = load <16 x i8>, ptr %i.ev, align 16, !noalias !75330
  %i.ex = icmp sgt <16 x i8> %.val10.i.i.i.i.i, splat (i8 -1)
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -1024 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ex to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge19.i.i.i.i.i

._crit_edge19.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %bb.bj
  %.sroa.6123.0 = phi ptr [ %i.eu, %bb.bj ], [ %i.ez, %.lr.ph.i.i.i.i.i ]
  %.sroa.014.0.copyload.i = phi ptr [ %i.eo, %bb.bj ], [ %i.ey, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %i.et, %bb.bj ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.fa = add i16 %.lcssa.i.i.i.i.i, -1
  %i.fb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = and i16 %i.fa, %.lcssa.i.i.i.i.i
  %i.fe = sub nsw i64 0, %i.fc
  %i.ff = getelementptr inbounds [64 x i8], ptr %.sroa.014.0.copyload.i, i64 %i.fe ; 4 uses
  %i.fg = add nsw i64 %i.eq, -1                   ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !75331)
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 -8
  %i.fj = load i32, ptr %i.fi, align 8, !alias.scope !75331, !noalias !75332, !noundef !62
  %i.fk = getelementptr inbounds i8, ptr %i.ff, i64 -32 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !range !64, !alias.scope !75331, !noalias !75332, !noundef !62
  %.not.i.i.i = icmp eq i64 %i.fl, -1
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge19.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !75333
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fk)
          to label %.noexc73 unwind label %bb.bh

.noexc73:                                         ; preds = %bb.bk
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !75333
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !75333
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !75333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !75333
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc73, %._crit_edge19.i.i.i.i.i
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i, %.noexc73 ], [ undef, %._crit_edge19.i.i.i.i.i ]
  %.sroa.6.0.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i, %.noexc73 ], [ undef, %._crit_edge19.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.noexc73 ], [ -1, %._crit_edge19.i.i.i.i.i ] ; 5 uses
  %i.fm = getelementptr inbounds i8, ptr %i.ff, i64 -4
  %i.fn = load i8, ptr %i.fm, align 4, !range !71, !alias.scope !75331, !noalias !75332, !noundef !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !75333
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i unwind label %bb.bm, !noalias !75334

bb.bm:                                            ; preds = %bb.bl
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i.i = add i64 %.sroa.0.0.i.i.i, -1
  %switch.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i, -2
  br i1 %switch.i.i.i.i, label %bb.bn, label %.body74

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.0.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75335
  br label %.body74

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i: ; preds = %bb.bl
  %.sroa.0.0.copyload10.i = load i64, ptr %i.e, align 8, !noalias !75336 ; 4 uses
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.i.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx11.i, align 8, !noalias !75336 ; 3 uses
  %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx11.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.i.sroa.5.0.copyload = load i64, ptr %.sroa.7.i.sroa.5.0..sroa.7.0..sroa_idx11.i.sroa_idx, align 8, !noalias !75336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !75333
  %.not.i62 = icmp eq i64 %.sroa.0.0.copyload10.i, -1
  br i1 %.not.i62, label %bb.cf, label %bb.br

bb.bo:                                            ; preds = %bb.bu
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = icmp sgt i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.fq, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.sroa.0.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75337
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77: ; preds = %bb.bp, %bb.bo
  %i.fr = icmp eq i64 %.sroa.0.0.copyload10.i, 0
  br i1 %i.fr, label %.body74, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs9KQ7US1M400_11lance_table.exit.i77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.i.sroa.0.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.i.sroa.0.0.copyload, i64 noundef %.sroa.0.0.copyload10.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75338
  br label %.body74

bb.br:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.eq, i64 4) ; 3 uses
  %i.fs = mul i64 %.sroa.0.0.i.i, 56              ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.eq, 164703072086692425
  br i1 %or.cond.i.i.i, label %bb.bu, label %bb.bs, !prof !63

bb.bs:                                            ; preds = %bb.br
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !75339
  %i.fu = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.fs, i64 noundef range(i64 1, 9) 8) #76, !noalias !75339 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.bt ], [ 0, %bb.br ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.fs) #80
          to label %.noexc.i72 unwind label %bb.bo, !noalias !75329

.noexc.i72:                                       ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bs ], [ %i.fu, %bb.bt ] ; 11 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.bs ], [ %.sroa.0.0.i.i, %bb.bt ] ; 3 uses
  %i.fw = icmp ule i64 %.sroa.0.0.i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.fw)
  store i64 %.sroa.0.0.copyload10.i, ptr %.sroa.10.0.i.i, align 8, !noalias !75329
  %.sroa.5150.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %.sroa.7.i.sroa.0.0.copyload, ptr %.sroa.5150.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75329
  %.sroa.7151.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 16
  store i64 %.sroa.7.i.sroa.5.0.copyload, ptr %.sroa.7151.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75329
  %.sroa.7152.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.7152.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75329
  %.sroa.9153.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 32
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.9153.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75329
  %.sroa.11154.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 40
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.11154.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75329
  %.sroa.12.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 48
  store i32 %i.fj, ptr %.sroa.12.0..sroa.10.0.i.i.sroa_idx, align 8, !noalias !75329
  %.sroa.13.0..sroa.10.0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 52
  store i8 %i.fn, ptr %.sroa.13.0..sroa.10.0.i.i.sroa_idx, align 4, !noalias !75329
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !75329
  %.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i64, align 8, !noalias !75329
  %.sroa.6.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i65, align 8, !noalias !75329
  call void @llvm.experimental.noalias.scope.decl(metadata !75340)
  call void @llvm.experimental.noalias.scope.decl(metadata !75341)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.fx = icmp eq i64 %i.fg, 0
  br i1 %i.fx, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i.i6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.76.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  br label %bb.bw

bb.bw:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i, %.lr.ph.i.i.i
  %i.fy = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.gw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.fz = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.gy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 6 uses
  %.lcssa27.i.i.i = phi ptr [ %.sroa.6123.0, %.lr.ph.i.i.i ], [ %.lcssa26.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.ga = phi i16 [ %i.fd, %.lr.ph.i.i.i ], [ %i.gj, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.val1823.i.i.i = phi i64 [ %i.fg, %.lr.ph.i.i.i ], [ %i.gm, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.lcssa152122.i.i.i = phi ptr [ %.sroa.014.0.copyload.i, %.lr.ph.i.i.i ], [ %.lcssa1520.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i ] ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %i.ga, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i69, label %._crit_edge19.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i69:                           ; preds = %bb.bw, %.lr.ph.i.i.i.i.i.i.i69
  %i.gb = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i69 ], [ %.lcssa27.i.i.i, %bb.bw ] ; 2 uses
  %i.gc = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i69 ], [ %.lcssa152122.i.i.i, %bb.bw ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gb, align 16, !noalias !75342
  %i.gd = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -1024 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i70 = bitcast <16 x i1> %i.gd to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i71 = icmp eq i16 %.cast.i.i.i.i.i.i.i70, 0
  br i1 %.not.i.i.i.i.i.i.i71, label %.lr.ph.i.i.i.i.i.i.i69, label %._crit_edge19.i.i.i.i.i.i.i

._crit_edge19.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i69, %bb.bw
  %.lcssa26.i.i.i = phi ptr [ %.lcssa27.i.i.i, %bb.bw ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i69 ]
  %.lcssa1520.i.i.i = phi ptr [ %.lcssa152122.i.i.i, %bb.bw ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i69 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i66 = phi i16 [ %i.ga, %bb.bw ], [ %.cast.i.i.i.i.i.i.i70, %.lr.ph.i.i.i.i.i.i.i69 ] ; 3 uses
  %i.gg = add i16 %.lcssa.i.i.i.i.i.i.i66, -1
  %i.gh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i66, i1 true)
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = and i16 %i.gg, %.lcssa.i.i.i.i.i.i.i66
  %i.gk = sub nsw i64 0, %i.gi
  %i.gl = getelementptr inbounds [64 x i8], ptr %.lcssa1520.i.i.i, i64 %i.gk ; 4 uses
  %i.gm = add i64 %.val1823.i.i.i, -1             ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -56
  call void @llvm.experimental.noalias.scope.decl(metadata !75343)
  %i.go = getelementptr inbounds i8, ptr %i.gl, i64 -8
  %i.gp = load i32, ptr %i.go, align 8, !alias.scope !75343, !noalias !75344, !noundef !62
  %i.gq = getelementptr inbounds i8, ptr %i.gl, i64 -32 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !range !64, !alias.scope !75343, !noalias !75344, !noundef !62
  %.not.i.i.i.i7.i = icmp eq i64 %i.gr, -1
  br i1 %.not.i.i.i.i7.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge19.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75345
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gq)
          to label %.noexc9.i unwind label %bb.ce, !noalias !75329

.noexc9.i:                                        ; preds = %bb.bx
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !75345
  %.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !75345
  %.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !75345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75345
  br label %bb.by

bb.by:                                            ; preds = %.noexc9.i, %._crit_edge19.i.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.7.0.copyload.i.i.i.i.i, %.noexc9.i ], [ undef, %._crit_edge19.i.i.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i, %.noexc9.i ], [ undef, %._crit_edge19.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc9.i ], [ -1, %._crit_edge19.i.i.i.i.i.i.i ] ; 3 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gl, i64 -4
  %i.gt = load i8, ptr %i.gs, align 4, !range !71, !alias.scope !75343, !noalias !75344, !noundef !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75345
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.gn)
          to label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i unwind label %bb.bz, !noalias !75346

bb.bz:                                            ; preds = %bb.by
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0.val.off.i.i.i.i.i.i = add i64 %.sroa.0.0.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i = icmp ult i64 %.0.val.off.i.i.i.i.i.i, -2
  br i1 %switch.i.i.i.i.i.i, label %bb.ca, label %.body.i67

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i.i.i, i64 noundef %.sroa.0.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75347
  br label %.body.i67

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i: ; preds = %bb.by
  %.sroa.0.0.copyload4.i.i.i = load i64, ptr %i.b, align 8, !noalias !75348 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx5.i.i.i, i64 16, i1 false), !noalias !75348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75345
  %.not.i.i8.i = icmp eq i64 %.sroa.0.0.copyload4.i.i.i, -1
  %.sroa.0114.0.copyload115.pre.pre186 = load i64, ptr %i.f, align 8, !noalias !75349 ; 2 uses
  br i1 %.not.i.i8.i, label %.loopexit.i, label %bb.cb

bb.cb:                                            ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75350
  store i64 %.sroa.0.0.copyload4.i.i.i, ptr %i.c, align 8, !noalias !75350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !75350
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i, align 8, !noalias !75350
  store ptr %.sroa.6.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !75350
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !75350
  store i32 %i.gp, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !75350
  store i8 %i.gt, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !75350
  %2 = icmp samesign ult i64 %i.fz, 164703072086692426
  call void @llvm.assume(i1 %2)
  %i.gv = icmp eq i64 %i.fz, %.sroa.0114.0.copyload115.pre.pre186
  br i1 %i.gv, label %bb.cd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i_crit_edge.i, %bb.cb
  %i.gw = phi ptr [ %.pre.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i_crit_edge.i ], [ %i.fy, %bb.cb ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [56 x i8], ptr %i.gw, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gx, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !75350
  %i.gy = add nuw nsw i64 %i.fz, 1                ; 3 uses
  store i64 %i.gy, ptr %.sroa.6.0..sroa_idx.i65, align 8, !alias.scope !75351, !noalias !75329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !75350
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.gz = icmp eq i64 %i.gm, 0
  br i1 %i.gz, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge, label %bb.bw

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i
  %.sroa.0114.0.copyload115.pre.pre = load i64, ptr %i.f, align 8, !noalias !75349
  br label %.loopexit.i

bb.cc:                                            ; preds = %bb.cd
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #81, !noalias !75350
  br label %.body.i67

bb.cd:                                            ; preds = %bb.cb
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.fz, i64 noundef %.val1823.i.i.i, i64 noundef 8, i64 noundef 56)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i_crit_edge.i unwind label %bb.cc, !noalias !75352

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i_crit_edge.i: ; preds = %bb.cd
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i64, align 8, !alias.scope !75351, !noalias !75329
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i

bb.ce:                                            ; preds = %bb.bx
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i67

.body.i67:                                        ; preds = %bb.ce, %bb.cc, %bb.ca, %bb.bz
  %eh.lpad-body.i68 = phi { ptr, i32 } [ %i.hb, %bb.ce ], [ %i.ha, %bb.cc ], [ %i.gu, %bb.ca ], [ %i.gu, %bb.bz ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #81, !noalias !75329
  br label %.body74

.loopexit.i:                                      ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge, %bb.bv
  %.sroa.6119.0.copyload121 = phi i64 [ 1, %bb.bv ], [ %i.gy, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %i.fz, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i ]
  %.sroa.5116.0.copyload118 = phi ptr [ %.sroa.10.0.i.i, %bb.bv ], [ %i.gw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %i.fy, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i ]
  %.sroa.0114.0.copyload115 = phi i64 [ %.sroa.4.0.i.i, %bb.bv ], [ %.sroa.0114.0.copyload115.pre.pre, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs9KQ7US1M400_11lance_table6format2pb8BasePathE7reserveBK_.exit.i.i.i..loopexit.i.loopexit_crit_edge ], [ %.sroa.0114.0.copyload115.pre.pre186, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.i, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i, %bb.bi
  %.sroa.6119.0 = phi i64 [ %.sroa.6119.0.copyload121, %.loopexit.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i ], [ 0, %bb.bi ]
  %.sroa.5116.0 = phi ptr [ %.sroa.5116.0.copyload118, %.loopexit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i ], [ inttoptr (i64 8 to ptr), %bb.bi ]
  %.sroa.0114.0 = phi i64 [ %.sroa.0114.0.copyload115, %.loopexit.i ], [ 0, %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map6ValuesmNtNtNtCs9KQ7US1M400_11lance_table6format8manifest8BasePathENCNvXsb_B1T_NtNtB1V_2pb8ManifestINtNtBb_7convert4FromRNtB1T_8ManifestE4froms1_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit.i ], [ 0, %bb.bi ]
  %i.hc = trunc nuw i64 %i.dj to i1
  %.sroa.53.0 = select i1 %i.hc, i64 %i.dl, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !75329
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.he = load i64, ptr %i.hd, align 16, !range !70, !noundef !62 ; 2 uses
  %i.hf = trunc nuw i64 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hh = load i64, ptr %i.hg, align 8
  %.sroa.59.0 = select i1 %i.hf, i64 %i.hh, i64 undef
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.ce, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 %i.di, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.hn, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false)
  store i64 %i.dj, ptr %0, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.53.0, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %i.hp, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.092.0, ptr %i.hq, align 8
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.694.0, ptr %.sroa.694.0..sroa_idx95, align 8
  %.sroa.897.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.897.0, ptr %.sroa.897.0..sroa_idx98, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <2 x i64> %i.dp, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <2 x i32> %i.dr, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.0103.0, ptr %i.ht, align 8
  %.sroa.6105.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.6105.0, ptr %.sroa.6105.0..sroa_idx106, align 8
  %.sroa.8108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.8108.0, ptr %.sroa.8108.0..sroa_idx109, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.he, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.59.0, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 %i.dw, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hx, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hy, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hz, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.0114.0, ptr %i.ia, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.5116.0, ptr %.sroa.5116.0..sroa_idx, align 8
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.6119.0, ptr %.sroa.6119.0..sroa_idx, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.sroa.085.0, ptr %i.ib, align 8
  %.sroa.687.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %.sroa.687.0, ptr %.sroa.687.0..sroa_idx88, align 8
  %.sroa.7.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx90, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1A_3vec3VechEEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ic)
  ret void

bb.cg:                                            ; preds = %bb.bd
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB5_11UringReaderNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1992, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1506, i64 noundef 6, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1504, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1491, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1488, ptr noalias noundef nonnull readonly captures(address, read_provenance) @185, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1488, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1492, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1489)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_10UInt32ListNtNtCskAO0uQb8M5a_5prost4name4Name8type_url(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !75355
  %i.a = tail call noundef dereferenceable_or_null(35) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 35, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75355 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 35) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.a, ptr noundef nonnull align 1 dereferenceable(35) @1993, i64 35, i1 false)
  store i64 35, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 35, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB5_10UInt32ListNtNtCskAO0uQb8M5a_5prost4name4Name9full_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !75358
  %i.a = tail call noundef dereferenceable_or_null(34) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 34, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !75358 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 34) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.a, ptr noundef nonnull align 1 dereferenceable(34) @1994, i64 34, i1 false)
  store i64 34, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 34, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtNtNtCs9KQ7US1M400_11lance_table6format2pb13data_fragmentNtB5_28LastUpdatedAtVersionSequenceNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_9
