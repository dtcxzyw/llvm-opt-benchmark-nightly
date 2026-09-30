Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.00?download=true
inline.NumInlined: 1965
inline.NumDeleted: 321
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9filter_1d23filter_symmetric_columnffEB6_:bb.a
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

.lr.ph376.split.split.us.preheader:               ; preds = %.lr.ph376.split
  %i.gl = add nsw i64 %.idx400, -16               ; 2 uses
  %i.gm = and i64 %i.gl, 16
  %lcmp.mod187.not.not = icmp eq i64 %i.gm, 0
  br i1 %lcmp.mod187.not.not, label %.lr.ph376.split.split.us.prol, label %.lr.ph376.split.split.us.prol.loopexit

.lr.ph376.split.split.us.prol:                    ; preds = %.lr.ph376.split.split.us.preheader
  %i.gn = add nuw i64 %.sroa.011.0.lcssa, 4       ; 3 uses
  %i.go = or disjoint i64 %.sroa.011.0.lcssa, 3
  %or.cond124.not.us.prol = icmp ult i64 %i.go, %i.gi
  br i1 %or.cond124.not.us.prol, label %.lr.ph376.split.split.us.prol.loopexit.unr-lcssa, label %.split.us379, !prof !11

.lr.ph376.split.split.us.prol.loopexit.unr-lcssa: ; preds = %.lr.ph376.split.split.us.prol
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gq = load ptr, ptr %i.ge, align 8, !nonnull !9, !align !190, !noundef !9
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.sroa.011.0.lcssa
  %i.gs = load <4 x float>, ptr %i.gr, align 4
  %i.gt = insertelement <4 x float> poison, float %i.j, i64 0
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gv = fmul <4 x float> %i.gu, %i.gs
  store <4 x float> %i.gv, ptr %i.fz, align 4
  br label %.lr.ph376.split.split.us.prol.loopexit

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

end_hunk_0
