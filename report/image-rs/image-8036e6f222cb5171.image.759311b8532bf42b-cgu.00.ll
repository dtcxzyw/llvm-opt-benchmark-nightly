Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.00?download=true
inline.NumInlined: 1965
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnffEB6_:bb.a
.lr.ph.us:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us
  %.sroa.0147.0332.us = phi ptr [ %i.ay, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us ], [ %5, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 3 uses
  %.sroa.7149.0331.us = phi i64 [ %i.aw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us ], [ %i.h, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ]
  %.sroa.10.0330.us = phi i64 [ %i.az, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 4 uses
  %i.aw = add nsw i64 %.sroa.7149.0331.us, -1     ; 2 uses
  %i.ax = icmp eq ptr %.sroa.0147.0332.us, %i.r
  br i1 %i.ax, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0147.0332.us, i64 4
  %i.az = add nuw nsw i64 %.sroa.10.0330.us, 1
  %i.ba = load float, ptr %.sroa.0147.0332.us, align 4, !noundef !9 ; 4 uses
  %i.bb = xor i64 %.sroa.10.0330.us, -1
  %i.bc = add nsw i64 %6, %i.bb                   ; 3 uses
  %exitcond479.not = icmp eq i64 %.sroa.10.0330.us, %1
  br i1 %exitcond479.not, label %.split342.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10.0330.us ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !noundef !9 ; 2 uses
  %.not112.us = icmp ugt i64 %i.w, %i.bf
  br i1 %.not112.us, label %.split345.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.bd, align 8, !nonnull !9, !align !190, !noundef !9
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.sroa.011.0335.us ; 2 uses
  %i.bi = icmp ult i64 %i.bc, %1
  br i1 %i.bi, label %bb.h, label %.split350.us

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !9 ; 2 uses
  %.not113.us = icmp ugt i64 %i.w, %i.bl
  br i1 %.not113.us, label %.split353.us, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %i.bj, align 8, !nonnull !9, !align !190, !noundef !9
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.011.0335.us ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.q, ptr noundef nonnull readonly align 4 %i.bh, ptr noundef nonnull readonly %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 4 %i.bn, ptr noundef nonnull readonly %i.bp), !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  %.sroa.0150.0.copyload.us = load ptr, ptr %i.d, align 8 ; 7 uses
  %.sroa.4152.0.copyload.us = load ptr, ptr %.sroa.4152.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5154.0.copyload.us = load i64, ptr %.sroa.5154.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6156.0.copyload.us = load ptr, ptr %.sroa.6156.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7158.0.copyload.us = load i64, ptr %.sroa.7158.0..sroa_idx, align 8 ; 8 uses
  %.sroa.9.0.copyload.us = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 7 uses
  %i.bq = icmp ult i64 %.sroa.7158.0.copyload.us, %.sroa.9.0.copyload.us
  br i1 %i.bq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.7158.0329.us = phi i64 [ %i.cg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.7158.0329.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %i.br = add i64 %.sroa.7158.0329.us, %.sroa.5154.0.copyload.us ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0.copyload.us, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6156.0.copyload.us, i64 %.sroa.7158.0329.us
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4152.0.copyload.us, i64 %i.br
  %i.bv = add nuw i64 %.sroa.7158.0329.us, 1      ; 2 uses
  %i.bw = load float, ptr %i.bs, align 4, !noundef !9
  %i.bx = load float, ptr %i.bu, align 4, !noundef !9
  %i.by = load float, ptr %i.bt, align 4, !noundef !9
  %i.bz = fadd float %i.bx, %i.by
  %i.ca = fmul float %i.ba, %i.bz
  %i.cb = fadd float %i.bw, %i.ca
  store float %i.cb, ptr %i.bs, align 4
  %i.cc = add i64 %i.bv, %.sroa.5154.0.copyload.us ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0.copyload.us, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6156.0.copyload.us, i64 %i.bv
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4152.0.copyload.us, i64 %i.cc
  %i.cg = add nuw i64 %.sroa.7158.0329.us, 2      ; 2 uses
  %i.ch = load float, ptr %i.cd, align 4, !noundef !9
  %i.ci = load float, ptr %i.cf, align 4, !noundef !9
  %i.cj = load float, ptr %i.ce, align 4, !noundef !9
  %i.ck = fadd float %i.ci, %i.cj
  %i.cl = fmul float %i.ba, %i.ck
  %i.cm = fadd float %i.ch, %i.cl
  store float %i.cm, ptr %i.cd, align 4
  %exitcond478.not.1 = icmp eq i64 %i.cg, %.sroa.9.0.copyload.us
  br i1 %exitcond478.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !179

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us: ; preds = %.lr.ph.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.q, ptr noundef nonnull %.sroa.074.0334.us, ptr noundef nonnull %i.v)
  %.sroa.0162.0.copyload.us = load ptr, ptr %i.c, align 8 ; 8 uses
  %.sroa.4164.0.copyload.us = load ptr, ptr %.sroa.4164.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5166.0.copyload.us = load i64, ptr %.sroa.5166.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7167.0.copyload.us = load i64, ptr %.sroa.7167.0..sroa_idx, align 8 ; 5 uses
  %i.cn = icmp ult i64 %.sroa.5166.0.copyload.us, %.sroa.7167.0.copyload.us
  br i1 %i.cn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.5166.0333.us = phi i64 [ %i.dc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.5166.0333.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0162.0.copyload.us, i64 %.sroa.5166.0333.us
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4164.0.copyload.us, i64 %.sroa.5166.0333.us
  %i.cq = add nuw i64 %.sroa.5166.0333.us, 1      ; 2 uses
  %i.cr = load float, ptr %i.co, align 4, !noundef !9
  store float %i.cr, ptr %i.cp, align 4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0162.0.copyload.us, i64 %i.cq
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4164.0.copyload.us, i64 %i.cq
  %i.cu = add nuw i64 %.sroa.5166.0333.us, 2      ; 2 uses
  %i.cv = load float, ptr %i.cs, align 4, !noundef !9
  store float %i.cv, ptr %i.ct, align 4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0162.0.copyload.us, i64 %i.cu
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4164.0.copyload.us, i64 %i.cu
  %i.cy = add nuw i64 %.sroa.5166.0333.us, 3      ; 2 uses
  %i.cz = load float, ptr %i.cw, align 4, !noundef !9
  store float %i.cz, ptr %i.cx, align 4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0162.0.copyload.us, i64 %i.cy
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4164.0.copyload.us, i64 %i.cy
  %i.dc = add nuw i64 %.sroa.5166.0333.us, 4      ; 2 uses
  %i.dd = load float, ptr %i.da, align 4, !noundef !9
  store float %i.dd, ptr %i.db, align 4
  %exitcond481.not.3 = icmp eq i64 %i.dc, %.sroa.7167.0.copyload.us
  br i1 %exitcond481.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !180

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.de = icmp eq ptr %i.v, %i.m
  br i1 %i.de, label %._crit_edge338, label %bb.c

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block92, %bb.i
  %i.df = icmp eq i64 %i.aw, 0
  br i1 %i.df, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us, label %.lr.ph.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.d
  %.sroa.4144.0.copyload.us97 = ptrtoaddr ptr %.sroa.4144.0.copyload.us to i64
  %.sroa.0142.0.copyload.us96 = ptrtoaddr ptr %.sroa.0142.0.copyload.us to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0142.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4144.0.copyload.us) ]
  %i.dg = sub nuw i64 %.sroa.7146.0.copyload.us, %.sroa.5145.0.copyload.us ; 3 uses
  %min.iters.check100 = icmp ult i64 %i.dg, 8
  %i.dh = sub i64 %.sroa.4144.0.copyload.us97, %.sroa.0142.0.copyload.us96
  %diff.check98 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check100, i1 true, i1 %diff.check98
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %n.vec102 = and i64 %i.dg, -8                   ; 3 uses
  %i.di = add i64 %.sroa.5145.0.copyload.us, %n.vec102
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph101
  %index106 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body105 ] ; 2 uses
  %i.dj = add nuw i64 %.sroa.5145.0.copyload.us, %index106 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.0.copyload.us, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4144.0.copyload.us, i64 %i.dj ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load107 = load <4 x float>, ptr %i.dl, align 4
  %wide.load108 = load <4 x float>, ptr %i.dm, align 4
  %i.dn = fmul <4 x float> %broadcast.splat104, %wide.load107
  %i.do = fmul <4 x float> %broadcast.splat104, %wide.load108
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x float> %i.dn, ptr %i.dk, align 4
  store <4 x float> %i.do, ptr %i.dp, align 4
  %index.next109 = add nuw i64 %index106, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.dq, label %middle.block110, label %vector.body105, !llvm.loop !181

middle.block110:                                  ; preds = %vector.body105
  %cmp.n111 = icmp eq i64 %i.dg, %n.vec102
  br i1 %cmp.n111, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block110
  %.sroa.5145.0328.us.ph = phi i64 [ %.sroa.5145.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.di, %middle.block110 ] ; 4 uses
  %i.dr = sub i64 %.sroa.7146.0.copyload.us, %.sroa.5145.0328.us.ph
  %xtraiter = and i64 %i.dr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.5145.0328.us.prol = phi i64 [ %i.du, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.5145.0328.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.0.copyload.us, i64 %.sroa.5145.0328.us.prol
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4144.0.copyload.us, i64 %.sroa.5145.0328.us.prol
  %i.du = add nuw i64 %.sroa.5145.0328.us.prol, 1 ; 2 uses
  %i.dv = load float, ptr %i.dt, align 4, !noundef !9
  %i.dw = fmul float %i.j, %i.dv
  store float %i.dw, ptr %i.ds, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !182

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5145.0328.us.unr = phi i64 [ %.sroa.5145.0328.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.du, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.dx = sub i64 %.sroa.5145.0328.us.ph, %.sroa.7146.0.copyload.us
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4152.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6156.0.copyload.us) ]
  %i.dz = sub nuw i64 %.sroa.9.0.copyload.us, %.sroa.7158.0.copyload.us ; 3 uses
  %min.iters.check80 = icmp ult i64 %i.dz, 8
  br i1 %min.iters.check80, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck70

vector.memcheck70:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.ea = add i64 %.sroa.7158.0.copyload.us, %.sroa.5154.0.copyload.us
  %i.eb = shl i64 %i.ea, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0150.0.copyload.us, i64 %i.eb ; 2 uses
  %i.ec = add i64 %.sroa.9.0.copyload.us, %.sroa.5154.0.copyload.us
  %i.ed = shl i64 %i.ec, 2                        ; 2 uses
  %scevgep71 = getelementptr i8, ptr %.sroa.0150.0.copyload.us, i64 %i.ed ; 2 uses
  %scevgep72 = getelementptr i8, ptr %.sroa.4152.0.copyload.us, i64 %i.eb
  %scevgep73 = getelementptr i8, ptr %.sroa.4152.0.copyload.us, i64 %i.ed
  %i.ee = shl i64 %.sroa.7158.0.copyload.us, 2
  %scevgep74 = getelementptr i8, ptr %.sroa.6156.0.copyload.us, i64 %i.ee
  %i.ef = shl i64 %.sroa.9.0.copyload.us, 2
  %scevgep75 = getelementptr i8, ptr %.sroa.6156.0.copyload.us, i64 %i.ef
  %bound0 = icmp ult ptr %scevgep, %scevgep73
  %bound1 = icmp ult ptr %scevgep72, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  %bound076 = icmp ult ptr %scevgep, %scevgep75
  %bound177 = icmp ult ptr %scevgep74, %scevgep71
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx = or i1 %found.conflict, %found.conflict78
  br i1 %conflict.rdx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %vector.memcheck70
  %n.vec82 = and i64 %i.dz, -8                    ; 3 uses
  %i.eg = add i64 %.sroa.7158.0.copyload.us, %n.vec82
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph81
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next91, %vector.body83 ] ; 2 uses
  %i.eh = add nuw i64 %.sroa.7158.0.copyload.us, %index84 ; 2 uses
  %i.ei = add i64 %i.eh, %.sroa.5154.0.copyload.us ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0.copyload.us, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6156.0.copyload.us, i64 %i.eh ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4152.0.copyload.us, i64 %i.ei ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load85 = load <4 x float>, ptr %i.ej, align 4, !alias.scope !193, !noalias !194
  %wide.load86 = load <4 x float>, ptr %i.em, align 4, !alias.scope !193, !noalias !194
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load87 = load <4 x float>, ptr %i.el, align 4, !alias.scope !195
  %wide.load88 = load <4 x float>, ptr %i.en, align 4, !alias.scope !195
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load89 = load <4 x float>, ptr %i.ek, align 4, !alias.scope !196
  %wide.load90 = load <4 x float>, ptr %i.eo, align 4, !alias.scope !196
  %i.ep = fadd <4 x float> %wide.load87, %wide.load89
  %i.eq = fadd <4 x float> %wide.load88, %wide.load90
  %i.er = fmul <4 x float> %broadcast.splat, %i.ep
  %i.es = fmul <4 x float> %broadcast.splat, %i.eq
  %i.et = fadd <4 x float> %wide.load85, %i.er
  %i.eu = fadd <4 x float> %wide.load86, %i.es
  store <4 x float> %i.et, ptr %i.ej, align 4, !alias.scope !193, !noalias !194
  store <4 x float> %i.eu, ptr %i.em, align 4, !alias.scope !193, !noalias !194
  %index.next91 = add nuw i64 %index84, 8         ; 2 uses
  %i.ev = icmp eq i64 %index.next91, %n.vec82
  br i1 %i.ev, label %middle.block92, label %vector.body83, !llvm.loop !187

middle.block92:                                   ; preds = %vector.body83
  %cmp.n93 = icmp eq i64 %i.dz, %n.vec82
  br i1 %cmp.n93, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck70, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block92
  %.sroa.7158.0329.us.ph = phi i64 [ %.sroa.7158.0.copyload.us, %vector.memcheck70 ], [ %.sroa.7158.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.eg, %middle.block92 ] ; 6 uses
  %i.ew = sub i64 %.sroa.9.0.copyload.us, %.sroa.7158.0329.us.ph
  %.neg = add i64 %.sroa.7158.0329.us.ph, 1
  %xtraiter180 = and i64 %i.ew, 1
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.ex = add i64 %.sroa.7158.0329.us.ph, %.sroa.5154.0.copyload.us ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0.copyload.us, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6156.0.copyload.us, i64 %.sroa.7158.0329.us.ph
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4152.0.copyload.us, i64 %i.ex
  %i.fb = add nuw i64 %.sroa.7158.0329.us.ph, 1
  %i.fc = load float, ptr %i.ey, align 4, !noundef !9
  %i.fd = load float, ptr %i.fa, align 4, !noundef !9
  %i.fe = load float, ptr %i.ez, align 4, !noundef !9
  %i.ff = fadd float %i.fd, %i.fe
  %i.fg = fmul float %i.ba, %i.ff
  %i.fh = fadd float %i.fc, %i.fg
  store float %i.fh, ptr %i.ey, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.7158.0329.us.unr = phi i64 [ %.sroa.7158.0329.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.fb, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.fi = icmp eq i64 %.sroa.9.0.copyload.us, %.neg
  br i1 %i.fi, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us
  %.sroa.4164.0.copyload.us67 = ptrtoaddr ptr %.sroa.4164.0.copyload.us to i64
  %.sroa.0162.0.copyload.us68 = ptrtoaddr ptr %.sroa.0162.0.copyload.us to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0162.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4164.0.copyload.us) ]
  %i.fj = sub nuw i64 %.sroa.7167.0.copyload.us, %.sroa.5166.0.copyload.us ; 3 uses
  %min.iters.check = icmp ult i64 %i.fj, 8
  %i.fk = sub i64 %.sroa.0162.0.copyload.us68, %.sroa.4164.0.copyload.us67
  %diff.check = icmp ugt i64 %i.fk, -32
  %or.cond113 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond113, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %n.vec = and i64 %i.fj, -8                      ; 3 uses
  %i.fl = add i64 %.sroa.5166.0.copyload.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fm = add nuw i64 %.sroa.5166.0.copyload.us, %index ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0162.0.copyload.us, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4164.0.copyload.us, i64 %i.fm ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load = load <4 x float>, ptr %i.fn, align 4
  %wide.load69 = load <4 x float>, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <4 x float> %wide.load, ptr %i.fo, align 4
  store <4 x float> %wide.load69, ptr %i.fq, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block
  %.sroa.5166.0333.us.ph = phi i64 [ %.sroa.5166.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.fl, %middle.block ] ; 4 uses
  %i.fs = sub i64 %.sroa.7167.0.copyload.us, %.sroa.5166.0333.us.ph
  %xtraiter183 = and i64 %i.fs, 3                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.5166.0333.us.prol = phi i64 [ %i.fv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.5166.0333.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0162.0.copyload.us, i64 %.sroa.5166.0333.us.prol
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4164.0.copyload.us, i64 %.sroa.5166.0333.us.prol
  %i.fv = add nuw i64 %.sroa.5166.0333.us.prol, 1 ; 2 uses
  %i.fw = load float, ptr %i.ft, align 4, !noundef !9
  store float %i.fw, ptr %i.fu, align 4
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !189

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5166.0333.us.unr = phi i64 [ %.sroa.5166.0333.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.fv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.fx = sub i64 %.sroa.5166.0333.us.ph, %.sroa.7167.0.copyload.us
  %i.fy = icmp ugt i64 %i.fx, -4
  br i1 %i.fy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #13
  unreachable

.lr.ph337.split:                                  ; preds = %.lr.ph337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #13
  unreachable

.split.us:                                        ; preds = %bb.c
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.0335.us, i64 noundef %i.w, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #13
  unreachable

.split342.us:                                     ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #13
  unreachable

.split345.us:                                     ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.0335.us, i64 noundef %i.w, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13
  unreachable

.split350.us:                                     ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #13
  unreachable

.split353.us:                                     ; preds = %bb.h
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.0335.us, i64 noundef %i.w, i64 noundef %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13
  unreachable

._crit_edge338:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, %bb.b
  %.sroa.011.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.w, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 7 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k ; 6 uses
  %i.ga = and i64 %3, 12
  %.idx400 = and i64 %i.l, 48                     ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx400 ; 2 uses
  %i.gc = icmp samesign eq i64 %.idx400, 0
  br i1 %i.gc, label %._crit_edge377, label %.lr.ph376

.lr.ph376:                                        ; preds = %._crit_edge338
  %i.gd = icmp samesign ult i64 %i.h, %1
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 4 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  br i1 %i.gd, label %.lr.ph376.split, label %bb.l

.lr.ph376.split:                                  ; preds = %.lr.ph376
  %i.gg = icmp eq i64 %i.h, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !noundef !9 ; 5 uses
  br i1 %i.gg, label %.lr.ph376.split.split.us.preheader, label %.lr.ph376.split.split.preheader

.lr.ph376.split.split.preheader:                  ; preds = %.lr.ph376.split
  %i.gj = insertelement <4 x float> poison, float %i.j, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph376.split.split
end_hunk_0
begin_hunk_1_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnffEB6_:bb.a

.lr.ph376.split.split.us.prol.loopexit:           ; preds = %.lr.ph376.split.split.us.prol.loopexit.unr-lcssa, %.lr.ph376.split.split.us.preheader
  %.lcssa138.unr = phi i64 [ poison, %.lr.ph376.split.split.us.preheader ], [ %i.gn, %.lr.ph376.split.split.us.prol.loopexit.unr-lcssa ]
  %.sroa.011.1374.us.unr = phi i64 [ %.sroa.011.0.lcssa, %.lr.ph376.split.split.us.preheader ], [ %i.gn, %.lr.ph376.split.split.us.prol.loopexit.unr-lcssa ]
  %.sroa.082.0373.us.unr = phi ptr [ %i.fz, %.lr.ph376.split.split.us.preheader ], [ %i.gp, %.lr.ph376.split.split.us.prol.loopexit.unr-lcssa ]
  %i.gw = icmp eq i64 %i.gl, 0
  br i1 %i.gw, label %._crit_edge377, label %.lr.ph376.split.split.us.preheader.new

.lr.ph376.split.split.us.preheader.new:           ; preds = %.lr.ph376.split.split.us.prol.loopexit
  %i.gx = insertelement <4 x float> poison, float %i.j, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.op = sub nuw i64 %i.gi, 3
  %i.gz = insertelement <4 x float> poison, float %i.j, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph376.split.split.us

.lr.ph376.split.split.us:                         ; preds = %bb.k, %.lr.ph376.split.split.us.preheader.new
  %.sroa.011.1374.us = phi i64 [ %.sroa.011.1374.us.unr, %.lr.ph376.split.split.us.preheader.new ], [ %i.hh, %bb.k ] ; 5 uses
  %.sroa.082.0373.us = phi ptr [ %.sroa.082.0373.us.unr, %.lr.ph376.split.split.us.preheader.new ], [ %i.hj, %bb.k ] ; 3 uses
  %i.hb = add nuw i64 %.sroa.011.1374.us, 4       ; 4 uses
  %i.hc = or disjoint i64 %.sroa.011.1374.us, 3
  %or.cond124.not.us = icmp ult i64 %i.hc, %i.gi
  br i1 %or.cond124.not.us, label %.lr.ph376.split.split.us.1, label %.split.us379, !prof !11

.lr.ph376.split.split.us.1:                       ; preds = %.lr.ph376.split.split.us
  %i.hd = load ptr, ptr %i.ge, align 8, !nonnull !9, !align !190, !noundef !9 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.sroa.011.1374.us
  %i.hf = load <4 x float>, ptr %i.he, align 4
  %i.hg = fmul <4 x float> %i.gy, %i.hf
  store <4 x float> %i.hg, ptr %.sroa.082.0373.us, align 4
  %i.hh = add nuw i64 %.sroa.011.1374.us, 8       ; 3 uses
  %or.cond124.not.us.1 = icmp ult i64 %i.hb, %invariant.op
  br i1 %or.cond124.not.us.1, label %bb.k, label %.split.us379, !prof !11

bb.k:                                             ; preds = %.lr.ph376.split.split.us.1
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.082.0373.us, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.082.0373.us, i64 32 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hb
  %i.hl = load <4 x float>, ptr %i.hk, align 4
  %i.hm = fmul <4 x float> %i.ha, %i.hl
  store <4 x float> %i.hm, ptr %i.hi, align 4
  %i.hn = icmp eq ptr %i.hj, %i.gb
  br i1 %i.hn, label %._crit_edge377, label %.lr.ph376.split.split.us

.lr.ph376.split.split:                            ; preds = %.lr.ph376.split.split.preheader, %._crit_edge
  %.sroa.011.1374 = phi i64 [ %i.hp, %._crit_edge ], [ %.sroa.011.0.lcssa, %.lr.ph376.split.split.preheader ] ; 8 uses
  %.sroa.082.0373 = phi ptr [ %i.ho, %._crit_edge ], [ %i.fz, %.lr.ph376.split.split.preheader ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.082.0373, i64 16 ; 2 uses
  %i.hp = add nuw i64 %.sroa.011.1374, 4          ; 7 uses
  %i.hq = or disjoint i64 %.sroa.011.1374, 3
  %or.cond124.not = icmp ult i64 %i.hq, %i.gi
  br i1 %or.cond124.not, label %.lr.ph, label %.split.us379, !prof !11

bb.l:                                             ; preds = %.lr.ph376
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #13
  unreachable

.lr.ph:                                           ; preds = %.lr.ph376.split.split
  %i.hr = load ptr, ptr %i.ge, align 8, !nonnull !9, !align !190, !noundef !9
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %.sroa.011.1374
  %i.ht = load <4 x float>, ptr %i.hs, align 4
  %i.hu = fmul <4 x float> %i.gk, %i.ht
  br label %bb.m

.split.us379:                                     ; preds = %.lr.ph376.split.split, %.lr.ph376.split.split.us.prol, %.lr.ph376.split.split.us.1, %.lr.ph376.split.split.us
  %.us-phi380 = phi i64 [ %i.hh, %.lr.ph376.split.split.us.1 ], [ %i.gn, %.lr.ph376.split.split.us.prol ], [ %i.hb, %.lr.ph376.split.split.us ], [ %i.hp, %.lr.ph376.split.split ]
  %.us-phi381 = phi i64 [ %i.hb, %.lr.ph376.split.split.us.1 ], [ %.sroa.011.0.lcssa, %.lr.ph376.split.split.us.prol ], [ %.sroa.011.1374.us, %.lr.ph376.split.split.us ], [ %.sroa.011.1374, %.lr.ph376.split.split ]
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi381, i64 noundef %.us-phi380, i64 noundef %i.gi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13
  unreachable

bb.m:                                             ; preds = %.lr.ph, %bb.u
  %.sroa.0175.0360 = phi ptr [ %5, %.lr.ph ], [ %i.hy, %bb.u ] ; 3 uses
  %.sroa.7177.0359 = phi i64 [ %i.h, %.lr.ph ], [ %i.hw, %bb.u ]
  %.sroa.10178.0358 = phi i64 [ 0, %.lr.ph ], [ %i.hz, %bb.u ] ; 4 uses
  %i.hv = phi <4 x float> [ %i.hu, %.lr.ph ], [ %i.iw, %bb.u ] ; 2 uses
  %i.hw = add nsw i64 %.sroa.7177.0359, -1        ; 2 uses
  %i.hx = icmp eq ptr %.sroa.0175.0360, %i.gf
  br i1 %i.hx, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0175.0360, i64 4
  %i.hz = add nuw nsw i64 %.sroa.10178.0358, 1
  %i.ia = load float, ptr %.sroa.0175.0360, align 4, !noundef !9
  %i.ib = xor i64 %.sroa.10178.0358, -1
  %i.ic = add nsw i64 %6, %i.ib                   ; 3 uses
  %exitcond482.not = icmp eq i64 %.sroa.10178.0358, %1
  br i1 %exitcond482.not, label %bb.p, label %bb.o

._crit_edge:                                      ; preds = %bb.m, %bb.u
  %i.id = phi <4 x float> [ %i.iw, %bb.u ], [ %i.hv, %bb.m ]
  store <4 x float> %i.id, ptr %.sroa.082.0373, align 4
  %i.ie = icmp eq ptr %i.ho, %i.gb
  br i1 %i.ie, label %._crit_edge377, label %.lr.ph376.split.split

bb.o:                                             ; preds = %bb.n
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10178.0358 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !noundef !9 ; 2 uses
  %.not117 = icmp ugt i64 %i.hp, %i.ih
  br i1 %.not117, label %bb.r, label %bb.q, !prof !5

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #13
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ii = load ptr, ptr %i.if, align 8, !nonnull !9, !align !190, !noundef !9
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.sroa.011.1374
  %i.ik = icmp ult i64 %i.ic, %1
  br i1 %i.ik, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.1374, i64 noundef %i.hp, i64 noundef %i.ih, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #13
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ic ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i64, ptr %i.im, align 8, !noundef !9 ; 2 uses
  %.not118 = icmp ugt i64 %i.hp, %i.in
  br i1 %.not118, label %bb.v, label %bb.u, !prof !5

bb.t:                                             ; preds = %bb.q
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ic, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #13
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.io = load ptr, ptr %i.il, align 8, !nonnull !9, !align !190, !noundef !9
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.011.1374
  %i.iq = load <4 x float>, ptr %i.ij, align 4
  %i.ir = load <4 x float>, ptr %i.ip, align 4
  %i.is = fadd <4 x float> %i.iq, %i.ir
  %i.it = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iv = fmul <4 x float> %i.iu, %i.is
  %i.iw = fadd <4 x float> %i.hv, %i.iv           ; 2 uses
  %i.ix = icmp eq i64 %i.hw, 0
  br i1 %i.ix, label %._crit_edge, label %bb.m

bb.v:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.1374, i64 noundef %i.hp, i64 noundef %i.in, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #13
  unreachable

._crit_edge377:                                   ; preds = %._crit_edge, %.lr.ph376.split.split.us.prol.loopexit, %bb.k, %._crit_edge338
  %.sroa.011.1.lcssa = phi i64 [ %.sroa.011.0.lcssa, %._crit_edge338 ], [ %i.hh, %bb.k ], [ %.lcssa138.unr, %.lr.ph376.split.split.us.prol.loopexit ], [ %i.hp, %._crit_edge ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ga ; 2 uses
  %i.iz = and i64 %3, 3
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.iz
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.iy, ptr noundef nonnull %i.ja, i64 noundef %.sroa.011.1.lcssa, i64 noundef %i.g)
  %.sroa.0183.0.copyload = load ptr, ptr %i.b, align 8 ; 5 uses
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4185.0.copyload = load i64, ptr %.sroa.4185.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5187.0.copyload = load i64, ptr %.sroa.5187.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7188.0.copyload = load i64, ptr %.sroa.7188.0..sroa_idx, align 8 ; 4 uses
  %i.jb = icmp ult i64 %.sroa.5187.0.copyload, %.sroa.7188.0.copyload
  br i1 %i.jb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge377
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0183.0.copyload) ]
  %i.jc = icmp samesign ult i64 %i.h, %1
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  br i1 %i.jc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split, label %bb.x

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.jf = icmp eq i64 %i.h, 0
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !noundef !9 ; 6 uses
  br i1 %i.jf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split
  %i.ji = sub i64 %.sroa.7188.0.copyload, %.sroa.5187.0.copyload
  %i.jj = freeze i64 %i.ji                        ; 2 uses
  %xtraiter189 = and i64 %i.jj, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.jk = add nuw i64 %.sroa.5187.0.copyload, %.sroa.4185.0.copyload ; 4 uses
  %or.cond125.not.us.prol = icmp ult i64 %i.jk, %i.jh
  br i1 %or.cond125.not.us.prol, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa, label %.split395, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0183.0.copyload, i64 %.sroa.5187.0.copyload
  %i.jm = add i64 %.sroa.5187.0.copyload, 1
  %i.jn = load ptr, ptr %i.jd, align 8, !nonnull !9, !align !190, !noundef !9
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jk
  %i.jp = load float, ptr %i.jo, align 4, !noundef !9
  %i.jq = fmul float %i.j, %i.jp
  store float %i.jq, ptr %i.jl, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5187.0393.us.unr = phi i64 [ %.sroa.5187.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.jm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa ]
  %i.jr = icmp eq i64 %i.jj, 1
  br i1 %i.jr, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split
  %i.js = add i64 %.sroa.5187.0.copyload, %.sroa.4185.0.copyload
  %umax = call i64 @llvm.umax.i64(i64 %i.jh, i64 %i.js)
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %bb.w
  %.sroa.5187.0393.us = phi i64 [ %i.kc, %bb.w ], [ %.sroa.5187.0393.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %i.jt = add nuw i64 %.sroa.5187.0393.us, %.sroa.4185.0.copyload ; 4 uses
  %or.cond125.not.us = icmp ult i64 %i.jt, %i.jh
  br i1 %or.cond125.not.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1, label %.split395, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0183.0.copyload, i64 %.sroa.5187.0393.us
  %i.jv = add i64 %.sroa.5187.0393.us, 1          ; 2 uses
  %i.jw = load ptr, ptr %i.jd, align 8, !nonnull !9, !align !190, !noundef !9 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jt
  %i.jy = load float, ptr %i.jx, align 4, !noundef !9
  %i.jz = fmul float %i.j, %i.jy
  store float %i.jz, ptr %i.ju, align 4
  %i.ka = add nuw i64 %i.jv, %.sroa.4185.0.copyload ; 4 uses
  %or.cond125.not.us.1 = icmp ult i64 %i.ka, %i.jh
  br i1 %or.cond125.not.us.1, label %bb.w, label %.split395, !prof !11

bb.w:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0183.0.copyload, i64 %i.jv
  %i.kc = add i64 %.sroa.5187.0393.us, 2          ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.ka
  %i.ke = load float, ptr %i.kd, align 4, !noundef !9
  %i.kf = fmul float %i.j, %i.ke
  store float %i.kf, ptr %i.kb, align 4
  %exitcond485.not.1 = icmp eq i64 %i.kc, %.sroa.7188.0.copyload
  br i1 %exitcond485.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, %._crit_edge389
  %.sroa.5187.0393 = phi i64 [ %i.kg, %._crit_edge389 ], [ %.sroa.5187.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader ] ; 3 uses
  %i.kg = add i64 %.sroa.5187.0393, 1             ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0183.0.copyload, i64 %.sroa.5187.0393
  %i.ki = add nuw i64 %.sroa.5187.0393, %.sroa.4185.0.copyload ; 8 uses
  %i.kj = add i64 %i.ki, 1                        ; 4 uses
  %or.cond125.not = icmp ult i64 %i.ki, %i.jh
  br i1 %or.cond125.not, label %.lr.ph388, label %.split395, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge389, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %bb.w, %._crit_edge377
  ret void

bb.x:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #13
  unreachable

.split395:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi397.in = phi i64 [ %i.ka, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.jk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %i.jt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %umax, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit ]
  %.us-phi398 = phi i64 [ %i.ka, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.jk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %i.jt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.ki, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit ]
  %.us-phi397 = add i64 %.us-phi397.in, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi398, i64 noundef %.us-phi397, i64 noundef %i.jh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #13
  unreachable

.lr.ph388:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.kk = load ptr, ptr %i.jd, align 8, !nonnull !9, !align !190, !noundef !9
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ki
  %i.km = load float, ptr %i.kl, align 4, !noundef !9
  %i.kn = fmul float %i.j, %i.km
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph388, %bb.ah
  %.sroa.062.0386 = phi float [ %i.kn, %.lr.ph388 ], [ %i.lk, %bb.ah ] ; 2 uses
  %.sroa.10192.0385 = phi i64 [ 0, %.lr.ph388 ], [ %i.kr, %bb.ah ] ; 4 uses
  %.sroa.7191.0384 = phi i64 [ %i.h, %.lr.ph388 ], [ %i.ko, %bb.ah ]
  %.sroa.0189.0383 = phi ptr [ %5, %.lr.ph388 ], [ %i.kq, %bb.ah ] ; 3 uses
  %i.ko = add nsw i64 %.sroa.7191.0384, -1        ; 2 uses
  %i.kp = icmp eq ptr %.sroa.0189.0383, %i.je
  br i1 %i.kp, label %._crit_edge389, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0189.0383, i64 4
  %i.kr = add nuw nsw i64 %.sroa.10192.0385, 1
  %i.ks = load float, ptr %.sroa.0189.0383, align 4, !noundef !9
  %i.kt = xor i64 %.sroa.10192.0385, -1
  %i.ku = add nsw i64 %6, %i.kt                   ; 3 uses
  %exitcond483.not = icmp eq i64 %.sroa.10192.0385, %1
  br i1 %exitcond483.not, label %bb.ab, label %bb.aa

._crit_edge389:                                   ; preds = %bb.y, %bb.ah
  %.sroa.062.0.lcssa = phi float [ %i.lk, %bb.ah ], [ %.sroa.062.0386, %bb.y ]
  store float %.sroa.062.0.lcssa, ptr %i.kh, align 4
  %exitcond484.not = icmp eq i64 %i.kg, %.sroa.7188.0.copyload
  br i1 %exitcond484.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

bb.aa:                                            ; preds = %bb.z
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10192.0385 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !noundef !9 ; 2 uses
  %.not122 = icmp ugt i64 %i.kj, %i.kx
  br i1 %.not122, label %bb.ac, label %bb.ad, !prof !5

bb.ab:                                            ; preds = %bb.z
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #13
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ki, i64 noundef %i.kj, i64 noundef %i.kx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #13
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.ky = load ptr, ptr %i.kv, align 8, !nonnull !9, !align !190, !noundef !9
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.ki
  %i.la = icmp ult i64 %i.ku, %1
  br i1 %i.la, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ku ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !noundef !9 ; 2 uses
  %.not123 = icmp ugt i64 %i.kj, %i.ld
  br i1 %.not123, label %bb.ag, label %bb.ah, !prof !5

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ku, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #13
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ki, i64 noundef %i.kj, i64 noundef %i.ld, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #13
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.le = load ptr, ptr %i.lb, align 8, !nonnull !9, !align !190, !noundef !9
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.ki
  %i.lg = load float, ptr %i.kz, align 4, !noundef !9
  %i.lh = load float, ptr %i.lf, align 4, !noundef !9
  %i.li = fadd float %i.lg, %i.lh
  %i.lj = fmul float %i.ks, %i.li
  %i.lk = fadd float %.sroa.062.0386, %i.lj       ; 2 uses
  %i.ll = icmp eq i64 %i.ko, 0
  br i1 %i.ll, label %._crit_edge389, label %bb.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnhmEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef range(i64 1, 5) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 4                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [80 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [64 x i8], align 4                ; 9 uses
  %i.p = alloca [64 x i8], align 4                ; 9 uses
  %i.q = mul i64 %7, %4
  %i.r = lshr i64 %6, 1                           ; 22 uses
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !noundef !9 ; 20 uses
  %i.u = and i64 %3, 9223372036854775776          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.u ; 3 uses
  %i.w = icmp samesign eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge617, label %.lr.ph616

.lr.ph616:                                        ; preds = %bb.b
  %i.x = icmp samesign ult i64 %i.r, %1
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %.sroa.4270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.7272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.7278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.ab = icmp eq i64 %i.r, 0
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.7290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.4296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.6300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.7302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.9303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.7315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.7321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br i1 %i.x, label %.lr.ph616.split.us, label %.lr.ph616.split

.lr.ph616.split.us:                               ; preds = %.lr.ph616
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ac, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !noundef !9 ; 4 uses
  %broadcast.splatinsert208 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat209 = shufflevector <4 x i32> %broadcast.splatinsert208, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert186 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat187 = shufflevector <4 x i32> %broadcast.splatinsert186, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us, %.lr.ph616.split.us
  %.sroa.015.0614.us = phi i64 [ 0, %.lr.ph616.split.us ], [ %i.ai, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us ] ; 9 uses
  %.sroa.0117.0613.us = phi ptr [ %2, %.lr.ph616.split.us ], [ %i.ag, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.p, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0117.0613.us, i64 32 ; 3 uses
  %i.ah = or disjoint i64 %.sroa.015.0614.us, 16  ; 12 uses
  %.not175.us = icmp ugt i64 %i.ah, %i.af
  br i1 %.not175.us, label %.split.us, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.ai = add i64 %.sroa.015.0614.us, 32          ; 7 uses
  %i.aj = or disjoint i64 %.sroa.015.0614.us, 31
  %or.cond.not.us = icmp ult i64 %i.aj, %i.af
  br i1 %or.cond.not.us, label %bb.e, label %.split621.us, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.015.0614.us ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.y, ptr noundef nonnull readonly %i.ak, ptr noundef nonnull readonly %i.am)
  %.sroa.0268.0.copyload.us = load ptr, ptr %i.n, align 8 ; 9 uses
  %.sroa.4270.0.copyload.us = load ptr, ptr %.sroa.4270.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5271.0.copyload.us = load i64, ptr %.sroa.5271.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7272.0.copyload.us = load i64, ptr %.sroa.7272.0..sroa_idx, align 8 ; 7 uses
  %i.an = icmp ult i64 %.sroa.5271.0.copyload.us, %.sroa.7272.0.copyload.us
  br i1 %i.an, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.5271.0604.us = phi i64 [ %i.bi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.5271.0604.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %.sroa.5271.0604.us
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %.sroa.5271.0604.us
  %i.aq = add nuw i64 %.sroa.5271.0604.us, 1      ; 2 uses
  %i.ar = load i8, ptr %i.ap, align 1, !noundef !9
  %i.as = zext i8 %i.ar to i32
  %i.at = mul i32 %i.t, %i.as
  store i32 %i.at, ptr %i.ao, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %i.aq
  %i.aw = add nuw i64 %.sroa.5271.0604.us, 2      ; 2 uses
  %i.ax = load i8, ptr %i.av, align 1, !noundef !9
  %i.ay = zext i8 %i.ax to i32
  %i.az = mul i32 %i.t, %i.ay
  store i32 %i.az, ptr %i.au, align 4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %i.aw
  %i.bc = add nuw i64 %.sroa.5271.0604.us, 3      ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 1, !noundef !9
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul i32 %i.t, %i.be
  store i32 %i.bf, ptr %i.ba, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %i.bc
  %i.bi = add nuw i64 %.sroa.5271.0604.us, 4      ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 1, !noundef !9
  %i.bk = zext i8 %i.bj to i32
  %i.bl = mul i32 %i.t, %i.bk
  store i32 %i.bl, ptr %i.bg, align 4
  %exitcond.not.3 = icmp eq i64 %i.bi, %.sroa.7272.0.copyload.us
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !197

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block215, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.z, ptr noundef nonnull readonly %i.al, ptr noundef nonnull readonly %i.bm)
  %.sroa.0273.0.copyload.us = load ptr, ptr %i.m, align 8 ; 9 uses
  %.sroa.4275.0.copyload.us = load ptr, ptr %.sroa.4275.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5277.0.copyload.us = load i64, ptr %.sroa.5277.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7278.0.copyload.us = load i64, ptr %.sroa.7278.0..sroa_idx, align 8 ; 7 uses
  %i.bn = icmp ult i64 %.sroa.5277.0.copyload.us, %.sroa.7278.0.copyload.us
  br i1 %i.bn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us
  %.sroa.5277.0605.us = phi i64 [ %i.ci, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us ], [ %.sroa.5277.0605.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %.sroa.5277.0605.us
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %.sroa.5277.0605.us
  %i.bq = add nuw i64 %.sroa.5277.0605.us, 1      ; 2 uses
  %i.br = load i8, ptr %i.bp, align 1, !noundef !9
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul i32 %i.t, %i.bs
  store i32 %i.bt, ptr %i.bo, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %i.bq
  %i.bw = add nuw i64 %.sroa.5277.0605.us, 2      ; 2 uses
  %i.bx = load i8, ptr %i.bv, align 1, !noundef !9
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul i32 %i.t, %i.by
  store i32 %i.bz, ptr %i.bu, align 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %i.bw
  %i.cc = add nuw i64 %.sroa.5277.0605.us, 3      ; 2 uses
  %i.cd = load i8, ptr %i.cb, align 1, !noundef !9
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul i32 %i.t, %i.ce
  store i32 %i.cf, ptr %i.ca, align 4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %i.cc
  %i.ci = add nuw i64 %.sroa.5277.0605.us, 4      ; 2 uses
  %i.cj = load i8, ptr %i.ch, align 1, !noundef !9
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul i32 %i.t, %i.ck
  store i32 %i.cl, ptr %i.cg, align 4
  %exitcond834.not.3 = icmp eq i64 %i.ci, %.sroa.7278.0.copyload.us
  br i1 %exitcond834.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us, !llvm.loop !198

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us, %middle.block193, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  br i1 %i.ab, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us
  %.sroa.0279.0610.us = phi ptr [ %i.co, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us ], [ %5, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us ] ; 3 uses
  %.sroa.7281.0609.us = phi i64 [ %i.cm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us ], [ %i.r, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us ]
  %.sroa.10.0608.us = phi i64 [ %i.cp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us ] ; 4 uses
  %i.cm = add nsw i64 %.sroa.7281.0609.us, -1     ; 2 uses
  %i.cn = icmp eq ptr %.sroa.0279.0610.us, %i.aa
  br i1 %i.cn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.us
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0279.0610.us, i64 4
  %i.cp = add nuw nsw i64 %.sroa.10.0608.us, 1
  %i.cq = load i32, ptr %.sroa.0279.0610.us, align 4, !noundef !9 ; 8 uses
  %i.cr = xor i64 %.sroa.10.0608.us, -1
  %i.cs = add nsw i64 %6, %i.cr                   ; 3 uses
  %exitcond837.not = icmp eq i64 %.sroa.10.0608.us, %1
  br i1 %exitcond837.not, label %.split626.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10.0608.us ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !9 ; 4 uses
  %i.cx = icmp ult i64 %i.cs, %1
  br i1 %i.cx, label %bb.h, label %.split629.us

bb.h:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cs ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !noundef !9 ; 4 uses
  %.not183.us = icmp ugt i64 %i.ah, %i.cw
  br i1 %.not183.us, label %.split632.us, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.sroa.015.0614.us ; 2 uses
  %.not184.us = icmp ugt i64 %i.ah, %i.db
  br i1 %.not184.us, label %.split637.us, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sroa.015.0614.us ; 2 uses
  %.not185.us = icmp ugt i64 %i.ai, %i.cw
  br i1 %.not185.us, label %.split642.us, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ah ; 2 uses
  %.not186.us = icmp ugt i64 %i.ai, %i.db
  br i1 %.not186.us, label %.split647.us, label %bb.l, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ah ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !260
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.p, ptr noundef nonnull %i.y, ptr noundef nonnull readonly %i.dc, ptr noundef nonnull readonly %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.dd, ptr noundef nonnull readonly %i.dh), !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !260
  %.sroa.0282.0.copyload.us = load ptr, ptr %i.l, align 8 ; 7 uses
  %.sroa.4284.0.copyload.us = load ptr, ptr %.sroa.4284.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5286.0.copyload.us = load i64, ptr %.sroa.5286.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6288.0.copyload.us = load ptr, ptr %.sroa.6288.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7290.0.copyload.us = load i64, ptr %.sroa.7290.0..sroa_idx, align 8 ; 9 uses
  %.sroa.9.0.copyload.us = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 7 uses
  %i.di = icmp ult i64 %.sroa.7290.0.copyload.us, %.sroa.9.0.copyload.us
  br i1 %i.di, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.7290.0606.us = phi i64 [ %i.ea, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.7290.0606.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %i.dj = add i64 %.sroa.7290.0606.us, %.sroa.5286.0.copyload.us ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.us, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.6288.0.copyload.us, i64 %.sroa.7290.0606.us
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.4284.0.copyload.us, i64 %i.dj
  %i.dn = add nuw i64 %.sroa.7290.0606.us, 1      ; 2 uses
  %i.do = load i32, ptr %i.dk, align 4, !noundef !9
  %i.dp = load i8, ptr %i.dm, align 1, !noundef !9
  %i.dq = zext i8 %i.dp to i32
  %i.dr = load i8, ptr %i.dl, align 1, !noundef !9
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nuw nsw i32 %i.ds, %i.dq
  %i.du = mul i32 %i.dt, %i.cq
  %i.dv = add i32 %i.du, %i.do
  store i32 %i.dv, ptr %i.dk, align 4
  %i.dw = add i64 %i.dn, %.sroa.5286.0.copyload.us ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.us, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.6288.0.copyload.us, i64 %i.dn
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.4284.0.copyload.us, i64 %i.dw
  %i.ea = add nuw i64 %.sroa.7290.0606.us, 2      ; 2 uses
  %i.eb = load i32, ptr %i.dx, align 4, !noundef !9
  %i.ec = load i8, ptr %i.dz, align 1, !noundef !9
  %i.ed = zext i8 %i.ec to i32
  %i.ee = load i8, ptr %i.dy, align 1, !noundef !9
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nuw nsw i32 %i.ef, %i.ed
  %i.eh = mul i32 %i.eg, %i.cq
  %i.ei = add i32 %i.eh, %i.eb
  store i32 %i.ei, ptr %i.dx, align 4
  %exitcond835.not.1 = icmp eq i64 %i.ea, %.sroa.9.0.copyload.us
  br i1 %exitcond835.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !203

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block171, %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !262
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.o, ptr noundef nonnull %i.z, ptr noundef nonnull readonly %i.de, ptr noundef nonnull readonly %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull readonly %i.df, ptr noundef nonnull readonly %i.ek), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !262
  %.sroa.0294.0.copyload.us = load ptr, ptr %i.k, align 8 ; 7 uses
  %.sroa.4296.0.copyload.us = load ptr, ptr %.sroa.4296.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5298.0.copyload.us = load i64, ptr %.sroa.5298.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6300.0.copyload.us = load ptr, ptr %.sroa.6300.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7302.0.copyload.us = load i64, ptr %.sroa.7302.0..sroa_idx, align 8 ; 9 uses
  %.sroa.9303.0.copyload.us = load i64, ptr %.sroa.9303.0..sroa_idx, align 8 ; 7 uses
  %i.el = icmp ult i64 %.sroa.7302.0.copyload.us, %.sroa.9303.0.copyload.us
  br i1 %i.el, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us
  %.sroa.7302.0607.us = phi i64 [ %i.fd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us ], [ %.sroa.7302.0607.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit ] ; 4 uses
  %i.em = add i64 %.sroa.7302.0607.us, %.sroa.5298.0.copyload.us ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0294.0.copyload.us, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.6300.0.copyload.us, i64 %.sroa.7302.0607.us
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.4296.0.copyload.us, i64 %i.em
  %i.eq = add nuw i64 %.sroa.7302.0607.us, 1      ; 2 uses
  %i.er = load i32, ptr %i.en, align 4, !noundef !9
  %i.es = load i8, ptr %i.ep, align 1, !noundef !9
  %i.et = zext i8 %i.es to i32
  %i.eu = load i8, ptr %i.eo, align 1, !noundef !9
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nuw nsw i32 %i.ev, %i.et
  %i.ex = mul i32 %i.ew, %i.cq
  %i.ey = add i32 %i.ex, %i.er
  store i32 %i.ey, ptr %i.en, align 4
  %i.ez = add i64 %i.eq, %.sroa.5298.0.copyload.us ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0294.0.copyload.us, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.6300.0.copyload.us, i64 %i.eq
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.4296.0.copyload.us, i64 %i.ez
  %i.fd = add nuw i64 %.sroa.7302.0607.us, 2      ; 2 uses
  %i.fe = load i32, ptr %i.fa, align 4, !noundef !9
  %i.ff = load i8, ptr %i.fc, align 1, !noundef !9
  %i.fg = zext i8 %i.ff to i32
  %i.fh = load i8, ptr %i.fb, align 1, !noundef !9
  %i.fi = zext i8 %i.fh to i32
  %i.fj = add nuw nsw i32 %i.fi, %i.fg
  %i.fk = mul i32 %i.fj, %i.cq
  %i.fl = add i32 %i.fk, %i.fe
  store i32 %i.fl, ptr %i.fa, align 4
  %exitcond836.not.1 = icmp eq i64 %i.fd, %.sroa.9303.0.copyload.us
  br i1 %exitcond836.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us, !llvm.loop !208

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us: ; preds = %.lr.ph.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0117.0613.us, i64 16 ; 2 uses
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.p, ptr noundef nonnull %i.y, ptr noundef nonnull %.sroa.0117.0613.us, ptr noundef nonnull %i.fm)
  %.sroa.0310.0.copyload.us = load ptr, ptr %i.j, align 8 ; 7 uses
  %.sroa.4312.0.copyload.us = load ptr, ptr %.sroa.4312.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5314.0.copyload.us = load i64, ptr %.sroa.5314.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7315.0.copyload.us = load i64, ptr %.sroa.7315.0..sroa_idx, align 8 ; 7 uses
  %i.fn = icmp ult i64 %.sroa.5314.0.copyload.us, %.sroa.7315.0.copyload.us
  br i1 %i.fn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.5314.0611.us = phi i64 [ %i.fx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.5314.0611.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0310.0.copyload.us, i64 %.sroa.5314.0611.us
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.4312.0.copyload.us, i64 %.sroa.5314.0611.us
  %i.fq = add nuw i64 %.sroa.5314.0611.us, 1      ; 2 uses
  %i.fr = load i32, ptr %i.fo, align 4, !noundef !9
  %i.fs = add i32 %i.fr, 16384
  %i.ft = lshr i32 %i.fs, 15
  %..i.us = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.ft, i32 255)
  %i.fu = trunc nuw i32 %..i.us to i8
  store i8 %i.fu, ptr %i.fp, align 1
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0310.0.copyload.us, i64 %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.4312.0.copyload.us, i64 %i.fq
  %i.fx = add nuw i64 %.sroa.5314.0611.us, 2      ; 2 uses
  %i.fy = load i32, ptr %i.fv, align 4, !noundef !9
  %i.fz = add i32 %i.fy, 16384
  %i.ga = lshr i32 %i.fz, 15
  %..i.us.1 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.ga, i32 255)
  %i.gb = trunc nuw i32 %..i.us.1 to i8
  store i8 %i.gb, ptr %i.fw, align 1
  %exitcond838.not.1 = icmp eq i64 %i.fx, %.sroa.7315.0.copyload.us
  br i1 %exitcond838.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !209

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block116, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noundef nonnull %i.o, ptr noundef nonnull %i.z, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.ag)
  %.sroa.0316.0.copyload.us = load ptr, ptr %i.i, align 8 ; 7 uses
  %.sroa.4318.0.copyload.us = load ptr, ptr %.sroa.4318.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5320.0.copyload.us = load i64, ptr %.sroa.5320.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7321.0.copyload.us = load i64, ptr %.sroa.7321.0..sroa_idx, align 8 ; 7 uses
  %i.gc = icmp ult i64 %.sroa.5320.0.copyload.us, %.sroa.7321.0.copyload.us
  br i1 %i.gc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us
  %.sroa.5320.0612.us = phi i64 [ %i.gm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us ], [ %.sroa.5320.0612.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol.loopexit ] ; 4 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0316.0.copyload.us, i64 %.sroa.5320.0612.us
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.4318.0.copyload.us, i64 %.sroa.5320.0612.us
  %i.gf = add nuw i64 %.sroa.5320.0612.us, 1      ; 2 uses
  %i.gg = load i32, ptr %i.gd, align 4, !noundef !9
  %i.gh = add i32 %i.gg, 16384
  %i.gi = lshr i32 %i.gh, 15
  %..i223.us = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.gi, i32 255)
  %i.gj = trunc nuw i32 %..i223.us to i8
  store i8 %i.gj, ptr %i.ge, align 1
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0316.0.copyload.us, i64 %i.gf
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.4318.0.copyload.us, i64 %i.gf
  %i.gm = add nuw i64 %.sroa.5320.0612.us, 2      ; 2 uses
  %i.gn = load i32, ptr %i.gk, align 4, !noundef !9
  %i.go = add i32 %i.gn, 16384
  %i.gp = lshr i32 %i.go, 15
  %..i223.us.1 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.gp, i32 255)
  %i.gq = trunc nuw i32 %..i223.us.1 to i8
  store i8 %i.gq, ptr %i.gl, align 1
  %exitcond839.not.1 = icmp eq i64 %i.gm, %.sroa.7321.0.copyload.us
  br i1 %exitcond839.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us, !llvm.loop !210

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us, %middle.block, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gr = icmp eq ptr %i.ag, %i.v
  br i1 %i.gr, label %._crit_edge617, label %bb.c

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us, %middle.block142, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  %i.gs = icmp eq i64 %i.cm, 0
  br i1 %i.gs, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us, label %.lr.ph.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0268.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4270.0.copyload.us) ]
  %i.gt = sub nuw i64 %.sroa.7272.0.copyload.us, %.sroa.5271.0.copyload.us ; 3 uses
  %min.iters.check205 = icmp ult i64 %i.gt, 8
  br i1 %min.iters.check205, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck196

vector.memcheck196:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.gu = shl i64 %.sroa.5271.0.copyload.us, 2
  %scevgep197 = getelementptr i8, ptr %.sroa.0268.0.copyload.us, i64 %i.gu
  %i.gv = shl i64 %.sroa.7272.0.copyload.us, 2
  %scevgep198 = getelementptr i8, ptr %.sroa.0268.0.copyload.us, i64 %i.gv
  %scevgep199 = getelementptr i8, ptr %.sroa.4270.0.copyload.us, i64 %.sroa.5271.0.copyload.us
  %scevgep200 = getelementptr i8, ptr %.sroa.4270.0.copyload.us, i64 %.sroa.7272.0.copyload.us
  %bound0201 = icmp ult ptr %scevgep197, %scevgep200
  %bound1202 = icmp ult ptr %scevgep199, %scevgep198
  %found.conflict203 = and i1 %bound0201, %bound1202
  br i1 %found.conflict203, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph206

vector.ph206:                                     ; preds = %vector.memcheck196
  %n.vec207 = and i64 %i.gt, -8                   ; 3 uses
  %i.gw = add i64 %.sroa.5271.0.copyload.us, %n.vec207
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph206
  %index211 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body210 ] ; 2 uses
  %i.gx = add nuw i64 %.sroa.5271.0.copyload.us, %index211 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %i.gx ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %wide.load212 = load <4 x i8>, ptr %i.gz, align 1, !alias.scope !264
  %wide.load213 = load <4 x i8>, ptr %i.ha, align 1, !alias.scope !264
  %i.hb = zext <4 x i8> %wide.load212 to <4 x i32>
  %i.hc = zext <4 x i8> %wide.load213 to <4 x i32>
  %i.hd = mul <4 x i32> %broadcast.splat209, %i.hb
  %i.he = mul <4 x i32> %broadcast.splat209, %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <4 x i32> %i.hd, ptr %i.gy, align 4, !alias.scope !265, !noalias !264
  store <4 x i32> %i.he, ptr %i.hf, align 4, !alias.scope !265, !noalias !264
  %index.next214 = add nuw i64 %index211, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.hg, label %middle.block215, label %vector.body210, !llvm.loop !214

middle.block215:                                  ; preds = %vector.body210
  %cmp.n216 = icmp eq i64 %i.gt, %n.vec207
  br i1 %cmp.n216, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck196, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block215
  %.sroa.5271.0604.us.ph = phi i64 [ %.sroa.5271.0.copyload.us, %vector.memcheck196 ], [ %.sroa.5271.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.gw, %middle.block215 ] ; 4 uses
  %i.hh = sub i64 %.sroa.7272.0.copyload.us, %.sroa.5271.0604.us.ph
  %xtraiter = and i64 %i.hh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.5271.0604.us.prol = phi i64 [ %i.hk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.5271.0604.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %.sroa.5271.0604.us.prol
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %.sroa.5271.0604.us.prol
  %i.hk = add nuw i64 %.sroa.5271.0604.us.prol, 1 ; 2 uses
  %i.hl = load i8, ptr %i.hj, align 1, !noundef !9
  %i.hm = zext i8 %i.hl to i32
  %i.hn = mul i32 %i.t, %i.hm
  store i32 %i.hn, ptr %i.hi, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !215

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5271.0604.us.unr = phi i64 [ %.sroa.5271.0604.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.hk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.ho = sub i64 %.sroa.5271.0604.us.ph, %.sroa.7272.0.copyload.us
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0273.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4275.0.copyload.us) ]
  %i.hq = sub nuw i64 %.sroa.7278.0.copyload.us, %.sroa.5277.0.copyload.us ; 3 uses
  %min.iters.check183 = icmp ult i64 %i.hq, 8
  br i1 %min.iters.check183, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader, label %vector.memcheck174

vector.memcheck174:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us
  %i.hr = shl i64 %.sroa.5277.0.copyload.us, 2
  %scevgep175 = getelementptr i8, ptr %.sroa.0273.0.copyload.us, i64 %i.hr
  %i.hs = shl i64 %.sroa.7278.0.copyload.us, 2
  %scevgep176 = getelementptr i8, ptr %.sroa.0273.0.copyload.us, i64 %i.hs
  %scevgep177 = getelementptr i8, ptr %.sroa.4275.0.copyload.us, i64 %.sroa.5277.0.copyload.us
  %scevgep178 = getelementptr i8, ptr %.sroa.4275.0.copyload.us, i64 %.sroa.7278.0.copyload.us
  %bound0179 = icmp ult ptr %scevgep175, %scevgep178
  %bound1180 = icmp ult ptr %scevgep177, %scevgep176
  %found.conflict181 = and i1 %bound0179, %bound1180
  br i1 %found.conflict181, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck174
  %n.vec185 = and i64 %i.hq, -8                   ; 3 uses
  %i.ht = add i64 %.sroa.5277.0.copyload.us, %n.vec185
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph184
  %index189 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body188 ] ; 2 uses
  %i.hu = add nuw i64 %.sroa.5277.0.copyload.us, %index189 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %i.hu ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %wide.load190 = load <4 x i8>, ptr %i.hw, align 1, !alias.scope !266
  %wide.load191 = load <4 x i8>, ptr %i.hx, align 1, !alias.scope !266
  %i.hy = zext <4 x i8> %wide.load190 to <4 x i32>
  %i.hz = zext <4 x i8> %wide.load191 to <4 x i32>
  %i.ia = mul <4 x i32> %broadcast.splat187, %i.hy
  %i.ib = mul <4 x i32> %broadcast.splat187, %i.hz
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <4 x i32> %i.ia, ptr %i.hv, align 4, !alias.scope !267, !noalias !266
  store <4 x i32> %i.ib, ptr %i.ic, align 4, !alias.scope !267, !noalias !266
  %index.next192 = add nuw i64 %index189, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.id, label %middle.block193, label %vector.body188, !llvm.loop !219

middle.block193:                                  ; preds = %vector.body188
  %cmp.n194 = icmp eq i64 %i.hq, %n.vec185
  br i1 %cmp.n194, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader: ; preds = %vector.memcheck174, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us, %middle.block193
  %.sroa.5277.0605.us.ph = phi i64 [ %.sroa.5277.0.copyload.us, %vector.memcheck174 ], [ %.sroa.5277.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us ], [ %i.ht, %middle.block193 ] ; 4 uses
  %i.ie = sub i64 %.sroa.7278.0.copyload.us, %.sroa.5277.0605.us.ph
  %xtraiter383 = and i64 %i.ie, 3                 ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol
  %.sroa.5277.0605.us.prol = phi i64 [ %i.ih, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol ], [ %.sroa.5277.0605.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader ] ; 3 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %.sroa.5277.0605.us.prol
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %.sroa.5277.0605.us.prol
  %i.ih = add nuw i64 %.sroa.5277.0605.us.prol, 1 ; 2 uses
  %i.ii = load i8, ptr %i.ig, align 1, !noundef !9
  %i.ij = zext i8 %i.ii to i32
  %i.ik = mul i32 %i.t, %i.ij
  store i32 %i.ik, ptr %i.if, align 4
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol, !llvm.loop !220

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader
  %.sroa.5277.0605.us.unr = phi i64 [ %.sroa.5277.0605.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader ], [ %i.ih, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol ]
  %i.il = sub i64 %.sroa.5277.0605.us.ph, %.sroa.7278.0.copyload.us
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0282.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4284.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6288.0.copyload.us) ]
  %i.in = sub nuw i64 %.sroa.9.0.copyload.us, %.sroa.7290.0.copyload.us ; 3 uses
  %min.iters.check160 = icmp ult i64 %i.in, 8
  br i1 %min.iters.check160, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.io = add i64 %.sroa.7290.0.copyload.us, %.sroa.5286.0.copyload.us
  %i.ip = shl i64 %i.io, 2
  %scevgep146 = getelementptr i8, ptr %.sroa.0282.0.copyload.us, i64 %i.ip ; 2 uses
  %i.iq = add i64 %.sroa.9.0.copyload.us, %.sroa.5286.0.copyload.us ; 2 uses
  %i.ir = shl i64 %i.iq, 2
  %scevgep147 = getelementptr i8, ptr %.sroa.0282.0.copyload.us, i64 %i.ir ; 2 uses
  %i.is = getelementptr i8, ptr %.sroa.4284.0.copyload.us, i64 %.sroa.5286.0.copyload.us
  %scevgep148 = getelementptr i8, ptr %i.is, i64 %.sroa.7290.0.copyload.us
  %scevgep149 = getelementptr i8, ptr %.sroa.4284.0.copyload.us, i64 %i.iq
  %scevgep150 = getelementptr i8, ptr %.sroa.6288.0.copyload.us, i64 %.sroa.7290.0.copyload.us
  %scevgep151 = getelementptr i8, ptr %.sroa.6288.0.copyload.us, i64 %.sroa.9.0.copyload.us
  %bound0152 = icmp ult ptr %scevgep146, %scevgep149
  %bound1153 = icmp ult ptr %scevgep148, %scevgep147
  %found.conflict154 = and i1 %bound0152, %bound1153
  %bound0155 = icmp ult ptr %scevgep146, %scevgep151
  %bound1156 = icmp ult ptr %scevgep150, %scevgep147
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %found.conflict154, %found.conflict157
  br i1 %conflict.rdx158, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %vector.memcheck145
  %n.vec162 = and i64 %i.in, -4                   ; 3 uses
  %i.it = add i64 %.sroa.7290.0.copyload.us, %n.vec162
  %broadcast.splatinsert163 = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat164 = shufflevector <4 x i32> %broadcast.splatinsert163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph161
  %index166 = phi i64 [ 0, %vector.ph161 ], [ %index.next170, %vector.body165 ] ; 2 uses
  %i.iu = add nuw i64 %.sroa.7290.0.copyload.us, %index166 ; 2 uses
  %i.iv = add i64 %i.iu, %.sroa.5286.0.copyload.us ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.us, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.6288.0.copyload.us, i64 %i.iu
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.4284.0.copyload.us, i64 %i.iv
  %wide.load167 = load <4 x i32>, ptr %i.iw, align 4, !alias.scope !268, !noalias !269
  %wide.load168 = load <4 x i8>, ptr %i.iy, align 1, !alias.scope !270
  %i.iz = zext <4 x i8> %wide.load168 to <4 x i32>
  %wide.load169 = load <4 x i8>, ptr %i.ix, align 1, !alias.scope !271
  %i.ja = zext <4 x i8> %wide.load169 to <4 x i32>
  %i.jb = add nuw nsw <4 x i32> %i.ja, %i.iz
  %i.jc = mul <4 x i32> %i.jb, %broadcast.splat164
  %i.jd = add <4 x i32> %i.jc, %wide.load167
  store <4 x i32> %i.jd, ptr %i.iw, align 4, !alias.scope !268, !noalias !269
  %index.next170 = add nuw i64 %index166, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next170, %n.vec162
  br i1 %i.je, label %middle.block171, label %vector.body165, !llvm.loop !225

middle.block171:                                  ; preds = %vector.body165
  %cmp.n172 = icmp eq i64 %i.in, %n.vec162
  br i1 %cmp.n172, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck145, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block171
  %.sroa.7290.0606.us.ph = phi i64 [ %.sroa.7290.0.copyload.us, %vector.memcheck145 ], [ %.sroa.7290.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.it, %middle.block171 ] ; 6 uses
  %i.jf = sub i64 %.sroa.9.0.copyload.us, %.sroa.7290.0606.us.ph
  %.neg = add i64 %.sroa.7290.0606.us.ph, 1
  %xtraiter386 = and i64 %i.jf, 1
  %lcmp.mod387.not = icmp eq i64 %xtraiter386, 0
  br i1 %lcmp.mod387.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.jg = add i64 %.sroa.7290.0606.us.ph, %.sroa.5286.0.copyload.us ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.us, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.6288.0.copyload.us, i64 %.sroa.7290.0606.us.ph
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.4284.0.copyload.us, i64 %i.jg
  %i.jk = add nuw i64 %.sroa.7290.0606.us.ph, 1
  %i.jl = load i32, ptr %i.jh, align 4, !noundef !9
  %i.jm = load i8, ptr %i.jj, align 1, !noundef !9
  %i.jn = zext i8 %i.jm to i32
  %i.jo = load i8, ptr %i.ji, align 1, !noundef !9
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add nuw nsw i32 %i.jp, %i.jn
  %i.jr = mul i32 %i.jq, %i.cq
  %i.js = add i32 %i.jr, %i.jl
  store i32 %i.js, ptr %i.jh, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.7290.0606.us.unr = phi i64 [ %.sroa.7290.0606.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.jk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.jt = icmp eq i64 %.sroa.9.0.copyload.us, %.neg
  br i1 %i.jt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0294.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4296.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6300.0.copyload.us) ]
  %i.ju = sub nuw i64 %.sroa.9303.0.copyload.us, %.sroa.7302.0.copyload.us ; 3 uses
  %min.iters.check133 = icmp ult i64 %i.ju, 8
  br i1 %min.iters.check133, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader, label %vector.memcheck119

vector.memcheck119:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us
  %i.jv = add i64 %.sroa.7302.0.copyload.us, %.sroa.5298.0.copyload.us
  %i.jw = shl i64 %i.jv, 2
  %scevgep120 = getelementptr i8, ptr %.sroa.0294.0.copyload.us, i64 %i.jw ; 2 uses
  %i.jx = add i64 %.sroa.9303.0.copyload.us, %.sroa.5298.0.copyload.us ; 2 uses
  %i.jy = shl i64 %i.jx, 2
  %scevgep121 = getelementptr i8, ptr %.sroa.0294.0.copyload.us, i64 %i.jy ; 2 uses
  %i.jz = getelementptr i8, ptr %.sroa.4296.0.copyload.us, i64 %.sroa.5298.0.copyload.us
  %scevgep122 = getelementptr i8, ptr %i.jz, i64 %.sroa.7302.0.copyload.us
  %scevgep123 = getelementptr i8, ptr %.sroa.4296.0.copyload.us, i64 %i.jx
  %scevgep124 = getelementptr i8, ptr %.sroa.6300.0.copyload.us, i64 %.sroa.7302.0.copyload.us
  %scevgep125 = getelementptr i8, ptr %.sroa.6300.0.copyload.us, i64 %.sroa.9303.0.copyload.us
  %bound0126 = icmp ult ptr %scevgep120, %scevgep123
  %bound1127 = icmp ult ptr %scevgep122, %scevgep121
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0129 = icmp ult ptr %scevgep120, %scevgep125
  %bound1130 = icmp ult ptr %scevgep124, %scevgep121
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx = or i1 %found.conflict128, %found.conflict131
  br i1 %conflict.rdx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader, label %vector.ph134

vector.ph134:                                     ; preds = %vector.memcheck119
  %n.vec135 = and i64 %i.ju, -4                   ; 3 uses
  %i.ka = add i64 %.sroa.7302.0.copyload.us, %n.vec135
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next141, %vector.body136 ] ; 2 uses
  %i.kb = add nuw i64 %.sroa.7302.0.copyload.us, %index137 ; 2 uses
  %i.kc = add i64 %i.kb, %.sroa.5298.0.copyload.us ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0294.0.copyload.us, i64 %i.kc ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.6300.0.copyload.us, i64 %i.kb
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.4296.0.copyload.us, i64 %i.kc
  %wide.load138 = load <4 x i32>, ptr %i.kd, align 4, !alias.scope !272, !noalias !273
  %wide.load139 = load <4 x i8>, ptr %i.kf, align 1, !alias.scope !274
  %i.kg = zext <4 x i8> %wide.load139 to <4 x i32>
  %wide.load140 = load <4 x i8>, ptr %i.ke, align 1, !alias.scope !275
  %i.kh = zext <4 x i8> %wide.load140 to <4 x i32>
  %i.ki = add nuw nsw <4 x i32> %i.kh, %i.kg
  %i.kj = mul <4 x i32> %i.ki, %broadcast.splat
  %i.kk = add <4 x i32> %i.kj, %wide.load138
  store <4 x i32> %i.kk, ptr %i.kd, align 4, !alias.scope !272, !noalias !273
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.kl, label %middle.block142, label %vector.body136, !llvm.loop !230

middle.block142:                                  ; preds = %vector.body136
  %cmp.n143 = icmp eq i64 %i.ju, %n.vec135
  br i1 %cmp.n143, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader: ; preds = %vector.memcheck119, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us, %middle.block142
  %.sroa.7302.0607.us.ph = phi i64 [ %.sroa.7302.0.copyload.us, %vector.memcheck119 ], [ %.sroa.7302.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us ], [ %i.ka, %middle.block142 ] ; 6 uses
  %i.km = sub i64 %.sroa.9303.0.copyload.us, %.sroa.7302.0607.us.ph
  %.neg407 = add i64 %.sroa.7302.0607.us.ph, 1
  %xtraiter389 = and i64 %i.km, 1
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader
  %i.kn = add i64 %.sroa.7302.0607.us.ph, %.sroa.5298.0.copyload.us ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0294.0.copyload.us, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.6300.0.copyload.us, i64 %.sroa.7302.0607.us.ph
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.4296.0.copyload.us, i64 %i.kn
  %i.kr = add nuw i64 %.sroa.7302.0607.us.ph, 1
  %i.ks = load i32, ptr %i.ko, align 4, !noundef !9
  %i.kt = load i8, ptr %i.kq, align 1, !noundef !9
  %i.ku = zext i8 %i.kt to i32
  %i.kv = load i8, ptr %i.kp, align 1, !noundef !9
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add nuw nsw i32 %i.kw, %i.ku
  %i.ky = mul i32 %i.kx, %i.cq
  %i.kz = add i32 %i.ky, %i.ks
  store i32 %i.kz, ptr %i.ko, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader
  %.sroa.7302.0607.us.unr = phi i64 [ %.sroa.7302.0607.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader ], [ %i.kr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol ]
  %i.la = icmp eq i64 %.sroa.9303.0.copyload.us, %.neg407
  br i1 %i.la, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0310.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4312.0.copyload.us) ]
  %i.lb = sub nuw i64 %.sroa.7315.0.copyload.us, %.sroa.5314.0.copyload.us ; 3 uses
  %min.iters.check108 = icmp ult i64 %i.lb, 8
  br i1 %min.iters.check108, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck99

vector.memcheck99:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %scevgep100 = getelementptr i8, ptr %.sroa.4312.0.copyload.us, i64 %.sroa.5314.0.copyload.us
  %scevgep101 = getelementptr i8, ptr %.sroa.4312.0.copyload.us, i64 %.sroa.7315.0.copyload.us
  %i.lc = shl i64 %.sroa.5314.0.copyload.us, 2
  %scevgep102 = getelementptr i8, ptr %.sroa.0310.0.copyload.us, i64 %i.lc
  %i.ld = shl i64 %.sroa.7315.0.copyload.us, 2
  %scevgep103 = getelementptr i8, ptr %.sroa.0310.0.copyload.us, i64 %i.ld
  %bound0104 = icmp ult ptr %scevgep100, %scevgep103
  %bound1105 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck99
  %n.vec110 = and i64 %i.lb, -8                   ; 3 uses
  %i.le = add i64 %.sroa.5314.0.copyload.us, %n.vec110
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 2 uses
  %i.lf = add nuw i64 %.sroa.5314.0.copyload.us, %index112 ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0310.0.copyload.us, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.4312.0.copyload.us, i64 %i.lf ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %wide.load113 = load <4 x i32>, ptr %i.lg, align 4, !alias.scope !276
  %wide.load114 = load <4 x i32>, ptr %i.li, align 4, !alias.scope !276
  %i.lj = add <4 x i32> %wide.load113, splat (i32 16384)
  %i.lk = add <4 x i32> %wide.load114, splat (i32 16384)
  %i.ll = lshr <4 x i32> %i.lj, splat (i32 15)
  %i.lm = lshr <4 x i32> %i.lk, splat (i32 15)
  %i.ln = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ll, <4 x i32> splat (i32 255))
  %i.lo = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lm, <4 x i32> splat (i32 255))
  %i.lp = trunc nuw <4 x i32> %i.ln to <4 x i8>
  %i.lq = trunc nuw <4 x i32> %i.lo to <4 x i8>
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store <4 x i8> %i.lp, ptr %i.lh, align 1, !alias.scope !277, !noalias !276
  store <4 x i8> %i.lq, ptr %i.lr, align 1, !alias.scope !277, !noalias !276
  %index.next115 = add nuw i64 %index112, 8       ; 2 uses
  %i.ls = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ls, label %middle.block116, label %vector.body111, !llvm.loop !234

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %i.lb, %n.vec110
  br i1 %cmp.n117, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck99, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block116
  %.sroa.5314.0611.us.ph = phi i64 [ %.sroa.5314.0.copyload.us, %vector.memcheck99 ], [ %.sroa.5314.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.le, %middle.block116 ] ; 6 uses
  %i.lt = sub i64 %.sroa.7315.0.copyload.us, %.sroa.5314.0611.us.ph
  %.neg408 = add i64 %.sroa.5314.0611.us.ph, 1
  %xtraiter392 = and i64 %i.lt, 1
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0310.0.copyload.us, i64 %.sroa.5314.0611.us.ph
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.4312.0.copyload.us, i64 %.sroa.5314.0611.us.ph
  %i.lw = add nuw i64 %.sroa.5314.0611.us.ph, 1
  %i.lx = load i32, ptr %i.lu, align 4, !noundef !9
  %i.ly = add i32 %i.lx, 16384
  %i.lz = lshr i32 %i.ly, 15
  %..i.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.lz, i32 255)
  %i.ma = trunc nuw i32 %..i.us.prol to i8
  store i8 %i.ma, ptr %i.lv, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5314.0611.us.unr = phi i64 [ %.sroa.5314.0611.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.lw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.mb = icmp eq i64 %.sroa.7315.0.copyload.us, %.neg408
  br i1 %i.mb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0316.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4318.0.copyload.us) ]
  %i.mc = sub nuw i64 %.sroa.7321.0.copyload.us, %.sroa.5320.0.copyload.us ; 3 uses
  %min.iters.check = icmp ult i64 %i.mc, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us
  %scevgep = getelementptr i8, ptr %.sroa.4318.0.copyload.us, i64 %.sroa.5320.0.copyload.us
  %scevgep95 = getelementptr i8, ptr %.sroa.4318.0.copyload.us, i64 %.sroa.7321.0.copyload.us
  %i.md = shl i64 %.sroa.5320.0.copyload.us, 2
  %scevgep96 = getelementptr i8, ptr %.sroa.0316.0.copyload.us, i64 %i.md
  %i.me = shl i64 %.sroa.7321.0.copyload.us, 2
  %scevgep97 = getelementptr i8, ptr %.sroa.0316.0.copyload.us, i64 %i.me
  %bound0 = icmp ult ptr %scevgep, %scevgep97
  %bound1 = icmp ult ptr %scevgep96, %scevgep95
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mc, -8                      ; 3 uses
  %i.mf = add i64 %.sroa.5320.0.copyload.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mg = add nuw i64 %.sroa.5320.0.copyload.us, %index ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0316.0.copyload.us, i64 %i.mg ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.4318.0.copyload.us, i64 %i.mg ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %wide.load = load <4 x i32>, ptr %i.mh, align 4, !alias.scope !278
  %wide.load98 = load <4 x i32>, ptr %i.mj, align 4, !alias.scope !278
  %i.mk = add <4 x i32> %wide.load, splat (i32 16384)
  %i.ml = add <4 x i32> %wide.load98, splat (i32 16384)
  %i.mm = lshr <4 x i32> %i.mk, splat (i32 15)
  %i.mn = lshr <4 x i32> %i.ml, splat (i32 15)
  %i.mo = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mm, <4 x i32> splat (i32 255))
  %i.mp = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mn, <4 x i32> splat (i32 255))
  %i.mq = trunc nuw <4 x i32> %i.mo to <4 x i8>
  %i.mr = trunc nuw <4 x i32> %i.mp to <4 x i8>
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store <4 x i8> %i.mq, ptr %i.mi, align 1, !alias.scope !279, !noalias !278
  store <4 x i8> %i.mr, ptr %i.ms, align 1, !alias.scope !279, !noalias !278
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mc, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us, %middle.block
  %.sroa.5320.0612.us.ph = phi i64 [ %.sroa.5320.0.copyload.us, %vector.memcheck ], [ %.sroa.5320.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us ], [ %i.mf, %middle.block ] ; 6 uses
  %i.mu = sub i64 %.sroa.7321.0.copyload.us, %.sroa.5320.0612.us.ph
  %.neg409 = add i64 %.sroa.5320.0612.us.ph, 1
  %xtraiter395 = and i64 %i.mu, 1
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol

end_hunk_1
begin_hunk_2_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnhmEB6_:bb.a
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0316.0.copyload.us, i64 %.sroa.5320.0612.us.ph
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.4318.0.copyload.us, i64 %.sroa.5320.0612.us.ph
  %i.mx = add nuw i64 %.sroa.5320.0612.us.ph, 1
  %i.my = load i32, ptr %i.mv, align 4, !noundef !9
  %i.mz = add i32 %i.my, 16384
  %i.na = lshr i32 %i.mz, 15
  %..i223.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.na, i32 255)
  %i.nb = trunc nuw i32 %..i223.us.prol to i8
  store i8 %i.nb, ptr %i.mw, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader
  %.sroa.5320.0612.us.unr = phi i64 [ %.sroa.5320.0612.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader ], [ %i.mx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol ]
  %i.nc = icmp eq i64 %.sroa.7321.0.copyload.us, %.neg409
  br i1 %i.nc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #13
  unreachable

.lr.ph616.split:                                  ; preds = %.lr.ph616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.p, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #13
  unreachable

.split.us:                                        ; preds = %bb.c
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.0614.us, i64 noundef %i.ah, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #13
  unreachable

.split621.us:                                     ; preds = %bb.d
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #13
  unreachable

.split626.us:                                     ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #13
  unreachable

.split629.us:                                     ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #13
  unreachable

.split632.us:                                     ; preds = %bb.h
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.0614.us, i64 noundef %i.ah, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #13
  unreachable

.split637.us:                                     ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.0614.us, i64 noundef %i.ah, i64 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #13
  unreachable

.split642.us:                                     ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #13
  unreachable

.split647.us:                                     ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #13
  unreachable

._crit_edge617:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us, %bb.b
  %.sroa.015.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.ai, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us ] ; 2 uses
  %i.nd = and i64 %3, 16                          ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.nd ; 3 uses
  %i.nf = icmp samesign eq i64 %i.nd, 0
  br i1 %i.nf, label %._crit_edge662, label %.lr.ph661

.lr.ph661:                                        ; preds = %._crit_edge617
  %i.ng = icmp samesign ult i64 %i.r, %1
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  %.sroa.4331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.7334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.nk = icmp eq i64 %i.r, 0
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.6345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.7347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.9348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.4354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br i1 %i.ng, label %.lr.ph661.split.us, label %.lr.ph661.split

.lr.ph661.split.us:                               ; preds = %.lr.ph661
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nm = load i64, ptr %i.nl, align 8, !noundef !9 ; 2 uses
  %broadcast.splatinsert279 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat280 = shufflevector <4 x i32> %broadcast.splatinsert279, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, %.lr.ph661.split.us
  %.sroa.015.1659.us = phi i64 [ %.sroa.015.0.lcssa, %.lr.ph661.split.us ], [ %i.no, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us ] ; 8 uses
  %.sroa.0129.0658.us = phi ptr [ %i.v, %.lr.ph661.split.us ], [ %i.nn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0129.0658.us, i64 16 ; 3 uses
  %i.no = add i64 %.sroa.015.1659.us, 16          ; 7 uses
  %i.np = or disjoint i64 %.sroa.015.1659.us, 15
  %or.cond205.not.us = icmp ult i64 %i.np, %i.nm
  br i1 %or.cond205.not.us, label %bb.o, label %.split.us665, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.nq = load ptr, ptr %i.nh, align 8, !nonnull !9, !noundef !9
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.sroa.015.1659.us ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ni, ptr noundef nonnull readonly %i.nr, ptr noundef nonnull readonly %i.ns)
  %.sroa.0329.0.copyload.us = load ptr, ptr %i.g, align 8 ; 9 uses
  %.sroa.4331.0.copyload.us = load ptr, ptr %.sroa.4331.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5333.0.copyload.us = load i64, ptr %.sroa.5333.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7334.0.copyload.us = load i64, ptr %.sroa.7334.0..sroa_idx, align 8 ; 7 uses
  %i.nt = icmp ult i64 %.sroa.5333.0.copyload.us, %.sroa.7334.0.copyload.us
  br i1 %i.nt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us
  %.sroa.5333.0652.us = phi i64 [ %i.oo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us ], [ %.sroa.5333.0652.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit ] ; 6 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0329.0.copyload.us, i64 %.sroa.5333.0652.us
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.4331.0.copyload.us, i64 %.sroa.5333.0652.us
  %i.nw = add nuw i64 %.sroa.5333.0652.us, 1      ; 2 uses
  %i.nx = load i8, ptr %i.nv, align 1, !noundef !9
  %i.ny = zext i8 %i.nx to i32
  %i.nz = mul i32 %i.t, %i.ny
  store i32 %i.nz, ptr %i.nu, align 4
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0329.0.copyload.us, i64 %i.nw
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.4331.0.copyload.us, i64 %i.nw
  %i.oc = add nuw i64 %.sroa.5333.0652.us, 2      ; 2 uses
  %i.od = load i8, ptr %i.ob, align 1, !noundef !9
  %i.oe = zext i8 %i.od to i32
  %i.of = mul i32 %i.t, %i.oe
  store i32 %i.of, ptr %i.oa, align 4
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0329.0.copyload.us, i64 %i.oc
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.4331.0.copyload.us, i64 %i.oc
  %i.oi = add nuw i64 %.sroa.5333.0652.us, 3      ; 2 uses
  %i.oj = load i8, ptr %i.oh, align 1, !noundef !9
  %i.ok = zext i8 %i.oj to i32
  %i.ol = mul i32 %i.t, %i.ok
  store i32 %i.ol, ptr %i.og, align 4
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0329.0.copyload.us, i64 %i.oi
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.4331.0.copyload.us, i64 %i.oi
  %i.oo = add nuw i64 %.sroa.5333.0652.us, 4      ; 2 uses
  %i.op = load i8, ptr %i.on, align 1, !noundef !9
  %i.oq = zext i8 %i.op to i32
  %i.or = mul i32 %i.t, %i.oq
  store i32 %i.or, ptr %i.om, align 4
  %exitcond840.not.3 = icmp eq i64 %i.oo, %.sroa.7334.0.copyload.us
  br i1 %exitcond840.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us, !llvm.loop !239

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us, %middle.block286, %bb.o
  br i1 %i.nk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us, label %.lr.ph.us663

.lr.ph.us663:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us
  %.sroa.0335.0656.us = phi ptr [ %i.ou, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us ], [ %5, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us ] ; 3 uses
  %.sroa.7337.0655.us = phi i64 [ %i.os, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us ], [ %i.r, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us ]
  %.sroa.10338.0654.us = phi i64 [ %i.ov, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us ] ; 4 uses
  %i.os = add nsw i64 %.sroa.7337.0655.us, -1     ; 2 uses
  %i.ot = icmp eq ptr %.sroa.0335.0656.us, %i.nj
  br i1 %i.ot, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us, label %bb.p

bb.p:                                             ; preds = %.lr.ph.us663
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0335.0656.us, i64 4
  %i.ov = add nuw nsw i64 %.sroa.10338.0654.us, 1
  %i.ow = load i32, ptr %.sroa.0335.0656.us, align 4, !noundef !9 ; 4 uses
  %i.ox = xor i64 %.sroa.10338.0654.us, -1
  %i.oy = add nsw i64 %6, %i.ox                   ; 3 uses
  %exitcond842.not = icmp eq i64 %.sroa.10338.0654.us, %1
  br i1 %exitcond842.not, label %.split669.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10338.0654.us ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load i64, ptr %i.pa, align 8, !noundef !9 ; 2 uses
  %.not193.us = icmp ugt i64 %i.no, %i.pb
  br i1 %.not193.us, label %.split672.us, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  %i.pc = load ptr, ptr %i.oz, align 8, !nonnull !9, !noundef !9
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %.sroa.015.1659.us ; 2 uses
  %i.pe = icmp ult i64 %i.oy, %1
  br i1 %i.pe, label %bb.s, label %.split677.us

bb.s:                                             ; preds = %bb.r
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.oy ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !noundef !9 ; 2 uses
  %.not194.us = icmp ugt i64 %i.no, %i.ph
  br i1 %.not194.us, label %.split680.us, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  %i.pi = load ptr, ptr %i.pf, align 8, !nonnull !9, !noundef !9
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.sroa.015.1659.us ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !280
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ni, ptr noundef nonnull readonly %i.pd, ptr noundef nonnull readonly %i.pk)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.pj, ptr noundef nonnull readonly %i.pl), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !280
  %.sroa.0339.0.copyload.us = load ptr, ptr %i.f, align 8 ; 7 uses
  %.sroa.4341.0.copyload.us = load ptr, ptr %.sroa.4341.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5343.0.copyload.us = load i64, ptr %.sroa.5343.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6345.0.copyload.us = load ptr, ptr %.sroa.6345.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7347.0.copyload.us = load i64, ptr %.sroa.7347.0..sroa_idx, align 8 ; 9 uses
  %.sroa.9348.0.copyload.us = load i64, ptr %.sroa.9348.0..sroa_idx, align 8 ; 7 uses
  %i.pm = icmp ult i64 %.sroa.7347.0.copyload.us, %.sroa.9348.0.copyload.us
  br i1 %i.pm, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us
  %.sroa.7347.0653.us = phi i64 [ %i.qe, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us ], [ %.sroa.7347.0653.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit ] ; 4 uses
  %i.pn = add i64 %.sroa.7347.0653.us, %.sroa.5343.0.copyload.us ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0339.0.copyload.us, i64 %i.pn ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.6345.0.copyload.us, i64 %.sroa.7347.0653.us
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.4341.0.copyload.us, i64 %i.pn
  %i.pr = add nuw i64 %.sroa.7347.0653.us, 1      ; 2 uses
  %i.ps = load i32, ptr %i.po, align 4, !noundef !9
  %i.pt = load i8, ptr %i.pq, align 1, !noundef !9
  %i.pu = zext i8 %i.pt to i32
  %i.pv = load i8, ptr %i.pp, align 1, !noundef !9
  %i.pw = zext i8 %i.pv to i32
  %i.px = add nuw nsw i32 %i.pw, %i.pu
  %i.py = mul i32 %i.px, %i.ow
  %i.pz = add i32 %i.py, %i.ps
  store i32 %i.pz, ptr %i.po, align 4
  %i.qa = add i64 %i.pr, %.sroa.5343.0.copyload.us ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0339.0.copyload.us, i64 %i.qa ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.6345.0.copyload.us, i64 %i.pr
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.4341.0.copyload.us, i64 %i.qa
  %i.qe = add nuw i64 %.sroa.7347.0653.us, 2      ; 2 uses
  %i.qf = load i32, ptr %i.qb, align 4, !noundef !9
  %i.qg = load i8, ptr %i.qd, align 1, !noundef !9
  %i.qh = zext i8 %i.qg to i32
  %i.qi = load i8, ptr %i.qc, align 1, !noundef !9
  %i.qj = zext i8 %i.qi to i32
  %i.qk = add nuw nsw i32 %i.qj, %i.qh
  %i.ql = mul i32 %i.qk, %i.ow
  %i.qm = add i32 %i.ql, %i.qf
  store i32 %i.qm, ptr %i.qb, align 4
  %exitcond841.not.1 = icmp eq i64 %i.qe, %.sroa.9348.0.copyload.us
  br i1 %exitcond841.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us, !llvm.loop !244

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us, %middle.block264, %bb.t
  %i.qn = icmp eq i64 %i.os, 0
  br i1 %i.qn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us, label %.lr.ph.us663

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us: ; preds = %.lr.ph.us663, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.ni, ptr noundef nonnull %.sroa.0129.0658.us, ptr noundef nonnull %i.nn)
  %.sroa.0352.0.copyload.us = load ptr, ptr %i.e, align 8 ; 7 uses
  %.sroa.4354.0.copyload.us = load ptr, ptr %.sroa.4354.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5356.0.copyload.us = load i64, ptr %.sroa.5356.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7357.0.copyload.us = load i64, ptr %.sroa.7357.0..sroa_idx, align 8 ; 7 uses
  %i.qo = icmp ult i64 %.sroa.5356.0.copyload.us, %.sroa.7357.0.copyload.us
  br i1 %i.qo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us
  %.sroa.5356.0657.us = phi i64 [ %i.qy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us ], [ %.sroa.5356.0657.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit ] ; 4 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %.sroa.5356.0657.us
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.5356.0657.us
  %i.qr = add nuw i64 %.sroa.5356.0657.us, 1      ; 2 uses
  %i.qs = load i32, ptr %i.qp, align 4, !noundef !9
  %i.qt = add i32 %i.qs, 16384
  %i.qu = lshr i32 %i.qt, 15
  %..i245.us = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.qu, i32 255)
  %i.qv = trunc nuw i32 %..i245.us to i8
  store i8 %i.qv, ptr %i.qq, align 1
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %i.qr
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %i.qr
  %i.qy = add nuw i64 %.sroa.5356.0657.us, 2      ; 2 uses
  %i.qz = load i32, ptr %i.qw, align 4, !noundef !9
  %i.ra = add i32 %i.qz, 16384
  %i.rb = lshr i32 %i.ra, 15
  %..i245.us.1 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.rb, i32 255)
  %i.rc = trunc nuw i32 %..i245.us.1 to i8
  store i8 %i.rc, ptr %i.qx, align 1
  %exitcond843.not.1 = icmp eq i64 %i.qy, %.sroa.7357.0.copyload.us
  br i1 %exitcond843.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us, !llvm.loop !245

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us, %middle.block235, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.rd = icmp eq ptr %i.nn, %i.ne
  br i1 %i.rd, label %._crit_edge662, label %bb.n

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0329.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4331.0.copyload.us) ]
  %i.re = sub nuw i64 %.sroa.7334.0.copyload.us, %.sroa.5333.0.copyload.us ; 3 uses
  %min.iters.check276 = icmp ult i64 %i.re, 8
  br i1 %min.iters.check276, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader, label %vector.memcheck267

vector.memcheck267:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us
  %i.rf = shl i64 %.sroa.5333.0.copyload.us, 2
  %scevgep268 = getelementptr i8, ptr %.sroa.0329.0.copyload.us, i64 %i.rf
  %i.rg = shl i64 %.sroa.7334.0.copyload.us, 2
  %scevgep269 = getelementptr i8, ptr %.sroa.0329.0.copyload.us, i64 %i.rg
  %scevgep270 = getelementptr i8, ptr %.sroa.4331.0.copyload.us, i64 %.sroa.5333.0.copyload.us
  %scevgep271 = getelementptr i8, ptr %.sroa.4331.0.copyload.us, i64 %.sroa.7334.0.copyload.us
  %bound0272 = icmp ult ptr %scevgep268, %scevgep271
  %bound1273 = icmp ult ptr %scevgep270, %scevgep269
  %found.conflict274 = and i1 %bound0272, %bound1273
  br i1 %found.conflict274, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck267
  %n.vec278 = and i64 %i.re, -8                   ; 3 uses
  %i.rh = add i64 %.sroa.5333.0.copyload.us, %n.vec278
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph277
  %index282 = phi i64 [ 0, %vector.ph277 ], [ %index.next285, %vector.body281 ] ; 2 uses
  %i.ri = add nuw i64 %.sroa.5333.0.copyload.us, %index282 ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0329.0.copyload.us, i64 %i.ri ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.4331.0.copyload.us, i64 %i.ri ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %wide.load283 = load <4 x i8>, ptr %i.rk, align 1, !alias.scope !282
  %wide.load284 = load <4 x i8>, ptr %i.rl, align 1, !alias.scope !282
  %i.rm = zext <4 x i8> %wide.load283 to <4 x i32>
  %i.rn = zext <4 x i8> %wide.load284 to <4 x i32>
  %i.ro = mul <4 x i32> %broadcast.splat280, %i.rm
  %i.rp = mul <4 x i32> %broadcast.splat280, %i.rn
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store <4 x i32> %i.ro, ptr %i.rj, align 4, !alias.scope !283, !noalias !282
  store <4 x i32> %i.rp, ptr %i.rq, align 4, !alias.scope !283, !noalias !282
  %index.next285 = add nuw i64 %index282, 8       ; 2 uses
  %i.rr = icmp eq i64 %index.next285, %n.vec278
  br i1 %i.rr, label %middle.block286, label %vector.body281, !llvm.loop !249

middle.block286:                                  ; preds = %vector.body281
  %cmp.n287 = icmp eq i64 %i.re, %n.vec278
  br i1 %cmp.n287, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader: ; preds = %vector.memcheck267, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us, %middle.block286
  %.sroa.5333.0652.us.ph = phi i64 [ %.sroa.5333.0.copyload.us, %vector.memcheck267 ], [ %.sroa.5333.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us ], [ %i.rh, %middle.block286 ] ; 4 uses
  %i.rs = sub i64 %.sroa.7334.0.copyload.us, %.sroa.5333.0652.us.ph
  %xtraiter398 = and i64 %i.rs, 3                 ; 2 uses
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol
  %.sroa.5333.0652.us.prol = phi i64 [ %i.rv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol ], [ %.sroa.5333.0652.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader ] ; 3 uses
  %prol.iter400 = phi i64 [ %prol.iter400.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader ]
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0329.0.copyload.us, i64 %.sroa.5333.0652.us.prol
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.4331.0.copyload.us, i64 %.sroa.5333.0652.us.prol
  %i.rv = add nuw i64 %.sroa.5333.0652.us.prol, 1 ; 2 uses
  %i.rw = load i8, ptr %i.ru, align 1, !noundef !9
  %i.rx = zext i8 %i.rw to i32
  %i.ry = mul i32 %i.t, %i.rx
  store i32 %i.ry, ptr %i.rt, align 4
  %prol.iter400.next = add i64 %prol.iter400, 1   ; 2 uses
  %prol.iter400.cmp.not = icmp eq i64 %prol.iter400.next, %xtraiter398
  br i1 %prol.iter400.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol, !llvm.loop !250

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader
  %.sroa.5333.0652.us.unr = phi i64 [ %.sroa.5333.0652.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader ], [ %i.rv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol ]
  %i.rz = sub i64 %.sroa.5333.0652.us.ph, %.sroa.7334.0.copyload.us
  %i.sa = icmp ugt i64 %i.rz, -4
  br i1 %i.sa, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us: ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0339.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4341.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6345.0.copyload.us) ]
  %i.sb = sub nuw i64 %.sroa.9348.0.copyload.us, %.sroa.7347.0.copyload.us ; 3 uses
  %min.iters.check253 = icmp ult i64 %i.sb, 8
  br i1 %min.iters.check253, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us
  %i.sc = add i64 %.sroa.7347.0.copyload.us, %.sroa.5343.0.copyload.us
  %i.sd = shl i64 %i.sc, 2
  %scevgep239 = getelementptr i8, ptr %.sroa.0339.0.copyload.us, i64 %i.sd ; 2 uses
  %i.se = add i64 %.sroa.9348.0.copyload.us, %.sroa.5343.0.copyload.us ; 2 uses
  %i.sf = shl i64 %i.se, 2
  %scevgep240 = getelementptr i8, ptr %.sroa.0339.0.copyload.us, i64 %i.sf ; 2 uses
  %i.sg = getelementptr i8, ptr %.sroa.4341.0.copyload.us, i64 %.sroa.5343.0.copyload.us
  %scevgep241 = getelementptr i8, ptr %i.sg, i64 %.sroa.7347.0.copyload.us
  %scevgep242 = getelementptr i8, ptr %.sroa.4341.0.copyload.us, i64 %i.se
  %scevgep243 = getelementptr i8, ptr %.sroa.6345.0.copyload.us, i64 %.sroa.7347.0.copyload.us
  %scevgep244 = getelementptr i8, ptr %.sroa.6345.0.copyload.us, i64 %.sroa.9348.0.copyload.us
  %bound0245 = icmp ult ptr %scevgep239, %scevgep242
  %bound1246 = icmp ult ptr %scevgep241, %scevgep240
  %found.conflict247 = and i1 %bound0245, %bound1246
  %bound0248 = icmp ult ptr %scevgep239, %scevgep244
  %bound1249 = icmp ult ptr %scevgep243, %scevgep240
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %found.conflict247, %found.conflict250
  br i1 %conflict.rdx251, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %vector.memcheck238
  %n.vec255 = and i64 %i.sb, -4                   ; 3 uses
  %i.sh = add i64 %.sroa.7347.0.copyload.us, %n.vec255
  %broadcast.splatinsert256 = insertelement <4 x i32> poison, i32 %i.ow, i64 0
  %broadcast.splat257 = shufflevector <4 x i32> %broadcast.splatinsert256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph254
  %index259 = phi i64 [ 0, %vector.ph254 ], [ %index.next263, %vector.body258 ] ; 2 uses
  %i.si = add nuw i64 %.sroa.7347.0.copyload.us, %index259 ; 2 uses
  %i.sj = add i64 %i.si, %.sroa.5343.0.copyload.us ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0339.0.copyload.us, i64 %i.sj ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.6345.0.copyload.us, i64 %i.si
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.4341.0.copyload.us, i64 %i.sj
  %wide.load260 = load <4 x i32>, ptr %i.sk, align 4, !alias.scope !284, !noalias !285
  %wide.load261 = load <4 x i8>, ptr %i.sm, align 1, !alias.scope !286
  %i.sn = zext <4 x i8> %wide.load261 to <4 x i32>
  %wide.load262 = load <4 x i8>, ptr %i.sl, align 1, !alias.scope !287
  %i.so = zext <4 x i8> %wide.load262 to <4 x i32>
  %i.sp = add nuw nsw <4 x i32> %i.so, %i.sn
  %i.sq = mul <4 x i32> %i.sp, %broadcast.splat257
  %i.sr = add <4 x i32> %i.sq, %wide.load260
  store <4 x i32> %i.sr, ptr %i.sk, align 4, !alias.scope !284, !noalias !285
  %index.next263 = add nuw i64 %index259, 4       ; 2 uses
  %i.ss = icmp eq i64 %index.next263, %n.vec255
  br i1 %i.ss, label %middle.block264, label %vector.body258, !llvm.loop !255

middle.block264:                                  ; preds = %vector.body258
  %cmp.n265 = icmp eq i64 %i.sb, %n.vec255
  br i1 %cmp.n265, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader: ; preds = %vector.memcheck238, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us, %middle.block264
  %.sroa.7347.0653.us.ph = phi i64 [ %.sroa.7347.0.copyload.us, %vector.memcheck238 ], [ %.sroa.7347.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us ], [ %i.sh, %middle.block264 ] ; 6 uses
  %i.st = sub i64 %.sroa.9348.0.copyload.us, %.sroa.7347.0653.us.ph
  %.neg410 = add i64 %.sroa.7347.0653.us.ph, 1
  %xtraiter401 = and i64 %i.st, 1
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader
  %i.su = add i64 %.sroa.7347.0653.us.ph, %.sroa.5343.0.copyload.us ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0339.0.copyload.us, i64 %i.su ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.6345.0.copyload.us, i64 %.sroa.7347.0653.us.ph
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.4341.0.copyload.us, i64 %i.su
  %i.sy = add nuw i64 %.sroa.7347.0653.us.ph, 1
  %i.sz = load i32, ptr %i.sv, align 4, !noundef !9
  %i.ta = load i8, ptr %i.sx, align 1, !noundef !9
  %i.tb = zext i8 %i.ta to i32
  %i.tc = load i8, ptr %i.sw, align 1, !noundef !9
  %i.td = zext i8 %i.tc to i32
  %i.te = add nuw nsw i32 %i.td, %i.tb
  %i.tf = mul i32 %i.te, %i.ow
  %i.tg = add i32 %i.tf, %i.sz
  store i32 %i.tg, ptr %i.sv, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader
  %.sroa.7347.0653.us.unr = phi i64 [ %.sroa.7347.0653.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader ], [ %i.sy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol ]
  %i.th = icmp eq i64 %.sroa.9348.0.copyload.us, %.neg410
  br i1 %i.th, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0352.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4354.0.copyload.us) ]
  %i.ti = sub nuw i64 %.sroa.7357.0.copyload.us, %.sroa.5356.0.copyload.us ; 3 uses
  %min.iters.check227 = icmp ult i64 %i.ti, 8
  br i1 %min.iters.check227, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us
  %scevgep219 = getelementptr i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.5356.0.copyload.us
  %scevgep220 = getelementptr i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.7357.0.copyload.us
  %i.tj = shl i64 %.sroa.5356.0.copyload.us, 2
  %scevgep221 = getelementptr i8, ptr %.sroa.0352.0.copyload.us, i64 %i.tj
  %i.tk = shl i64 %.sroa.7357.0.copyload.us, 2
  %scevgep222 = getelementptr i8, ptr %.sroa.0352.0.copyload.us, i64 %i.tk
  %bound0223 = icmp ult ptr %scevgep219, %scevgep222
  %bound1224 = icmp ult ptr %scevgep221, %scevgep220
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck218
  %n.vec229 = and i64 %i.ti, -8                   ; 3 uses
  %i.tl = add i64 %.sroa.5356.0.copyload.us, %n.vec229
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next234, %vector.body230 ] ; 2 uses
  %i.tm = add nuw i64 %.sroa.5356.0.copyload.us, %index231 ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %i.tm ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %wide.load232 = load <4 x i32>, ptr %i.tn, align 4, !alias.scope !288
  %wide.load233 = load <4 x i32>, ptr %i.tp, align 4, !alias.scope !288
  %i.tq = add <4 x i32> %wide.load232, splat (i32 16384)
  %i.tr = add <4 x i32> %wide.load233, splat (i32 16384)
  %i.ts = lshr <4 x i32> %i.tq, splat (i32 15)
  %i.tt = lshr <4 x i32> %i.tr, splat (i32 15)
  %i.tu = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ts, <4 x i32> splat (i32 255))
  %i.tv = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.tt, <4 x i32> splat (i32 255))
  %i.tw = trunc nuw <4 x i32> %i.tu to <4 x i8>
  %i.tx = trunc nuw <4 x i32> %i.tv to <4 x i8>
  %i.ty = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  store <4 x i8> %i.tw, ptr %i.to, align 1, !alias.scope !289, !noalias !288
  store <4 x i8> %i.tx, ptr %i.ty, align 1, !alias.scope !289, !noalias !288
  %index.next234 = add nuw i64 %index231, 8       ; 2 uses
  %i.tz = icmp eq i64 %index.next234, %n.vec229
  br i1 %i.tz, label %middle.block235, label %vector.body230, !llvm.loop !259

middle.block235:                                  ; preds = %vector.body230
  %cmp.n236 = icmp eq i64 %i.ti, %n.vec229
  br i1 %cmp.n236, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader: ; preds = %vector.memcheck218, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us, %middle.block235
  %.sroa.5356.0657.us.ph = phi i64 [ %.sroa.5356.0.copyload.us, %vector.memcheck218 ], [ %.sroa.5356.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us ], [ %i.tl, %middle.block235 ] ; 6 uses
  %i.ua = sub i64 %.sroa.7357.0.copyload.us, %.sroa.5356.0657.us.ph
  %.neg411 = add i64 %.sroa.5356.0657.us.ph, 1
  %xtraiter404 = and i64 %i.ua, 1
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %.sroa.5356.0657.us.ph
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.5356.0657.us.ph
  %i.ud = add nuw i64 %.sroa.5356.0657.us.ph, 1
  %i.ue = load i32, ptr %i.ub, align 4, !noundef !9
  %i.uf = add i32 %i.ue, 16384
  %i.ug = lshr i32 %i.uf, 15
  %..i245.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.ug, i32 255)
  %i.uh = trunc nuw i32 %..i245.us.prol to i8
  store i8 %i.uh, ptr %i.uc, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader
  %.sroa.5356.0657.us.unr = phi i64 [ %.sroa.5356.0657.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader ], [ %i.ud, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol ]
  %i.ui = icmp eq i64 %.sroa.7357.0.copyload.us, %.neg411
  br i1 %i.ui, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us

.lr.ph661.split:                                  ; preds = %.lr.ph661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #13
  unreachable

.split.us665:                                     ; preds = %bb.n
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.no, i64 noundef %i.nm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #13
  unreachable

.split669.us:                                     ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #13
  unreachable

.split672.us:                                     ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.no, i64 noundef %i.pb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13
  unreachable

.split677.us:                                     ; preds = %bb.r
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oy, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #13
  unreachable

.split680.us:                                     ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.no, i64 noundef %i.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13
  unreachable

._crit_edge662:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, %._crit_edge617
  %.sroa.015.1.lcssa = phi i64 [ %.sroa.015.0.lcssa, %._crit_edge617 ], [ %i.no, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us ] ; 2 uses
  %i.uj = and i64 %3, 12                          ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.uj ; 3 uses
  %i.ul = icmp samesign eq i64 %i.uj, 0
  br i1 %i.ul, label %._crit_edge705, label %.lr.ph704

.lr.ph704:                                        ; preds = %._crit_edge662
  %i.um = icmp samesign ult i64 %i.r, %1
  %i.un = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.up = icmp eq i64 %i.r, 0
  br i1 %i.um, label %.lr.ph704.split, label %bb.v

.lr.ph704.split:                                  ; preds = %.lr.ph704
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.ur = load i64, ptr %i.uq, align 8, !noundef !9 ; 2 uses
  %i.us = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %i.ut = shufflevector <4 x i32> %i.us, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph704.split, %._crit_edge
  %.sroa.015.2702 = phi i64 [ %.sroa.015.1.lcssa, %.lr.ph704.split ], [ %i.uv, %._crit_edge ] ; 8 uses
  %.sroa.0137.0701 = phi ptr [ %i.ne, %.lr.ph704.split ], [ %i.uu, %._crit_edge ] ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.0137.0701, i64 4 ; 2 uses
  %i.uv = add i64 %.sroa.015.2702, 4              ; 7 uses
  %i.uw = or disjoint i64 %.sroa.015.2702, 3
  %or.cond206.not = icmp ult i64 %i.uw, %i.ur
  br i1 %or.cond206.not, label %bb.w, label %bb.x, !prof !11

bb.v:                                             ; preds = %.lr.ph704
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #13
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ux = load ptr, ptr %i.un, align 8, !nonnull !9, !noundef !9
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 %.sroa.015.2702
  %i.uz = load <4 x i8>, ptr %i.uy, align 1
  %i.va = zext <4 x i8> %i.uz to <4 x i32>
  %i.vb = mul <4 x i32> %i.ut, %i.va              ; 2 uses
  br i1 %i.up, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %bb.u
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.2702, i64 noundef %i.uv, i64 noundef %i.ur, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13
  unreachable

.lr.ph:                                           ; preds = %bb.w, %bb.af
  %.sroa.10369.0688 = phi i64 [ %i.vg, %bb.af ], [ 0, %bb.w ] ; 4 uses
  %.sroa.7368.0687 = phi i64 [ %i.vd, %bb.af ], [ %i.r, %bb.w ]
  %.sroa.0366.0686 = phi ptr [ %i.vf, %bb.af ], [ %5, %bb.w ] ; 3 uses
  %i.vc = phi <4 x i32> [ %i.wj, %bb.af ], [ %i.vb, %bb.w ] ; 2 uses
  %i.vd = add nsw i64 %.sroa.7368.0687, -1        ; 2 uses
  %i.ve = icmp eq ptr %.sroa.0366.0686, %i.uo
  br i1 %i.ve, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0366.0686, i64 4
  %i.vg = add nuw nsw i64 %.sroa.10369.0688, 1
  %i.vh = load i32, ptr %.sroa.0366.0686, align 4, !noundef !9
  %i.vi = xor i64 %.sroa.10369.0688, -1
  %i.vj = add nsw i64 %6, %i.vi                   ; 3 uses
  %exitcond844.not = icmp eq i64 %.sroa.10369.0688, %1
  br i1 %exitcond844.not, label %bb.aa, label %bb.z

._crit_edge:                                      ; preds = %.lr.ph, %bb.af, %bb.w
  %i.vk = phi <4 x i32> [ %i.vb, %bb.w ], [ %i.wj, %bb.af ], [ %i.vc, %.lr.ph ]
  %i.vl = add <4 x i32> %i.vk, splat (i32 16384)
  %i.vm = lshr <4 x i32> %i.vl, splat (i32 15)
  %i.vn = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.vm, <4 x i32> splat (i32 255))
  %i.vo = trunc nuw <4 x i32> %i.vn to <4 x i8>
  store <4 x i8> %i.vo, ptr %.sroa.0137.0701, align 1
  %i.vp = icmp eq ptr %i.uu, %i.uk
  br i1 %i.vp, label %._crit_edge705, label %bb.u

bb.z:                                             ; preds = %bb.y
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10369.0688 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.vs = load i64, ptr %i.vr, align 8, !noundef !9 ; 2 uses
  %.not198 = icmp ugt i64 %i.uv, %i.vs
  br i1 %.not198, label %bb.ac, label %bb.ab, !prof !5

bb.aa:                                            ; preds = %bb.y
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #13
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.vt = load ptr, ptr %i.vq, align 8, !nonnull !9, !noundef !9
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 %.sroa.015.2702
  %i.vv = icmp ult i64 %i.vj, %1
  br i1 %i.vv, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.2702, i64 noundef %i.uv, i64 noundef %i.vs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #13
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.vw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.vj ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !noundef !9 ; 2 uses
  %.not199 = icmp ugt i64 %i.uv, %i.vy
  br i1 %.not199, label %bb.ag, label %bb.af, !prof !5

bb.ae:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.vj, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #13
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.vz = load ptr, ptr %i.vw, align 8, !nonnull !9, !noundef !9
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 %.sroa.015.2702
  %i.wb = load <4 x i8>, ptr %i.vu, align 1
  %i.wc = zext <4 x i8> %i.wb to <4 x i32>
  %i.wd = load <4 x i8>, ptr %i.wa, align 1
  %i.we = zext <4 x i8> %i.wd to <4 x i32>
  %i.wf = add nuw nsw <4 x i32> %i.we, %i.wc
  %i.wg = insertelement <4 x i32> poison, i32 %i.vh, i64 0
  %i.wh = shufflevector <4 x i32> %i.wg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.wi = mul <4 x i32> %i.wf, %i.wh
  %i.wj = add <4 x i32> %i.wi, %i.vc              ; 2 uses
  %i.wk = icmp eq i64 %i.vd, 0
  br i1 %i.wk, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %bb.ad
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.2702, i64 noundef %i.uv, i64 noundef %i.vy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #13
  unreachable

._crit_edge705:                                   ; preds = %._crit_edge, %._crit_edge662
  %.sroa.015.2.lcssa = phi i64 [ %.sroa.015.1.lcssa, %._crit_edge662 ], [ %i.uv, %._crit_edge ]
  %i.wl = and i64 %3, 3
  %i.wm = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.wl
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.uk, ptr noundef nonnull %i.wm, i64 noundef %.sroa.015.2.lcssa, i64 noundef %i.q)
  %.sroa.0374.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.4376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4376.0.copyload = load i64, ptr %.sroa.4376.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.5378.0.copyload = load i64, ptr %.sroa.5378.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.7379.0.copyload = load i64, ptr %.sroa.7379.0..sroa_idx, align 8 ; 2 uses
  %i.wn = icmp ult i64 %.sroa.5378.0.copyload, %.sroa.7379.0.copyload
  br i1 %i.wn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge705
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0374.0.copyload) ]
  %i.wo = icmp samesign ult i64 %i.r, %1
  %i.wp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.wr = icmp eq i64 %i.r, 0
  br i1 %i.wo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split, label %bb.ah

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wt = load i64, ptr %i.ws, align 8, !noundef !9 ; 3 uses
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split, %._crit_edge713
  %.sroa.5378.0717 = phi i64 [ %.sroa.5378.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split ], [ %i.wu, %._crit_edge713 ] ; 3 uses
  %i.wu = add i64 %.sroa.5378.0717, 1             ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.0374.0.copyload, i64 %.sroa.5378.0717
  %i.ww = add nuw i64 %.sroa.5378.0717, %.sroa.4376.0.copyload ; 8 uses
  %i.wx = add i64 %i.ww, 1                        ; 4 uses
  %or.cond207.not = icmp ult i64 %i.ww, %i.wt
  br i1 %or.cond207.not, label %bb.aj, label %bb.ai, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge713, %._crit_edge705
  ret void

bb.ah:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #13
  unreachable

bb.ai:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.wy = add i64 %.sroa.5378.0.copyload, %.sroa.4376.0.copyload
  %umax = call i64 @llvm.umax.i64(i64 %i.wt, i64 %i.wy)
  %i.wz = add i64 %umax, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ww, i64 noundef %i.wz, i64 noundef %i.wt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #13
  unreachable

bb.aj:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.xa = load ptr, ptr %i.wp, align 8, !nonnull !9, !noundef !9
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.ww
  %i.xc = load i8, ptr %i.xb, align 1, !noundef !9
  %i.xd = zext i8 %i.xc to i32
  %i.xe = mul i32 %i.t, %i.xd                     ; 2 uses
  br i1 %i.wr, label %._crit_edge713, label %.lr.ph712

.lr.ph712:                                        ; preds = %bb.aj, %bb.as
  %.sroa.0105.0710 = phi i32 [ %i.yg, %bb.as ], [ %i.xe, %bb.aj ] ; 2 uses
  %.sroa.10383.0709 = phi i64 [ %i.xi, %bb.as ], [ 0, %bb.aj ] ; 4 uses
  %.sroa.7382.0708 = phi i64 [ %i.xf, %bb.as ], [ %i.r, %bb.aj ]
  %.sroa.0380.0707 = phi ptr [ %i.xh, %bb.as ], [ %5, %bb.aj ] ; 3 uses
  %i.xf = add nsw i64 %.sroa.7382.0708, -1        ; 2 uses
  %i.xg = icmp eq ptr %.sroa.0380.0707, %i.wq
  br i1 %i.xg, label %._crit_edge713, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph712
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0380.0707, i64 4
  %i.xi = add nuw nsw i64 %.sroa.10383.0709, 1
  %i.xj = load i32, ptr %.sroa.0380.0707, align 4, !noundef !9
  %i.xk = xor i64 %.sroa.10383.0709, -1
  %i.xl = add nsw i64 %6, %i.xk                   ; 3 uses
  %exitcond845.not = icmp eq i64 %.sroa.10383.0709, %1
  br i1 %exitcond845.not, label %bb.am, label %bb.al

._crit_edge713:                                   ; preds = %.lr.ph712, %bb.as, %bb.aj
  %.sroa.0105.0.lcssa = phi i32 [ %i.xe, %bb.aj ], [ %i.yg, %bb.as ], [ %.sroa.0105.0710, %.lr.ph712 ]
  %i.xm = add i32 %.sroa.0105.0.lcssa, 16384
  %i.xn = lshr i32 %i.xm, 15
  %..i267 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.xn, i32 255)
  %i.xo = trunc nuw i32 %..i267 to i8
  store i8 %i.xo, ptr %i.wv, align 1
  %exitcond846.not = icmp eq i64 %i.wu, %.sroa.7379.0.copyload
  br i1 %exitcond846.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

bb.al:                                            ; preds = %bb.ak
  %i.xp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10383.0709 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = load i64, ptr %i.xq, align 8, !noundef !9 ; 2 uses
  %.not203 = icmp ugt i64 %i.wx, %i.xr
  br i1 %.not203, label %bb.an, label %bb.ao, !prof !5

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #13
  unreachable

bb.an:                                            ; preds = %bb.al
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ww, i64 noundef %i.wx, i64 noundef %i.xr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #13
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.xs = load ptr, ptr %i.xp, align 8, !nonnull !9, !noundef !9
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.ww
  %i.xu = icmp ult i64 %i.xl, %1
  br i1 %i.xu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.xl ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.xx = load i64, ptr %i.xw, align 8, !noundef !9 ; 2 uses
  %.not204 = icmp ugt i64 %i.wx, %i.xx
  br i1 %.not204, label %bb.ar, label %bb.as, !prof !5

bb.aq:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.xl, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #13
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ww, i64 noundef %i.wx, i64 noundef %i.xx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #13
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.xy = load ptr, ptr %i.xv, align 8, !nonnull !9, !noundef !9
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.ww
  %i.ya = load i8, ptr %i.xt, align 1, !noundef !9
  %i.yb = zext i8 %i.ya to i32
  %i.yc = load i8, ptr %i.xz, align 1, !noundef !9
  %i.yd = zext i8 %i.yc to i32
  %i.ye = add nuw nsw i32 %i.yd, %i.yb
  %i.yf = mul i32 %i.ye, %i.xj
  %i.yg = add i32 %i.yf, %.sroa.0105.0710         ; 2 uses
  %i.yh = icmp eq i64 %i.xf, 0
  br i1 %i.yh, label %._crit_edge713, label %.lr.ph712
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columntmEB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %5, i64 noundef range(i64 0, 2305843009213693952) %6, i64 noundef range(i64 1, 5) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 4                ; 8 uses
  %i.g = mul i64 %7, %4
  %i.h = lshr i64 %6, 1                           ; 17 uses
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !noundef !9 ; 11 uses
  %i.k = and i64 %3, 4611686018427387888
  %i.l = shl nuw nsw i64 %3, 1                    ; 2 uses
  %.idx = and i64 %i.l, 9223372036854775776       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.n = icmp samesign eq i64 %.idx, 0
  br i1 %i.n, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %bb.b
  %i.o = icmp samesign ult i64 %i.h, %1
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.s = icmp eq i64 %i.h, 0
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br i1 %i.o, label %.lr.ph342.split.us, label %.lr.ph342.split

.lr.ph342.split.us:                               ; preds = %.lr.ph342
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !9 ; 2 uses
  %broadcast.splatinsert107 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat108 = shufflevector <4 x i32> %broadcast.splatinsert107, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, %.lr.ph342.split.us
  %.sroa.011.0340.us = phi i64 [ 0, %.lr.ph342.split.us ], [ %i.w, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 8 uses
  %.sroa.074.0339.us = phi ptr [ %2, %.lr.ph342.split.us ], [ %i.v, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.074.0339.us, i64 32 ; 3 uses
  %i.w = add nuw i64 %.sroa.011.0340.us, 16       ; 7 uses
  %i.x = or disjoint i64 %.sroa.011.0340.us, 15
  %or.cond.not.us = icmp ult i64 %i.x, %i.u
  br i1 %or.cond.not.us, label %bb.d, label %.split.us, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.p, align 8, !nonnull !9, !align !311, !noundef !9
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.sroa.011.0340.us ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.q, ptr noundef nonnull readonly align 2 %i.z, ptr noundef nonnull readonly %i.aa)
  %.sroa.0147.0.copyload.us = load ptr, ptr %i.e, align 8 ; 9 uses
  %.sroa.4149.0.copyload.us = load ptr, ptr %.sroa.4149.0..sroa_idx, align 8 ; 9 uses
  %.sroa.5150.0.copyload.us = load i64, ptr %.sroa.5150.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7151.0.copyload.us = load i64, ptr %.sroa.7151.0..sroa_idx, align 8 ; 7 uses
  %i.ab = icmp ult i64 %.sroa.5150.0.copyload.us, %.sroa.7151.0.copyload.us
  br i1 %i.ab, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.5150.0333.us = phi i64 [ %i.aw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.5150.0333.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %.sroa.5150.0333.us
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %.sroa.5150.0333.us
  %i.ae = add nuw i64 %.sroa.5150.0333.us, 1      ; 2 uses
  %i.af = load i16, ptr %i.ad, align 2, !noundef !9
  %i.ag = zext i16 %i.af to i32
  %i.ah = mul i32 %i.j, %i.ag
  store i32 %i.ah, ptr %i.ac, align 4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %i.ae
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %i.ae
  %i.ak = add nuw i64 %.sroa.5150.0333.us, 2      ; 2 uses
  %i.al = load i16, ptr %i.aj, align 2, !noundef !9
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %i.j, %i.am
  store i32 %i.an, ptr %i.ai, align 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %i.ak
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %i.ak
  %i.aq = add nuw i64 %.sroa.5150.0333.us, 3      ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 2, !noundef !9
  %i.as = zext i16 %i.ar to i32
  %i.at = mul i32 %i.j, %i.as
  store i32 %i.at, ptr %i.ao, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %i.aq
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %i.aq
  %i.aw = add nuw i64 %.sroa.5150.0333.us, 4      ; 2 uses
  %i.ax = load i16, ptr %i.av, align 2, !noundef !9
  %i.ay = zext i16 %i.ax to i32
  %i.az = mul i32 %i.j, %i.ay
  store i32 %i.az, ptr %i.au, align 4
  %exitcond.not.3 = icmp eq i64 %i.aw, %.sroa.7151.0.copyload.us
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !290

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block114, %bb.d
  br i1 %i.s, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us, label %.lr.ph.us

end_hunk_2
begin_hunk_3_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columntmEB6_:bb.a
  %exitcond473.not = icmp eq i64 %.sroa.10.0335.us, %1
  br i1 %exitcond473.not, label %.split347.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10.0335.us ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !9 ; 2 uses
  %.not112.us = icmp ugt i64 %i.w, %i.bj
  br i1 %.not112.us, label %.split350.us, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.bh, align 8, !nonnull !9, !align !311, !noundef !9
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %.sroa.011.0340.us ; 2 uses
  %i.bm = icmp ult i64 %i.bg, %1
  br i1 %i.bm, label %bb.h, label %.split355.us

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !9 ; 2 uses
  %.not113.us = icmp ugt i64 %i.w, %i.bp
  br i1 %.not113.us, label %.split358.us, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.bn, align 8, !nonnull !9, !align !311, !noundef !9
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %.sroa.011.0340.us ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !312
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.q, ptr noundef nonnull readonly align 2 %i.bl, ptr noundef nonnull readonly %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 2 %i.br, ptr noundef nonnull readonly %i.bt), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !312
  %.sroa.0155.0.copyload.us = load ptr, ptr %i.d, align 8 ; 7 uses
  %.sroa.4157.0.copyload.us = load ptr, ptr %.sroa.4157.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5159.0.copyload.us = load i64, ptr %.sroa.5159.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6161.0.copyload.us = load ptr, ptr %.sroa.6161.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7163.0.copyload.us = load i64, ptr %.sroa.7163.0..sroa_idx, align 8 ; 8 uses
  %.sroa.9.0.copyload.us = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 7 uses
  %i.bu = icmp ult i64 %.sroa.7163.0.copyload.us, %.sroa.9.0.copyload.us
  br i1 %i.bu, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.7163.0334.us = phi i64 [ %i.cm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.7163.0334.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %i.bv = add i64 %.sroa.7163.0334.us, %.sroa.5159.0.copyload.us ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.copyload.us, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6161.0.copyload.us, i64 %.sroa.7163.0334.us
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4157.0.copyload.us, i64 %i.bv
  %i.bz = add nuw i64 %.sroa.7163.0334.us, 1      ; 2 uses
  %i.ca = load i32, ptr %i.bw, align 4, !noundef !9
  %i.cb = load i16, ptr %i.by, align 2, !noundef !9
  %i.cc = zext i16 %i.cb to i32
  %i.cd = load i16, ptr %i.bx, align 2, !noundef !9
  %i.ce = zext i16 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.ce, %i.cc
  %i.cg = mul i32 %i.cf, %i.be
  %i.ch = add i32 %i.cg, %i.ca
  store i32 %i.ch, ptr %i.bw, align 4
  %i.ci = add i64 %i.bz, %.sroa.5159.0.copyload.us ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.copyload.us, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6161.0.copyload.us, i64 %i.bz
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4157.0.copyload.us, i64 %i.ci
  %i.cm = add nuw i64 %.sroa.7163.0334.us, 2      ; 2 uses
  %i.cn = load i32, ptr %i.cj, align 4, !noundef !9
  %i.co = load i16, ptr %i.cl, align 2, !noundef !9
  %i.cp = zext i16 %i.co to i32
  %i.cq = load i16, ptr %i.ck, align 2, !noundef !9
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.cr, %i.cp
  %i.ct = mul i32 %i.cs, %i.be
  %i.cu = add i32 %i.ct, %i.cn
  store i32 %i.cu, ptr %i.cj, align 4
  %exitcond472.not.1 = icmp eq i64 %i.cm, %.sroa.9.0.copyload.us
  br i1 %exitcond472.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !295

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us: ; preds = %.lr.ph.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.q, ptr noundef nonnull %.sroa.074.0339.us, ptr noundef nonnull %i.v)
  %.sroa.0167.0.copyload.us = load ptr, ptr %i.c, align 8 ; 7 uses
  %.sroa.4169.0.copyload.us = load ptr, ptr %.sroa.4169.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5171.0.copyload.us = load i64, ptr %.sroa.5171.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7172.0.copyload.us = load i64, ptr %.sroa.7172.0..sroa_idx, align 8 ; 7 uses
  %i.cv = icmp ult i64 %.sroa.5171.0.copyload.us, %.sroa.7172.0.copyload.us
  br i1 %i.cv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.sroa.5171.0338.us = phi i64 [ %i.df, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %.sroa.5171.0338.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0167.0.copyload.us, i64 %.sroa.5171.0338.us
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4169.0.copyload.us, i64 %.sroa.5171.0338.us
  %i.cy = add nuw i64 %.sroa.5171.0338.us, 1      ; 2 uses
  %i.cz = load i32, ptr %i.cw, align 4, !noundef !9
  %i.da = add i32 %i.cz, 16384
  %i.db = lshr i32 %i.da, 15
  %..i.us = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.db, i32 65535)
  %i.dc = trunc nuw i32 %..i.us to i16
  store i16 %i.dc, ptr %i.cx, align 2
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0167.0.copyload.us, i64 %i.cy
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4169.0.copyload.us, i64 %i.cy
  %i.df = add nuw i64 %.sroa.5171.0338.us, 2      ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !noundef !9
  %i.dh = add i32 %i.dg, 16384
  %i.di = lshr i32 %i.dh, 15
  %..i.us.1 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.di, i32 65535)
  %i.dj = trunc nuw i32 %..i.us.1 to i16
  store i16 %i.dj, ptr %i.de, align 2
  %exitcond474.not.1 = icmp eq i64 %i.df, %.sroa.7172.0.copyload.us
  br i1 %exitcond474.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us, !llvm.loop !296

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dk = icmp eq ptr %i.v, %i.m
  br i1 %i.dk, label %._crit_edge343, label %bb.c

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block92, %bb.i
  %i.dl = icmp eq i64 %i.ba, 0
  br i1 %i.dl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us, label %.lr.ph.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0147.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4149.0.copyload.us) ]
  %i.dm = sub nuw i64 %.sroa.7151.0.copyload.us, %.sroa.5150.0.copyload.us ; 3 uses
  %min.iters.check104 = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check104, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.dn = shl i64 %.sroa.5150.0.copyload.us, 2
  %scevgep96 = getelementptr i8, ptr %.sroa.0147.0.copyload.us, i64 %i.dn
  %i.do = shl i64 %.sroa.7151.0.copyload.us, 2
  %scevgep97 = getelementptr i8, ptr %.sroa.0147.0.copyload.us, i64 %i.do
  %i.dp = shl i64 %.sroa.5150.0.copyload.us, 1
  %scevgep98 = getelementptr i8, ptr %.sroa.4149.0.copyload.us, i64 %i.dp
  %i.dq = shl i64 %.sroa.7151.0.copyload.us, 1
  %scevgep99 = getelementptr i8, ptr %.sroa.4149.0.copyload.us, i64 %i.dq
  %bound0100 = icmp ult ptr %scevgep96, %scevgep99
  %bound1101 = icmp ult ptr %scevgep98, %scevgep97
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck95
  %n.vec106 = and i64 %i.dm, -8                   ; 3 uses
  %i.dr = add i64 %.sroa.5150.0.copyload.us, %n.vec106
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next113, %vector.body109 ] ; 2 uses
  %i.ds = add nuw i64 %.sroa.5150.0.copyload.us, %index110 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %i.ds ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %wide.load111 = load <4 x i16>, ptr %i.du, align 2, !alias.scope !314
  %wide.load112 = load <4 x i16>, ptr %i.dv, align 2, !alias.scope !314
  %i.dw = zext <4 x i16> %wide.load111 to <4 x i32>
  %i.dx = zext <4 x i16> %wide.load112 to <4 x i32>
  %i.dy = mul <4 x i32> %broadcast.splat108, %i.dw
  %i.dz = mul <4 x i32> %broadcast.splat108, %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x i32> %i.dy, ptr %i.dt, align 4, !alias.scope !315, !noalias !314
  store <4 x i32> %i.dz, ptr %i.ea, align 4, !alias.scope !315, !noalias !314
  %index.next113 = add nuw i64 %index110, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.eb, label %middle.block114, label %vector.body109, !llvm.loop !300

middle.block114:                                  ; preds = %vector.body109
  %cmp.n115 = icmp eq i64 %i.dm, %n.vec106
  br i1 %cmp.n115, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck95, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block114
  %.sroa.5150.0333.us.ph = phi i64 [ %.sroa.5150.0.copyload.us, %vector.memcheck95 ], [ %.sroa.5150.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.dr, %middle.block114 ] ; 4 uses
  %i.ec = sub i64 %.sroa.7151.0.copyload.us, %.sroa.5150.0333.us.ph
  %xtraiter = and i64 %i.ec, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.5150.0333.us.prol = phi i64 [ %i.ef, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.5150.0333.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %.sroa.5150.0333.us.prol
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %.sroa.5150.0333.us.prol
  %i.ef = add nuw i64 %.sroa.5150.0333.us.prol, 1 ; 2 uses
  %i.eg = load i16, ptr %i.ee, align 2, !noundef !9
  %i.eh = zext i16 %i.eg to i32
  %i.ei = mul i32 %i.j, %i.eh
  store i32 %i.ei, ptr %i.ed, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !301

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5150.0333.us.unr = phi i64 [ %.sroa.5150.0333.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.ef, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.ej = sub i64 %.sroa.5150.0333.us.ph, %.sroa.7151.0.copyload.us
  %i.ek = icmp ugt i64 %i.ej, -4
  br i1 %i.ek, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0155.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4157.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6161.0.copyload.us) ]
  %i.el = sub nuw i64 %.sroa.9.0.copyload.us, %.sroa.7163.0.copyload.us ; 3 uses
  %min.iters.check80 = icmp ult i64 %i.el, 8
  br i1 %min.iters.check80, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck66

vector.memcheck66:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.em = add i64 %.sroa.7163.0.copyload.us, %.sroa.5159.0.copyload.us ; 2 uses
  %i.en = shl i64 %i.em, 2
  %scevgep67 = getelementptr i8, ptr %.sroa.0155.0.copyload.us, i64 %i.en ; 2 uses
  %i.eo = add i64 %.sroa.9.0.copyload.us, %.sroa.5159.0.copyload.us ; 2 uses
  %i.ep = shl i64 %i.eo, 2
  %scevgep68 = getelementptr i8, ptr %.sroa.0155.0.copyload.us, i64 %i.ep ; 2 uses
  %i.eq = shl i64 %i.em, 1
  %scevgep69 = getelementptr i8, ptr %.sroa.4157.0.copyload.us, i64 %i.eq
  %i.er = shl i64 %i.eo, 1
  %scevgep70 = getelementptr i8, ptr %.sroa.4157.0.copyload.us, i64 %i.er
  %i.es = shl i64 %.sroa.7163.0.copyload.us, 1
  %scevgep71 = getelementptr i8, ptr %.sroa.6161.0.copyload.us, i64 %i.es
  %i.et = shl i64 %.sroa.9.0.copyload.us, 1
  %scevgep72 = getelementptr i8, ptr %.sroa.6161.0.copyload.us, i64 %i.et
  %bound073 = icmp ult ptr %scevgep67, %scevgep70
  %bound174 = icmp ult ptr %scevgep69, %scevgep68
  %found.conflict75 = and i1 %bound073, %bound174
  %bound076 = icmp ult ptr %scevgep67, %scevgep72
  %bound177 = icmp ult ptr %scevgep71, %scevgep68
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx = or i1 %found.conflict75, %found.conflict78
  br i1 %conflict.rdx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %vector.memcheck66
  %n.vec82 = and i64 %i.el, -8                    ; 3 uses
  %i.eu = add i64 %.sroa.7163.0.copyload.us, %n.vec82
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph81
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next91, %vector.body83 ] ; 2 uses
  %i.ev = add nuw i64 %.sroa.7163.0.copyload.us, %index84 ; 2 uses
  %i.ew = add i64 %i.ev, %.sroa.5159.0.copyload.us ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.copyload.us, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6161.0.copyload.us, i64 %i.ev ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4157.0.copyload.us, i64 %i.ew ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load85 = load <4 x i32>, ptr %i.ex, align 4, !alias.scope !316, !noalias !317
  %wide.load86 = load <4 x i32>, ptr %i.fa, align 4, !alias.scope !316, !noalias !317
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %wide.load87 = load <4 x i16>, ptr %i.ez, align 2, !alias.scope !318
  %wide.load88 = load <4 x i16>, ptr %i.fb, align 2, !alias.scope !318
  %i.fc = zext <4 x i16> %wide.load87 to <4 x i32>
  %i.fd = zext <4 x i16> %wide.load88 to <4 x i32>
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %wide.load89 = load <4 x i16>, ptr %i.ey, align 2, !alias.scope !319
  %wide.load90 = load <4 x i16>, ptr %i.fe, align 2, !alias.scope !319
  %i.ff = zext <4 x i16> %wide.load89 to <4 x i32>
  %i.fg = zext <4 x i16> %wide.load90 to <4 x i32>
  %i.fh = add nuw nsw <4 x i32> %i.ff, %i.fc
  %i.fi = add nuw nsw <4 x i32> %i.fg, %i.fd
  %i.fj = mul <4 x i32> %i.fh, %broadcast.splat
  %i.fk = mul <4 x i32> %i.fi, %broadcast.splat
  %i.fl = add <4 x i32> %i.fj, %wide.load85
  %i.fm = add <4 x i32> %i.fk, %wide.load86
  store <4 x i32> %i.fl, ptr %i.ex, align 4, !alias.scope !316, !noalias !317
  store <4 x i32> %i.fm, ptr %i.fa, align 4, !alias.scope !316, !noalias !317
  %index.next91 = add nuw i64 %index84, 8         ; 2 uses
  %i.fn = icmp eq i64 %index.next91, %n.vec82
  br i1 %i.fn, label %middle.block92, label %vector.body83, !llvm.loop !306

middle.block92:                                   ; preds = %vector.body83
  %cmp.n93 = icmp eq i64 %i.el, %n.vec82
  br i1 %cmp.n93, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck66, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block92
  %.sroa.7163.0334.us.ph = phi i64 [ %.sroa.7163.0.copyload.us, %vector.memcheck66 ], [ %.sroa.7163.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.eu, %middle.block92 ] ; 6 uses
  %i.fo = sub i64 %.sroa.9.0.copyload.us, %.sroa.7163.0334.us.ph
  %.neg = add i64 %.sroa.7163.0334.us.ph, 1
  %xtraiter178 = and i64 %i.fo, 1
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.fp = add i64 %.sroa.7163.0334.us.ph, %.sroa.5159.0.copyload.us ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.copyload.us, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6161.0.copyload.us, i64 %.sroa.7163.0334.us.ph
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4157.0.copyload.us, i64 %i.fp
  %i.ft = add nuw i64 %.sroa.7163.0334.us.ph, 1
  %i.fu = load i32, ptr %i.fq, align 4, !noundef !9
  %i.fv = load i16, ptr %i.fs, align 2, !noundef !9
  %i.fw = zext i16 %i.fv to i32
  %i.fx = load i16, ptr %i.fr, align 2, !noundef !9
  %i.fy = zext i16 %i.fx to i32
  %i.fz = add nuw nsw i32 %i.fy, %i.fw
  %i.ga = mul i32 %i.fz, %i.be
  %i.gb = add i32 %i.ga, %i.fu
  store i32 %i.gb, ptr %i.fq, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.7163.0334.us.unr = phi i64 [ %.sroa.7163.0334.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.ft, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.gc = icmp eq i64 %.sroa.9.0.copyload.us, %.neg
  br i1 %i.gc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0167.0.copyload.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4169.0.copyload.us) ]
  %i.gd = sub nuw i64 %.sroa.7172.0.copyload.us, %.sroa.5171.0.copyload.us ; 3 uses
  %min.iters.check = icmp ult i64 %i.gd, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.ge = shl i64 %.sroa.5171.0.copyload.us, 1
  %scevgep = getelementptr i8, ptr %.sroa.4169.0.copyload.us, i64 %i.ge
  %i.gf = shl i64 %.sroa.7172.0.copyload.us, 1
  %scevgep62 = getelementptr i8, ptr %.sroa.4169.0.copyload.us, i64 %i.gf
  %i.gg = shl i64 %.sroa.5171.0.copyload.us, 2
  %scevgep63 = getelementptr i8, ptr %.sroa.0167.0.copyload.us, i64 %i.gg
  %i.gh = shl i64 %.sroa.7172.0.copyload.us, 2
  %scevgep64 = getelementptr i8, ptr %.sroa.0167.0.copyload.us, i64 %i.gh
  %bound0 = icmp ult ptr %scevgep, %scevgep64
  %bound1 = icmp ult ptr %scevgep63, %scevgep62
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gd, -8                      ; 3 uses
  %i.gi = add i64 %.sroa.5171.0.copyload.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gj = add nuw i64 %.sroa.5171.0.copyload.us, %index ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0167.0.copyload.us, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4169.0.copyload.us, i64 %i.gj ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load = load <4 x i32>, ptr %i.gk, align 4, !alias.scope !320
  %wide.load65 = load <4 x i32>, ptr %i.gm, align 4, !alias.scope !320
  %i.gn = add <4 x i32> %wide.load, splat (i32 16384)
  %i.go = add <4 x i32> %wide.load65, splat (i32 16384)
  %i.gp = lshr <4 x i32> %i.gn, splat (i32 15)
  %i.gq = lshr <4 x i32> %i.go, splat (i32 15)
  %i.gr = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gp, <4 x i32> splat (i32 65535))
  %i.gs = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gq, <4 x i32> splat (i32 65535))
  %i.gt = trunc nuw <4 x i32> %i.gr to <4 x i16>
  %i.gu = trunc nuw <4 x i32> %i.gs to <4 x i16>
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store <4 x i16> %i.gt, ptr %i.gl, align 2, !alias.scope !321, !noalias !320
  store <4 x i16> %i.gu, ptr %i.gv, align 2, !alias.scope !321, !noalias !320
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gd, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block
  %.sroa.5171.0338.us.ph = phi i64 [ %.sroa.5171.0.copyload.us, %vector.memcheck ], [ %.sroa.5171.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.gi, %middle.block ] ; 6 uses
  %i.gx = sub i64 %.sroa.7172.0.copyload.us, %.sroa.5171.0338.us.ph
  %.neg187 = add i64 %.sroa.5171.0338.us.ph, 1
  %xtraiter181 = and i64 %i.gx, 1
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0167.0.copyload.us, i64 %.sroa.5171.0338.us.ph
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4169.0.copyload.us, i64 %.sroa.5171.0338.us.ph
  %i.ha = add nuw i64 %.sroa.5171.0338.us.ph, 1
  %i.hb = load i32, ptr %i.gy, align 4, !noundef !9
  %i.hc = add i32 %i.hb, 16384
  %i.hd = lshr i32 %i.hc, 15
  %..i.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.hd, i32 65535)
  %i.he = trunc nuw i32 %..i.us.prol to i16
  store i16 %i.he, ptr %i.gz, align 2
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5171.0338.us.unr = phi i64 [ %.sroa.5171.0338.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.ha, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.hf = icmp eq i64 %.sroa.7172.0.copyload.us, %.neg187
  br i1 %i.hf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #13
  unreachable

.lr.ph342.split:                                  ; preds = %.lr.ph342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #13
  unreachable

.split.us:                                        ; preds = %bb.c
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.0340.us, i64 noundef %i.w, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #13
  unreachable

.split347.us:                                     ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #13
  unreachable

.split350.us:                                     ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.0340.us, i64 noundef %i.w, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13
  unreachable

.split355.us:                                     ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #13
  unreachable

.split358.us:                                     ; preds = %bb.h
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.0340.us, i64 noundef %i.w, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13
  unreachable

._crit_edge343:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, %bb.b
  %.sroa.011.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.w, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.k ; 3 uses
  %i.hh = and i64 %3, 12
  %.idx399 = and i64 %i.l, 24                     ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx399
  %i.hj = icmp samesign eq i64 %.idx399, 0
  br i1 %i.hj, label %._crit_edge382, label %.lr.ph381

.lr.ph381:                                        ; preds = %._crit_edge343
  %i.hk = icmp samesign ult i64 %i.h, %1
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.hn = icmp eq i64 %i.h, 0
  br i1 %i.hk, label %.lr.ph381.split, label %bb.l

.lr.ph381.split:                                  ; preds = %.lr.ph381
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !noundef !9 ; 2 uses
  %i.hq = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.hr = shufflevector <4 x i32> %i.hq, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph381.split, %._crit_edge
  %.sroa.011.1379 = phi i64 [ %.sroa.011.0.lcssa, %.lr.ph381.split ], [ %i.ht, %._crit_edge ] ; 8 uses
  %.sroa.082.0378 = phi ptr [ %i.hg, %.lr.ph381.split ], [ %i.hs, %._crit_edge ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.082.0378, i64 8 ; 2 uses
  %i.ht = add i64 %.sroa.011.1379, 4              ; 7 uses
  %i.hu = or disjoint i64 %.sroa.011.1379, 3
  %or.cond124.not = icmp ult i64 %i.hu, %i.hp
  br i1 %or.cond124.not, label %bb.m, label %bb.n, !prof !11

bb.l:                                             ; preds = %.lr.ph381
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.hv = load ptr, ptr %i.hl, align 8, !nonnull !9, !align !311, !noundef !9
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %.sroa.011.1379
  %i.hx = load <4 x i16>, ptr %i.hw, align 2
  %i.hy = zext <4 x i16> %i.hx to <4 x i32>
  %i.hz = mul <4 x i32> %i.hr, %i.hy              ; 2 uses
  br i1 %i.hn, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.1379, i64 noundef %i.ht, i64 noundef %i.hp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #13
  unreachable

.lr.ph:                                           ; preds = %bb.m, %bb.v
  %.sroa.0180.0365 = phi ptr [ %i.id, %bb.v ], [ %5, %bb.m ] ; 3 uses
  %.sroa.7182.0364 = phi i64 [ %i.ib, %bb.v ], [ %i.h, %bb.m ]
  %.sroa.10183.0363 = phi i64 [ %i.ie, %bb.v ], [ 0, %bb.m ] ; 4 uses
  %i.ia = phi <4 x i32> [ %i.jh, %bb.v ], [ %i.hz, %bb.m ] ; 2 uses
  %i.ib = add nsw i64 %.sroa.7182.0364, -1        ; 2 uses
  %i.ic = icmp eq ptr %.sroa.0180.0365, %i.hm
  br i1 %i.ic, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0180.0365, i64 4
  %i.ie = add nuw nsw i64 %.sroa.10183.0363, 1
  %i.if = load i32, ptr %.sroa.0180.0365, align 4, !noundef !9
  %i.ig = xor i64 %.sroa.10183.0363, -1
  %i.ih = add nsw i64 %6, %i.ig                   ; 3 uses
  %exitcond475.not = icmp eq i64 %.sroa.10183.0363, %1
  br i1 %exitcond475.not, label %bb.q, label %bb.p

._crit_edge:                                      ; preds = %.lr.ph, %bb.v, %bb.m
  %i.ii = phi <4 x i32> [ %i.hz, %bb.m ], [ %i.jh, %bb.v ], [ %i.ia, %.lr.ph ]
  %i.ij = add <4 x i32> %i.ii, splat (i32 16384)
  %i.ik = lshr <4 x i32> %i.ij, splat (i32 15)
  %i.il = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ik, <4 x i32> splat (i32 65535))
  %i.im = trunc nuw <4 x i32> %i.il to <4 x i16>
  store <4 x i16> %i.im, ptr %.sroa.082.0378, align 2
  %i.in = icmp eq ptr %i.hs, %i.hi
  br i1 %i.in, label %._crit_edge382, label %bb.k

bb.p:                                             ; preds = %bb.o
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10183.0363 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !noundef !9 ; 2 uses
  %.not117 = icmp ugt i64 %i.ht, %i.iq
  br i1 %.not117, label %bb.s, label %bb.r, !prof !5

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #13
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ir = load ptr, ptr %i.io, align 8, !nonnull !9, !align !311, !noundef !9
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %.sroa.011.1379
  %i.it = icmp ult i64 %i.ih, %1
  br i1 %i.it, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.1379, i64 noundef %i.ht, i64 noundef %i.iq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ih ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !noundef !9 ; 2 uses
  %.not118 = icmp ugt i64 %i.ht, %i.iw
  br i1 %.not118, label %bb.w, label %bb.v, !prof !5

bb.u:                                             ; preds = %bb.r
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ih, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ix = load ptr, ptr %i.iu, align 8, !nonnull !9, !align !311, !noundef !9
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %.sroa.011.1379
  %i.iz = load <4 x i16>, ptr %i.is, align 2
  %i.ja = zext <4 x i16> %i.iz to <4 x i32>
  %i.jb = load <4 x i16>, ptr %i.iy, align 2
  %i.jc = zext <4 x i16> %i.jb to <4 x i32>
  %i.jd = add nuw nsw <4 x i32> %i.jc, %i.ja
  %i.je = insertelement <4 x i32> poison, i32 %i.if, i64 0
  %i.jf = shufflevector <4 x i32> %i.je, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jg = mul <4 x i32> %i.jd, %i.jf
  %i.jh = add <4 x i32> %i.jg, %i.ia              ; 2 uses
  %i.ji = icmp eq i64 %i.ib, 0
  br i1 %i.ji, label %._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.011.1379, i64 noundef %i.ht, i64 noundef %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #13
  unreachable

._crit_edge382:                                   ; preds = %._crit_edge, %._crit_edge343
  %.sroa.011.1.lcssa = phi i64 [ %.sroa.011.0.lcssa, %._crit_edge343 ], [ %i.ht, %._crit_edge ]
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.hh ; 2 uses
  %i.jk = and i64 %3, 3
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %i.jk
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.jj, ptr noundef nonnull %i.jl, i64 noundef %.sroa.011.1.lcssa, i64 noundef %i.g)
  %.sroa.0188.0.copyload = load ptr, ptr %i.b, align 8 ; 5 uses
  %.sroa.4190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4190.0.copyload = load i64, ptr %.sroa.4190.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5192.0.copyload = load i64, ptr %.sroa.5192.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7193.0.copyload = load i64, ptr %.sroa.7193.0..sroa_idx, align 8 ; 4 uses
  %i.jm = icmp ult i64 %.sroa.5192.0.copyload, %.sroa.7193.0.copyload
  br i1 %i.jm, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph: ; preds = %._crit_edge382
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0188.0.copyload) ]
  %i.jn = icmp samesign ult i64 %i.h, %1
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  br i1 %i.jn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split, label %bb.y

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  %i.jq = icmp eq i64 %i.h, 0
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !noundef !9 ; 6 uses
  br i1 %i.jq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split
  %i.jt = sub i64 %.sroa.7193.0.copyload, %.sroa.5192.0.copyload
  %i.ju = freeze i64 %i.jt                        ; 2 uses
  %xtraiter184 = and i64 %i.ju, 1
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.jv = add nuw i64 %.sroa.5192.0.copyload, %.sroa.4190.0.copyload ; 4 uses
  %or.cond125.not.us.prol = icmp ult i64 %i.jv, %i.js
  br i1 %or.cond125.not.us.prol, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa, label %.split, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0188.0.copyload, i64 %.sroa.5192.0.copyload
  %i.jx = add i64 %.sroa.5192.0.copyload, 1
  %i.jy = load ptr, ptr %i.jo, align 8, !nonnull !9, !align !311, !noundef !9
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jy, i64 %i.jv
  %i.ka = load i16, ptr %i.jz, align 2, !noundef !9
  %i.kb = zext i16 %i.ka to i32
  %i.kc = mul i32 %i.j, %i.kb
  %i.kd = add i32 %i.kc, 16384
  %i.ke = lshr i32 %i.kd, 15
  %..i146.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.ke, i32 65535)
  %i.kf = trunc nuw i32 %..i146.us.prol to i16
  store i16 %i.kf, ptr %i.jw, align 2
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5192.0394.us.unr = phi i64 [ %.sroa.5192.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.jx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit.unr-lcssa ]
  %i.kg = icmp eq i64 %i.ju, 1
  br i1 %i.kg, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.split
  %i.kh = add i64 %.sroa.5192.0.copyload, %.sroa.4190.0.copyload
  %umax = call i64 @llvm.umax.i64(i64 %i.js, i64 %i.kh)
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %bb.x
  %.sroa.5192.0394.us = phi i64 [ %i.kv, %bb.x ], [ %.sroa.5192.0394.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit ] ; 4 uses
  %i.ki = add nuw i64 %.sroa.5192.0394.us, %.sroa.4190.0.copyload ; 4 uses
  %or.cond125.not.us = icmp ult i64 %i.ki, %i.js
  br i1 %or.cond125.not.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1, label %.split, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0188.0.copyload, i64 %.sroa.5192.0394.us
  %i.kk = add i64 %.sroa.5192.0394.us, 1          ; 2 uses
  %i.kl = load ptr, ptr %i.jo, align 8, !nonnull !9, !align !311, !noundef !9 ; 2 uses
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %i.ki
  %i.kn = load i16, ptr %i.km, align 2, !noundef !9
  %i.ko = zext i16 %i.kn to i32
  %i.kp = mul i32 %i.j, %i.ko
  %i.kq = add i32 %i.kp, 16384
  %i.kr = lshr i32 %i.kq, 15
  %..i146.us = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.kr, i32 65535)
  %i.ks = trunc nuw i32 %..i146.us to i16
  store i16 %i.ks, ptr %i.kj, align 2
  %i.kt = add nuw i64 %i.kk, %.sroa.4190.0.copyload ; 4 uses
  %or.cond125.not.us.1 = icmp ult i64 %i.kt, %i.js
  br i1 %or.cond125.not.us.1, label %bb.x, label %.split, !prof !11

bb.x:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0188.0.copyload, i64 %i.kk
  %i.kv = add i64 %.sroa.5192.0394.us, 2          ; 2 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %i.kt
  %i.kx = load i16, ptr %i.kw, align 2, !noundef !9
  %i.ky = zext i16 %i.kx to i32
  %i.kz = mul i32 %i.j, %i.ky
  %i.la = add i32 %i.kz, 16384
  %i.lb = lshr i32 %i.la, 15
  %..i146.us.1 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.lb, i32 65535)
  %i.lc = trunc nuw i32 %..i146.us.1 to i16
  store i16 %i.lc, ptr %i.ku, align 2
  %exitcond478.not.1 = icmp eq i64 %i.kv, %.sroa.7193.0.copyload
  br i1 %exitcond478.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader, %._crit_edge390
  %.sroa.5192.0394 = phi i64 [ %i.ld, %._crit_edge390 ], [ %.sroa.5192.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.preheader ] ; 3 uses
  %i.ld = add i64 %.sroa.5192.0394, 1             ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0188.0.copyload, i64 %.sroa.5192.0394
  %i.lf = add nuw i64 %.sroa.5192.0394, %.sroa.4190.0.copyload ; 8 uses
  %i.lg = add i64 %i.lf, 1                        ; 4 uses
  %or.cond125.not = icmp ult i64 %i.lf, %i.js
  br i1 %or.cond125.not, label %.lr.ph389, label %.split, !prof !11

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %._crit_edge390, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %bb.x, %._crit_edge382
  ret void

bb.y:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #13
  unreachable

.split:                                           ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us
  %.us-phi396.in = phi i64 [ %i.kt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.jv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %i.ki, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %umax, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit ]
  %.us-phi397 = phi i64 [ %i.kt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.1 ], [ %i.jv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %i.ki, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us ], [ %i.lf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit ]
  %.us-phi396 = add i64 %.us-phi396.in, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi397, i64 noundef %.us-phi396, i64 noundef %i.js, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #13
  unreachable

.lr.ph389:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit
  %i.lh = load ptr, ptr %i.jo, align 8, !nonnull !9, !align !311, !noundef !9
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.lf
  %i.lj = load i16, ptr %i.li, align 2, !noundef !9
  %i.lk = zext i16 %i.lj to i32
  %i.ll = mul i32 %i.j, %i.lk
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph389, %bb.ai
  %.sroa.062.0387 = phi i32 [ %i.ll, %.lr.ph389 ], [ %i.mn, %bb.ai ] ; 2 uses
  %.sroa.10197.0386 = phi i64 [ 0, %.lr.ph389 ], [ %i.lp, %bb.ai ] ; 4 uses
  %.sroa.7196.0385 = phi i64 [ %i.h, %.lr.ph389 ], [ %i.lm, %bb.ai ]
  %.sroa.0194.0384 = phi ptr [ %5, %.lr.ph389 ], [ %i.lo, %bb.ai ] ; 3 uses
  %i.lm = add nsw i64 %.sroa.7196.0385, -1        ; 2 uses
  %i.ln = icmp eq ptr %.sroa.0194.0384, %i.jp
  br i1 %i.ln, label %._crit_edge390, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0194.0384, i64 4
  %i.lp = add nuw nsw i64 %.sroa.10197.0386, 1
  %i.lq = load i32, ptr %.sroa.0194.0384, align 4, !noundef !9
  %i.lr = xor i64 %.sroa.10197.0386, -1
  %i.ls = add nsw i64 %6, %i.lr                   ; 3 uses
  %exitcond476.not = icmp eq i64 %.sroa.10197.0386, %1
  br i1 %exitcond476.not, label %bb.ac, label %bb.ab

._crit_edge390:                                   ; preds = %bb.z, %bb.ai
  %.sroa.062.0.lcssa = phi i32 [ %i.mn, %bb.ai ], [ %.sroa.062.0387, %bb.z ]
  %i.lt = add i32 %.sroa.062.0.lcssa, 16384
  %i.lu = lshr i32 %i.lt, 15
  %..i146 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.lu, i32 65535)
  %i.lv = trunc nuw i32 %..i146 to i16
  store i16 %i.lv, ptr %i.le, align 2
  %exitcond477.not = icmp eq i64 %i.ld, %.sroa.7193.0.copyload
  br i1 %exitcond477.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtNtNtBb_3ops5range5RangejEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit

bb.ab:                                            ; preds = %bb.aa
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10197.0386 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !noundef !9 ; 2 uses
  %.not122 = icmp ugt i64 %i.lg, %i.ly
  br i1 %.not122, label %bb.ad, label %bb.ae, !prof !5

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #13
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.lf, i64 noundef %i.lg, i64 noundef %i.ly, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #13
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.lz = load ptr, ptr %i.lw, align 8, !nonnull !9, !align !311, !noundef !9
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.lf
  %i.mb = icmp ult i64 %i.ls, %1
  br i1 %i.mb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ls ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load i64, ptr %i.md, align 8, !noundef !9 ; 2 uses
  %.not123 = icmp ugt i64 %i.lg, %i.me
  br i1 %.not123, label %bb.ah, label %bb.ai, !prof !5

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ls, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #13
  unreachable

bb.ah:                                            ; preds = %bb.af
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.lf, i64 noundef %i.lg, i64 noundef %i.me, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #13
  unreachable

bb.ai:                                            ; preds = %bb.af
  %i.mf = load ptr, ptr %i.mc, align 8, !nonnull !9, !align !311, !noundef !9
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.mf, i64 %i.lf
  %i.mh = load i16, ptr %i.ma, align 2, !noundef !9
  %i.mi = zext i16 %i.mh to i32
  %i.mj = load i16, ptr %i.mg, align 2, !noundef !9
  %i.mk = zext i16 %i.mj to i32
  %i.ml = add nuw nsw i32 %i.mk, %i.mi
  %i.mm = mul i32 %i.ml, %i.lq
  %i.mn = add i32 %i.mm, %.sroa.062.0387          ; 2 uses
  %i.mo = icmp eq i64 %i.lm, 0
  br i1 %i.mo, label %._crit_edge390, label %bb.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d24prepare_symmetric_kernelfEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !326
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !326
  %i.c = load i64, ptr %i.a, align 8, !range !14, !noalias !326, !noundef !9
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !15, !noalias !326, !noundef !9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !326
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #14, !noalias !326
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !326, !nonnull !9, !noundef !9 ; 2 uses
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !326
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !325, !noalias !327
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !325, !noalias !327
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8, !alias.scope !325, !noalias !327
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.preheader, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i
  %i.m = shl nuw nsw i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull readonly align 4 %1, i64 %i.m, i1 false), !noalias !325
  store i64 %2, ptr %i.l, align 8, !alias.scope !325, !noalias !327
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.preheader

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.preheader: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i, %bb.c
  br label %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit

_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs_NvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.preheader, %bb.i
  %i.n = load i64, ptr %i.l, align 8, !noundef !9 ; 3 uses
  %i.o = icmp ult i64 %i.n, 2305843009213693952
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ugt i64 %i.n, 2
  br i1 %i.p, label %bb.f, label %bb.d

end_hunk_3
