Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.00?download=true
inline.NumInlined: 1965
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnffEB6_:bb.a
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

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block98, %bb.i
  %i.df = icmp eq i64 %i.aw, 0
  br i1 %i.df, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us, label %.lr.ph.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.d
  %.sroa.4144.0.copyload.us106 = ptrtoaddr ptr %.sroa.4144.0.copyload.us to i64
  %.sroa.0142.0.copyload.us105 = ptrtoaddr ptr %.sroa.0142.0.copyload.us to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0142.0.copyload.us), "nonnull"(ptr %.sroa.4144.0.copyload.us) ]
  %i.dg = sub nuw i64 %.sroa.7146.0.copyload.us, %.sroa.5145.0.copyload.us ; 3 uses
  %min.iters.check108 = icmp ult i64 %i.dg, 8
  %i.dh = sub i64 %.sroa.4144.0.copyload.us106, %.sroa.0142.0.copyload.us105
  %diff.check110 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check108, i1 true, i1 %diff.check110
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph111

vector.ph111:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %n.vec112 = and i64 %i.dg, -8                   ; 3 uses
  %i.di = add i64 %.sroa.5145.0.copyload.us, %n.vec112
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph111
  %index116 = phi i64 [ 0, %vector.ph111 ], [ %index.next119, %vector.body115 ] ; 2 uses
  %i.dj = add nuw i64 %.sroa.5145.0.copyload.us, %index116 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0142.0.copyload.us, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4144.0.copyload.us, i64 %i.dj ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load117 = load <4 x float>, ptr %i.dl, align 4
  %wide.load118 = load <4 x float>, ptr %i.dm, align 4
  %i.dn = fmul <4 x float> %broadcast.splat114, %wide.load117
  %i.do = fmul <4 x float> %broadcast.splat114, %wide.load118
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x float> %i.dn, ptr %i.dk, align 4
  store <4 x float> %i.do, ptr %i.dp, align 4
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.dq, label %middle.block120, label %vector.body115, !llvm.loop !181

middle.block120:                                  ; preds = %vector.body115
  %cmp.n121 = icmp eq i64 %i.dg, %n.vec112
  br i1 %cmp.n121, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block120
  %.sroa.5145.0328.us.ph = phi i64 [ %.sroa.5145.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.di, %middle.block120 ] ; 4 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0150.0.copyload.us), "nonnull"(ptr %.sroa.4152.0.copyload.us), "nonnull"(ptr %.sroa.6156.0.copyload.us) ]
  %i.dz = sub nuw i64 %.sroa.9.0.copyload.us, %.sroa.7158.0.copyload.us ; 3 uses
  %min.iters.check82 = icmp ult i64 %i.dz, 8
  br i1 %min.iters.check82, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck83

vector.memcheck83:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.ea = add i64 %.sroa.5154.0.copyload.us, %.sroa.7158.0.copyload.us
  %i.eb = shl i64 %i.ea, 2                        ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.0150.0.copyload.us, i64 %i.eb ; 2 uses
  %i.ed = add i64 %.sroa.5154.0.copyload.us, %.sroa.9.0.copyload.us
  %i.ee = shl i64 %i.ed, 2                        ; 2 uses
  %i.ef = getelementptr i8, ptr %.sroa.0150.0.copyload.us, i64 %i.ee ; 2 uses
  %i.eg = getelementptr i8, ptr %.sroa.4152.0.copyload.us, i64 %i.eb
  %i.eh = getelementptr i8, ptr %.sroa.4152.0.copyload.us, i64 %i.ee
  %bound0 = icmp ult ptr %i.ec, %i.eh
  %bound1 = icmp ult ptr %i.eg, %i.ef
  %found.conflict = and i1 %bound0, %bound1
  %8 = shl i64 %.sroa.7158.0.copyload.us, 2
  %9 = getelementptr i8, ptr %.sroa.6156.0.copyload.us, i64 %8
  %10 = shl i64 %.sroa.9.0.copyload.us, 2
  %11 = getelementptr i8, ptr %.sroa.6156.0.copyload.us, i64 %10
  %bound084 = icmp ult ptr %i.ec, %11
  %bound185 = icmp ult ptr %9, %i.ef
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict, %found.conflict86
  br i1 %conflict.rdx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck83
  %n.vec88 = and i64 %i.dz, -8                    ; 3 uses
  %i.ei = add i64 %.sroa.7158.0.copyload.us, %n.vec88
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next97, %vector.body89 ] ; 2 uses
  %i.ej = add nuw i64 %.sroa.7158.0.copyload.us, %index90 ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.5154.0.copyload.us ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0.copyload.us, i64 %i.ek ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6156.0.copyload.us, i64 %i.ej ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4152.0.copyload.us, i64 %i.ek ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %wide.load91 = load <4 x float>, ptr %i.el, align 4, !alias.scope !193, !noalias !194
  %wide.load92 = load <4 x float>, ptr %i.eo, align 4, !alias.scope !193, !noalias !194
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load93 = load <4 x float>, ptr %i.en, align 4, !alias.scope !195
  %wide.load94 = load <4 x float>, ptr %i.ep, align 4, !alias.scope !195
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load95 = load <4 x float>, ptr %i.em, align 4, !alias.scope !196
  %wide.load96 = load <4 x float>, ptr %i.eq, align 4, !alias.scope !196
  %i.er = fadd <4 x float> %wide.load93, %wide.load95
  %i.es = fadd <4 x float> %wide.load94, %wide.load96
  %i.et = fmul <4 x float> %broadcast.splat, %i.er
  %i.eu = fmul <4 x float> %broadcast.splat, %i.es
  %i.ev = fadd <4 x float> %wide.load91, %i.et
  %i.ew = fadd <4 x float> %wide.load92, %i.eu
  store <4 x float> %i.ev, ptr %i.el, align 4, !alias.scope !193, !noalias !194
  store <4 x float> %i.ew, ptr %i.eo, align 4, !alias.scope !193, !noalias !194
  %index.next97 = add nuw i64 %index90, 8         ; 2 uses
  %i.ex = icmp eq i64 %index.next97, %n.vec88
  br i1 %i.ex, label %middle.block98, label %vector.body89, !llvm.loop !187

middle.block98:                                   ; preds = %vector.body89
  %cmp.n99 = icmp eq i64 %i.dz, %n.vec88
  br i1 %cmp.n99, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck83, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block98
  %.sroa.7158.0329.us.ph = phi i64 [ %.sroa.7158.0.copyload.us, %vector.memcheck83 ], [ %.sroa.7158.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.ei, %middle.block98 ] ; 6 uses
  %i.ey = sub i64 %.sroa.9.0.copyload.us, %.sroa.7158.0329.us.ph
  %.neg = add i64 %.sroa.7158.0329.us.ph, 1
  %xtraiter190 = and i64 %i.ey, 1
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.ez = add i64 %.sroa.7158.0329.us.ph, %.sroa.5154.0.copyload.us ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0150.0.copyload.us, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6156.0.copyload.us, i64 %.sroa.7158.0329.us.ph
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4152.0.copyload.us, i64 %i.ez
  %i.fd = add nuw i64 %.sroa.7158.0329.us.ph, 1
  %i.fe = load float, ptr %i.fa, align 4, !noundef !9
  %i.ff = load float, ptr %i.fc, align 4, !noundef !9
  %i.fg = load float, ptr %i.fb, align 4, !noundef !9
  %i.fh = fadd float %i.ff, %i.fg
  %i.fi = fmul float %i.ba, %i.fh
  %i.fj = fadd float %i.fe, %i.fi
  store float %i.fj, ptr %i.fa, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.7158.0329.us.unr = phi i64 [ %.sroa.7158.0329.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.fd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.fk = icmp eq i64 %.sroa.9.0.copyload.us, %.neg
  br i1 %i.fk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutfEINtB13_4IterfEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us
  %.sroa.4164.0.copyload.us69 = ptrtoaddr ptr %.sroa.4164.0.copyload.us to i64
  %.sroa.0162.0.copyload.us70 = ptrtoaddr ptr %.sroa.0162.0.copyload.us to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0162.0.copyload.us), "nonnull"(ptr %.sroa.4164.0.copyload.us) ]
  %i.fl = sub nuw i64 %.sroa.7167.0.copyload.us, %.sroa.5166.0.copyload.us ; 3 uses
  %min.iters.check = icmp ult i64 %i.fl, 8
  %i.fm = sub i64 %.sroa.0162.0.copyload.us70, %.sroa.4164.0.copyload.us69
  %diff.check = icmp ugt i64 %i.fm, -32
  %or.cond123 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond123, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %n.vec = and i64 %i.fl, -8                      ; 3 uses
  %i.fn = add i64 %.sroa.5166.0.copyload.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fo = add nuw i64 %.sroa.5166.0.copyload.us, %index ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0162.0.copyload.us, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4164.0.copyload.us, i64 %i.fo ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <4 x float>, ptr %i.fp, align 4
  %wide.load71 = load <4 x float>, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <4 x float> %wide.load, ptr %i.fq, align 4
  store <4 x float> %wide.load71, ptr %i.fs, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fl, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block
  %.sroa.5166.0333.us.ph = phi i64 [ %.sroa.5166.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.fn, %middle.block ] ; 4 uses
  %i.fu = sub i64 %.sroa.7167.0.copyload.us, %.sroa.5166.0333.us.ph
  %xtraiter193 = and i64 %i.fu, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.5166.0333.us.prol = phi i64 [ %i.fx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.5166.0333.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 3 uses
  %prol.iter195 = phi i64 [ %prol.iter195.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0162.0.copyload.us, i64 %.sroa.5166.0333.us.prol
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4164.0.copyload.us, i64 %.sroa.5166.0333.us.prol
  %i.fx = add nuw i64 %.sroa.5166.0333.us.prol, 1 ; 2 uses
  %i.fy = load float, ptr %i.fv, align 4, !noundef !9
  store float %i.fy, ptr %i.fw, align 4
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !189

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5166.0333.us.unr = phi i64 [ %.sroa.5166.0333.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.fx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.fz = sub i64 %.sroa.5166.0333.us.ph, %.sroa.7167.0.copyload.us
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us

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
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k ; 6 uses
  %i.gc = and i64 %3, 12
  %.idx400 = and i64 %i.l, 48                     ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.idx400 ; 2 uses
  %i.ge = icmp samesign eq i64 %.idx400, 0
  br i1 %i.ge, label %._crit_edge377, label %.lr.ph376

.lr.ph376:                                        ; preds = %._crit_edge338
  %i.gf = icmp samesign ult i64 %i.h, %1
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 4 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  br i1 %i.gf, label %.lr.ph376.split, label %bb.l

.lr.ph376.split:                                  ; preds = %.lr.ph376
  %i.gi = icmp eq i64 %i.h, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !noundef !9 ; 5 uses
  br i1 %i.gi, label %.lr.ph376.split.split.us.preheader, label %.lr.ph376.split.split.preheader

.lr.ph376.split.split.preheader:                  ; preds = %.lr.ph376.split
  %i.gl = insertelement <4 x float> poison, float %i.j, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph376.split.split

.lr.ph376.split.split.us.preheader:               ; preds = %.lr.ph376.split
  %i.gn = add nsw i64 %.idx400, -16               ; 2 uses
  %i.go = and i64 %i.gn, 16
  %lcmp.mod197.not.not = icmp eq i64 %i.go, 0
  br i1 %lcmp.mod197.not.not, label %.lr.ph376.split.split.us.prol, label %.lr.ph376.split.split.us.prol.loopexit

.lr.ph376.split.split.us.prol:                    ; preds = %.lr.ph376.split.split.us.preheader
  %i.gp = add nuw i64 %.sroa.011.0.lcssa, 4       ; 3 uses
  %i.gq = or disjoint i64 %.sroa.011.0.lcssa, 3
  %or.cond124.not.us.prol = icmp ult i64 %i.gq, %i.gk
  br i1 %or.cond124.not.us.prol, label %.lr.ph376.split.split.us.prol.loopexit.unr-lcssa, label %.split.us379, !prof !11
end_hunk_0
begin_hunk_1_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnhmEB6_:bb.a
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

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us, %middle.block151, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  %i.gs = icmp eq i64 %i.cm, 0
  br i1 %i.gs, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us, label %.lr.ph.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0268.0.copyload.us), "nonnull"(ptr %.sroa.4270.0.copyload.us) ]
  %i.gt = sub nuw i64 %.sroa.7272.0.copyload.us, %.sroa.5271.0.copyload.us ; 3 uses
  %min.iters.check223 = icmp ult i64 %i.gt, 8
  br i1 %min.iters.check223, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck224

vector.memcheck224:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.gu = shl i64 %.sroa.5271.0.copyload.us, 2
  %i.gv = getelementptr i8, ptr %.sroa.0268.0.copyload.us, i64 %i.gu
  %i.gw = shl i64 %.sroa.7272.0.copyload.us, 2
  %i.gx = getelementptr i8, ptr %.sroa.0268.0.copyload.us, i64 %i.gw
  %i.gy = getelementptr i8, ptr %.sroa.4270.0.copyload.us, i64 %.sroa.5271.0.copyload.us
  %i.gz = getelementptr i8, ptr %.sroa.4270.0.copyload.us, i64 %.sroa.7272.0.copyload.us
  %bound0225 = icmp ult ptr %i.gv, %i.gz
  %bound1226 = icmp ult ptr %i.gy, %i.gx
  %found.conflict227 = and i1 %bound0225, %bound1226
  br i1 %found.conflict227, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck224
  %n.vec229 = and i64 %i.gt, -8                   ; 3 uses
  %i.ha = add i64 %.sroa.5271.0.copyload.us, %n.vec229
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph228
  %index233 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body232 ] ; 2 uses
  %i.hb = add nuw i64 %.sroa.5271.0.copyload.us, %index233 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %i.hb ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %wide.load234 = load <4 x i8>, ptr %i.hd, align 1, !alias.scope !264
  %wide.load235 = load <4 x i8>, ptr %i.he, align 1, !alias.scope !264
  %i.hf = zext <4 x i8> %wide.load234 to <4 x i32>
  %i.hg = zext <4 x i8> %wide.load235 to <4 x i32>
  %i.hh = mul <4 x i32> %broadcast.splat231, %i.hf
  %i.hi = mul <4 x i32> %broadcast.splat231, %i.hg
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store <4 x i32> %i.hh, ptr %i.hc, align 4, !alias.scope !265, !noalias !264
  store <4 x i32> %i.hi, ptr %i.hj, align 4, !alias.scope !265, !noalias !264
  %index.next236 = add nuw i64 %index233, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.hk, label %middle.block237, label %vector.body232, !llvm.loop !214

middle.block237:                                  ; preds = %vector.body232
  %cmp.n238 = icmp eq i64 %i.gt, %n.vec229
  br i1 %cmp.n238, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck224, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block237
  %.sroa.5271.0604.us.ph = phi i64 [ %.sroa.5271.0.copyload.us, %vector.memcheck224 ], [ %.sroa.5271.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.ha, %middle.block237 ] ; 4 uses
  %i.hl = sub i64 %.sroa.7272.0.copyload.us, %.sroa.5271.0604.us.ph
  %xtraiter = and i64 %i.hl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.5271.0604.us.prol = phi i64 [ %i.ho, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.5271.0604.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0.copyload.us, i64 %.sroa.5271.0604.us.prol
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.4270.0.copyload.us, i64 %.sroa.5271.0604.us.prol
  %i.ho = add nuw i64 %.sroa.5271.0604.us.prol, 1 ; 2 uses
  %i.hp = load i8, ptr %i.hn, align 1, !noundef !9
  %i.hq = zext i8 %i.hp to i32
  %i.hr = mul i32 %i.t, %i.hq
  store i32 %i.hr, ptr %i.hm, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !215

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5271.0604.us.unr = phi i64 [ %.sroa.5271.0604.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.ho, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.hs = sub i64 %.sroa.5271.0604.us.ph, %.sroa.7272.0.copyload.us
  %i.ht = icmp ugt i64 %i.hs, -4
  br i1 %i.ht, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0273.0.copyload.us), "nonnull"(ptr %.sroa.4275.0.copyload.us) ]
  %i.hu = sub nuw i64 %.sroa.7278.0.copyload.us, %.sroa.5277.0.copyload.us ; 3 uses
  %min.iters.check198 = icmp ult i64 %i.hu, 8
  br i1 %min.iters.check198, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us
  %i.hv = shl i64 %.sroa.5277.0.copyload.us, 2
  %i.hw = getelementptr i8, ptr %.sroa.0273.0.copyload.us, i64 %i.hv
  %i.hx = shl i64 %.sroa.7278.0.copyload.us, 2
  %i.hy = getelementptr i8, ptr %.sroa.0273.0.copyload.us, i64 %i.hx
  %i.hz = getelementptr i8, ptr %.sroa.4275.0.copyload.us, i64 %.sroa.5277.0.copyload.us
  %i.ia = getelementptr i8, ptr %.sroa.4275.0.copyload.us, i64 %.sroa.7278.0.copyload.us
  %bound0200 = icmp ult ptr %i.hw, %i.ia
  %bound1201 = icmp ult ptr %i.hz, %i.hy
  %found.conflict202 = and i1 %bound0200, %bound1201
  br i1 %found.conflict202, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck199
  %n.vec204 = and i64 %i.hu, -8                   ; 3 uses
  %i.ib = add i64 %.sroa.5277.0.copyload.us, %n.vec204
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next211, %vector.body207 ] ; 2 uses
  %i.ic = add nuw i64 %.sroa.5277.0.copyload.us, %index208 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %i.ic ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %wide.load209 = load <4 x i8>, ptr %i.ie, align 1, !alias.scope !266
  %wide.load210 = load <4 x i8>, ptr %i.if, align 1, !alias.scope !266
  %i.ig = zext <4 x i8> %wide.load209 to <4 x i32>
  %i.ih = zext <4 x i8> %wide.load210 to <4 x i32>
  %i.ii = mul <4 x i32> %broadcast.splat206, %i.ig
  %i.ij = mul <4 x i32> %broadcast.splat206, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store <4 x i32> %i.ii, ptr %i.id, align 4, !alias.scope !267, !noalias !266
  store <4 x i32> %i.ij, ptr %i.ik, align 4, !alias.scope !267, !noalias !266
  %index.next211 = add nuw i64 %index208, 8       ; 2 uses
  %i.il = icmp eq i64 %index.next211, %n.vec204
  br i1 %i.il, label %middle.block212, label %vector.body207, !llvm.loop !219

middle.block212:                                  ; preds = %vector.body207
  %cmp.n213 = icmp eq i64 %i.hu, %n.vec204
  br i1 %cmp.n213, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader: ; preds = %vector.memcheck199, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us, %middle.block212
  %.sroa.5277.0605.us.ph = phi i64 [ %.sroa.5277.0.copyload.us, %vector.memcheck199 ], [ %.sroa.5277.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.lr.ph.us ], [ %i.ib, %middle.block212 ] ; 4 uses
  %i.im = sub i64 %.sroa.7278.0.copyload.us, %.sroa.5277.0605.us.ph
  %xtraiter418 = and i64 %i.im, 3                 ; 2 uses
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol
  %.sroa.5277.0605.us.prol = phi i64 [ %i.ip, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol ], [ %.sroa.5277.0605.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader ] ; 3 uses
  %prol.iter420 = phi i64 [ %prol.iter420.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0273.0.copyload.us, i64 %.sroa.5277.0605.us.prol
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.4275.0.copyload.us, i64 %.sroa.5277.0605.us.prol
  %i.ip = add nuw i64 %.sroa.5277.0605.us.prol, 1 ; 2 uses
  %i.iq = load i8, ptr %i.io, align 1, !noundef !9
  %i.ir = zext i8 %i.iq to i32
  %i.is = mul i32 %i.t, %i.ir
  store i32 %i.is, ptr %i.in, align 4
  %prol.iter420.next = add i64 %prol.iter420, 1   ; 2 uses
  %prol.iter420.cmp.not = icmp eq i64 %prol.iter420.next, %xtraiter418
  br i1 %prol.iter420.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol, !llvm.loop !220

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader
  %.sroa.5277.0605.us.unr = phi i64 [ %.sroa.5277.0605.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.preheader ], [ %i.ip, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us.prol ]
  %i.it = sub i64 %.sroa.5277.0605.us.ph, %.sroa.7278.0.copyload.us
  %i.iu = icmp ugt i64 %i.it, -4
  br i1 %i.iu, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit212.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0282.0.copyload.us), "nonnull"(ptr %.sroa.4284.0.copyload.us), "nonnull"(ptr %.sroa.6288.0.copyload.us) ]
  %i.iv = sub nuw i64 %.sroa.9.0.copyload.us, %.sroa.7290.0.copyload.us ; 3 uses
  %min.iters.check168 = icmp ult i64 %i.iv, 8
  br i1 %min.iters.check168, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck169

vector.memcheck169:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.iw = add i64 %.sroa.5286.0.copyload.us, %.sroa.7290.0.copyload.us ; 2 uses
  %i.ix = shl i64 %i.iw, 2
  %i.iy = getelementptr i8, ptr %.sroa.0282.0.copyload.us, i64 %i.ix ; 2 uses
  %i.iz = add i64 %.sroa.5286.0.copyload.us, %.sroa.9.0.copyload.us ; 2 uses
  %i.ja = shl i64 %i.iz, 2
  %i.jb = getelementptr i8, ptr %.sroa.0282.0.copyload.us, i64 %i.ja ; 2 uses
  %i.jc = getelementptr i8, ptr %.sroa.4284.0.copyload.us, i64 %i.iw
  %i.jd = getelementptr i8, ptr %.sroa.4284.0.copyload.us, i64 %i.iz
  %bound0170 = icmp ult ptr %i.iy, %i.jd
  %bound1171 = icmp ult ptr %i.jc, %i.jb
  %found.conflict172 = and i1 %bound0170, %bound1171
  %8 = getelementptr i8, ptr %.sroa.6288.0.copyload.us, i64 %.sroa.7290.0.copyload.us
  %9 = getelementptr i8, ptr %.sroa.6288.0.copyload.us, i64 %.sroa.9.0.copyload.us
  %bound0173 = icmp ult ptr %i.iy, %9
  %bound1174 = icmp ult ptr %8, %i.jb
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %found.conflict172, %found.conflict175
  br i1 %conflict.rdx176, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %vector.memcheck169
  %n.vec178 = and i64 %i.iv, -4                   ; 3 uses
  %i.je = add i64 %.sroa.7290.0.copyload.us, %n.vec178
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next186, %vector.body181 ] ; 2 uses
  %i.jf = add nuw i64 %.sroa.7290.0.copyload.us, %index182 ; 2 uses
  %i.jg = add i64 %i.jf, %.sroa.5286.0.copyload.us ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.us, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.6288.0.copyload.us, i64 %i.jf
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.4284.0.copyload.us, i64 %i.jg
  %wide.load183 = load <4 x i32>, ptr %i.jh, align 4, !alias.scope !268, !noalias !269
  %wide.load184 = load <4 x i8>, ptr %i.jj, align 1, !alias.scope !270
  %i.jk = zext <4 x i8> %wide.load184 to <4 x i32>
  %wide.load185 = load <4 x i8>, ptr %i.ji, align 1, !alias.scope !271
  %i.jl = zext <4 x i8> %wide.load185 to <4 x i32>
  %i.jm = add nuw nsw <4 x i32> %i.jl, %i.jk
  %i.jn = mul <4 x i32> %i.jm, %broadcast.splat180
  %i.jo = add <4 x i32> %i.jn, %wide.load183
  store <4 x i32> %i.jo, ptr %i.jh, align 4, !alias.scope !268, !noalias !269
  %index.next186 = add nuw i64 %index182, 4       ; 2 uses
  %i.jp = icmp eq i64 %index.next186, %n.vec178
  br i1 %i.jp, label %middle.block187, label %vector.body181, !llvm.loop !225

middle.block187:                                  ; preds = %vector.body181
  %cmp.n188 = icmp eq i64 %i.iv, %n.vec178
  br i1 %cmp.n188, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck169, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block187
  %.sroa.7290.0606.us.ph = phi i64 [ %.sroa.7290.0.copyload.us, %vector.memcheck169 ], [ %.sroa.7290.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.je, %middle.block187 ] ; 6 uses
  %i.jq = sub i64 %.sroa.9.0.copyload.us, %.sroa.7290.0606.us.ph
  %.neg = add i64 %.sroa.7290.0606.us.ph, 1
  %xtraiter421 = and i64 %i.jq, 1
  %lcmp.mod422.not = icmp eq i64 %xtraiter421, 0
  br i1 %lcmp.mod422.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.jr = add i64 %.sroa.7290.0606.us.ph, %.sroa.5286.0.copyload.us ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0282.0.copyload.us, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.6288.0.copyload.us, i64 %.sroa.7290.0606.us.ph
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.4284.0.copyload.us, i64 %i.jr
  %i.jv = add nuw i64 %.sroa.7290.0606.us.ph, 1
  %i.jw = load i32, ptr %i.js, align 4, !noundef !9
  %i.jx = load i8, ptr %i.ju, align 1, !noundef !9
  %i.jy = zext i8 %i.jx to i32
  %i.jz = load i8, ptr %i.jt, align 1, !noundef !9
  %i.ka = zext i8 %i.jz to i32
  %i.kb = add nuw nsw i32 %i.ka, %i.jy
  %i.kc = mul i32 %i.kb, %i.cq
  %i.kd = add i32 %i.kc, %i.jw
  store i32 %i.kd, ptr %i.js, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.7290.0606.us.unr = phi i64 [ %.sroa.7290.0606.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.jv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.ke = icmp eq i64 %.sroa.9.0.copyload.us, %.neg
  br i1 %i.ke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0294.0.copyload.us), "nonnull"(ptr %.sroa.4296.0.copyload.us), "nonnull"(ptr %.sroa.6300.0.copyload.us) ]
  %i.kf = sub nuw i64 %.sroa.9303.0.copyload.us, %.sroa.7302.0.copyload.us ; 3 uses
  %min.iters.check135 = icmp ult i64 %i.kf, 8
  br i1 %min.iters.check135, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader, label %vector.memcheck136

vector.memcheck136:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us
  %i.kg = add i64 %.sroa.5298.0.copyload.us, %.sroa.7302.0.copyload.us ; 2 uses
  %i.kh = shl i64 %i.kg, 2
  %i.ki = getelementptr i8, ptr %.sroa.0294.0.copyload.us, i64 %i.kh ; 2 uses
  %i.kj = add i64 %.sroa.5298.0.copyload.us, %.sroa.9303.0.copyload.us ; 2 uses
  %i.kk = shl i64 %i.kj, 2
  %i.kl = getelementptr i8, ptr %.sroa.0294.0.copyload.us, i64 %i.kk ; 2 uses
  %i.km = getelementptr i8, ptr %.sroa.4296.0.copyload.us, i64 %i.kg
  %i.kn = getelementptr i8, ptr %.sroa.4296.0.copyload.us, i64 %i.kj
  %bound0137 = icmp ult ptr %i.ki, %i.kn
  %bound1138 = icmp ult ptr %i.km, %i.kl
  %found.conflict139 = and i1 %bound0137, %bound1138
  %10 = getelementptr i8, ptr %.sroa.6300.0.copyload.us, i64 %.sroa.7302.0.copyload.us
  %11 = getelementptr i8, ptr %.sroa.6300.0.copyload.us, i64 %.sroa.9303.0.copyload.us
  %bound0140 = icmp ult ptr %i.ki, %11
  %bound1141 = icmp ult ptr %10, %i.kl
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx = or i1 %found.conflict139, %found.conflict142
  br i1 %conflict.rdx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck136
  %n.vec144 = and i64 %i.kf, -4                   ; 3 uses
  %i.ko = add i64 %.sroa.7302.0.copyload.us, %n.vec144
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next150, %vector.body145 ] ; 2 uses
  %i.kp = add nuw i64 %.sroa.7302.0.copyload.us, %index146 ; 2 uses
  %i.kq = add i64 %i.kp, %.sroa.5298.0.copyload.us ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0294.0.copyload.us, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.6300.0.copyload.us, i64 %i.kp
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.4296.0.copyload.us, i64 %i.kq
  %wide.load147 = load <4 x i32>, ptr %i.kr, align 4, !alias.scope !272, !noalias !273
  %wide.load148 = load <4 x i8>, ptr %i.kt, align 1, !alias.scope !274
  %i.ku = zext <4 x i8> %wide.load148 to <4 x i32>
  %wide.load149 = load <4 x i8>, ptr %i.ks, align 1, !alias.scope !275
  %i.kv = zext <4 x i8> %wide.load149 to <4 x i32>
  %i.kw = add nuw nsw <4 x i32> %i.kv, %i.ku
  %i.kx = mul <4 x i32> %i.kw, %broadcast.splat
  %i.ky = add <4 x i32> %i.kx, %wide.load147
  store <4 x i32> %i.ky, ptr %i.kr, align 4, !alias.scope !272, !noalias !273
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.kz, label %middle.block151, label %vector.body145, !llvm.loop !230

middle.block151:                                  ; preds = %vector.body145
  %cmp.n152 = icmp eq i64 %i.kf, %n.vec144
  br i1 %cmp.n152, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader: ; preds = %vector.memcheck136, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us, %middle.block151
  %.sroa.7302.0607.us.ph = phi i64 [ %.sroa.7302.0.copyload.us, %vector.memcheck136 ], [ %.sroa.7302.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.lr.ph.us ], [ %i.ko, %middle.block151 ] ; 6 uses
  %i.la = sub i64 %.sroa.9303.0.copyload.us, %.sroa.7302.0607.us.ph
  %.neg442 = add i64 %.sroa.7302.0607.us.ph, 1
  %xtraiter424 = and i64 %i.la, 1
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader
  %i.lb = add i64 %.sroa.7302.0607.us.ph, %.sroa.5298.0.copyload.us ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0294.0.copyload.us, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.6300.0.copyload.us, i64 %.sroa.7302.0607.us.ph
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.4296.0.copyload.us, i64 %i.lb
  %i.lf = add nuw i64 %.sroa.7302.0607.us.ph, 1
  %i.lg = load i32, ptr %i.lc, align 4, !noundef !9
  %i.lh = load i8, ptr %i.le, align 1, !noundef !9
  %i.li = zext i8 %i.lh to i32
  %i.lj = load i8, ptr %i.ld, align 1, !noundef !9
  %i.lk = zext i8 %i.lj to i32
  %i.ll = add nuw nsw i32 %i.lk, %i.li
  %i.lm = mul i32 %i.ll, %i.cq
  %i.ln = add i32 %i.lm, %i.lg
  store i32 %i.ln, ptr %i.lc, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader
  %.sroa.7302.0607.us.unr = phi i64 [ %.sroa.7302.0607.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.preheader ], [ %i.lf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us.prol ]
  %i.lo = icmp eq i64 %.sroa.9303.0.copyload.us, %.neg442
  br i1 %i.lo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit231.thread._crit_edge.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0310.0.copyload.us), "nonnull"(ptr %.sroa.4312.0.copyload.us) ]
  %i.lp = sub nuw i64 %.sroa.7315.0.copyload.us, %.sroa.5314.0.copyload.us ; 3 uses
  %min.iters.check107 = icmp ult i64 %i.lp, 8
  br i1 %min.iters.check107, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck108

vector.memcheck108:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.lq = getelementptr i8, ptr %.sroa.4312.0.copyload.us, i64 %.sroa.5314.0.copyload.us
  %i.lr = getelementptr i8, ptr %.sroa.4312.0.copyload.us, i64 %.sroa.7315.0.copyload.us
  %i.ls = shl i64 %.sroa.5314.0.copyload.us, 2
  %i.lt = getelementptr i8, ptr %.sroa.0310.0.copyload.us, i64 %i.ls
  %i.lu = shl i64 %.sroa.7315.0.copyload.us, 2
  %i.lv = getelementptr i8, ptr %.sroa.0310.0.copyload.us, i64 %i.lu
  %bound0109 = icmp ult ptr %i.lq, %i.lv
  %bound1110 = icmp ult ptr %i.lt, %i.lr
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck108
  %n.vec113 = and i64 %i.lp, -8                   ; 3 uses
  %i.lw = add i64 %.sroa.5314.0.copyload.us, %n.vec113
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next118, %vector.body114 ] ; 2 uses
  %i.lx = add nuw i64 %.sroa.5314.0.copyload.us, %index115 ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0310.0.copyload.us, i64 %i.lx ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.4312.0.copyload.us, i64 %i.lx ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %wide.load116 = load <4 x i32>, ptr %i.ly, align 4, !alias.scope !276
  %wide.load117 = load <4 x i32>, ptr %i.ma, align 4, !alias.scope !276
  %i.mb = add <4 x i32> %wide.load116, splat (i32 16384)
  %i.mc = add <4 x i32> %wide.load117, splat (i32 16384)
  %i.md = lshr <4 x i32> %i.mb, splat (i32 15)
  %i.me = lshr <4 x i32> %i.mc, splat (i32 15)
  %i.mf = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.md, <4 x i32> splat (i32 255))
  %i.mg = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.me, <4 x i32> splat (i32 255))
  %i.mh = trunc nuw <4 x i32> %i.mf to <4 x i8>
  %i.mi = trunc nuw <4 x i32> %i.mg to <4 x i8>
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store <4 x i8> %i.mh, ptr %i.lz, align 1, !alias.scope !277, !noalias !276
  store <4 x i8> %i.mi, ptr %i.mj, align 1, !alias.scope !277, !noalias !276
  %index.next118 = add nuw i64 %index115, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.mk, label %middle.block119, label %vector.body114, !llvm.loop !234

middle.block119:                                  ; preds = %vector.body114
  %cmp.n120 = icmp eq i64 %i.lp, %n.vec113
  br i1 %cmp.n120, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck108, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block119
  %.sroa.5314.0611.us.ph = phi i64 [ %.sroa.5314.0.copyload.us, %vector.memcheck108 ], [ %.sroa.5314.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.lw, %middle.block119 ] ; 6 uses
  %i.ml = sub i64 %.sroa.7315.0.copyload.us, %.sroa.5314.0611.us.ph
  %.neg443 = add i64 %.sroa.5314.0611.us.ph, 1
  %xtraiter427 = and i64 %i.ml, 1
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0310.0.copyload.us, i64 %.sroa.5314.0611.us.ph
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.4312.0.copyload.us, i64 %.sroa.5314.0611.us.ph
  %i.mo = add nuw i64 %.sroa.5314.0611.us.ph, 1
  %i.mp = load i32, ptr %i.mm, align 4, !noundef !9
  %i.mq = add i32 %i.mp, 16384
  %i.mr = lshr i32 %i.mq, 15
  %..i.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.mr, i32 255)
  %i.ms = trunc nuw i32 %..i.us.prol to i8
  store i8 %i.ms, ptr %i.mn, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5314.0611.us.unr = phi i64 [ %.sroa.5314.0611.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.mo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.mt = icmp eq i64 %.sroa.7315.0.copyload.us, %.neg443
  br i1 %i.mt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0316.0.copyload.us), "nonnull"(ptr %.sroa.4318.0.copyload.us) ]
  %i.mu = sub nuw i64 %.sroa.7321.0.copyload.us, %.sroa.5320.0.copyload.us ; 3 uses
  %min.iters.check = icmp ult i64 %i.mu, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us
  %i.mv = getelementptr i8, ptr %.sroa.4318.0.copyload.us, i64 %.sroa.5320.0.copyload.us
  %i.mw = getelementptr i8, ptr %.sroa.4318.0.copyload.us, i64 %.sroa.7321.0.copyload.us
  %i.mx = shl i64 %.sroa.5320.0.copyload.us, 2
  %i.my = getelementptr i8, ptr %.sroa.0316.0.copyload.us, i64 %i.mx
  %i.mz = shl i64 %.sroa.7321.0.copyload.us, 2
  %i.na = getelementptr i8, ptr %.sroa.0316.0.copyload.us, i64 %i.mz
  %bound0 = icmp ult ptr %i.mv, %i.na
  %bound1 = icmp ult ptr %i.my, %i.mw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mu, -8                      ; 3 uses
  %i.nb = add i64 %.sroa.5320.0.copyload.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nc = add nuw i64 %.sroa.5320.0.copyload.us, %index ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0316.0.copyload.us, i64 %i.nc ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.4318.0.copyload.us, i64 %i.nc ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %wide.load = load <4 x i32>, ptr %i.nd, align 4, !alias.scope !278
  %wide.load98 = load <4 x i32>, ptr %i.nf, align 4, !alias.scope !278
  %i.ng = add <4 x i32> %wide.load, splat (i32 16384)
  %i.nh = add <4 x i32> %wide.load98, splat (i32 16384)
  %i.ni = lshr <4 x i32> %i.ng, splat (i32 15)
  %i.nj = lshr <4 x i32> %i.nh, splat (i32 15)
  %i.nk = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ni, <4 x i32> splat (i32 255))
  %i.nl = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nj, <4 x i32> splat (i32 255))
  %i.nm = trunc nuw <4 x i32> %i.nk to <4 x i8>
  %i.nn = trunc nuw <4 x i32> %i.nl to <4 x i8>
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  store <4 x i8> %i.nm, ptr %i.ne, align 1, !alias.scope !279, !noalias !278
  store <4 x i8> %i.nn, ptr %i.no, align 1, !alias.scope !279, !noalias !278
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.np = icmp eq i64 %index.next, %n.vec
  br i1 %i.np, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mu, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us, %middle.block
  %.sroa.5320.0612.us.ph = phi i64 [ %.sroa.5320.0.copyload.us, %vector.memcheck ], [ %.sroa.5320.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.lr.ph.us ], [ %i.nb, %middle.block ] ; 6 uses
  %i.nq = sub i64 %.sroa.7321.0.copyload.us, %.sroa.5320.0612.us.ph
  %.neg444 = add i64 %.sroa.5320.0612.us.ph, 1
  %xtraiter430 = and i64 %i.nq, 1
  %lcmp.mod431.not = icmp eq i64 %xtraiter430, 0
  br i1 %lcmp.mod431.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit222.us.prol

end_hunk_1
begin_hunk_2_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnhmEB6_:bb.a
bb.q:                                             ; preds = %bb.p
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.10338.0654.us ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load i64, ptr %i.pw, align 8, !noundef !9 ; 2 uses
  %.not193.us = icmp ugt i64 %i.ok, %i.px
  br i1 %.not193.us, label %.split672.us, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  %i.py = load ptr, ptr %i.pv, align 8, !nonnull !9, !noundef !9
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %.sroa.015.1659.us ; 2 uses
  %i.qa = icmp ult i64 %i.pu, %1
  br i1 %i.qa, label %bb.s, label %.split677.us

bb.s:                                             ; preds = %bb.r
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.pu ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load i64, ptr %i.qc, align 8, !noundef !9 ; 2 uses
  %.not194.us = icmp ugt i64 %i.ok, %i.qd
  br i1 %.not194.us, label %.split680.us, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  %i.qe = load ptr, ptr %i.qb, align 8, !nonnull !9, !noundef !9
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.sroa.015.1659.us ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !280
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.oe, ptr noundef nonnull readonly %i.pz, ptr noundef nonnull readonly %i.qg)
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.qf, ptr noundef nonnull readonly %i.qh), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !280
  %.sroa.0339.0.copyload.us = load ptr, ptr %i.f, align 8 ; 7 uses
  %.sroa.4341.0.copyload.us = load ptr, ptr %.sroa.4341.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5343.0.copyload.us = load i64, ptr %.sroa.5343.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6345.0.copyload.us = load ptr, ptr %.sroa.6345.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7347.0.copyload.us = load i64, ptr %.sroa.7347.0..sroa_idx, align 8 ; 8 uses
  %.sroa.9348.0.copyload.us = load i64, ptr %.sroa.9348.0..sroa_idx, align 8 ; 7 uses
  %i.qi = icmp ult i64 %.sroa.7347.0.copyload.us, %.sroa.9348.0.copyload.us
  br i1 %i.qi, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us
  %.sroa.7347.0653.us = phi i64 [ %i.ra, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us ], [ %.sroa.7347.0653.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit ] ; 4 uses
  %i.qj = add i64 %.sroa.7347.0653.us, %.sroa.5343.0.copyload.us ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0339.0.copyload.us, i64 %i.qj ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.6345.0.copyload.us, i64 %.sroa.7347.0653.us
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.4341.0.copyload.us, i64 %i.qj
  %i.qn = add nuw i64 %.sroa.7347.0653.us, 1      ; 2 uses
  %i.qo = load i32, ptr %i.qk, align 4, !noundef !9
  %i.qp = load i8, ptr %i.qm, align 1, !noundef !9
  %i.qq = zext i8 %i.qp to i32
  %i.qr = load i8, ptr %i.ql, align 1, !noundef !9
  %i.qs = zext i8 %i.qr to i32
  %i.qt = add nuw nsw i32 %i.qs, %i.qq
  %i.qu = mul i32 %i.qt, %i.ps
  %i.qv = add i32 %i.qu, %i.qo
  store i32 %i.qv, ptr %i.qk, align 4
  %i.qw = add i64 %i.qn, %.sroa.5343.0.copyload.us ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0339.0.copyload.us, i64 %i.qw ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.6345.0.copyload.us, i64 %i.qn
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.4341.0.copyload.us, i64 %i.qw
  %i.ra = add nuw i64 %.sroa.7347.0653.us, 2      ; 2 uses
  %i.rb = load i32, ptr %i.qx, align 4, !noundef !9
  %i.rc = load i8, ptr %i.qz, align 1, !noundef !9
  %i.rd = zext i8 %i.rc to i32
  %i.re = load i8, ptr %i.qy, align 1, !noundef !9
  %i.rf = zext i8 %i.re to i32
  %i.rg = add nuw nsw i32 %i.rf, %i.rd
  %i.rh = mul i32 %i.rg, %i.ps
  %i.ri = add i32 %i.rh, %i.rb
  store i32 %i.ri, ptr %i.qx, align 4
  %exitcond841.not.1 = icmp eq i64 %i.ra, %.sroa.9348.0.copyload.us
  br i1 %exitcond841.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us, !llvm.loop !244

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us, %middle.block296, %bb.t
  %i.rj = icmp eq i64 %i.po, 0
  br i1 %i.rj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us, label %.lr.ph.us663

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us: ; preds = %.lr.ph.us663, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.oe, ptr noundef nonnull %.sroa.0129.0658.us, ptr noundef nonnull %i.oj)
  %.sroa.0352.0.copyload.us = load ptr, ptr %i.e, align 8 ; 7 uses
  %.sroa.4354.0.copyload.us = load ptr, ptr %.sroa.4354.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5356.0.copyload.us = load i64, ptr %.sroa.5356.0..sroa_idx, align 8 ; 8 uses
  %.sroa.7357.0.copyload.us = load i64, ptr %.sroa.7357.0..sroa_idx, align 8 ; 7 uses
  %i.rk = icmp ult i64 %.sroa.5356.0.copyload.us, %.sroa.7357.0.copyload.us
  br i1 %i.rk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us
  %.sroa.5356.0657.us = phi i64 [ %i.ru, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us ], [ %.sroa.5356.0657.us.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit ] ; 4 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %.sroa.5356.0657.us
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.5356.0657.us
  %i.rn = add nuw i64 %.sroa.5356.0657.us, 1      ; 2 uses
  %i.ro = load i32, ptr %i.rl, align 4, !noundef !9
  %i.rp = add i32 %i.ro, 16384
  %i.rq = lshr i32 %i.rp, 15
  %..i245.us = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.rq, i32 255)
  %i.rr = trunc nuw i32 %..i245.us to i8
  store i8 %i.rr, ptr %i.rm, align 1
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %i.rn
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %i.rn
  %i.ru = add nuw i64 %.sroa.5356.0657.us, 2      ; 2 uses
  %i.rv = load i32, ptr %i.rs, align 4, !noundef !9
  %i.rw = add i32 %i.rv, 16384
  %i.rx = lshr i32 %i.rw, 15
  %..i245.us.1 = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.rx, i32 255)
  %i.ry = trunc nuw i32 %..i245.us.1 to i8
  store i8 %i.ry, ptr %i.rt, align 1
  %exitcond843.not.1 = icmp eq i64 %i.ru, %.sroa.7357.0.copyload.us
  br i1 %exitcond843.not.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us, !llvm.loop !245

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us, %middle.block260, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.rz = icmp eq ptr %i.oj, %i.oa
  br i1 %i.rz, label %._crit_edge662, label %bb.n

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0329.0.copyload.us), "nonnull"(ptr %.sroa.4331.0.copyload.us) ]
  %i.sa = sub nuw i64 %.sroa.7334.0.copyload.us, %.sroa.5333.0.copyload.us ; 3 uses
  %min.iters.check307 = icmp ult i64 %i.sa, 8
  br i1 %min.iters.check307, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader, label %vector.memcheck308

vector.memcheck308:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us
  %i.sb = shl i64 %.sroa.5333.0.copyload.us, 2
  %i.sc = getelementptr i8, ptr %.sroa.0329.0.copyload.us, i64 %i.sb
  %i.sd = shl i64 %.sroa.7334.0.copyload.us, 2
  %i.se = getelementptr i8, ptr %.sroa.0329.0.copyload.us, i64 %i.sd
  %i.sf = getelementptr i8, ptr %.sroa.4331.0.copyload.us, i64 %.sroa.5333.0.copyload.us
  %i.sg = getelementptr i8, ptr %.sroa.4331.0.copyload.us, i64 %.sroa.7334.0.copyload.us
  %bound0309 = icmp ult ptr %i.sc, %i.sg
  %bound1310 = icmp ult ptr %i.sf, %i.se
  %found.conflict311 = and i1 %bound0309, %bound1310
  br i1 %found.conflict311, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader, label %vector.ph312

vector.ph312:                                     ; preds = %vector.memcheck308
  %n.vec313 = and i64 %i.sa, -8                   ; 3 uses
  %i.sh = add i64 %.sroa.5333.0.copyload.us, %n.vec313
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph312
  %index317 = phi i64 [ 0, %vector.ph312 ], [ %index.next320, %vector.body316 ] ; 2 uses
  %i.si = add nuw i64 %.sroa.5333.0.copyload.us, %index317 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0329.0.copyload.us, i64 %i.si ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.4331.0.copyload.us, i64 %i.si ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %wide.load318 = load <4 x i8>, ptr %i.sk, align 1, !alias.scope !282
  %wide.load319 = load <4 x i8>, ptr %i.sl, align 1, !alias.scope !282
  %i.sm = zext <4 x i8> %wide.load318 to <4 x i32>
  %i.sn = zext <4 x i8> %wide.load319 to <4 x i32>
  %i.so = mul <4 x i32> %broadcast.splat315, %i.sm
  %i.sp = mul <4 x i32> %broadcast.splat315, %i.sn
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store <4 x i32> %i.so, ptr %i.sj, align 4, !alias.scope !283, !noalias !282
  store <4 x i32> %i.sp, ptr %i.sq, align 4, !alias.scope !283, !noalias !282
  %index.next320 = add nuw i64 %index317, 8       ; 2 uses
  %i.sr = icmp eq i64 %index.next320, %n.vec313
  br i1 %i.sr, label %middle.block321, label %vector.body316, !llvm.loop !249

middle.block321:                                  ; preds = %vector.body316
  %cmp.n322 = icmp eq i64 %i.sa, %n.vec313
  br i1 %cmp.n322, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader: ; preds = %vector.memcheck308, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us, %middle.block321
  %.sroa.5333.0652.us.ph = phi i64 [ %.sroa.5333.0.copyload.us, %vector.memcheck308 ], [ %.sroa.5333.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.lr.ph.us ], [ %i.sh, %middle.block321 ] ; 4 uses
  %i.ss = sub i64 %.sroa.7334.0.copyload.us, %.sroa.5333.0652.us.ph
  %xtraiter433 = and i64 %i.ss, 3                 ; 2 uses
  %lcmp.mod434.not = icmp eq i64 %xtraiter433, 0
  br i1 %lcmp.mod434.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol
  %.sroa.5333.0652.us.prol = phi i64 [ %i.sv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol ], [ %.sroa.5333.0652.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader ] ; 3 uses
  %prol.iter435 = phi i64 [ %prol.iter435.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader ]
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0329.0.copyload.us, i64 %.sroa.5333.0652.us.prol
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.4331.0.copyload.us, i64 %.sroa.5333.0652.us.prol
  %i.sv = add nuw i64 %.sroa.5333.0652.us.prol, 1 ; 2 uses
  %i.sw = load i8, ptr %i.su, align 1, !noundef !9
  %i.sx = zext i8 %i.sw to i32
  %i.sy = mul i32 %i.t, %i.sx
  store i32 %i.sy, ptr %i.st, align 4
  %prol.iter435.next = add i64 %prol.iter435, 1   ; 2 uses
  %prol.iter435.cmp.not = icmp eq i64 %prol.iter435.next, %xtraiter433
  br i1 %prol.iter435.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol, !llvm.loop !250

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader
  %.sroa.5333.0652.us.unr = phi i64 [ %.sroa.5333.0652.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.preheader ], [ %i.sv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us.prol ]
  %i.sz = sub i64 %.sroa.5333.0652.us.ph, %.sroa.7334.0.copyload.us
  %i.ta = icmp ugt i64 %i.sz, -4
  br i1 %i.ta, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit236.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us: ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0339.0.copyload.us), "nonnull"(ptr %.sroa.4341.0.copyload.us), "nonnull"(ptr %.sroa.6345.0.copyload.us) ]
  %i.tb = sub nuw i64 %.sroa.9348.0.copyload.us, %.sroa.7347.0.copyload.us ; 3 uses
  %min.iters.check277 = icmp ult i64 %i.tb, 8
  br i1 %min.iters.check277, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader, label %vector.memcheck278

vector.memcheck278:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us
  %i.tc = add i64 %.sroa.5343.0.copyload.us, %.sroa.7347.0.copyload.us ; 2 uses
  %i.td = shl i64 %i.tc, 2
  %i.te = getelementptr i8, ptr %.sroa.0339.0.copyload.us, i64 %i.td ; 2 uses
  %i.tf = add i64 %.sroa.5343.0.copyload.us, %.sroa.9348.0.copyload.us ; 2 uses
  %i.tg = shl i64 %i.tf, 2
  %i.th = getelementptr i8, ptr %.sroa.0339.0.copyload.us, i64 %i.tg ; 2 uses
  %i.ti = getelementptr i8, ptr %.sroa.4341.0.copyload.us, i64 %i.tc
  %i.tj = getelementptr i8, ptr %.sroa.4341.0.copyload.us, i64 %i.tf
  %bound0279 = icmp ult ptr %i.te, %i.tj
  %bound1280 = icmp ult ptr %i.ti, %i.th
  %found.conflict281 = and i1 %bound0279, %bound1280
  %12 = getelementptr i8, ptr %.sroa.6345.0.copyload.us, i64 %.sroa.7347.0.copyload.us
  %13 = getelementptr i8, ptr %.sroa.6345.0.copyload.us, i64 %.sroa.9348.0.copyload.us
  %bound0282 = icmp ult ptr %i.te, %13
  %bound1283 = icmp ult ptr %12, %i.th
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %found.conflict281, %found.conflict284
  br i1 %conflict.rdx285, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck278
  %n.vec287 = and i64 %i.tb, -4                   ; 3 uses
  %i.tk = add i64 %.sroa.7347.0.copyload.us, %n.vec287
  %broadcast.splatinsert288 = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %broadcast.splat289 = shufflevector <4 x i32> %broadcast.splatinsert288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph286
  %index291 = phi i64 [ 0, %vector.ph286 ], [ %index.next295, %vector.body290 ] ; 2 uses
  %i.tl = add nuw i64 %.sroa.7347.0.copyload.us, %index291 ; 2 uses
  %i.tm = add i64 %i.tl, %.sroa.5343.0.copyload.us ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0339.0.copyload.us, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.6345.0.copyload.us, i64 %i.tl
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.4341.0.copyload.us, i64 %i.tm
  %wide.load292 = load <4 x i32>, ptr %i.tn, align 4, !alias.scope !284, !noalias !285
  %wide.load293 = load <4 x i8>, ptr %i.tp, align 1, !alias.scope !286
  %i.tq = zext <4 x i8> %wide.load293 to <4 x i32>
  %wide.load294 = load <4 x i8>, ptr %i.to, align 1, !alias.scope !287
  %i.tr = zext <4 x i8> %wide.load294 to <4 x i32>
  %i.ts = add nuw nsw <4 x i32> %i.tr, %i.tq
  %i.tt = mul <4 x i32> %i.ts, %broadcast.splat289
  %i.tu = add <4 x i32> %i.tt, %wide.load292
  store <4 x i32> %i.tu, ptr %i.tn, align 4, !alias.scope !284, !noalias !285
  %index.next295 = add nuw i64 %index291, 4       ; 2 uses
  %i.tv = icmp eq i64 %index.next295, %n.vec287
  br i1 %i.tv, label %middle.block296, label %vector.body290, !llvm.loop !255

middle.block296:                                  ; preds = %vector.body290
  %cmp.n297 = icmp eq i64 %i.tb, %n.vec287
  br i1 %cmp.n297, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader: ; preds = %vector.memcheck278, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us, %middle.block296
  %.sroa.7347.0653.us.ph = phi i64 [ %.sroa.7347.0.copyload.us, %vector.memcheck278 ], [ %.sroa.7347.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.lr.ph.us ], [ %i.tk, %middle.block296 ] ; 6 uses
  %i.tw = sub i64 %.sroa.9348.0.copyload.us, %.sroa.7347.0653.us.ph
  %.neg445 = add i64 %.sroa.7347.0653.us.ph, 1
  %xtraiter436 = and i64 %i.tw, 1
  %lcmp.mod437.not = icmp eq i64 %xtraiter436, 0
  br i1 %lcmp.mod437.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader
  %i.tx = add i64 %.sroa.7347.0653.us.ph, %.sroa.5343.0.copyload.us ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0339.0.copyload.us, i64 %i.tx ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.6345.0.copyload.us, i64 %.sroa.7347.0653.us.ph
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.4341.0.copyload.us, i64 %i.tx
  %i.ub = add nuw i64 %.sroa.7347.0653.us.ph, 1
  %i.uc = load i32, ptr %i.ty, align 4, !noundef !9
  %i.ud = load i8, ptr %i.ua, align 1, !noundef !9
  %i.ue = zext i8 %i.ud to i32
  %i.uf = load i8, ptr %i.tz, align 1, !noundef !9
  %i.ug = zext i8 %i.uf to i32
  %i.uh = add nuw nsw i32 %i.ug, %i.ue
  %i.ui = mul i32 %i.uh, %i.ps
  %i.uj = add i32 %i.ui, %i.uc
  store i32 %i.uj, ptr %i.ty, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader
  %.sroa.7347.0653.us.unr = phi i64 [ %.sroa.7347.0653.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.preheader ], [ %i.ub, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us.prol ]
  %i.uk = icmp eq i64 %.sroa.9348.0.copyload.us, %.neg445
  br i1 %i.uk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4IterhEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit252.thread._crit_edge.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0352.0.copyload.us), "nonnull"(ptr %.sroa.4354.0.copyload.us) ]
  %i.ul = sub nuw i64 %.sroa.7357.0.copyload.us, %.sroa.5356.0.copyload.us ; 3 uses
  %min.iters.check248 = icmp ult i64 %i.ul, 8
  br i1 %min.iters.check248, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader, label %vector.memcheck249

vector.memcheck249:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us
  %i.um = getelementptr i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.5356.0.copyload.us
  %i.un = getelementptr i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.7357.0.copyload.us
  %i.uo = shl i64 %.sroa.5356.0.copyload.us, 2
  %i.up = getelementptr i8, ptr %.sroa.0352.0.copyload.us, i64 %i.uo
  %i.uq = shl i64 %.sroa.7357.0.copyload.us, 2
  %i.ur = getelementptr i8, ptr %.sroa.0352.0.copyload.us, i64 %i.uq
  %bound0250 = icmp ult ptr %i.um, %i.ur
  %bound1251 = icmp ult ptr %i.up, %i.un
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader, label %vector.ph253

vector.ph253:                                     ; preds = %vector.memcheck249
  %n.vec254 = and i64 %i.ul, -8                   ; 3 uses
  %i.us = add i64 %.sroa.5356.0.copyload.us, %n.vec254
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next259, %vector.body255 ] ; 2 uses
  %i.ut = add nuw i64 %.sroa.5356.0.copyload.us, %index256 ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %i.ut ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %i.ut ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %wide.load257 = load <4 x i32>, ptr %i.uu, align 4, !alias.scope !288
  %wide.load258 = load <4 x i32>, ptr %i.uw, align 4, !alias.scope !288
  %i.ux = add <4 x i32> %wide.load257, splat (i32 16384)
  %i.uy = add <4 x i32> %wide.load258, splat (i32 16384)
  %i.uz = lshr <4 x i32> %i.ux, splat (i32 15)
  %i.va = lshr <4 x i32> %i.uy, splat (i32 15)
  %i.vb = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.uz, <4 x i32> splat (i32 255))
  %i.vc = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.va, <4 x i32> splat (i32 255))
  %i.vd = trunc nuw <4 x i32> %i.vb to <4 x i8>
  %i.ve = trunc nuw <4 x i32> %i.vc to <4 x i8>
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  store <4 x i8> %i.vd, ptr %i.uv, align 1, !alias.scope !289, !noalias !288
  store <4 x i8> %i.ve, ptr %i.vf, align 1, !alias.scope !289, !noalias !288
  %index.next259 = add nuw i64 %index256, 8       ; 2 uses
  %i.vg = icmp eq i64 %index.next259, %n.vec254
  br i1 %i.vg, label %middle.block260, label %vector.body255, !llvm.loop !259

middle.block260:                                  ; preds = %vector.body255
  %cmp.n261 = icmp eq i64 %i.ul, %n.vec254
  br i1 %cmp.n261, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader: ; preds = %vector.memcheck249, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us, %middle.block260
  %.sroa.5356.0657.us.ph = phi i64 [ %.sroa.5356.0.copyload.us, %vector.memcheck249 ], [ %.sroa.5356.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.lr.ph.us ], [ %i.us, %middle.block260 ] ; 6 uses
  %i.vh = sub i64 %.sroa.7357.0.copyload.us, %.sroa.5356.0657.us.ph
  %.neg446 = add i64 %.sroa.5356.0657.us.ph, 1
  %xtraiter439 = and i64 %i.vh, 1
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0352.0.copyload.us, i64 %.sroa.5356.0657.us.ph
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.4354.0.copyload.us, i64 %.sroa.5356.0657.us.ph
  %i.vk = add nuw i64 %.sroa.5356.0657.us.ph, 1
  %i.vl = load i32, ptr %i.vi, align 4, !noundef !9
  %i.vm = add i32 %i.vl, 16384
  %i.vn = lshr i32 %i.vm, 15
  %..i245.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.vn, i32 255)
  %i.vo = trunc nuw i32 %..i245.us.prol to i8
  store i8 %i.vo, ptr %i.vj, align 1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader
  %.sroa.5356.0657.us.unr = phi i64 [ %.sroa.5356.0657.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.preheader ], [ %i.vk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us.prol ]
  %i.vp = icmp eq i64 %.sroa.7357.0.copyload.us, %.neg446
  br i1 %i.vp, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.us

.lr.ph661.split:                                  ; preds = %.lr.ph661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #13
  unreachable

.split.us665:                                     ; preds = %bb.n
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.ok, i64 noundef %i.oi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #13
  unreachable

.split669.us:                                     ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #13
  unreachable

.split672.us:                                     ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.ok, i64 noundef %i.px, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13
  unreachable

.split677.us:                                     ; preds = %bb.r
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.pu, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #13
  unreachable

.split680.us:                                     ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.015.1659.us, i64 noundef %i.ok, i64 noundef %i.qd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13
  unreachable

._crit_edge662:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us, %._crit_edge617
  %.sroa.015.1.lcssa = phi i64 [ %.sroa.015.0.lcssa, %._crit_edge617 ], [ %i.ok, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit244.thread.us ] ; 2 uses
  %i.vq = and i64 %3, 12                          ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.vq ; 3 uses
  %i.vs = icmp samesign eq i64 %i.vq, 0
  br i1 %i.vs, label %._crit_edge705, label %.lr.ph704

.lr.ph704:                                        ; preds = %._crit_edge662
  %i.vt = icmp samesign ult i64 %i.r, %1
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.vw = icmp eq i64 %i.r, 0
  br i1 %i.vt, label %.lr.ph704.split, label %bb.v

.lr.ph704.split:                                  ; preds = %.lr.ph704
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !noundef !9 ; 2 uses
  %i.vz = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %i.wa = shufflevector <4 x i32> %i.vz, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph704.split, %._crit_edge
  %.sroa.015.2702 = phi i64 [ %.sroa.015.1.lcssa, %.lr.ph704.split ], [ %i.wc, %._crit_edge ] ; 8 uses
  %.sroa.0137.0701 = phi ptr [ %i.oa, %.lr.ph704.split ], [ %i.wb, %._crit_edge ] ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.0137.0701, i64 4 ; 2 uses
  %i.wc = add i64 %.sroa.015.2702, 4              ; 7 uses
  %i.wd = or disjoint i64 %.sroa.015.2702, 3
  %or.cond206.not = icmp ult i64 %i.wd, %i.vy
  br i1 %or.cond206.not, label %bb.w, label %bb.x, !prof !11

bb.v:                                             ; preds = %.lr.ph704
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #13
  unreachable
end_hunk_2
begin_hunk_3_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columntmEB6_:bb.a
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

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us, %middle.block98, %bb.i
  %i.dl = icmp eq i64 %i.ba, 0
  br i1 %i.dl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us, label %.lr.ph.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0147.0.copyload.us), "nonnull"(ptr %.sroa.4149.0.copyload.us) ]
  %i.dm = sub nuw i64 %.sroa.7151.0.copyload.us, %.sroa.5150.0.copyload.us ; 3 uses
  %min.iters.check109 = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check109, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck110

vector.memcheck110:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.dn = shl i64 %.sroa.5150.0.copyload.us, 2
  %i.do = getelementptr i8, ptr %.sroa.0147.0.copyload.us, i64 %i.dn
  %i.dp = shl i64 %.sroa.7151.0.copyload.us, 2
  %i.dq = getelementptr i8, ptr %.sroa.0147.0.copyload.us, i64 %i.dp
  %i.dr = shl i64 %.sroa.5150.0.copyload.us, 1
  %i.ds = getelementptr i8, ptr %.sroa.4149.0.copyload.us, i64 %i.dr
  %i.dt = shl i64 %.sroa.7151.0.copyload.us, 1
  %i.du = getelementptr i8, ptr %.sroa.4149.0.copyload.us, i64 %i.dt
  %bound0111 = icmp ult ptr %i.do, %i.du
  %bound1112 = icmp ult ptr %i.ds, %i.dq
  %found.conflict113 = and i1 %bound0111, %bound1112
  br i1 %found.conflict113, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck110
  %n.vec115 = and i64 %i.dm, -8                   ; 3 uses
  %i.dv = add i64 %.sroa.5150.0.copyload.us, %n.vec115
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body118 ] ; 2 uses
  %i.dw = add nuw i64 %.sroa.5150.0.copyload.us, %index119 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %i.dw ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %wide.load120 = load <4 x i16>, ptr %i.dy, align 2, !alias.scope !314
  %wide.load121 = load <4 x i16>, ptr %i.dz, align 2, !alias.scope !314
  %i.ea = zext <4 x i16> %wide.load120 to <4 x i32>
  %i.eb = zext <4 x i16> %wide.load121 to <4 x i32>
  %i.ec = mul <4 x i32> %broadcast.splat117, %i.ea
  %i.ed = mul <4 x i32> %broadcast.splat117, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x i32> %i.ec, ptr %i.dx, align 4, !alias.scope !315, !noalias !314
  store <4 x i32> %i.ed, ptr %i.ee, align 4, !alias.scope !315, !noalias !314
  %index.next122 = add nuw i64 %index119, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.ef, label %middle.block123, label %vector.body118, !llvm.loop !300

middle.block123:                                  ; preds = %vector.body118
  %cmp.n124 = icmp eq i64 %i.dm, %n.vec115
  br i1 %cmp.n124, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck110, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block123
  %.sroa.5150.0333.us.ph = phi i64 [ %.sroa.5150.0.copyload.us, %vector.memcheck110 ], [ %.sroa.5150.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.dv, %middle.block123 ] ; 4 uses
  %i.eg = sub i64 %.sroa.7151.0.copyload.us, %.sroa.5150.0333.us.ph
  %xtraiter = and i64 %i.eg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol
  %.sroa.5150.0333.us.prol = phi i64 [ %i.ej, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ %.sroa.5150.0333.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0147.0.copyload.us, i64 %.sroa.5150.0333.us.prol
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4149.0.copyload.us, i64 %.sroa.5150.0333.us.prol
  %i.ej = add nuw i64 %.sroa.5150.0333.us.prol, 1 ; 2 uses
  %i.ek = load i16, ptr %i.ei, align 2, !noundef !9
  %i.el = zext i16 %i.ek to i32
  %i.em = mul i32 %i.j, %i.el
  store i32 %i.em, ptr %i.eh, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, !llvm.loop !301

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5150.0333.us.unr = phi i64 [ %.sroa.5150.0333.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.ej, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.en = sub i64 %.sroa.5150.0333.us.ph, %.sroa.7151.0.copyload.us
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0155.0.copyload.us), "nonnull"(ptr %.sroa.4157.0.copyload.us), "nonnull"(ptr %.sroa.6161.0.copyload.us) ]
  %i.ep = sub nuw i64 %.sroa.9.0.copyload.us, %.sroa.7163.0.copyload.us ; 3 uses
  %min.iters.check79 = icmp ult i64 %i.ep, 8
  br i1 %min.iters.check79, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck80

vector.memcheck80:                                ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.eq = add i64 %.sroa.5159.0.copyload.us, %.sroa.7163.0.copyload.us ; 2 uses
  %i.er = shl i64 %i.eq, 2
  %i.es = getelementptr i8, ptr %.sroa.0155.0.copyload.us, i64 %i.er ; 2 uses
  %i.et = add i64 %.sroa.5159.0.copyload.us, %.sroa.9.0.copyload.us ; 2 uses
  %i.eu = shl i64 %i.et, 2
  %i.ev = getelementptr i8, ptr %.sroa.0155.0.copyload.us, i64 %i.eu ; 2 uses
  %i.ew = shl i64 %i.eq, 1
  %i.ex = getelementptr i8, ptr %.sroa.4157.0.copyload.us, i64 %i.ew
  %i.ey = shl i64 %i.et, 1
  %i.ez = getelementptr i8, ptr %.sroa.4157.0.copyload.us, i64 %i.ey
  %bound081 = icmp ult ptr %i.es, %i.ez
  %bound182 = icmp ult ptr %i.ex, %i.ev
  %found.conflict83 = and i1 %bound081, %bound182
  %8 = shl i64 %.sroa.7163.0.copyload.us, 1
  %9 = getelementptr i8, ptr %.sroa.6161.0.copyload.us, i64 %8
  %10 = shl i64 %.sroa.9.0.copyload.us, 1
  %11 = getelementptr i8, ptr %.sroa.6161.0.copyload.us, i64 %10
  %bound084 = icmp ult ptr %i.es, %11
  %bound185 = icmp ult ptr %9, %i.ev
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %vector.memcheck80
  %n.vec88 = and i64 %i.ep, -8                    ; 3 uses
  %i.fa = add i64 %.sroa.7163.0.copyload.us, %n.vec88
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next97, %vector.body89 ] ; 2 uses
  %i.fb = add nuw i64 %.sroa.7163.0.copyload.us, %index90 ; 2 uses
  %i.fc = add i64 %i.fb, %.sroa.5159.0.copyload.us ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.copyload.us, i64 %i.fc ; 3 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6161.0.copyload.us, i64 %i.fb ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4157.0.copyload.us, i64 %i.fc ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load91 = load <4 x i32>, ptr %i.fd, align 4, !alias.scope !316, !noalias !317
  %wide.load92 = load <4 x i32>, ptr %i.fg, align 4, !alias.scope !316, !noalias !317
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %wide.load93 = load <4 x i16>, ptr %i.ff, align 2, !alias.scope !318
  %wide.load94 = load <4 x i16>, ptr %i.fh, align 2, !alias.scope !318
  %i.fi = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.fj = zext <4 x i16> %wide.load94 to <4 x i32>
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %wide.load95 = load <4 x i16>, ptr %i.fe, align 2, !alias.scope !319
  %wide.load96 = load <4 x i16>, ptr %i.fk, align 2, !alias.scope !319
  %i.fl = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.fm = zext <4 x i16> %wide.load96 to <4 x i32>
  %i.fn = add nuw nsw <4 x i32> %i.fl, %i.fi
  %i.fo = add nuw nsw <4 x i32> %i.fm, %i.fj
  %i.fp = mul <4 x i32> %i.fn, %broadcast.splat
  %i.fq = mul <4 x i32> %i.fo, %broadcast.splat
  %i.fr = add <4 x i32> %i.fp, %wide.load91
  %i.fs = add <4 x i32> %i.fq, %wide.load92
  store <4 x i32> %i.fr, ptr %i.fd, align 4, !alias.scope !316, !noalias !317
  store <4 x i32> %i.fs, ptr %i.fg, align 4, !alias.scope !316, !noalias !317
  %index.next97 = add nuw i64 %index90, 8         ; 2 uses
  %i.ft = icmp eq i64 %index.next97, %n.vec88
  br i1 %i.ft, label %middle.block98, label %vector.body89, !llvm.loop !306

middle.block98:                                   ; preds = %vector.body89
  %cmp.n99 = icmp eq i64 %i.ep, %n.vec88
  br i1 %cmp.n99, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck80, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block98
  %.sroa.7163.0334.us.ph = phi i64 [ %.sroa.7163.0.copyload.us, %vector.memcheck80 ], [ %.sroa.7163.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.fa, %middle.block98 ] ; 6 uses
  %i.fu = sub i64 %.sroa.9.0.copyload.us, %.sroa.7163.0334.us.ph
  %.neg = add i64 %.sroa.7163.0334.us.ph, 1
  %xtraiter187 = and i64 %i.fu, 1
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.fv = add i64 %.sroa.7163.0334.us.ph, %.sroa.5159.0.copyload.us ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0155.0.copyload.us, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6161.0.copyload.us, i64 %.sroa.7163.0334.us.ph
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4157.0.copyload.us, i64 %i.fv
  %i.fz = add nuw i64 %.sroa.7163.0334.us.ph, 1
  %i.ga = load i32, ptr %i.fw, align 4, !noundef !9
  %i.gb = load i16, ptr %i.fy, align 2, !noundef !9
  %i.gc = zext i16 %i.gb to i32
  %i.gd = load i16, ptr %i.fx, align 2, !noundef !9
  %i.ge = zext i16 %i.gd to i32
  %i.gf = add nuw nsw i32 %i.ge, %i.gc
  %i.gg = mul i32 %i.gf, %i.be
  %i.gh = add i32 %i.gg, %i.ga
  store i32 %i.gh, ptr %i.fw, align 4
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.7163.0334.us.unr = phi i64 [ %.sroa.7163.0334.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.fz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.gi = icmp eq i64 %.sroa.9.0.copyload.us, %.neg
  br i1 %i.gi, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.us

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutmEINtB13_4ItertEEB1v_EINtB5_7ZipImplBW_B1v_E4nextCsa5QsYiPB8Gl_5image.exit.thread._crit_edge.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0167.0.copyload.us), "nonnull"(ptr %.sroa.4169.0.copyload.us) ]
  %i.gj = sub nuw i64 %.sroa.7172.0.copyload.us, %.sroa.5171.0.copyload.us ; 3 uses
  %min.iters.check = icmp ult i64 %i.gj, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us
  %i.gk = shl i64 %.sroa.5171.0.copyload.us, 1
  %i.gl = getelementptr i8, ptr %.sroa.4169.0.copyload.us, i64 %i.gk
  %i.gm = shl i64 %.sroa.7172.0.copyload.us, 1
  %i.gn = getelementptr i8, ptr %.sroa.4169.0.copyload.us, i64 %i.gm
  %i.go = shl i64 %.sroa.5171.0.copyload.us, 2
  %i.gp = getelementptr i8, ptr %.sroa.0167.0.copyload.us, i64 %i.go
  %i.gq = shl i64 %.sroa.7172.0.copyload.us, 2
  %i.gr = getelementptr i8, ptr %.sroa.0167.0.copyload.us, i64 %i.gq
  %bound0 = icmp ult ptr %i.gl, %i.gr
  %bound1 = icmp ult ptr %i.gp, %i.gn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gj, -8                      ; 3 uses
  %i.gs = add i64 %.sroa.5171.0.copyload.us, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gt = add nuw i64 %.sroa.5171.0.copyload.us, %index ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0167.0.copyload.us, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4169.0.copyload.us, i64 %i.gt ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <4 x i32>, ptr %i.gu, align 4, !alias.scope !320
  %wide.load65 = load <4 x i32>, ptr %i.gw, align 4, !alias.scope !320
  %i.gx = add <4 x i32> %wide.load, splat (i32 16384)
  %i.gy = add <4 x i32> %wide.load65, splat (i32 16384)
  %i.gz = lshr <4 x i32> %i.gx, splat (i32 15)
  %i.ha = lshr <4 x i32> %i.gy, splat (i32 15)
  %i.hb = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.gz, <4 x i32> splat (i32 65535))
  %i.hc = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ha, <4 x i32> splat (i32 65535))
  %i.hd = trunc nuw <4 x i32> %i.hb to <4 x i16>
  %i.he = trunc nuw <4 x i32> %i.hc to <4 x i16>
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store <4 x i16> %i.hd, ptr %i.gv, align 2, !alias.scope !321, !noalias !320
  store <4 x i16> %i.he, ptr %i.hf, align 2, !alias.scope !321, !noalias !320
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gj, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us, %middle.block
  %.sroa.5171.0338.us.ph = phi i64 [ %.sroa.5171.0.copyload.us, %vector.memcheck ], [ %.sroa.5171.0.copyload.us, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.us ], [ %i.gs, %middle.block ] ; 6 uses
  %i.hh = sub i64 %.sroa.7172.0.copyload.us, %.sroa.5171.0338.us.ph
  %.neg196 = add i64 %.sroa.5171.0338.us.ph, 1
  %xtraiter190 = and i64 %i.hh, 1
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0167.0.copyload.us, i64 %.sroa.5171.0338.us.ph
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4169.0.copyload.us, i64 %.sroa.5171.0338.us.ph
  %i.hk = add nuw i64 %.sroa.5171.0338.us.ph, 1
  %i.hl = load i32, ptr %i.hi, align 4, !noundef !9
  %i.hm = add i32 %i.hl, 16384
  %i.hn = lshr i32 %i.hm, 15
  %..i.us.prol = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 range(i32 0, 131072) %i.hn, i32 65535)
  %i.ho = trunc nuw i32 %..i.us.prol to i16
  store i16 %i.ho, ptr %i.hj, align 2
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader
  %.sroa.5171.0338.us.unr = phi i64 [ %.sroa.5171.0338.us.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.preheader ], [ %i.hk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us.prol ]
  %i.hp = icmp eq i64 %.sroa.7172.0.copyload.us, %.neg196
  br i1 %i.hp, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.thread.us, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.us

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
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.k ; 3 uses
  %i.hr = and i64 %3, 12
  %.idx399 = and i64 %i.l, 24                     ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.idx399
  %i.ht = icmp samesign eq i64 %.idx399, 0
  br i1 %i.ht, label %._crit_edge382, label %.lr.ph381

.lr.ph381:                                        ; preds = %._crit_edge343
  %i.hu = icmp samesign ult i64 %i.h, %1
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %i.hx = icmp eq i64 %i.h, 0
  br i1 %i.hu, label %.lr.ph381.split, label %bb.l
end_hunk_3
