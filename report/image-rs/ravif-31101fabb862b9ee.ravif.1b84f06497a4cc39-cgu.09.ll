Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvehECs2mu2Cb9JdUH_5ravif:bb.a
  %i.qg = add <4 x i32> %wide.load816, %wide.load815
  %i.qh = add <4 x i32> %i.qg, %wide.load817
  %i.qi = add <4 x i32> %i.qh, %wide.load818
  %i.qj = add <4 x i32> %i.qi, %wide.load819
  %i.qk = shl <4 x i32> %i.qj, splat (i32 2)
  %i.ql = add <4 x i32> %i.pe, splat (i32 256)
  %i.qm = add <4 x i32> %i.ql, %i.qk
  %i.qn = add <4 x i32> %i.qm, %i.qf
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index801
  %i.qp = lshr <4 x i32> %i.qn, splat (i32 9)
  store <4 x i32> %i.qp, ptr %i.qo, align 4, !alias.scope !416, !noalias !418
  %index.next821 = add nuw i64 %index801, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next821, %n.vec799
  br i1 %i.qq, label %.lr.ph472.preheader845, label %vector.body800, !llvm.loop !341

.lr.ph472.preheader845:                           ; preds = %vector.body800, %.lr.ph472.preheader
  %.sroa.0.0.i471.ph = phi i64 [ 0, %.lr.ph472.preheader ], [ %n.vec799, %vector.body800 ]
  br label %.lr.ph472

.lr.ph472:                                        ; preds = %.lr.ph472.preheader845, %bb.bm
  %.sroa.0.0.i471 = phi i64 [ %i.qr, %bb.bm ], [ %.sroa.0.0.i471.ph, %.lr.ph472.preheader845 ] ; 12 uses
  %i.qr = add nuw nsw i64 %.sroa.0.0.i471, 1      ; 6 uses
  %i.qs = add nuw nsw i64 %.sroa.0.0.i471, 2      ; 7 uses
  %exitcond589.not = icmp eq i64 %.sroa.0.0.i471, 384
  br i1 %exitcond589.not, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph472
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.qs, i64 noundef 386, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28, !noalias !417
  unreachable

bb.bk:                                            ; preds = %.lr.ph472
  %exitcond590.not = icmp eq i64 %.sroa.0.0.i471, %i.oo
  br i1 %exitcond590.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oo, i64 noundef %i.oo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !417
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %.sroa.0.0.i471
  %i.qu = load i32, ptr %i.qt, align 4, !noalias !417, !noundef !4
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %.sroa.0.0.i471
  %i.qw = load i32, ptr %i.qv, align 4, !noalias !417, !noundef !4
  %i.qx = add i32 %i.qw, %i.qu
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.qs
  %i.qz = load i32, ptr %i.qy, align 4, !noalias !417, !noundef !4
  %i.ra = add i32 %i.qx, %i.qz
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.qs
  %i.rc = load i32, ptr %i.rb, align 4, !noalias !417, !noundef !4
  %i.rd = add i32 %i.ra, %i.rc
  %i.re = mul i32 %i.rd, 3
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.sroa.0.0.i471
  %i.rg = load i32, ptr %i.rf, align 4, !noalias !417, !noundef !4
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %.sroa.0.0.i471
  %i.ri = load i32, ptr %i.rh, align 4, !noalias !417, !noundef !4
  %i.rj = add i32 %i.ri, %i.rg
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qs
  %i.rl = load i32, ptr %i.rk, align 4, !noalias !417, !noundef !4
  %i.rm = add i32 %i.rj, %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.qs
  %i.ro = load i32, ptr %i.rn, align 4, !noalias !417, !noundef !4
  %i.rp = add i32 %i.rm, %i.ro
  %i.rq = mul i32 %i.rp, 3
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %.sroa.0.0.i471
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.qr
  %i.rt = load i32, ptr %i.rs, align 4, !noalias !417, !noundef !4
  %i.ru = load <2 x i32>, ptr %i.rr, align 4, !noalias !417
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.qr
  %i.rw = load i32, ptr %i.rv, align 4, !noalias !417, !noundef !4
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.qs
  %i.ry = load i32, ptr %i.rx, align 4, !noalias !417, !noundef !4
  %i.rz = insertelement <4 x i32> poison, i32 %i.ry, i64 2
  %i.sa = insertelement <4 x i32> %i.rz, i32 %i.rw, i64 3
  %i.sb = shufflevector <2 x i32> %i.ru, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sc = shufflevector <4 x i32> %i.sb, <4 x i32> %i.sa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sc)
  %op.rdx844 = add i32 %i.sd, %i.rt
  %i.se = shl i32 %op.rdx844, 2
  %i.sf = add i32 %i.se, %i.rq
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.sroa.0.0.i471
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.qr
  %i.si = load i32, ptr %i.sh, align 4, !noalias !417, !noundef !4
  %i.sj = load <2 x i32>, ptr %i.sg, align 4, !noalias !417
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.qr
  %i.sl = load i32, ptr %i.sk, align 4, !noalias !417, !noundef !4
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.qs
  %i.sn = load i32, ptr %i.sm, align 4, !noalias !417, !noundef !4
  %i.so = getelementptr inbounds nuw i8, ptr %i.on, i64 %.sroa.0.0.i471
  %i.sp = load i8, ptr %i.so, align 1, !noalias !417, !noundef !4
  %i.sq = zext i8 %i.sp to i32
  %i.sr = mul i32 %i.sf, %i.sq
  %i.ss = insertelement <4 x i32> poison, i32 %i.sn, i64 2
  %i.st = insertelement <4 x i32> %i.ss, i32 %i.sl, i64 3
  %i.su = shufflevector <2 x i32> %i.sj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sv = shufflevector <4 x i32> %i.su, <4 x i32> %i.st, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sv)
  %op.rdx = add i32 %i.sw, %i.si
  %i.sx = shl i32 %op.rdx, 2
  %i.sy = add i32 %i.re, 256
  %i.sz = add i32 %i.sy, %i.sx
  %i.ta = add i32 %i.sz, %i.sr
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i471
  %i.tc = lshr i32 %i.ta, 9
  store i32 %i.tc, ptr %i.tb, align 4, !alias.scope !416, !noalias !418
  %exitcond591.not = icmp eq i64 %i.qr, %5
  br i1 %exitcond591.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph472, !llvm.loop !342

bb.bn:                                            ; preds = %bb.bg
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

bb.bo:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
  unreachable

bb.bp:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internalhECs2mu2Cb9JdUH_5ravif.exit
  %i.td = extractvalue { ptr, i64 } %i.oc, 1      ; 2 uses
  %i.te = load i64, ptr %i.cq, align 8, !noundef !4
  %i.tf = mul i64 %i.te, %i.lx
  %i.tg = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.tf ; 2 uses
  %i.th = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.021.0479 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i54 = icmp ugt i64 %5, %i.td
  br i1 %.not.i54, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, -9223372036854775808) %i.td, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28, !noalias !419
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.tl = getelementptr inbounds nuw i8, ptr %i.od, i64 %5
  br i1 %.not7.i, label %bb.bs, label %bb.bt, !prof !8

bb.bs:                                            ; preds = %bb.br
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, -9223372036854775808) %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #28, !noalias !419
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 %5
  %.not8.i = icmp ugt i64 %5, %i.tk
  br i1 %.not8.i, label %bb.bu, label %bb.bv, !prof !8

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, 2305843009213693952) %i.tk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28, !noalias !419
  unreachable

bb.bv:                                            ; preds = %bb.bt
  br i1 %i.bi, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit, label %bb.bw, !prof !19

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !noalias !419
  unreachable

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.bv
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !420
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.od, ptr noundef nonnull readonly %i.tl, ptr noundef nonnull readonly %i.tg, ptr noundef nonnull readonly %i.tm), !noalias !421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !420
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.ti, ptr noundef nonnull readonly %i.tn, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.cj), !noalias !421
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4IterhEB10_EIBN_IB11_mEB1B_EEINtB5_7ZipImplBW_B1x_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !420
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %.val.i61 = load i64, ptr %i.cr, align 8, !alias.scope !423, !noalias !424, !noundef !4 ; 3 uses
  %.val6.i = load i64, ptr %i.cs, align 8, !alias.scope !423, !noalias !424, !noundef !4 ; 2 uses
  %i.to = sub i64 %.val6.i, %.val.i61
  %.not.i62 = icmp eq i64 %.val6.i, %.val.i61
  br i1 %.not.i62, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit
  %i.tp = load i64, ptr %i.ct, align 8, !alias.scope !425, !noalias !426, !noundef !4
  %.val1.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !425, !noalias !426, !nonnull !4, !noundef !4
  %.val.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !425, !noalias !426, !nonnull !4, !noundef !4
  %i.tq = load i64, ptr %i.cw, align 8, !alias.scope !427, !noalias !426, !noundef !4
  %.val1.i.i1.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !427, !noalias !426, !nonnull !4, !noundef !4
  %.val.i.i2.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !427, !noalias !426, !nonnull !4, !noundef !4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.lr.ph.i
  %.sroa.0.058.i = phi i64 [ 0, %.lr.ph.i ], [ %i.tr, %bb.bx ] ; 2 uses
  %.sroa.10.057.i = phi i64 [ 0, %.lr.ph.i ], [ %i.uw, %bb.bx ]
  %.sroa.9.056.i = phi i64 [ 0, %.lr.ph.i ], [ %i.uu, %bb.bx ]
  %.sroa.823.055.i = phi i64 [ 0, %.lr.ph.i ], [ %i.uq, %bb.bx ]
  %.sroa.613.054.i = phi i64 [ 0, %.lr.ph.i ], [ %i.us, %bb.bx ]
  %.sroa.010.053.i = phi i64 [ 0, %.lr.ph.i ], [ %i.uo, %bb.bx ]
  %i.tr = add nuw i64 %.sroa.0.058.i, 1           ; 2 uses
  %i.ts = add i64 %.sroa.0.058.i, %.val.i61       ; 2 uses
  %i.tt = add i64 %i.ts, %i.tp                    ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.tt
  %i.tw = add i64 %i.ts, %i.tq                    ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i1.i.i, i64 %i.tw
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2.i.i, i64 %i.tw
  %i.tz = load i8, ptr %i.tu, align 1, !noalias !428, !noundef !4
  %i.ua = load i8, ptr %i.tv, align 1, !noalias !428, !noundef !4
  %i.ub = load i32, ptr %i.tx, align 4, !noalias !428, !noundef !4
  %i.uc = load i32, ptr %i.ty, align 4, !noalias !428, !noundef !4
  %i.ud = zext i8 %i.ua to i32
  %i.ue = zext i8 %i.tz to i32                    ; 2 uses
  %i.uf = shl nuw nsw i32 %i.ue, 4                ; 2 uses
  %i.ug = sub nsw i32 %i.ud, %i.ue
  %i.uh = shl nsw i32 %i.ug, 4
  %i.ui = sext i32 %i.uh to i64                   ; 2 uses
  %i.uj = sub i32 %i.ub, %i.uf
  %i.uk = sub i32 %i.uc, %i.uf
  %i.ul = sext i32 %i.uk to i64                   ; 4 uses
  %i.um = sext i32 %i.uj to i64                   ; 4 uses
  %i.un = mul nsw i64 %i.um, %i.um
  %i.uo = add i64 %i.un, %.sroa.010.053.i         ; 2 uses
  %i.up = mul nsw i64 %i.ul, %i.ul
  %i.uq = add i64 %i.up, %.sroa.823.055.i         ; 2 uses
  %i.ur = mul nsw i64 %i.ul, %i.um
  %i.us = add i64 %i.ur, %.sroa.613.054.i         ; 2 uses
  %i.ut = mul nsw i64 %i.ui, %i.um
  %i.uu = add i64 %i.ut, %.sroa.9.056.i           ; 2 uses
  %i.uv = mul nsw i64 %i.ul, %i.ui
  %i.uw = add i64 %i.uv, %.sroa.10.057.i          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.tr, %i.to
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, label %bb.bx

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit: ; preds = %bb.bx
  %i.ux = sitofp i64 %i.uo to double
  %i.uy = sitofp i64 %i.uq to double
  %i.uz = sitofp i64 %i.us to double
  %i.va = sitofp i64 %i.uu to double
  %i.vb = sitofp i64 %i.uw to double
  %i.vc = insertelement <4 x double> poison, double %i.vb, i64 0
  %i.vd = insertelement <4 x double> %i.vc, double %i.va, i64 1
  %i.ve = insertelement <4 x double> %i.vd, double %i.uy, i64 2
  %i.vf = insertelement <4 x double> %i.ve, double %i.uz, i64 3
  br label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.010.0.lcssa.i = phi double [ 0.000000e+00, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit ], [ %i.ux, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit ]
  %i.vg = phi <4 x double> [ zeroinitializer, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linehECs2mu2Cb9JdUH_5ravif.exit ], [ %i.vf, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4IterhEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRhB3J_ETRmB3R_EETxxxEB2g_NCIB2i_hE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit ]
  %i.vh = fadd double %.sroa.0.1478, %.sroa.010.0.lcssa.i ; 2 uses
  %i.vi = fadd <4 x double> %i.lv, %i.vg          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond593.not = icmp eq i64 %i.lw, %umax
  br i1 %exitcond593.not, label %._crit_edge, label %.lr.ph480
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvetECs2mu2Cb9JdUH_5ravif(i8 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(816) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 11 uses
  %i.n = alloca [272 x i8], align 8               ; 19 uses
  %i.o = alloca [272 x i8], align 8               ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [1536 x i8], align 4              ; 8 uses
  %i.v = alloca [4632 x i8], align 4              ; 9 uses
  %i.w = alloca [4632 x i8], align 4              ; 8 uses
  %i.x = alloca [1536 x i8], align 4              ; 6 uses
  %i.y = alloca [1536 x i8], align 4              ; 8 uses
  %i.z = alloca [3088 x i8], align 4              ; 6 uses
  %i.aa = alloca [3088 x i8], align 4             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 3088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1544) %i.ab, i8 0, i64 1544, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.aa, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.z, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.y, i8 0, i64 1536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.x, i8 0, i64 1536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4632) %i.w, i8 0, i64 4632, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 1544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3088) %i.v, i8 0, i64 3088, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.u, i8 0, i64 1536, i1 false)
  %i.ae = zext i8 %0 to i64                       ; 2 uses
  %i.af = icmp ult i8 %0, 16
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @3, i64 %i.ae ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 496
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  switch i64 %i.an, label %bb.d [
    i64 8, label %.thread
    i64 10, label %bb.f
    i64 12, label %bb.e
  ], !prof !16

.thread:                                          ; preds = %bb.b
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.thread, %bb.e
  %.sroa.07.0140 = phi ptr [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kjc_ECs2mu2Cb9JdUH_5ravif, %bb.e ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kj8_ECs2mu2Cb9JdUH_5ravif, %.thread ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r1Kja_ECs2mu2Cb9JdUH_5ravif, %bb.b ] ; 3 uses
  %.sroa.010.0 = phi ptr [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kjc_ECs2mu2Cb9JdUH_5ravif, %bb.e ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kj8_ECs2mu2Cb9JdUH_5ravif, %.thread ], [ @_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust17sgrproj_box_ab_r2Kja_ECs2mu2Cb9JdUH_5ravif, %bb.b ] ; 2 uses
  %i.ao = add nsw i8 %0, -10
  %.not = icmp ult i8 %i.ao, 4                    ; 3 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ap = and i8 %0, 14
  %.not48 = icmp eq i8 %i.ap, 14                  ; 3 uses
  br i1 %.not48, label %.split485, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4
  call void %.sroa.010.0(ptr noalias nofree noundef nonnull align 4 %i.aa, i64 noundef 386, ptr noalias nofree noundef nonnull align 4 %i.z, i64 noundef 386, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ar, i64 noundef %i.at, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.av, i64 noundef %i.ax, i64 noundef 264, i64 noundef 0, i64 noundef %5, i32 noundef %i.ah), !callees !17
  br label %bb.g

.split485:                                        ; preds = %bb.m, %bb.g
  %i.ay = lshr i64 %6, 1
  %.sroa.05.0.i.i = sub nuw i64 %6, %i.ay         ; 2 uses
  %.not49486 = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %.not49486, label %._crit_edge495, label %.lr.ph494

.lr.ph494:                                        ; preds = %.split485
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load i64, ptr %i.bb, align 8            ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = load i64, ptr %i.bf, align 8            ; 5 uses
  %i.bh = add i64 %5, 3                           ; 6 uses
  %.not.i53 = icmp ugt i64 %i.bh, 386
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bi = icmp ult i64 %5, 385                    ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %5 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 256 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 264 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.7106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.cd = icmp ult i64 %i.bc, 265
  %i.ce = icmp ult i64 %i.bg, 265
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 1060
  %i.cg = add i64 %i.bc, -265
  %i.ch = add i64 %i.bg, -265
end_hunk_0
begin_hunk_1_@_RINvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solvetECs2mu2Cb9JdUH_5ravif:bb.a
  %i.rt = load i32, ptr %i.rs, align 4, !noalias !600, !noundef !4
  %i.ru = load <2 x i32>, ptr %i.rr, align 4, !noalias !600
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.qr
  %i.rw = load i32, ptr %i.rv, align 4, !noalias !600, !noundef !4
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.qs
  %i.ry = load i32, ptr %i.rx, align 4, !noalias !600, !noundef !4
  %i.rz = insertelement <4 x i32> poison, i32 %i.ry, i64 2
  %i.sa = insertelement <4 x i32> %i.rz, i32 %i.rw, i64 3
  %i.sb = shufflevector <2 x i32> %i.ru, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sc = shufflevector <4 x i32> %i.sb, <4 x i32> %i.sa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sc)
  %op.rdx866 = add i32 %i.sd, %i.rt
  %i.se = shl i32 %op.rdx866, 2
  %i.sf = add i32 %i.se, %i.rq
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.sroa.0.0.i471
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.qr
  %i.si = load i32, ptr %i.sh, align 4, !noalias !600, !noundef !4
  %i.sj = load <2 x i32>, ptr %i.sg, align 4, !noalias !600
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.qr
  %i.sl = load i32, ptr %i.sk, align 4, !noalias !600, !noundef !4
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.qs
  %i.sn = load i32, ptr %i.sm, align 4, !noalias !600, !noundef !4
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.on, i64 %.sroa.0.0.i471
  %i.sp = load i16, ptr %i.so, align 2, !noalias !600, !noundef !4
  %i.sq = zext i16 %i.sp to i32
  %i.sr = mul i32 %i.sf, %i.sq
  %i.ss = insertelement <4 x i32> poison, i32 %i.sn, i64 2
  %i.st = insertelement <4 x i32> %i.ss, i32 %i.sl, i64 3
  %i.su = shufflevector <2 x i32> %i.sj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.sv = shufflevector <4 x i32> %i.su, <4 x i32> %i.st, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.sv)
  %op.rdx = add i32 %i.sw, %i.si
  %i.sx = shl i32 %op.rdx, 2
  %i.sy = add i32 %i.re, 256
  %i.sz = add i32 %i.sy, %i.sx
  %i.ta = add i32 %i.sz, %i.sr
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.i471
  %i.tc = lshr i32 %i.ta, 9
  store i32 %i.tc, ptr %i.tb, align 4, !alias.scope !599, !noalias !601
  %exitcond591.not = icmp eq i64 %i.qr, %5
  br i1 %exitcond591.not, label %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph472, !llvm.loop !523

bb.bn:                                            ; preds = %bb.bg
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 265, i64 noundef %i.bg, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

bb.bo:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #28
  unreachable

bb.bp:                                            ; preds = %_RINvNtNtCsdEEMmLUVy6d_5rav1e3lrf4rust25sgrproj_box_f_r1_internaltECs2mu2Cb9JdUH_5ravif.exit
  %i.td = extractvalue { ptr, i64 } %i.oc, 1      ; 2 uses
  %i.te = load i64, ptr %i.cq, align 8, !noundef !4
  %i.tf = mul i64 %i.te, %i.lv
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.tf ; 2 uses
  %i.th = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.021.0479 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !nonnull !4, !align !21, !noundef !4 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not.i54 = icmp ugt i64 %5, %i.td
  br i1 %.not.i54, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, 4611686018427387904) %i.td, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28, !noalias !602
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.od, i64 %5
  br i1 %.not7.i, label %bb.bs, label %bb.bt, !prof !8

bb.bs:                                            ; preds = %bb.br
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, 4611686018427387904) %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #28, !noalias !602
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %5
  %.not8.i = icmp ugt i64 %5, %i.tk
  br i1 %.not8.i, label %bb.bu, label %bb.bv, !prof !8

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef range(i64 0, 2305843009213693952) %i.tk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28, !noalias !602
  unreachable

bb.bv:                                            ; preds = %bb.bt
  br i1 %i.bi, label %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit, label %bb.bw, !prof !19

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 384, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28, !noalias !602
  unreachable

_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.bv
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !603
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 2 %i.od, ptr noundef nonnull readonly %i.tl, ptr noundef nonnull readonly align 2 %i.tg, ptr noundef nonnull readonly %i.tm), !noalias !604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !603
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.ti, ptr noundef nonnull readonly %i.tn, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.cj), !noalias !604
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter4ItertEB10_EIBN_IB11_mEB1B_EEINtB5_7ZipImplBW_B1x_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !603
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %.val.i61 = load i64, ptr %i.cr, align 8, !alias.scope !606, !noalias !607, !noundef !4 ; 4 uses
  %.val6.i = load i64, ptr %i.cs, align 8, !alias.scope !606, !noalias !607, !noundef !4 ; 2 uses
  %i.to = sub i64 %.val6.i, %.val.i61             ; 4 uses
  %.not.i62 = icmp eq i64 %.val6.i, %.val.i61
  br i1 %.not.i62, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit
  %i.tp = load i64, ptr %i.ct, align 8, !alias.scope !608, !noalias !609, !noundef !4 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !608, !noalias !609, !nonnull !4, !noundef !4 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !608, !noalias !609, !nonnull !4, !noundef !4 ; 2 uses
  %i.tq = load i64, ptr %i.cw, align 8, !alias.scope !610, !noalias !609, !noundef !4 ; 2 uses
  %.val1.i.i1.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !610, !noalias !609, !nonnull !4, !noundef !4 ; 2 uses
  %.val.i.i2.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !610, !noalias !609, !nonnull !4, !noundef !4 ; 2 uses
  %min.iters.check = icmp ult i64 %i.to, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.to, -2                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ur, %vector.body ]
  %vec.phi792 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.up, %vector.body ]
  %vec.phi793 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ul, %vector.body ]
  %vec.phi794 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.un, %vector.body ]
  %vec.phi795 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.uj, %vector.body ]
  %i.tr = add i64 %index, %.val.i61               ; 2 uses
  %i.ts = add i64 %i.tr, %i.tp                    ; 2 uses
  %i.tt = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i, i64 %i.ts
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i, i64 %i.ts
  %i.tv = add i64 %i.tr, %i.tq                    ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i1.i.i, i64 %i.tv
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2.i.i, i64 %i.tv
  %wide.load = load <2 x i16>, ptr %i.tt, align 2, !noalias !611
  %wide.load796 = load <2 x i16>, ptr %i.tu, align 2, !noalias !611
  %wide.load797 = load <2 x i32>, ptr %i.tw, align 4, !noalias !611
  %wide.load798 = load <2 x i32>, ptr %i.tx, align 4, !noalias !611
  %i.ty = zext <2 x i16> %wide.load to <2 x i32>  ; 2 uses
  %i.tz = shl nuw nsw <2 x i32> %i.ty, splat (i32 4) ; 2 uses
  %i.ua = zext <2 x i16> %wide.load796 to <2 x i32>
  %i.ub = sub nsw <2 x i32> %i.ua, %i.ty
  %i.uc = shl nsw <2 x i32> %i.ub, splat (i32 4)
  %i.ud = sub <2 x i32> %wide.load797, %i.tz
  %i.ue = sub <2 x i32> %wide.load798, %i.tz
  %i.uf = sext <2 x i32> %i.uc to <2 x i64>       ; 2 uses
  %i.ug = sext <2 x i32> %i.ue to <2 x i64>       ; 4 uses
  %i.uh = sext <2 x i32> %i.ud to <2 x i64>       ; 4 uses
  %i.ui = mul nsw <2 x i64> %i.uh, %i.uh
  %i.uj = add <2 x i64> %i.ui, %vec.phi795        ; 2 uses
  %i.uk = mul nsw <2 x i64> %i.ug, %i.ug
  %i.ul = add <2 x i64> %i.uk, %vec.phi793        ; 2 uses
  %i.um = mul nsw <2 x i64> %i.ug, %i.uh
  %i.un = add <2 x i64> %i.um, %vec.phi794        ; 2 uses
  %i.uo = mul nsw <2 x i64> %i.uf, %i.uh
  %i.up = add <2 x i64> %i.uo, %vec.phi792        ; 2 uses
  %i.uq = mul nsw <2 x i64> %i.ug, %i.uf
  %i.ur = add <2 x i64> %i.uq, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.us = icmp eq i64 %index.next, %n.vec
  br i1 %i.us, label %middle.block, label %vector.body, !llvm.loop !557

middle.block:                                     ; preds = %vector.body
  %i.ut = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ur) ; 2 uses
  %i.uu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.up) ; 2 uses
  %i.uv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ul) ; 2 uses
  %i.uw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.un) ; 2 uses
  %i.ux = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.uj) ; 2 uses
  %cmp.n = icmp eq i64 %i.to, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.058.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.sroa.10.057.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ut, %middle.block ]
  %.sroa.9.056.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.uu, %middle.block ]
  %.sroa.823.055.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.uv, %middle.block ]
  %.sroa.613.054.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.uw, %middle.block ]
  %.sroa.010.053.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ux, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.058.i = phi i64 [ %i.uy, %scalar.ph ], [ %.sroa.0.058.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.10.057.i = phi i64 [ %i.wd, %scalar.ph ], [ %.sroa.10.057.i.ph, %scalar.ph.preheader ]
  %.sroa.9.056.i = phi i64 [ %i.wb, %scalar.ph ], [ %.sroa.9.056.i.ph, %scalar.ph.preheader ]
  %.sroa.823.055.i = phi i64 [ %i.vx, %scalar.ph ], [ %.sroa.823.055.i.ph, %scalar.ph.preheader ]
  %.sroa.613.054.i = phi i64 [ %i.vz, %scalar.ph ], [ %.sroa.613.054.i.ph, %scalar.ph.preheader ]
  %.sroa.010.053.i = phi i64 [ %i.vv, %scalar.ph ], [ %.sroa.010.053.i.ph, %scalar.ph.preheader ]
  %i.uy = add nuw i64 %.sroa.0.058.i, 1           ; 2 uses
  %i.uz = add i64 %.sroa.0.058.i, %.val.i61       ; 2 uses
  %i.va = add i64 %i.uz, %i.tp                    ; 2 uses
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %.val1.i.i.i.i, i64 %i.va
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i.i.i, i64 %i.va
  %i.vd = add i64 %i.uz, %i.tq                    ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i1.i.i, i64 %i.vd
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i2.i.i, i64 %i.vd
  %i.vg = load i16, ptr %i.vb, align 2, !noalias !611, !noundef !4
  %i.vh = load i16, ptr %i.vc, align 2, !noalias !611, !noundef !4
  %i.vi = load i32, ptr %i.ve, align 4, !noalias !611, !noundef !4
  %i.vj = load i32, ptr %i.vf, align 4, !noalias !611, !noundef !4
  %i.vk = zext i16 %i.vh to i32
  %i.vl = zext i16 %i.vg to i32                   ; 2 uses
  %i.vm = shl nuw nsw i32 %i.vl, 4                ; 2 uses
  %i.vn = sub nsw i32 %i.vk, %i.vl
  %i.vo = shl nsw i32 %i.vn, 4
  %i.vp = sext i32 %i.vo to i64                   ; 2 uses
  %i.vq = sub i32 %i.vi, %i.vm
  %i.vr = sub i32 %i.vj, %i.vm
  %i.vs = sext i32 %i.vr to i64                   ; 4 uses
  %i.vt = sext i32 %i.vq to i64                   ; 4 uses
  %i.vu = mul nsw i64 %i.vt, %i.vt
  %i.vv = add i64 %i.vu, %.sroa.010.053.i         ; 2 uses
  %i.vw = mul nsw i64 %i.vs, %i.vs
  %i.vx = add i64 %i.vw, %.sroa.823.055.i         ; 2 uses
  %i.vy = mul nsw i64 %i.vs, %i.vt
  %i.vz = add i64 %i.vy, %.sroa.613.054.i         ; 2 uses
  %i.wa = mul nsw i64 %i.vp, %i.vt
  %i.wb = add i64 %i.wa, %.sroa.9.056.i           ; 2 uses
  %i.wc = mul nsw i64 %i.vs, %i.vp
  %i.wd = add i64 %i.wc, %.sroa.10.057.i          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.uy, %i.to
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, label %scalar.ph, !llvm.loop !558

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa749 = phi i64 [ %i.ux, %middle.block ], [ %i.vv, %scalar.ph ]
  %.lcssa748 = phi i64 [ %i.uv, %middle.block ], [ %i.vx, %scalar.ph ]
  %.lcssa747 = phi i64 [ %i.uw, %middle.block ], [ %i.vz, %scalar.ph ]
  %.lcssa746 = phi i64 [ %i.uu, %middle.block ], [ %i.wb, %scalar.ph ]
  %.lcssa745 = phi i64 [ %i.ut, %middle.block ], [ %i.wd, %scalar.ph ]
  %i.we = sitofp i64 %.lcssa749 to double
  %i.wf = sitofp i64 %.lcssa748 to double
  %i.wg = sitofp i64 %.lcssa747 to double
  %i.wh = sitofp i64 %.lcssa746 to double
  %i.wi = sitofp i64 %.lcssa745 to double
  %i.wj = insertelement <4 x double> poison, double %i.wi, i64 0
  %i.wk = insertelement <4 x double> %i.wj, double %i.wh, i64 1
  %i.wl = insertelement <4 x double> %i.wk, double %i.wf, i64 2
  %i.wm = insertelement <4 x double> %i.wl, double %i.wg, i64 3
  br label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit
  %.sroa.010.0.lcssa.i = phi double [ 0.000000e+00, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit ], [ %i.we, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit ]
  %i.wn = phi <4 x double> [ zeroinitializer, %_RINvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_linetECs2mu2Cb9JdUH_5ravif.exit ], [ %i.wm, %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtNtBc_5slice4iter4ItertEB11_EIBO_IB12_mEB1C_EEINtB6_7ZipImplBX_B1y_E4foldNtNvNvNtCsdEEMmLUVy6d_5rav1e3lrf13sgrproj_solve12process_line4SumsNCINvNtB8_3map8map_foldTTRtB3J_ETRmB3R_EETxxxEB2g_NCIB2i_tE0NCB4a_s_0E0ECs2mu2Cb9JdUH_5ravif.exit.loopexit ]
  %i.wo = fadd double %.sroa.0.1478, %.sroa.010.0.lcssa.i ; 2 uses
  %i.wp = fadd <4 x double> %i.lt, %i.wn          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %exitcond593.not = icmp eq i64 %i.lu, %umax
  br i1 %exitcond593.not, label %._crit_edge, label %.lr.ph480
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.j = load i64, ptr %i.h, align 8, !noundef !4
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failediiECs2mu2Cb9JdUH_5ravif(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.i, 0                      ; 2 uses
  %. = select i1 %i.l, i64 0, i64 4               ; 2 uses
  %i.m = sub i64 %2, %4
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 3)
  %i.n = add i64 %..i, %4
  %i.o = add i64 %i.n, %.                         ; 10 uses
  %storemerge = select i1 %i.l, i64 -4, i64 0     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = load ptr, ptr %6, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.q = sub i64 %i.i, %.                         ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 9 uses
  store ptr %i.p, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 %i.s, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = load ptr, ptr %7, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.q, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %i.x, ptr %i.z, align 8
  %i.aa = icmp eq i64 %i.s, %i.x
  br i1 %i.aa, label %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedIterhE3newCs2mu2Cb9JdUH_5ravif.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failediiECs2mu2Cb9JdUH_5ravif(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #28, !noalias !662
  unreachable

_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedIterhE3newCs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c
  %i.ab = and i64 %5, 1
  %i.ac = add i64 %i.ab, %5                       ; 2 uses
  %i.ad = add i64 %i.s, %i.ac                     ; 3 uses
  %i.ae = add i64 %i.s, -4                        ; 3 uses
  %i.af = add i64 %i.ac, 6
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ah = icmp sgt i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedIterhE3newCs2mu2Cb9JdUH_5ravif.exit
  %i.ai = add i64 %i.s, %3
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %i.ae, i64 noundef 0, i64 noundef %i.aj), !noalias !663
  %i.al = add i64 %i.s, -2                        ; 2 uses
  %i.am = add i64 %i.ad, 1                        ; 2 uses
  %i.an = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef %i.am), !noalias !663 ; 3 uses
  %i.ao = icmp sge i64 %i.an, %i.s
  %i.ap = icmp slt i64 %i.an, %i.ad
  %or.cond.i37 = and i1 %i.ao, %i.ap
  %.sroa.03.0.i39.sroa.speculated = select i1 %or.cond.i37, ptr %i.p, ptr %i.v ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !noalias !663, !noundef !4
  %i.at = add i64 %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 80
  %i.av = load i64, ptr %i.au, align 8, !noalias !663, !noundef !4
  %i.aw = add i64 %i.av, %i.q                     ; 2 uses
  %i.ax = load i64, ptr %i.aq, align 8, !noalias !663, !noundef !4 ; 3 uses
  %i.ay = mul i64 %i.ax, %i.at                    ; 2 uses
  %i.az = add i64 %i.ay, %i.aw                    ; 3 uses
  %i.ba = sub i64 %i.ax, %i.aw                    ; 2 uses
  %i.bb = add i64 %i.ay, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.s, -3                        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i39.sroa.speculated, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !663, !noundef !4 ; 2 uses
  %i.bf = icmp ult i64 %i.bb, %i.az
  %.not.i40 = icmp ugt i64 %i.bb, %i.be
  %or.cond7.i41 = or i1 %i.bf, %.not.i40
  br i1 %or.cond7.i41, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.az, i64 noundef %i.bb, i64 noundef %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #28, !noalias !663
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %.sroa.03.0.i39.sroa.speculated, align 8, !noalias !663, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.az
  %.not.i43 = icmp ugt i64 %i.o, %i.ba
  br i1 %.not.i43, label %bb.h, label %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28, !noalias !664
  unreachable

_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.g
  %i.bi = add i64 %4, 7
  %i.bj = add i64 %i.bi, %storemerge              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !noundef !4 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bs
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEBW_EINtB5_7ZipImplBW_BW_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bt)
  %.sroa.590.32.copyload = load ptr, ptr %i.d, align 8, !alias.scope !665, !noalias !666 ; 2 uses
  %.sroa.892.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.892.32.copyload = load ptr, ptr %.sroa.892.32..sroa_idx, align 8, !alias.scope !665, !noalias !666 ; 2 uses
  %.sroa.1094.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.1094.32.copyload = load i64, ptr %.sroa.1094.32..sroa_idx, align 8, !alias.scope !665, !noalias !666 ; 2 uses
  %.sroa.1195.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.1195.32.copyload = load i64, ptr %.sroa.1195.32..sroa_idx, align 8, !alias.scope !665, !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bu = icmp slt i64 %storemerge, %i.bj         ; 2 uses
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNCINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehE0Cs2mu2Cb9JdUH_5ravif.exit
  %i.bv = add i64 %i.o, -1
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.1195.32.copyload, i64 %.sroa.1094.32.copyload)
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs0_NtCsdEEMmLUVy6d_5rav1e3lrfINtB5_14VertPaddedIterhE3newCs2mu2Cb9JdUH_5ravif.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
  unreachable

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.04.0253 = phi i32 [ 0, %.lr.ph ], [ %i.cf, %bb.m ]
  %.sroa.06.0252 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.m ]
  %.sroa.580.0251 = phi i64 [ %storemerge, %.lr.ph ], [ %i.bx, %bb.m ] ; 2 uses
  %.sroa.1085.0250 = phi i64 [ %.sroa.1094.32.copyload, %.lr.ph ], [ %i.ca, %bb.m ] ; 4 uses
  %i.bw = tail call noundef i64 @_RINvNtCsko5zPvjVG7R_7v_frame4math5clampiECs2mu2Cb9JdUH_5ravif(i64 noundef %.sroa.580.0251, i64 noundef 0, i64 noundef %i.bv), !noalias !667 ; 3 uses
  %i.bx = add i64 %.sroa.580.0251, 1              ; 2 uses
  %i.by = icmp ult i64 %i.bw, %i.o
end_hunk_1
