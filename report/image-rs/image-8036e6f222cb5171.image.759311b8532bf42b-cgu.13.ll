Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.13?download=true
inline.NumInlined: 1791
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutffEBa_:bb.a
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ep ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load260 = load <4 x float>, ptr %i.eq, align 4, !noalias !1424
  %wide.load261 = load <4 x float>, ptr %i.es, align 4, !noalias !1424
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x float> %wide.load260, ptr %i.er, align 4, !noalias !1424
  store <4 x float> %wide.load261, ptr %i.et, align 4, !noalias !1424
  %index.next262 = add nuw i64 %index259, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.eu, label %middle.block263, label %vector.body258, !llvm.loop !1370

middle.block263:                                  ; preds = %vector.body258
  %cmp.n264 = icmp eq i64 %i.em, %n.vec257
  br i1 %cmp.n264, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block263
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.eo, %middle.block263 ] ; 4 uses
  %i.ev = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter271 = and i64 %i.ev, 3                 ; 2 uses
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.ey, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ey = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.ez = load float, ptr %i.ew, align 4, !noalias !1424, !noundef !4
  store float %i.ez, ptr %i.ex, align 4, !noalias !1424
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter271
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1371

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.ey, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.fa = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.fq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.fe = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.ff = load float, ptr %i.fc, align 4, !noalias !1424, !noundef !4
  store float %i.ff, ptr %i.fd, align 4, !noalias !1424
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.fe
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fe
  %i.fi = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.fj = load float, ptr %i.fg, align 4, !noalias !1424, !noundef !4
  store float %i.fj, ptr %i.fh, align 4, !noalias !1424
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.fi
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fi
  %i.fm = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.fn = load float, ptr %i.fk, align 4, !noalias !1424, !noundef !4
  store float %i.fn, ptr %i.fl, align 4, !noalias !1424
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.fm
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fm
  %i.fq = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.fr = load float, ptr %i.fo, align 4, !noalias !1424, !noundef !4
  store float %i.fr, ptr %i.fp, align 4, !noalias !1424
  %exitcond.not.i.i6.3 = icmp eq i64 %i.fq, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i6.3, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1372

bb.ao:                                            ; preds = %bb.am
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1425
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eg
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dw
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.fs, ptr noundef nonnull readonly %i.ft, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.fu)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %bb.ao
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1428 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1428 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1428 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1428 ; 5 uses
  %i.fv = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.fv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit288.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc11
  %.sroa.44.0.copyload.i88.i235 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i236 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.fw = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check239 = icmp ult i64 %i.fw, 8
  %i.fx = sub i64 %.sroa.0.0.copyload.i86.i236, %.sroa.44.0.copyload.i88.i235
  %diff.check237 = icmp ugt i64 %i.fx, -32
  %or.cond266 = select i1 %min.iters.check239, i1 true, i1 %diff.check237
  br i1 %or.cond266, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec241 = and i64 %i.fw, -8                   ; 3 uses
  %i.fy = add i64 %.sroa.55.0.copyload.i90.i, %n.vec241
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next246, %vector.body242 ] ; 2 uses
  %i.fz = add nuw i64 %.sroa.55.0.copyload.i90.i, %index243 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fz ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load244 = load <4 x float>, ptr %i.ga, align 4, !noalias !1424
  %wide.load245 = load <4 x float>, ptr %i.gc, align 4, !noalias !1424
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <4 x float> %wide.load244, ptr %i.gb, align 4, !noalias !1424
  store <4 x float> %wide.load245, ptr %i.gd, align 4, !noalias !1424
  %index.next246 = add nuw i64 %index243, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next246, %n.vec241
  br i1 %i.ge, label %middle.block247, label %vector.body242, !llvm.loop !1376

middle.block247:                                  ; preds = %vector.body242
  %cmp.n248 = icmp eq i64 %i.fw, %n.vec241
  br i1 %cmp.n248, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block247
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.fy, %middle.block247 ] ; 4 uses
  %i.gf = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter273 = and i64 %i.gf, 3                 ; 2 uses
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.gi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter275 = phi i64 [ %prol.iter275.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.gi = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.gj = load float, ptr %i.gg, align 4, !noalias !1424, !noundef !4
  store float %i.gj, ptr %i.gh, align 4, !noalias !1424
  %prol.iter275.next = add i64 %prol.iter275, 1   ; 2 uses
  %prol.iter275.cmp.not = icmp eq i64 %prol.iter275.next, %xtraiter273
  br i1 %prol.iter275.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1377

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.gi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.gk = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.ha, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.go = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.gp = load float, ptr %i.gm, align 4, !noalias !1424, !noundef !4
  store float %i.gp, ptr %i.gn, align 4, !noalias !1424
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.go
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.go
  %i.gs = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.gt = load float, ptr %i.gq, align 4, !noalias !1424, !noundef !4
  store float %i.gt, ptr %i.gr, align 4, !noalias !1424
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gs
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gs
  %i.gw = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.gx = load float, ptr %i.gu, align 4, !noalias !1424, !noundef !4
  store float %i.gx, ptr %i.gv, align 4, !noalias !1424
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gw
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gw
  %i.ha = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.hb = load float, ptr %i.gy, align 4, !noalias !1424, !noundef !4
  store float %i.hb, ptr %i.gz, align 4, !noalias !1424
  %exitcond.not.i96.i.3 = icmp eq i64 %i.ha, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1378

bb.ap:                                            ; preds = %.loopexit288.i, %.loopexit289.i
  %i.hc = mul i64 %i.dv, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.hc, %i.dw
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

.loopexit289.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block263, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1425
  br i1 %i.do, label %bb.aq, label %bb.ap

.loopexit288.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block247, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1425
  br i1 %i.do, label %bb.ap, label %bb.ar

bb.aq:                                            ; preds = %.loopexit289.i
  %.lhs.trunc157.i = trunc nuw nsw i64 %i.dw to i16
  %i.hd = udiv i16 %.lhs.trunc157.i, 3
  %.zext158.i = zext nneg i16 %i.hd to i64
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext158.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1425
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.he, ptr noundef nonnull %i.i, ptr noundef nonnull %i.dq)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.aq
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1425 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1425 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1425 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1425
  %i.hf = icmp eq i64 %i.dv, 0
  br i1 %i.hf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc12
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8133.0205.i = phi i64 [ %i.hg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.dv, %.lr.ph.preheader.i ]
  %.sroa.5131.0204.i = phi i64 [ %i.hj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5131.0204.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.hg = add i64 %.sroa.8133.0205.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5131.0204.i ; 3 uses
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5131.0204.i ; 3 uses
  %i.hj = add i64 %.sroa.5131.0204.i, 1
  %i.hk = load float, ptr %i.hh, align 4, !noalias !1424, !noundef !4
  store float %i.hk, ptr %i.hi, align 4, !noalias !1424
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hm = load float, ptr %i.hl, align 4, !noalias !1424, !noundef !4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store float %i.hm, ptr %i.hn, align 4, !noalias !1424
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hp = load float, ptr %i.ho, align 4, !noalias !1424, !noundef !4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hr = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.hp, i64 0
  store <2 x float> %i.hr, ptr %i.hq, align 4, !noalias !1424
  %i.hs = icmp eq i64 %i.hg, 0
  br i1 %i.hs, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.ht = shl i64 %i.dv, 2                        ; 3 uses
  %i.hu = icmp ult i64 %i.ht, 1025
  br i1 %i.hu, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !13

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc14, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc12, %bb.ap
  %.sroa.7.0.i = phi i64 [ %i.ik, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.ht, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.hc, %bb.ap ], [ 0, %.noexc12 ], [ 0, %.noexc14 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ap ], [ %i.i, %.noexc12 ], [ %i.i, %.noexc14 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.as
    i8 1, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.av
  ]

bb.ar:                                            ; preds = %.loopexit288.i
  %i.hv = lshr i64 %i.dw, 2
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1425
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hw, ptr noundef nonnull %i.i, ptr noundef nonnull %i.dr)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %bb.ar
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1425 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1425 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1425 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1425
  %i.hx = icmp eq i64 %i.dv, 0
  br i1 %i.hx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph209.preheader.i

.lr.ph209.preheader.i:                            ; preds = %.noexc14
  %umax264.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph209.i

.lr.ph209.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph209.preheader.i
  %.sroa.8148.0208.i = phi i64 [ %i.hy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.dv, %.lr.ph209.preheader.i ]
  %.sroa.5146.0207.i = phi i64 [ %i.ib, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph209.preheader.i ] ; 4 uses
  %exitcond265.not.i = icmp eq i64 %.sroa.5146.0207.i, %umax264.i
  br i1 %exitcond265.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph209.i
  %i.hy = add nsw i64 %.sroa.8148.0208.i, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5146.0207.i ; 3 uses
  %i.ia = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5146.0207.i ; 3 uses
  %i.ib = add i64 %.sroa.5146.0207.i, 1
  %i.ic = load float, ptr %i.hz, align 4, !noalias !1424, !noundef !4
  store float %i.ic, ptr %i.ia, align 4, !noalias !1424
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ie = load float, ptr %i.id, align 4, !noalias !1424, !noundef !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store float %i.ie, ptr %i.if, align 4, !noalias !1424
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ih = load float, ptr %i.ig, align 4, !noalias !1424, !noundef !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store float %i.ih, ptr %i.ii, align 4, !noalias !1424
  %i.ij = icmp eq i64 %i.hy, 0
  br i1 %i.ij, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph209.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph209.i
  %i.ik = mul nuw nsw i64 %i.dv, 3
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.il = mul nuw nsw i64 %.sroa.038.0212.i, 3    ; 2 uses
  %i.im = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.in = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0212.i
  %.not80.i = icmp samesign ugt i64 %i.im, %i.dl
  %or.cond82.i = or i1 %i.in, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.aw, !prof !9

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.io = shl nuw nsw i64 %.sroa.038.0212.i, 2    ; 3 uses
  %i.ip = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.iq = icmp samesign ult i64 %i.ip, %i.io
  %.not79.i = icmp samesign ugt i64 %i.ip, %i.dl
  %or.cond83.i = or i1 %i.iq, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ay, !prof !9

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ir = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0212.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.dl
  %or.cond84.i = or i1 %i.ir, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.az, !prof !9

bb.av:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.is = shl nuw nsw i64 %.sroa.038.0212.i, 1    ; 3 uses
  %i.it = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.iu = icmp samesign ult i64 %i.it, %i.is
  %.not77.i = icmp samesign ugt i64 %i.it, %i.dl
  %or.cond85.i = or i1 %i.iu, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.ba, !prof !9

bb.aw:                                            ; preds = %bb.as
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.il
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1425
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.im
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.iw, ptr noundef nonnull align 4 %i.iv, ptr noundef nonnull %i.ix)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %bb.aw
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1429 ; 8 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1429 ; 8 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1429 ; 5 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1429 ; 5 uses
  %i.iy = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.iy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i: ; preds = %.noexc17
  %.sroa.43.0.copyload.i.i173 = ptrtoaddr ptr %.sroa.43.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i101.i174 = ptrtoaddr ptr %.sroa.0.0.copyload.i101.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.iz = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.iz, 8
  %i.ja = sub i64 %.sroa.0.0.copyload.i101.i174, %.sroa.43.0.copyload.i.i173
  %diff.check = icmp ugt i64 %i.ja, -32
  %or.cond267 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond267, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i
  %n.vec = and i64 %i.iz, -8                      ; 3 uses
  %i.jb = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jc = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jc ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load = load <4 x float>, ptr %i.jd, align 4, !noalias !1424
  %wide.load175 = load <4 x float>, ptr %i.jf, align 4, !noalias !1424
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store <4 x float> %wide.load, ptr %i.je, align 4, !noalias !1424
  store <4 x float> %wide.load175, ptr %i.jg, align 4, !noalias !1424
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !1382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iz, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i ], [ %i.jb, %middle.block ] ; 4 uses
  %i.ji = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %xtraiter282 = and i64 %i.ji, 3                 ; 2 uses
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol
  %.sroa.54.09.i.i.prol = phi i64 [ %i.jl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ], [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ] ; 3 uses
  %prol.iter284 = phi i64 [ %prol.iter284.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.prol
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.prol
  %i.jl = add nuw i64 %.sroa.54.09.i.i.prol, 1    ; 2 uses
  %i.jm = load float, ptr %i.jj, align 4, !noalias !1424, !noundef !4
  store float %i.jm, ptr %i.jk, align 4, !noalias !1424
  %prol.iter284.next = add i64 %prol.iter284, 1   ; 2 uses
  %prol.iter284.cmp.not = icmp eq i64 %prol.iter284.next, %xtraiter282
  br i1 %prol.iter284.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol, !llvm.loop !1383

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ], [ %i.jl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ]
  %i.jn = sub i64 %.sroa.54.09.i.i.ph, %.sroa.7.0.copyload.i103.i
  %i.jo = icmp ugt i64 %i.jn, -4
  br i1 %i.jo, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i
  %.sroa.54.09.i.i = phi i64 [ %i.kd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit ] ; 6 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.jr = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.js = load float, ptr %i.jp, align 4, !noalias !1424, !noundef !4
  store float %i.js, ptr %i.jq, align 4, !noalias !1424
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jr
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jr
  %i.jv = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.jw = load float, ptr %i.jt, align 4, !noalias !1424, !noundef !4
  store float %i.jw, ptr %i.ju, align 4, !noalias !1424
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jv
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jv
  %i.jz = add nuw i64 %.sroa.54.09.i.i, 3         ; 2 uses
  %i.ka = load float, ptr %i.jx, align 4, !noalias !1424, !noundef !4
  store float %i.ka, ptr %i.jy, align 4, !noalias !1424
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jz
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jz
  %i.kd = add nuw i64 %.sroa.54.09.i.i, 4         ; 2 uses
  %i.ke = load float, ptr %i.kb, align 4, !noalias !1424, !noundef !4
  store float %i.ke, ptr %i.kc, align 4, !noalias !1424
  %exitcond.not.i106.i.3 = icmp eq i64 %i.kd, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i106.i.3, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i, !llvm.loop !1384

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i, %middle.block, %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1425
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i
  %.not.i = icmp eq i64 %i.du, 0
  br i1 %.not.i, label %.loopexit5, label %bb.aj

bb.ay:                                            ; preds = %bb.at
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.io
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1425
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ip
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.kg, ptr noundef nonnull align 4 %i.kf, ptr noundef nonnull %i.kh)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.ay
  %.sroa.0.0.copyload.i107.i = load ptr, ptr %i.c, align 8, !noalias !1430 ; 8 uses
  %.sroa.43.0.copyload.i109.i = load ptr, ptr %.sroa.43.0..sroa_idx.i108.i, align 8, !noalias !1430 ; 8 uses
  %.sroa.54.0.copyload.i111.i = load i64, ptr %.sroa.54.0..sroa_idx.i110.i, align 8, !noalias !1430 ; 5 uses
  %.sroa.7.0.copyload.i113.i = load i64, ptr %.sroa.7.0..sroa_idx.i112.i, align 8, !noalias !1430 ; 5 uses
  %i.ki = icmp ult i64 %.sroa.54.0.copyload.i111.i, %.sroa.7.0.copyload.i113.i
  br i1 %i.ki, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i: ; preds = %.noexc19
  %.sroa.43.0.copyload.i109.i177 = ptrtoaddr ptr %.sroa.43.0.copyload.i109.i to i64
  %.sroa.0.0.copyload.i107.i178 = ptrtoaddr ptr %.sroa.0.0.copyload.i107.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i107.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i109.i) ]
  %i.kj = sub nuw i64 %.sroa.7.0.copyload.i113.i, %.sroa.54.0.copyload.i111.i ; 3 uses
  %min.iters.check181 = icmp ult i64 %i.kj, 8
  %i.kk = sub i64 %.sroa.0.0.copyload.i107.i178, %.sroa.43.0.copyload.i109.i177
  %diff.check179 = icmp ugt i64 %i.kk, -32
  %or.cond268 = select i1 %min.iters.check181, i1 true, i1 %diff.check179
  br i1 %or.cond268, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader, label %vector.ph182

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutfhEBa_:bb.a
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load266 = load <4 x float>, ptr %i.dv, align 4, !noalias !1521
  %wide.load267 = load <4 x float>, ptr %i.dx, align 4, !noalias !1521
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x float> %wide.load266, ptr %i.dw, align 4, !noalias !1521
  store <4 x float> %wide.load267, ptr %i.dy, align 4, !noalias !1521
  %index.next268 = add nuw i64 %index265, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.dz, label %middle.block269, label %vector.body264, !llvm.loop !1463

middle.block269:                                  ; preds = %vector.body264
  %cmp.n270 = icmp eq i64 %i.dr, %n.vec263
  br i1 %cmp.n270, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block269
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.dt, %middle.block269 ] ; 4 uses
  %i.ea = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter = and i64 %i.ea, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.ed, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ed = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.ee = load float, ptr %i.eb, align 4, !noalias !1521, !noundef !4
  store float %i.ee, ptr %i.ec, align 4, !noalias !1521
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1464

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.ed, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ef = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.ev, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ej = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.ek = load float, ptr %i.eh, align 4, !noalias !1521, !noundef !4
  store float %i.ek, ptr %i.ei, align 4, !noalias !1521
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ej
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ej
  %i.en = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !noalias !1521, !noundef !4
  store float %i.eo, ptr %i.em, align 4, !noalias !1521
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.en
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.en
  %i.er = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.es = load float, ptr %i.ep, align 4, !noalias !1521, !noundef !4
  store float %i.es, ptr %i.eq, align 4, !noalias !1521
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.er
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.er
  %i.ev = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.ew = load float, ptr %i.et, align 4, !noalias !1521, !noundef !4
  store float %i.ew, ptr %i.eu, align 4, !noalias !1521
  %exitcond.not.i.i7.3 = icmp eq i64 %i.ev, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i7.3, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1465

bb.an:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1522
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dl
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.db
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.ex, ptr noundef nonnull readonly %i.ey, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.ez)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.an
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1525 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1525 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1525 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1525 ; 5 uses
  %i.fa = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.fa, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit284.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc12
  %.sroa.44.0.copyload.i88.i242 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i243 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.fb = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check245 = icmp ult i64 %i.fb, 8
  %i.fc = sub i64 %.sroa.0.0.copyload.i86.i243, %.sroa.44.0.copyload.i88.i242
  %diff.check = icmp ugt i64 %i.fc, -32
  %or.cond272 = select i1 %min.iters.check245, i1 true, i1 %diff.check
  br i1 %or.cond272, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec247 = and i64 %i.fb, -8                   ; 3 uses
  %i.fd = add i64 %.sroa.55.0.copyload.i90.i, %n.vec247
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next252, %vector.body248 ] ; 2 uses
  %i.fe = add nuw i64 %.sroa.55.0.copyload.i90.i, %index249 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fe ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load250 = load <4 x float>, ptr %i.ff, align 4, !noalias !1521
  %wide.load251 = load <4 x float>, ptr %i.fh, align 4, !noalias !1521
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x float> %wide.load250, ptr %i.fg, align 4, !noalias !1521
  store <4 x float> %wide.load251, ptr %i.fi, align 4, !noalias !1521
  %index.next252 = add nuw i64 %index249, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next252, %n.vec247
  br i1 %i.fj, label %middle.block253, label %vector.body248, !llvm.loop !1469

middle.block253:                                  ; preds = %vector.body248
  %cmp.n254 = icmp eq i64 %i.fb, %n.vec247
  br i1 %cmp.n254, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block253
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.fd, %middle.block253 ] ; 4 uses
  %i.fk = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter273 = and i64 %i.fk, 3                 ; 2 uses
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.fn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter275 = phi i64 [ %prol.iter275.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.fn = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.fo = load float, ptr %i.fl, align 4, !noalias !1521, !noundef !4
  store float %i.fo, ptr %i.fm, align 4, !noalias !1521
  %prol.iter275.next = add i64 %prol.iter275, 1   ; 2 uses
  %prol.iter275.cmp.not = icmp eq i64 %prol.iter275.next, %xtraiter273
  br i1 %prol.iter275.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1470

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.fn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.fp = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.gf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.ft = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.fu = load float, ptr %i.fr, align 4, !noalias !1521, !noundef !4
  store float %i.fu, ptr %i.fs, align 4, !noalias !1521
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.ft
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.ft
  %i.fx = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.fy = load float, ptr %i.fv, align 4, !noalias !1521, !noundef !4
  store float %i.fy, ptr %i.fw, align 4, !noalias !1521
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fx
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fx
  %i.gb = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !noalias !1521, !noundef !4
  store float %i.gc, ptr %i.ga, align 4, !noalias !1521
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gb
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gb
  %i.gf = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.gg = load float, ptr %i.gd, align 4, !noalias !1521, !noundef !4
  store float %i.gg, ptr %i.ge, align 4, !noalias !1521
  %exitcond.not.i96.i.3 = icmp eq i64 %i.gf, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1471

bb.ao:                                            ; preds = %.loopexit284.i, %.loopexit285.i
  %i.gh = mul i64 %i.da, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.gh, %i.db
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

.loopexit285.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block269, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1522
  br i1 %i.cr, label %bb.ap, label %bb.ao

.loopexit284.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block253, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1522
  br i1 %i.cr, label %bb.ao, label %bb.aq

bb.ap:                                            ; preds = %.loopexit285.i
  %.lhs.trunc155.i = trunc nuw nsw i64 %i.db to i16
  %i.gi = udiv i16 %.lhs.trunc155.i, 3
  %.zext156.i = zext nneg i16 %i.gi to i64
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext156.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1522
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gj, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ct)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.ap
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1522 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1522 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1522 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1522
  %i.gk = icmp eq i64 %i.da, 0
  br i1 %i.gk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8131.0203.i = phi i64 [ %i.gl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.da, %.lr.ph.preheader.i ]
  %.sroa.5129.0202.i = phi i64 [ %i.go, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5129.0202.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.gl = add i64 %.sroa.8131.0203.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.gm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.go = add i64 %.sroa.5129.0202.i, 1
  %i.gp = load float, ptr %i.gm, align 4, !noalias !1521, !noundef !4
  store float %i.gp, ptr %i.gn, align 4, !noalias !1521
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gr = load float, ptr %i.gq, align 4, !noalias !1521, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store float %i.gr, ptr %i.gs, align 4, !noalias !1521
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gu = load float, ptr %i.gt, align 4, !noalias !1521, !noundef !4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gw = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.gu, i64 0
  store <2 x float> %i.gw, ptr %i.gv, align 4, !noalias !1521
  %i.gx = icmp eq i64 %i.gl, 0
  br i1 %i.gx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.gy = shl i64 %i.da, 2                        ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 1025
  br i1 %i.gz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !13

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc15, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc13, %bb.ao
  %.sroa.7.0.i = phi i64 [ %i.hp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gh, %bb.ao ], [ 0, %.noexc13 ], [ 0, %.noexc15 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ao ], [ %i.i, %.noexc13 ], [ %i.i, %.noexc15 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.aq:                                            ; preds = %.loopexit284.i
  %i.ha = lshr i64 %i.db, 2
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1522
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hb, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cu)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %bb.aq
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1522 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1522 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1522 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1522
  %i.hc = icmp eq i64 %i.da, 0
  br i1 %i.hc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph207.preheader.i

.lr.ph207.preheader.i:                            ; preds = %.noexc15
  %umax262.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.preheader.i
  %.sroa.8146.0206.i = phi i64 [ %i.hd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.da, %.lr.ph207.preheader.i ]
  %.sroa.5144.0205.i = phi i64 [ %i.hg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph207.preheader.i ] ; 4 uses
  %exitcond263.not.i = icmp eq i64 %.sroa.5144.0205.i, %umax262.i
  br i1 %exitcond263.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph207.i
  %i.hd = add nsw i64 %.sroa.8146.0206.i, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.hf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.hg = add i64 %.sroa.5144.0205.i, 1
  %i.hh = load float, ptr %i.he, align 4, !noalias !1521, !noundef !4
  store float %i.hh, ptr %i.hf, align 4, !noalias !1521
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hj = load float, ptr %i.hi, align 4, !noalias !1521, !noundef !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store float %i.hj, ptr %i.hk, align 4, !noalias !1521
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !noalias !1521, !noundef !4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store float %i.hm, ptr %i.hn, align 4, !noalias !1521
  %i.ho = icmp eq i64 %i.hd, 0
  br i1 %i.ho, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph207.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.i
  %i.hp = mul nuw nsw i64 %i.da, 3
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i

bb.ar:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hq = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.hr = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.hs = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not80.i = icmp samesign ugt i64 %i.hr, %i.co
  %or.cond82.i = or i1 %i.hs, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.av, !prof !9

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ht = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.hu = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.hv = icmp samesign ult i64 %i.hu, %i.ht
  %.not79.i = icmp samesign ugt i64 %i.hu, %i.co
  %or.cond83.i = or i1 %i.hv, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ax, !prof !9

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hw = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.co
  %or.cond84.i = or i1 %i.hw, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ay, !prof !9

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hx = shl nuw nsw i64 %.sroa.038.0210.i, 1    ; 3 uses
  %i.hy = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.hz = icmp samesign ult i64 %i.hy, %i.hx
  %.not77.i = icmp samesign ugt i64 %i.hy, %i.co
  %or.cond85.i = or i1 %i.hz, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.az, !prof !9

bb.av:                                            ; preds = %bb.ar
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1522
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hr
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.ib, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.ic)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %bb.av
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1526 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1526 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1526 ; 8 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1526 ; 7 uses
  %i.id = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.id, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.ie = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ie, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.0.copyload.i.i
  %scevgep173 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.7.0.copyload.i103.i
  %i.if = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep174 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.if
  %i.ig = shl i64 %.sroa.7.0.copyload.i103.i, 2
  %scevgep175 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ig
  %bound0 = icmp ult ptr %scevgep, %scevgep175
  %bound1 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ie, -4                      ; 3 uses
  %i.ih = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ii = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.ii
  %wide.load = load <4 x float>, ptr %i.ij, align 4, !alias.scope !1527, !noalias !1521
  %i.il = fmul <4 x float> %wide.load, splat (float 2.550000e+02)
  %i.im = call <4 x float> @llvm.round.v4f32(<4 x float> %i.il)
  %i.in = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.im)
  store <4 x i8> %i.in, ptr %i.ik, align 1, !alias.scope !1528, !noalias !1529
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !1478

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ie, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ih, %middle.block ] ; 6 uses
  %i.ip = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %.neg282 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter279 = and i64 %i.ip, 1
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.ph
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.is = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.it = load float, ptr %i.iq, align 4, !noalias !1521, !noundef !4
  %i.iu = fmul float %i.it, 2.550000e+02
  %i.iv = call float @llvm.round.f32(float %i.iu)
  %i.iw = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.iv)
  store i8 %i.iw, ptr %i.ir, align 1, !noalias !1521
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.is, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ix = icmp eq i64 %.sroa.7.0.copyload.i103.i, %.neg282
  br i1 %i.ix, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.jh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.ja = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.jb = load float, ptr %i.iy, align 4, !noalias !1521, !noundef !4
  %i.jc = fmul float %i.jb, 2.550000e+02
  %i.jd = call float @llvm.round.f32(float %i.jc)
  %i.je = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.jd)
  store i8 %i.je, ptr %i.iz, align 1, !noalias !1521
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.ja
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.ja
  %i.jh = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.ji = load float, ptr %i.jf, align 4, !noalias !1521, !noundef !4
  %i.jj = fmul float %i.ji, 2.550000e+02
  %i.jk = call float @llvm.round.f32(float %i.jj)
  %i.jl = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.jk)
  store i8 %i.jl, ptr %i.jg, align 1, !noalias !1521
  %exitcond.not.i104.i.1 = icmp eq i64 %i.jh, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i104.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1479

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1522
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %.loopexit5, label %bb.ai

bb.ax:                                            ; preds = %bb.as
  %i.jm = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1522
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hu
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.jn, ptr noundef nonnull %i.jm, ptr noundef nonnull %i.jo)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.ax
  %.sroa.0.0.copyload.i105.i = load ptr, ptr %i.c, align 8, !noalias !1530 ; 7 uses
  %.sroa.43.0.copyload.i107.i = load ptr, ptr %.sroa.43.0..sroa_idx.i106.i, align 8, !noalias !1530 ; 7 uses
  %.sroa.54.0.copyload.i109.i = load i64, ptr %.sroa.54.0..sroa_idx.i108.i, align 8, !noalias !1530 ; 8 uses
  %.sroa.7.0.copyload.i111.i = load i64, ptr %.sroa.7.0..sroa_idx.i110.i, align 8, !noalias !1530 ; 7 uses
  %i.jp = icmp ult i64 %.sroa.54.0.copyload.i109.i, %.sroa.7.0.copyload.i111.i
  br i1 %i.jp, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i: ; preds = %.noexc20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i105.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i107.i) ]
  %i.jq = sub nuw i64 %.sroa.7.0.copyload.i111.i, %.sroa.54.0.copyload.i109.i ; 3 uses
  %min.iters.check185 = icmp ult i64 %i.jq, 4
  br i1 %min.iters.check185, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i
  %scevgep177 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %.sroa.54.0.copyload.i109.i
  %scevgep178 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %.sroa.7.0.copyload.i111.i
  %i.jr = shl i64 %.sroa.54.0.copyload.i109.i, 2
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutftEBa_:bb.a
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load266 = load <4 x float>, ptr %i.dv, align 4, !noalias !1624
  %wide.load267 = load <4 x float>, ptr %i.dx, align 4, !noalias !1624
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x float> %wide.load266, ptr %i.dw, align 4, !noalias !1624
  store <4 x float> %wide.load267, ptr %i.dy, align 4, !noalias !1624
  %index.next268 = add nuw i64 %index265, 8       ; 2 uses
  %i.dz = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.dz, label %middle.block269, label %vector.body264, !llvm.loop !1566

middle.block269:                                  ; preds = %vector.body264
  %cmp.n270 = icmp eq i64 %i.dr, %n.vec263
  br i1 %cmp.n270, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block269
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.dt, %middle.block269 ] ; 4 uses
  %i.ea = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter = and i64 %i.ea, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.ed, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ed = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.ee = load float, ptr %i.eb, align 4, !noalias !1624, !noundef !4
  store float %i.ee, ptr %i.ec, align 4, !noalias !1624
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1567

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.ed, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ef = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.ev, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ej = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.ek = load float, ptr %i.eh, align 4, !noalias !1624, !noundef !4
  store float %i.ek, ptr %i.ei, align 4, !noalias !1624
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ej
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ej
  %i.en = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !noalias !1624, !noundef !4
  store float %i.eo, ptr %i.em, align 4, !noalias !1624
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.en
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.en
  %i.er = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.es = load float, ptr %i.ep, align 4, !noalias !1624, !noundef !4
  store float %i.es, ptr %i.eq, align 4, !noalias !1624
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.er
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.er
  %i.ev = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.ew = load float, ptr %i.et, align 4, !noalias !1624, !noundef !4
  store float %i.ew, ptr %i.eu, align 4, !noalias !1624
  %exitcond.not.i.i7.3 = icmp eq i64 %i.ev, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i7.3, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1568

bb.an:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1625
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dl
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.db
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.ex, ptr noundef nonnull readonly %i.ey, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.ez)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.an
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1628 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1628 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1628 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1628 ; 5 uses
  %i.fa = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.fa, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit284.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc12
  %.sroa.44.0.copyload.i88.i242 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i243 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.fb = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check245 = icmp ult i64 %i.fb, 8
  %i.fc = sub i64 %.sroa.0.0.copyload.i86.i243, %.sroa.44.0.copyload.i88.i242
  %diff.check = icmp ugt i64 %i.fc, -32
  %or.cond272 = select i1 %min.iters.check245, i1 true, i1 %diff.check
  br i1 %or.cond272, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec247 = and i64 %i.fb, -8                   ; 3 uses
  %i.fd = add i64 %.sroa.55.0.copyload.i90.i, %n.vec247
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next252, %vector.body248 ] ; 2 uses
  %i.fe = add nuw i64 %.sroa.55.0.copyload.i90.i, %index249 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fe ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load250 = load <4 x float>, ptr %i.ff, align 4, !noalias !1624
  %wide.load251 = load <4 x float>, ptr %i.fh, align 4, !noalias !1624
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x float> %wide.load250, ptr %i.fg, align 4, !noalias !1624
  store <4 x float> %wide.load251, ptr %i.fi, align 4, !noalias !1624
  %index.next252 = add nuw i64 %index249, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next252, %n.vec247
  br i1 %i.fj, label %middle.block253, label %vector.body248, !llvm.loop !1572

middle.block253:                                  ; preds = %vector.body248
  %cmp.n254 = icmp eq i64 %i.fb, %n.vec247
  br i1 %cmp.n254, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block253
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.fd, %middle.block253 ] ; 4 uses
  %i.fk = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter273 = and i64 %i.fk, 3                 ; 2 uses
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.fn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter275 = phi i64 [ %prol.iter275.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.fn = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.fo = load float, ptr %i.fl, align 4, !noalias !1624, !noundef !4
  store float %i.fo, ptr %i.fm, align 4, !noalias !1624
  %prol.iter275.next = add i64 %prol.iter275, 1   ; 2 uses
  %prol.iter275.cmp.not = icmp eq i64 %prol.iter275.next, %xtraiter273
  br i1 %prol.iter275.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1573

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.fn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.fp = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.gf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.ft = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.fu = load float, ptr %i.fr, align 4, !noalias !1624, !noundef !4
  store float %i.fu, ptr %i.fs, align 4, !noalias !1624
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.ft
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.ft
  %i.fx = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.fy = load float, ptr %i.fv, align 4, !noalias !1624, !noundef !4
  store float %i.fy, ptr %i.fw, align 4, !noalias !1624
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fx
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fx
  %i.gb = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !noalias !1624, !noundef !4
  store float %i.gc, ptr %i.ga, align 4, !noalias !1624
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gb
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gb
  %i.gf = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.gg = load float, ptr %i.gd, align 4, !noalias !1624, !noundef !4
  store float %i.gg, ptr %i.ge, align 4, !noalias !1624
  %exitcond.not.i96.i.3 = icmp eq i64 %i.gf, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1574

bb.ao:                                            ; preds = %.loopexit284.i, %.loopexit285.i
  %i.gh = mul i64 %i.da, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.gh, %i.db
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

.loopexit285.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block269, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1625
  br i1 %i.cr, label %bb.ap, label %bb.ao

.loopexit284.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block253, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1625
  br i1 %i.cr, label %bb.ao, label %bb.aq

bb.ap:                                            ; preds = %.loopexit285.i
  %.lhs.trunc155.i = trunc nuw nsw i64 %i.db to i16
  %i.gi = udiv i16 %.lhs.trunc155.i, 3
  %.zext156.i = zext nneg i16 %i.gi to i64
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext156.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1625
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gj, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ct)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.ap
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1625 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1625 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1625 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1625
  %i.gk = icmp eq i64 %i.da, 0
  br i1 %i.gk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8131.0203.i = phi i64 [ %i.gl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.da, %.lr.ph.preheader.i ]
  %.sroa.5129.0202.i = phi i64 [ %i.go, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5129.0202.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.gl = add i64 %.sroa.8131.0203.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.gm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.go = add i64 %.sroa.5129.0202.i, 1
  %i.gp = load float, ptr %i.gm, align 4, !noalias !1624, !noundef !4
  store float %i.gp, ptr %i.gn, align 4, !noalias !1624
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gr = load float, ptr %i.gq, align 4, !noalias !1624, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store float %i.gr, ptr %i.gs, align 4, !noalias !1624
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gu = load float, ptr %i.gt, align 4, !noalias !1624, !noundef !4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gw = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.gu, i64 0
  store <2 x float> %i.gw, ptr %i.gv, align 4, !noalias !1624
  %i.gx = icmp eq i64 %i.gl, 0
  br i1 %i.gx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.gy = shl i64 %i.da, 2                        ; 3 uses
  %i.gz = icmp ult i64 %i.gy, 1025
  br i1 %i.gz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !13

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc15, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc13, %bb.ao
  %.sroa.7.0.i = phi i64 [ %i.hp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gh, %bb.ao ], [ 0, %.noexc13 ], [ 0, %.noexc15 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ao ], [ %i.i, %.noexc13 ], [ %i.i, %.noexc15 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.aq:                                            ; preds = %.loopexit284.i
  %i.ha = lshr i64 %i.db, 2
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1625
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hb, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cu)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %bb.aq
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1625 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1625 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1625 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1625
  %i.hc = icmp eq i64 %i.da, 0
  br i1 %i.hc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph207.preheader.i

.lr.ph207.preheader.i:                            ; preds = %.noexc15
  %umax262.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.preheader.i
  %.sroa.8146.0206.i = phi i64 [ %i.hd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.da, %.lr.ph207.preheader.i ]
  %.sroa.5144.0205.i = phi i64 [ %i.hg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph207.preheader.i ] ; 4 uses
  %exitcond263.not.i = icmp eq i64 %.sroa.5144.0205.i, %umax262.i
  br i1 %exitcond263.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph207.i
  %i.hd = add nsw i64 %.sroa.8146.0206.i, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.hf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.hg = add i64 %.sroa.5144.0205.i, 1
  %i.hh = load float, ptr %i.he, align 4, !noalias !1624, !noundef !4
  store float %i.hh, ptr %i.hf, align 4, !noalias !1624
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hj = load float, ptr %i.hi, align 4, !noalias !1624, !noundef !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store float %i.hj, ptr %i.hk, align 4, !noalias !1624
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !noalias !1624, !noundef !4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store float %i.hm, ptr %i.hn, align 4, !noalias !1624
  %i.ho = icmp eq i64 %i.hd, 0
  br i1 %i.ho, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph207.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.i
  %i.hp = mul nuw nsw i64 %i.da, 3
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i

bb.ar:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hq = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.hr = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.hs = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not80.i = icmp samesign ugt i64 %i.hr, %i.co
  %or.cond82.i = or i1 %i.hs, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.av, !prof !9

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ht = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.hu = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.hv = icmp samesign ult i64 %i.hu, %i.ht
  %.not79.i = icmp samesign ugt i64 %i.hu, %i.co
  %or.cond83.i = or i1 %i.hv, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ax, !prof !9

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hw = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.co
  %or.cond84.i = or i1 %i.hw, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ay, !prof !9

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hx = shl nuw nsw i64 %.sroa.038.0210.i, 1    ; 3 uses
  %i.hy = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.hz = icmp samesign ult i64 %i.hy, %i.hx
  %.not77.i = icmp samesign ugt i64 %i.hy, %i.co
  %or.cond85.i = or i1 %i.hz, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.az, !prof !9

bb.av:                                            ; preds = %bb.ar
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1625
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.hr
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.ib, ptr noundef nonnull align 2 %i.ia, ptr noundef nonnull %i.ic)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %bb.av
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1629 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1629 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1629 ; 8 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1629 ; 7 uses
  %i.id = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.id, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.ie = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ie, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.if = shl i64 %.sroa.54.0.copyload.i.i, 1
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.if
  %i.ig = shl i64 %.sroa.7.0.copyload.i103.i, 1
  %scevgep173 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.ig
  %i.ih = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep174 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ih
  %i.ii = shl i64 %.sroa.7.0.copyload.i103.i, 2
  %scevgep175 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ii
  %bound0 = icmp ult ptr %scevgep, %scevgep175
  %bound1 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ie, -4                      ; 3 uses
  %i.ij = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ik = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.ik
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.ik
  %wide.load = load <4 x float>, ptr %i.il, align 4, !alias.scope !1630, !noalias !1624
  %i.in = fmul <4 x float> %wide.load, splat (float 6.553500e+04)
  %i.io = call <4 x float> @llvm.round.v4f32(<4 x float> %i.in)
  %i.ip = call <4 x i16> @llvm.fptoui.sat.v4i16.v4f32(<4 x float> %i.io)
  store <4 x i16> %i.ip, ptr %i.im, align 2, !alias.scope !1631, !noalias !1632
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !1581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ie, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ij, %middle.block ] ; 6 uses
  %i.ir = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %.neg282 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter279 = and i64 %i.ir, 1
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.ph
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.iu = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.iv = load float, ptr %i.is, align 4, !noalias !1624, !noundef !4
  %i.iw = fmul float %i.iv, 6.553500e+04
  %i.ix = call float @llvm.round.f32(float %i.iw)
  %i.iy = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.ix)
  store i16 %i.iy, ptr %i.it, align 2, !noalias !1624
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.iu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.iz = icmp eq i64 %.sroa.7.0.copyload.i103.i, %.neg282
  br i1 %i.iz, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.jj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.jc = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.jd = load float, ptr %i.ja, align 4, !noalias !1624, !noundef !4
  %i.je = fmul float %i.jd, 6.553500e+04
  %i.jf = call float @llvm.round.f32(float %i.je)
  %i.jg = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.jf)
  store i16 %i.jg, ptr %i.jb, align 2, !noalias !1624
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jc
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jc
  %i.jj = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.jk = load float, ptr %i.jh, align 4, !noalias !1624, !noundef !4
  %i.jl = fmul float %i.jk, 6.553500e+04
  %i.jm = call float @llvm.round.f32(float %i.jl)
  %i.jn = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.jm)
  store i16 %i.jn, ptr %i.ji, align 2, !noalias !1624
  %exitcond.not.i104.i.1 = icmp eq i64 %i.jj, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i104.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1582

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1625
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %.loopexit5, label %bb.ai

bb.ax:                                            ; preds = %bb.as
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1625
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.hu
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.jp, ptr noundef nonnull align 2 %i.jo, ptr noundef nonnull %i.jq)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.ax
  %.sroa.0.0.copyload.i105.i = load ptr, ptr %i.c, align 8, !noalias !1633 ; 7 uses
  %.sroa.43.0.copyload.i107.i = load ptr, ptr %.sroa.43.0..sroa_idx.i106.i, align 8, !noalias !1633 ; 7 uses
  %.sroa.54.0.copyload.i109.i = load i64, ptr %.sroa.54.0..sroa_idx.i108.i, align 8, !noalias !1633 ; 8 uses
  %.sroa.7.0.copyload.i111.i = load i64, ptr %.sroa.7.0..sroa_idx.i110.i, align 8, !noalias !1633 ; 7 uses
  %i.jr = icmp ult i64 %.sroa.54.0.copyload.i109.i, %.sroa.7.0.copyload.i111.i
  br i1 %i.jr, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i: ; preds = %.noexc20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i105.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i107.i) ]
  %i.js = sub nuw i64 %.sroa.7.0.copyload.i111.i, %.sroa.54.0.copyload.i109.i ; 3 uses
  %min.iters.check185 = icmp ult i64 %i.js, 4
  br i1 %min.iters.check185, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i
  %i.jt = shl i64 %.sroa.54.0.copyload.i109.i, 1
end_hunk_2
begin_hunk_3_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthfEBa_:switch.lookup
  br i1 %exitcond.not.i100.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1697

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block319, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1754
  br label %bb.au

bb.ax:                                            ; preds = %bb.as
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ea ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1754
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.dm
  %i.js = lshr i64 %i.dn, 2
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.js
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly %i.jq, ptr noundef nonnull readonly %i.jr, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.jt)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.ax
  %.sroa.08.0.copyload.i.i11 = load ptr, ptr %i.f, align 8, !noalias !1767 ; 10 uses
  %.sroa.410.0.copyload.i.i12 = load ptr, ptr %.sroa.410.0..sroa_idx.i.i7, align 8, !noalias !1767 ; 7 uses
  %.sroa.511.0.copyload.i.i13 = load i64, ptr %.sroa.511.0..sroa_idx.i.i8, align 8, !noalias !1767 ; 8 uses
  %.sroa.712.0.copyload.i.i14 = load i64, ptr %.sroa.712.0..sroa_idx.i.i9, align 8, !noalias !1767 ; 7 uses
  %i.ju = icmp ult i64 %.sroa.511.0.copyload.i.i13, %.sroa.712.0.copyload.i.i14
  br i1 %i.ju, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i11) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i12) ]
  %i.jv = sub nuw i64 %.sroa.712.0.copyload.i.i14, %.sroa.511.0.copyload.i.i13 ; 3 uses
  %min.iters.check331 = icmp ult i64 %i.jv, 4
  br i1 %min.iters.check331, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck322

vector.memcheck322:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.jw = shl i64 %.sroa.511.0.copyload.i.i13, 4
  %scevgep323 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i12, i64 %i.jw
  %i.jx = shl i64 %.sroa.712.0.copyload.i.i14, 4
  %scevgep324 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i12, i64 %i.jx
  %i.jy = shl i64 %.sroa.511.0.copyload.i.i13, 1
  %scevgep325 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i11, i64 %i.jy
  %i.jz = shl i64 %.sroa.712.0.copyload.i.i14, 1
  %scevgep326 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i11, i64 %i.jz
  %bound0327 = icmp ult ptr %scevgep323, %scevgep326
  %bound1328 = icmp ult ptr %scevgep325, %scevgep324
  %found.conflict329 = and i1 %bound0327, %bound1328
  br i1 %found.conflict329, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck322
  %n.vec333 = and i64 %i.jv, -4                   ; 3 uses
  %i.ka = add i64 %.sroa.511.0.copyload.i.i13, %n.vec333
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next337, %vector.body334 ] ; 2 uses
  %i.kb = add nuw i64 %.sroa.511.0.copyload.i.i13, %index335 ; 5 uses
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kb ; 2 uses
  %i.kd = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kb ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 2
  %i.kf = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kb ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 4
  %i.kh = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kb ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 6
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %i.kb
  %i.kk = load i8, ptr %i.kc, align 1, !alias.scope !1768, !noalias !1753, !noundef !4
  %i.kl = load i8, ptr %i.ke, align 1, !alias.scope !1768, !noalias !1753, !noundef !4
  %i.km = load i8, ptr %i.kg, align 1, !alias.scope !1768, !noalias !1753, !noundef !4
  %i.kn = load i8, ptr %i.ki, align 1, !alias.scope !1768, !noalias !1753, !noundef !4
  %i.ko = insertelement <4 x i8> poison, i8 %i.kk, i64 0
  %i.kp = insertelement <4 x i8> %i.ko, i8 %i.kl, i64 1
  %i.kq = insertelement <4 x i8> %i.kp, i8 %i.km, i64 2
  %i.kr = insertelement <4 x i8> %i.kq, i8 %i.kn, i64 3
  %i.ks = uitofp <4 x i8> %i.kr to <4 x float>
  %i.kt = fmul nnan <4 x float> %i.ks, splat (float f0x3B808081)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kc, i64 1
  %i.kv = getelementptr i8, ptr %i.kd, i64 3
  %i.kw = getelementptr i8, ptr %i.kf, i64 5
  %i.kx = getelementptr i8, ptr %i.kh, i64 7
  %i.ky = load i8, ptr %i.ku, align 1, !alias.scope !1768, !noalias !1753, !noundef !4
  %i.kz = load i8, ptr %i.kv, align 1, !alias.scope !1768, !noalias !1753, !noundef !4
  %i.la = load i8, ptr %i.kw, align 1, !alias.scope !1768, !noalias !1753, !noundef !4
  %i.lb = load i8, ptr %i.kx, align 1, !alias.scope !1768, !noalias !1753, !noundef !4
  %i.lc = insertelement <4 x i8> poison, i8 %i.ky, i64 0
  %i.ld = insertelement <4 x i8> %i.lc, i8 %i.kz, i64 1
  %i.le = insertelement <4 x i8> %i.ld, i8 %i.la, i64 2
  %i.lf = insertelement <4 x i8> %i.le, i8 %i.lb, i64 3
  %i.lg = uitofp <4 x i8> %i.lf to <4 x float>
  %i.lh = fmul nnan <4 x float> %i.lg, splat (float f0x3B808081)
  %interleaved.vec336 = shufflevector <4 x float> %i.kt, <4 x float> %i.lh, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 1, i32 1, i32 1, i32 5, i32 2, i32 2, i32 2, i32 6, i32 3, i32 3, i32 3, i32 7>
  store <16 x float> %interleaved.vec336, ptr %i.kj, align 4, !alias.scope !1769, !noalias !1753
  %index.next337 = add nuw i64 %index335, 4       ; 2 uses
  %i.li = icmp eq i64 %index.next337, %n.vec333
  br i1 %i.li, label %middle.block338, label %vector.body334, !llvm.loop !1704

middle.block338:                                  ; preds = %vector.body334
  %cmp.n339 = icmp eq i64 %i.jv, %n.vec333
  br i1 %cmp.n339, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck322, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block338
  %.sroa.511.017.i.i15.ph = phi i64 [ %.sroa.511.0.copyload.i.i13, %vector.memcheck322 ], [ %.sroa.511.0.copyload.i.i13, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ka, %middle.block338 ] ; 6 uses
  %i.lj = sub i64 %.sroa.712.0.copyload.i.i14, %.sroa.511.017.i.i15.ph
  %.neg = add i64 %.sroa.511.017.i.i15.ph, 1
  %xtraiter = and i64 %i.lj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %.sroa.511.017.i.i15.ph ; 2 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %.sroa.511.017.i.i15.ph ; 4 uses
  %i.lm = add nuw i64 %.sroa.511.017.i.i15.ph, 1
  %i.ln = load i8, ptr %i.lk, align 1, !noalias !1753, !noundef !4
  %i.lo = uitofp i8 %i.ln to float
  %i.lp = fmul nnan float %i.lo, f0x3B808081      ; 3 uses
  store float %i.lp, ptr %i.ll, align 4, !noalias !1753
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store float %i.lp, ptr %i.lq, align 4, !noalias !1753
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store float %i.lp, ptr %i.lr, align 4, !noalias !1753
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lk, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !1753, !noundef !4
  %i.lu = uitofp i8 %i.lt to float
  %i.lv = fmul nnan float %i.lu, f0x3B808081
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  store float %i.lv, ptr %i.lw, align 4, !noalias !1753
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.511.017.i.i15.unr = phi i64 [ %.sroa.511.017.i.i15.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.lm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.lx = icmp eq i64 %.sroa.712.0.copyload.i.i14, %.neg
  br i1 %i.lx, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i.i15 = phi i64 [ %i.mn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i.i15.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %.sroa.511.017.i.i15 ; 2 uses
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %.sroa.511.017.i.i15 ; 4 uses
  %i.ma = add nuw i64 %.sroa.511.017.i.i15, 1     ; 2 uses
  %i.mb = load i8, ptr %i.ly, align 1, !noalias !1753, !noundef !4
  %i.mc = uitofp i8 %i.mb to float
  %i.md = fmul nnan float %i.mc, f0x3B808081      ; 3 uses
  store float %i.md, ptr %i.lz, align 4, !noalias !1753
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store float %i.md, ptr %i.me, align 4, !noalias !1753
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store float %i.md, ptr %i.mf, align 4, !noalias !1753
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !noalias !1753, !noundef !4
  %i.mi = uitofp i8 %i.mh to float
  %i.mj = fmul nnan float %i.mi, f0x3B808081
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  store float %i.mj, ptr %i.mk, align 4, !noalias !1753
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.ma ; 2 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %i.ma ; 4 uses
  %i.mn = add nuw i64 %.sroa.511.017.i.i15, 2     ; 2 uses
  %i.mo = load i8, ptr %i.ml, align 1, !noalias !1753, !noundef !4
  %i.mp = uitofp i8 %i.mo to float
  %i.mq = fmul nnan float %i.mp, f0x3B808081      ; 3 uses
  store float %i.mq, ptr %i.mm, align 4, !noalias !1753
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store float %i.mq, ptr %i.mr, align 4, !noalias !1753
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store float %i.mq, ptr %i.ms, align 4, !noalias !1753
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %i.mu = load i8, ptr %i.mt, align 1, !noalias !1753, !noundef !4
  %i.mv = uitofp i8 %i.mu to float
  %i.mw = fmul nnan float %i.mv, f0x3B808081
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  store float %i.mw, ptr %i.mx, align 4, !noalias !1753
  %exitcond.not.i101.i.1 = icmp eq i64 %i.mn, %.sroa.712.0.copyload.i.i14
  br i1 %exitcond.not.i101.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1705

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block338, %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1754
  br label %bb.au

bb.ay:                                            ; preds = %bb.ba, %bb.az
  %i.my = mul i64 %i.dm, %.sroa.019.0.i           ; 3 uses
  %.not76.i = icmp ugt i64 %i.my, %i.dn
  br i1 %.not76.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

bb.az:                                            ; preds = %bb.au
  br i1 %i.df, label %bb.bb, label %bb.ay

bb.ba:                                            ; preds = %bb.au
  br i1 %i.de, label %bb.bc, label %bb.ay

bb.bb:                                            ; preds = %bb.az
  %.lhs.trunc160.i = trunc nuw nsw i64 %i.dn to i16
  %i.mz = udiv i16 %.lhs.trunc160.i, 3
  %.zext161.i = zext nneg i16 %i.mz to i64
  %i.na = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %.zext161.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1754
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.na, ptr noundef nonnull %i.l, ptr noundef nonnull %i.di)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %bb.bb
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !1754 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1754 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1754 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1754
  %i.nb = icmp eq i64 %i.dm, 0
  br i1 %i.nb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph222.preheader.i

.lr.ph222.preheader.i:                            ; preds = %.noexc26
  %umax285.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.preheader.i
  %.sroa.8136.0221.i = phi i64 [ %i.nc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.dm, %.lr.ph222.preheader.i ]
  %.sroa.5134.0220.i = phi i64 [ %i.nf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph222.preheader.i ] ; 4 uses
  %exitcond286.not.i = icmp eq i64 %.sroa.5134.0220.i, %umax285.i
  br i1 %exitcond286.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph222.i
  %i.nc = add i64 %.sroa.8136.0221.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.nf = add i64 %.sroa.5134.0220.i, 1
  %i.ng = load float, ptr %i.nd, align 4, !noalias !1753, !noundef !4
  store float %i.ng, ptr %i.ne, align 4, !noalias !1753
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.ni = load float, ptr %i.nh, align 4, !noalias !1753, !noundef !4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  store float %i.ni, ptr %i.nj, align 4, !noalias !1753
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nl = load float, ptr %i.nk, align 4, !noalias !1753, !noundef !4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.nl, i64 0
  store <2 x float> %i.nn, ptr %i.nm, align 4, !noalias !1753
  %i.no = icmp eq i64 %i.nc, 0
  br i1 %i.no, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph222.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.i
  %i.np = shl i64 %i.dm, 2                        ; 3 uses
  %i.nq = icmp ult i64 %i.np, 1025
  br i1 %i.nq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc28, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc26, %bb.ay
  %.sroa.7.0.i = phi i64 [ %i.og, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.np, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.my, %bb.ay ], [ 0, %.noexc26 ], [ 0, %.noexc28 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.m, %bb.ay ], [ %i.l, %.noexc26 ], [ %i.l, %.noexc28 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.bd
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 3, label %bb.bg
  ]

bb.bc:                                            ; preds = %bb.ba
  %i.nr = lshr i64 %i.dn, 2
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1754
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.m, ptr noundef nonnull %i.ns, ptr noundef nonnull %i.l, ptr noundef nonnull %i.dh)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %bb.bc
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !noalias !1754 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1754 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1754 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1754
  %i.nt = icmp eq i64 %i.dm, 0
  br i1 %i.nt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc28
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8151.0218.i = phi i64 [ %i.nu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.dm, %.lr.ph.preheader.i ]
  %.sroa.5149.0217.i = phi i64 [ %i.nx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5149.0217.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.nu = add i64 %.sroa.8151.0218.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.nw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.nx = add i64 %.sroa.5149.0217.i, 1
  %i.ny = load float, ptr %i.nv, align 4, !noalias !1753, !noundef !4
  store float %i.ny, ptr %i.nw, align 4, !noalias !1753
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.oa = load float, ptr %i.nz, align 4, !noalias !1753, !noundef !4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  store float %i.oa, ptr %i.ob, align 4, !noalias !1753
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.od = load float, ptr %i.oc, align 4, !noalias !1753, !noundef !4
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store float %i.od, ptr %i.oe, align 4, !noalias !1753
  %i.of = icmp eq i64 %i.nu, 0
  br i1 %i.of, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.og = mul i64 %i.dm, 3                        ; 3 uses
  %i.oh = icmp ult i64 %i.og, 1025
  br i1 %i.oh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

bb.bd:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.oi = mul i64 %.sroa.038.0225.i, 3            ; 3 uses
  %i.oj = mul i64 %..i.i, 3                       ; 4 uses
  %i.ok = icmp ult i64 %i.oj, %i.oi
  %.not81.i = icmp ugt i64 %i.oj, %i.cz
  %or.cond85.i = or i1 %i.ok, %.not81.i
  br i1 %or.cond85.i, label %.invoke, label %bb.bh, !prof !9

bb.be:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ol = shl i64 %.sroa.038.0225.i, 2            ; 3 uses
  %i.om = shl i64 %..i.i, 2                       ; 4 uses
  %i.on = icmp ult i64 %i.om, %i.ol
  %.not80.i = icmp ugt i64 %i.om, %i.cz
  %or.cond86.i = or i1 %i.on, %.not80.i
  br i1 %or.cond86.i, label %.invoke, label %bb.bj, !prof !9

bb.bf:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.oo = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not79.i = icmp samesign ugt i64 %..i.i, %i.cz
  %or.cond87.i = or i1 %i.oo, %.not79.i
  br i1 %or.cond87.i, label %.invoke, label %bb.bk, !prof !9

bb.bg:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.op = shl nuw i64 %.sroa.038.0225.i, 1        ; 3 uses
  %i.oq = shl nuw i64 %..i.i, 1                   ; 3 uses
  %i.or = icmp ult i64 %i.oq, %i.op
  %.not78.i = icmp ugt i64 %i.oq, %i.cz
  %or.cond88.i = or i1 %i.or, %.not78.i
  br i1 %or.cond88.i, label %.invoke, label %bb.bl, !prof !9

bb.bh:                                            ; preds = %bb.bd
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1754
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.oj
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.ot, ptr noundef nonnull align 4 %i.os, ptr noundef nonnull %i.ou)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.bh
  %.sroa.0.0.copyload.i106.i = load ptr, ptr %i.e, align 8, !noalias !1770 ; 8 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1770 ; 8 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1770 ; 5 uses
  %.sroa.7.0.copyload.i108.i = load i64, ptr %.sroa.7.0..sroa_idx.i107.i, align 8, !noalias !1770 ; 5 uses
  %i.ov = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i108.i
  br i1 %i.ov, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc31
  %.sroa.43.0.copyload.i.i201 = ptrtoaddr ptr %.sroa.43.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i106.i202 = ptrtoaddr ptr %.sroa.0.0.copyload.i106.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i106.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.ow = sub nuw i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ow, 8
  %i.ox = sub i64 %.sroa.0.0.copyload.i106.i202, %.sroa.43.0.copyload.i.i201
  %diff.check = icmp ugt i64 %i.ox, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %n.vec = and i64 %i.ow, -8                      ; 3 uses
  %i.oy = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oz = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.oz ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.oz ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %wide.load = load <4 x float>, ptr %i.pa, align 4, !noalias !1753
  %wide.load203 = load <4 x float>, ptr %i.pc, align 4, !noalias !1753
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  store <4 x float> %wide.load, ptr %i.pb, align 4, !noalias !1753
  store <4 x float> %wide.load203, ptr %i.pd, align 4, !noalias !1753
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pe = icmp eq i64 %index.next, %n.vec
  br i1 %i.pe, label %middle.block, label %vector.body, !llvm.loop !1709

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ow, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.oy, %middle.block ] ; 4 uses
  %i.pf = sub i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.09.i.i.ph
  %xtraiter371 = and i64 %i.pf, 3                 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.54.09.i.i.prol = phi i64 [ %i.pi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter373 = phi i64 [ %prol.iter373.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i.prol
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.prol
  %i.pi = add nuw i64 %.sroa.54.09.i.i.prol, 1    ; 2 uses
  %i.pj = load float, ptr %i.pg, align 4, !noalias !1753, !noundef !4
  store float %i.pj, ptr %i.ph, align 4, !noalias !1753
  %prol.iter373.next = add i64 %prol.iter373, 1   ; 2 uses
  %prol.iter373.cmp.not = icmp eq i64 %prol.iter373.next, %xtraiter371
  br i1 %prol.iter373.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1710

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.pi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.pk = sub i64 %.sroa.54.09.i.i.ph, %.sroa.7.0.copyload.i108.i
  %i.pl = icmp ugt i64 %i.pk, -4
  br i1 %i.pl, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.qa, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.po = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.pp = load float, ptr %i.pm, align 4, !noalias !1753, !noundef !4
  store float %i.pp, ptr %i.pn, align 4, !noalias !1753
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.po
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.po
  %i.ps = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.pt = load float, ptr %i.pq, align 4, !noalias !1753, !noundef !4
  store float %i.pt, ptr %i.pr, align 4, !noalias !1753
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.ps
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.ps
  %i.pw = add nuw i64 %.sroa.54.09.i.i, 3         ; 2 uses
  %i.px = load float, ptr %i.pu, align 4, !noalias !1753, !noundef !4
  store float %i.px, ptr %i.pv, align 4, !noalias !1753
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.pw
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.pw
  %i.qa = add nuw i64 %.sroa.54.09.i.i, 4         ; 2 uses
  %i.qb = load float, ptr %i.py, align 4, !noalias !1753, !noundef !4
  store float %i.qb, ptr %i.pz, align 4, !noalias !1753
  %exitcond.not.i109.i.3 = icmp eq i64 %i.qa, %.sroa.7.0.copyload.i108.i
  br i1 %exitcond.not.i109.i.3, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1711

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1754
  br label %bb.bi

bb.bi:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i
  %.not.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i, label %.loopexit4, label %bb.an

bb.bj:                                            ; preds = %bb.be
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1754
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.om
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.qd, ptr noundef nonnull align 4 %i.qc, ptr noundef nonnull %i.qe)
          to label %.noexc33 unwind label %.loopexit

.noexc33:                                         ; preds = %bb.bj
  %.sroa.0.0.copyload.i110.i = load ptr, ptr %i.d, align 8, !noalias !1771 ; 8 uses
  %.sroa.43.0.copyload.i112.i = load ptr, ptr %.sroa.43.0..sroa_idx.i111.i, align 8, !noalias !1771 ; 8 uses
  %.sroa.54.0.copyload.i114.i = load i64, ptr %.sroa.54.0..sroa_idx.i113.i, align 8, !noalias !1771 ; 5 uses
  %.sroa.7.0.copyload.i116.i = load i64, ptr %.sroa.7.0..sroa_idx.i115.i, align 8, !noalias !1771 ; 5 uses
  %i.qf = icmp ult i64 %.sroa.54.0.copyload.i114.i, %.sroa.7.0.copyload.i116.i
  br i1 %i.qf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i: ; preds = %.noexc33
  %.sroa.43.0.copyload.i112.i205 = ptrtoaddr ptr %.sroa.43.0.copyload.i112.i to i64
  %.sroa.0.0.copyload.i110.i206 = ptrtoaddr ptr %.sroa.0.0.copyload.i110.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i110.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i112.i) ]
  %i.qg = sub nuw i64 %.sroa.7.0.copyload.i116.i, %.sroa.54.0.copyload.i114.i ; 3 uses
  %min.iters.check209 = icmp ult i64 %i.qg, 8
  %i.qh = sub i64 %.sroa.0.0.copyload.i110.i206, %.sroa.43.0.copyload.i112.i205
  %diff.check207 = icmp ugt i64 %i.qh, -32
  %or.cond349 = select i1 %min.iters.check209, i1 true, i1 %diff.check207
  br i1 %or.cond349, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i118.i.preheader, label %vector.ph210
end_hunk_3
begin_hunk_4_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthhEBa_:switch.lookup
  br i1 %exitcond.not.i100.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1832

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block322, %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1893
  br label %bb.av

bb.ay:                                            ; preds = %bb.at
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 %i.fr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1893
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.fd
  %i.lj = lshr i64 %i.fe, 2
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.lj
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly %i.lh, ptr noundef nonnull readonly %i.li, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.lk)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.ay
  %.sroa.08.0.copyload.i.i10 = load ptr, ptr %i.f, align 8, !noalias !1906 ; 10 uses
  %.sroa.410.0.copyload.i.i11 = load ptr, ptr %.sroa.410.0..sroa_idx.i.i6, align 8, !noalias !1906 ; 7 uses
  %.sroa.511.0.copyload.i.i12 = load i64, ptr %.sroa.511.0..sroa_idx.i.i7, align 8, !noalias !1906 ; 8 uses
  %.sroa.712.0.copyload.i.i13 = load i64, ptr %.sroa.712.0..sroa_idx.i.i8, align 8, !noalias !1906 ; 7 uses
  %i.ll = icmp ult i64 %.sroa.511.0.copyload.i.i12, %.sroa.712.0.copyload.i.i13
  br i1 %i.ll, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i10) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i11) ]
  %i.lm = sub nuw i64 %.sroa.712.0.copyload.i.i13, %.sroa.511.0.copyload.i.i12 ; 3 uses
  %min.iters.check334 = icmp ult i64 %i.lm, 4
  br i1 %min.iters.check334, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck325

vector.memcheck325:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.ln = shl i64 %.sroa.511.0.copyload.i.i12, 4
  %scevgep326 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i11, i64 %i.ln
  %i.lo = shl i64 %.sroa.712.0.copyload.i.i13, 4
  %scevgep327 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i11, i64 %i.lo
  %i.lp = shl i64 %.sroa.511.0.copyload.i.i12, 1
  %scevgep328 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i10, i64 %i.lp
  %i.lq = shl i64 %.sroa.712.0.copyload.i.i13, 1
  %scevgep329 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i10, i64 %i.lq
  %bound0330 = icmp ult ptr %scevgep326, %scevgep329
  %bound1331 = icmp ult ptr %scevgep328, %scevgep327
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %vector.memcheck325
  %n.vec336 = and i64 %i.lm, -4                   ; 3 uses
  %i.lr = add i64 %.sroa.511.0.copyload.i.i12, %n.vec336
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next340, %vector.body337 ] ; 2 uses
  %i.ls = add nuw i64 %.sroa.511.0.copyload.i.i12, %index338 ; 5 uses
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %i.ls ; 2 uses
  %i.lu = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %i.ls ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 2
  %i.lw = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %i.ls ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 4
  %i.ly = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %i.ls ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 6
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i11, i64 %i.ls
  %i.mb = load i8, ptr %i.lt, align 1, !alias.scope !1907, !noalias !1892, !noundef !4
  %i.mc = load i8, ptr %i.lv, align 1, !alias.scope !1907, !noalias !1892, !noundef !4
  %i.md = load i8, ptr %i.lx, align 1, !alias.scope !1907, !noalias !1892, !noundef !4
  %i.me = load i8, ptr %i.lz, align 1, !alias.scope !1907, !noalias !1892, !noundef !4
  %i.mf = insertelement <4 x i8> poison, i8 %i.mb, i64 0
  %i.mg = insertelement <4 x i8> %i.mf, i8 %i.mc, i64 1
  %i.mh = insertelement <4 x i8> %i.mg, i8 %i.md, i64 2
  %i.mi = insertelement <4 x i8> %i.mh, i8 %i.me, i64 3
  %i.mj = uitofp <4 x i8> %i.mi to <4 x float>
  %i.mk = fmul nnan <4 x float> %i.mj, splat (float f0x3B808081)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.mm = getelementptr i8, ptr %i.lu, i64 3
  %i.mn = getelementptr i8, ptr %i.lw, i64 5
  %i.mo = getelementptr i8, ptr %i.ly, i64 7
  %i.mp = load i8, ptr %i.ml, align 1, !alias.scope !1907, !noalias !1892, !noundef !4
  %i.mq = load i8, ptr %i.mm, align 1, !alias.scope !1907, !noalias !1892, !noundef !4
  %i.mr = load i8, ptr %i.mn, align 1, !alias.scope !1907, !noalias !1892, !noundef !4
  %i.ms = load i8, ptr %i.mo, align 1, !alias.scope !1907, !noalias !1892, !noundef !4
  %i.mt = insertelement <4 x i8> poison, i8 %i.mp, i64 0
  %i.mu = insertelement <4 x i8> %i.mt, i8 %i.mq, i64 1
  %i.mv = insertelement <4 x i8> %i.mu, i8 %i.mr, i64 2
  %i.mw = insertelement <4 x i8> %i.mv, i8 %i.ms, i64 3
  %i.mx = uitofp <4 x i8> %i.mw to <4 x float>
  %i.my = fmul nnan <4 x float> %i.mx, splat (float f0x3B808081)
  %interleaved.vec339 = shufflevector <4 x float> %i.mk, <4 x float> %i.my, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 1, i32 1, i32 1, i32 5, i32 2, i32 2, i32 2, i32 6, i32 3, i32 3, i32 3, i32 7>
  store <16 x float> %interleaved.vec339, ptr %i.ma, align 4, !alias.scope !1908, !noalias !1892
  %index.next340 = add nuw i64 %index338, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next340, %n.vec336
  br i1 %i.mz, label %middle.block341, label %vector.body337, !llvm.loop !1839

middle.block341:                                  ; preds = %vector.body337
  %cmp.n342 = icmp eq i64 %i.lm, %n.vec336
  br i1 %cmp.n342, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck325, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block341
  %.sroa.511.017.i.i14.ph = phi i64 [ %.sroa.511.0.copyload.i.i12, %vector.memcheck325 ], [ %.sroa.511.0.copyload.i.i12, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.lr, %middle.block341 ] ; 6 uses
  %i.na = sub i64 %.sroa.712.0.copyload.i.i13, %.sroa.511.017.i.i14.ph
  %.neg378 = add i64 %.sroa.511.017.i.i14.ph, 1
  %xtraiter362 = and i64 %i.na, 1
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %.sroa.511.017.i.i14.ph ; 2 uses
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i11, i64 %.sroa.511.017.i.i14.ph ; 4 uses
  %i.nd = add nuw i64 %.sroa.511.017.i.i14.ph, 1
  %i.ne = load i8, ptr %i.nb, align 1, !noalias !1892, !noundef !4
  %i.nf = uitofp i8 %i.ne to float
  %i.ng = fmul nnan float %i.nf, f0x3B808081      ; 3 uses
  store float %i.ng, ptr %i.nc, align 4, !noalias !1892
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store float %i.ng, ptr %i.nh, align 4, !noalias !1892
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store float %i.ng, ptr %i.ni, align 4, !noalias !1892
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !noalias !1892, !noundef !4
  %i.nl = uitofp i8 %i.nk to float
  %i.nm = fmul nnan float %i.nl, f0x3B808081
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store float %i.nm, ptr %i.nn, align 4, !noalias !1892
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.511.017.i.i14.unr = phi i64 [ %.sroa.511.017.i.i14.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.nd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.no = icmp eq i64 %.sroa.712.0.copyload.i.i13, %.neg378
  br i1 %i.no, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i.i14 = phi i64 [ %i.oe, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i.i14.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %.sroa.511.017.i.i14 ; 2 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i11, i64 %.sroa.511.017.i.i14 ; 4 uses
  %i.nr = add nuw i64 %.sroa.511.017.i.i14, 1     ; 2 uses
  %i.ns = load i8, ptr %i.np, align 1, !noalias !1892, !noundef !4
  %i.nt = uitofp i8 %i.ns to float
  %i.nu = fmul nnan float %i.nt, f0x3B808081      ; 3 uses
  store float %i.nu, ptr %i.nq, align 4, !noalias !1892
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  store float %i.nu, ptr %i.nv, align 4, !noalias !1892
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store float %i.nu, ptr %i.nw, align 4, !noalias !1892
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  %i.ny = load i8, ptr %i.nx, align 1, !noalias !1892, !noundef !4
  %i.nz = uitofp i8 %i.ny to float
  %i.oa = fmul nnan float %i.nz, f0x3B808081
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nq, i64 12
  store float %i.oa, ptr %i.ob, align 4, !noalias !1892
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %i.nr ; 2 uses
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i11, i64 %i.nr ; 4 uses
  %i.oe = add nuw i64 %.sroa.511.017.i.i14, 2     ; 2 uses
  %i.of = load i8, ptr %i.oc, align 1, !noalias !1892, !noundef !4
  %i.og = uitofp i8 %i.of to float
  %i.oh = fmul nnan float %i.og, f0x3B808081      ; 3 uses
  store float %i.oh, ptr %i.od, align 4, !noalias !1892
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  store float %i.oh, ptr %i.oi, align 4, !noalias !1892
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store float %i.oh, ptr %i.oj, align 4, !noalias !1892
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !noalias !1892, !noundef !4
  %i.om = uitofp i8 %i.ol to float
  %i.on = fmul nnan float %i.om, f0x3B808081
  %i.oo = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  store float %i.on, ptr %i.oo, align 4, !noalias !1892
  %exitcond.not.i101.i.1 = icmp eq i64 %i.oe, %.sroa.712.0.copyload.i.i13
  br i1 %exitcond.not.i101.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1840

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block341, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1893
  br label %bb.av

bb.az:                                            ; preds = %bb.bb, %bb.ba
  %i.op = mul i64 %i.fd, %.sroa.019.0.i           ; 3 uses
  %.not76.i = icmp ugt i64 %i.op, %i.fe
  br i1 %.not76.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

bb.ba:                                            ; preds = %bb.av
  br i1 %i.eu, label %bb.bc, label %bb.az

bb.bb:                                            ; preds = %bb.av
  br i1 %i.et, label %bb.bd, label %bb.az

bb.bc:                                            ; preds = %bb.ba
  %.lhs.trunc160.i = trunc nuw nsw i64 %i.fe to i16
  %i.oq = udiv i16 %.lhs.trunc160.i, 3
  %.zext161.i = zext nneg i16 %i.oq to i64
  %i.or = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %.zext161.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1893
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.or, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ex)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.bc
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !1893 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1893 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1893 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1893
  %i.os = icmp eq i64 %i.fd, 0
  br i1 %i.os, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph222.preheader.i

.lr.ph222.preheader.i:                            ; preds = %.noexc25
  %umax285.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.preheader.i
  %.sroa.8136.0221.i = phi i64 [ %i.ot, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.fd, %.lr.ph222.preheader.i ]
  %.sroa.5134.0220.i = phi i64 [ %i.ow, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph222.preheader.i ] ; 4 uses
  %exitcond286.not.i = icmp eq i64 %.sroa.5134.0220.i, %umax285.i
  br i1 %exitcond286.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph222.i
  %i.ot = add i64 %.sroa.8136.0221.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.ou = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.ow = add i64 %.sroa.5134.0220.i, 1
  %i.ox = load float, ptr %i.ou, align 4, !noalias !1892, !noundef !4
  store float %i.ox, ptr %i.ov, align 4, !noalias !1892
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.oz = load float, ptr %i.oy, align 4, !noalias !1892, !noundef !4
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  store float %i.oz, ptr %i.pa, align 4, !noalias !1892
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.pc = load float, ptr %i.pb, align 4, !noalias !1892, !noundef !4
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pe = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pc, i64 0
  store <2 x float> %i.pe, ptr %i.pd, align 4, !noalias !1892
  %i.pf = icmp eq i64 %i.ot, 0
  br i1 %i.pf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph222.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.i
  %i.pg = shl i64 %i.fd, 2                        ; 3 uses
  %i.ph = icmp ult i64 %i.pg, 1025
  br i1 %i.ph, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc27, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc25, %bb.az
  %.sroa.7.0.i = phi i64 [ %i.px, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.pg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.op, %bb.az ], [ 0, %.noexc25 ], [ 0, %.noexc27 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.m, %bb.az ], [ %i.l, %.noexc25 ], [ %i.l, %.noexc27 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.be
    i8 1, label %bb.bf
    i8 2, label %bb.bg
    i8 3, label %bb.bh
  ]

bb.bd:                                            ; preds = %bb.bb
  %i.pi = lshr i64 %i.fe, 2
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.pi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1893
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.m, ptr noundef nonnull %i.pj, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ew)
          to label %.noexc27 unwind label %.loopexit

.noexc27:                                         ; preds = %bb.bd
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !noalias !1893 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1893 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1893 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1893
  %i.pk = icmp eq i64 %i.fd, 0
  br i1 %i.pk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc27
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8151.0218.i = phi i64 [ %i.pl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.fd, %.lr.ph.preheader.i ]
  %.sroa.5149.0217.i = phi i64 [ %i.po, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5149.0217.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.pl = add i64 %.sroa.8151.0218.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.pn = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.po = add i64 %.sroa.5149.0217.i, 1
  %i.pp = load float, ptr %i.pm, align 4, !noalias !1892, !noundef !4
  store float %i.pp, ptr %i.pn, align 4, !noalias !1892
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.pr = load float, ptr %i.pq, align 4, !noalias !1892, !noundef !4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  store float %i.pr, ptr %i.ps, align 4, !noalias !1892
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.pu = load float, ptr %i.pt, align 4, !noalias !1892, !noundef !4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store float %i.pu, ptr %i.pv, align 4, !noalias !1892
  %i.pw = icmp eq i64 %i.pl, 0
  br i1 %i.pw, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.px = mul i64 %i.fd, 3                        ; 3 uses
  %i.py = icmp ult i64 %i.px, 1025
  br i1 %i.py, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

bb.be:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.pz = mul i64 %.sroa.038.0225.i, 3            ; 3 uses
  %i.qa = mul i64 %..i.i, 3                       ; 4 uses
  %i.qb = icmp ult i64 %i.qa, %i.pz
  %.not81.i = icmp ugt i64 %i.qa, %i.eo
  %or.cond85.i = or i1 %i.qb, %.not81.i
  br i1 %or.cond85.i, label %.invoke, label %bb.bi, !prof !9

bb.bf:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.qc = shl i64 %.sroa.038.0225.i, 2            ; 3 uses
  %i.qd = shl i64 %..i.i, 2                       ; 4 uses
  %i.qe = icmp ult i64 %i.qd, %i.qc
  %.not80.i = icmp ugt i64 %i.qd, %i.eo
  %or.cond86.i = or i1 %i.qe, %.not80.i
  br i1 %or.cond86.i, label %.invoke, label %bb.bk, !prof !9

bb.bg:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.qf = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not79.i = icmp samesign ugt i64 %..i.i, %i.eo
  %or.cond87.i = or i1 %i.qf, %.not79.i
  br i1 %or.cond87.i, label %.invoke, label %bb.bl, !prof !9

bb.bh:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.qg = shl nuw i64 %.sroa.038.0225.i, 1        ; 3 uses
  %i.qh = shl nuw i64 %..i.i, 1                   ; 3 uses
  %i.qi = icmp ult i64 %i.qh, %i.qg
  %.not78.i = icmp ugt i64 %i.qh, %i.eo
  %or.cond88.i = or i1 %i.qi, %.not78.i
  br i1 %or.cond88.i, label %.invoke, label %bb.bm, !prof !9

bb.bi:                                            ; preds = %bb.be
  %i.qj = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1893
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.qa
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.qk, ptr noundef nonnull %i.qj, ptr noundef nonnull %i.ql)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %bb.bi
  %.sroa.0.0.copyload.i106.i = load ptr, ptr %i.e, align 8, !noalias !1909 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1909 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1909 ; 8 uses
  %.sroa.7.0.copyload.i108.i = load i64, ptr %.sroa.7.0..sroa_idx.i107.i, align 8, !noalias !1909 ; 7 uses
  %i.qm = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i108.i
  br i1 %i.qm, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc30
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i106.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.qn = sub nuw i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.qn, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.0.copyload.i.i
  %scevgep197 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.7.0.copyload.i108.i
  %i.qo = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep198 = getelementptr i8, ptr %.sroa.0.0.copyload.i106.i, i64 %i.qo
  %i.qp = shl i64 %.sroa.7.0.copyload.i108.i, 2
  %scevgep199 = getelementptr i8, ptr %.sroa.0.0.copyload.i106.i, i64 %i.qp
  %bound0 = icmp ult ptr %scevgep, %scevgep199
  %bound1 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.qn, -4                      ; 3 uses
  %i.qq = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qr = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.qr
  %wide.load = load <4 x float>, ptr %i.qs, align 4, !alias.scope !1910, !noalias !1892
  %i.qu = fmul <4 x float> %wide.load, splat (float 2.550000e+02)
  %i.qv = call <4 x float> @llvm.round.v4f32(<4 x float> %i.qu)
  %i.qw = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.qv)
  store <4 x i8> %i.qw, ptr %i.qt, align 1, !alias.scope !1911, !noalias !1912
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qx = icmp eq i64 %index.next, %n.vec
  br i1 %i.qx, label %middle.block, label %vector.body, !llvm.loop !1847

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qn, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.qq, %middle.block ] ; 6 uses
  %i.qy = sub i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.09.i.i.ph
  %.neg381 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter374 = and i64 %i.qy, 1
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i.ph
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.rb = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.rc = load float, ptr %i.qz, align 4, !noalias !1892, !noundef !4
  %i.rd = fmul float %i.rc, 2.550000e+02
  %i.re = call float @llvm.round.f32(float %i.rd)
  %i.rf = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.re)
  store i8 %i.rf, ptr %i.ra, align 1, !noalias !1892
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.rb, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.rg = icmp eq i64 %.sroa.7.0.copyload.i108.i, %.neg381
  br i1 %i.rg, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.rq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.rj = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.rk = load float, ptr %i.rh, align 4, !noalias !1892, !noundef !4
  %i.rl = fmul float %i.rk, 2.550000e+02
  %i.rm = call float @llvm.round.f32(float %i.rl)
  %i.rn = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.rm)
  store i8 %i.rn, ptr %i.ri, align 1, !noalias !1892
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.rj
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.rj
  %i.rq = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.rr = load float, ptr %i.ro, align 4, !noalias !1892, !noundef !4
  %i.rs = fmul float %i.rr, 2.550000e+02
  %i.rt = call float @llvm.round.f32(float %i.rs)
  %i.ru = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.rt)
  store i8 %i.ru, ptr %i.rp, align 1, !noalias !1892
  %exitcond.not.i109.i.1 = icmp eq i64 %i.rq, %.sroa.7.0.copyload.i108.i
  br i1 %exitcond.not.i109.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1848

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1893
  br label %bb.bj

bb.bj:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i
  %.not.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i, label %.loopexit4, label %bb.ao

bb.bk:                                            ; preds = %bb.bf
  %i.rv = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.qc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1893
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.rx = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.qd
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.rw, ptr noundef nonnull %i.rv, ptr noundef nonnull %i.rx)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %bb.bk
  %.sroa.0.0.copyload.i110.i = load ptr, ptr %i.d, align 8, !noalias !1913 ; 7 uses
  %.sroa.43.0.copyload.i112.i = load ptr, ptr %.sroa.43.0..sroa_idx.i111.i, align 8, !noalias !1913 ; 7 uses
  %.sroa.54.0.copyload.i114.i = load i64, ptr %.sroa.54.0..sroa_idx.i113.i, align 8, !noalias !1913 ; 8 uses
  %.sroa.7.0.copyload.i116.i = load i64, ptr %.sroa.7.0..sroa_idx.i115.i, align 8, !noalias !1913 ; 7 uses
  %i.ry = icmp ult i64 %.sroa.54.0.copyload.i114.i, %.sroa.7.0.copyload.i116.i
  br i1 %i.ry, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i: ; preds = %.noexc32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i110.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i112.i) ]
  %i.rz = sub nuw i64 %.sroa.7.0.copyload.i116.i, %.sroa.54.0.copyload.i114.i ; 3 uses
  %min.iters.check209 = icmp ult i64 %i.rz, 4
  br i1 %min.iters.check209, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i118.i.preheader, label %vector.memcheck200

vector.memcheck200:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i
  %scevgep201 = getelementptr i8, ptr %.sroa.43.0.copyload.i112.i, i64 %.sroa.54.0.copyload.i114.i
  %scevgep202 = getelementptr i8, ptr %.sroa.43.0.copyload.i112.i, i64 %.sroa.7.0.copyload.i116.i
end_hunk_4
begin_hunk_5_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthtEBa_:switch.lookup
  br i1 %exitcond.not.i100.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1977

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block324, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2038
  br label %bb.au

bb.ax:                                            ; preds = %bb.as
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 %i.ec ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2038
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.do
  %i.ju = lshr i64 %i.dp, 2
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ju
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly %i.js, ptr noundef nonnull readonly %i.jt, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.jv)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.ax
  %.sroa.08.0.copyload.i.i11 = load ptr, ptr %i.f, align 8, !noalias !2051 ; 10 uses
  %.sroa.410.0.copyload.i.i12 = load ptr, ptr %.sroa.410.0..sroa_idx.i.i7, align 8, !noalias !2051 ; 7 uses
  %.sroa.511.0.copyload.i.i13 = load i64, ptr %.sroa.511.0..sroa_idx.i.i8, align 8, !noalias !2051 ; 8 uses
  %.sroa.712.0.copyload.i.i14 = load i64, ptr %.sroa.712.0..sroa_idx.i.i9, align 8, !noalias !2051 ; 7 uses
  %i.jw = icmp ult i64 %.sroa.511.0.copyload.i.i13, %.sroa.712.0.copyload.i.i14
  br i1 %i.jw, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i11) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i12) ]
  %i.jx = sub nuw i64 %.sroa.712.0.copyload.i.i14, %.sroa.511.0.copyload.i.i13 ; 3 uses
  %min.iters.check336 = icmp ult i64 %i.jx, 4
  br i1 %min.iters.check336, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck327

vector.memcheck327:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.jy = shl i64 %.sroa.511.0.copyload.i.i13, 4
  %scevgep328 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i12, i64 %i.jy
  %i.jz = shl i64 %.sroa.712.0.copyload.i.i14, 4
  %scevgep329 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i12, i64 %i.jz
  %i.ka = shl i64 %.sroa.511.0.copyload.i.i13, 1
  %scevgep330 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i11, i64 %i.ka
  %i.kb = shl i64 %.sroa.712.0.copyload.i.i14, 1
  %scevgep331 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i11, i64 %i.kb
  %bound0332 = icmp ult ptr %scevgep328, %scevgep331
  %bound1333 = icmp ult ptr %scevgep330, %scevgep329
  %found.conflict334 = and i1 %bound0332, %bound1333
  br i1 %found.conflict334, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph337

vector.ph337:                                     ; preds = %vector.memcheck327
  %n.vec338 = and i64 %i.jx, -4                   ; 3 uses
  %i.kc = add i64 %.sroa.511.0.copyload.i.i13, %n.vec338
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next342, %vector.body339 ] ; 2 uses
  %i.kd = add nuw i64 %.sroa.511.0.copyload.i.i13, %index340 ; 5 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kd ; 2 uses
  %i.kf = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kd ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 2
  %i.kh = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kd ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 4
  %i.kj = getelementptr [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kd ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 6
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %i.kd
  %i.km = load i8, ptr %i.ke, align 1, !alias.scope !2052, !noalias !2037, !noundef !4
  %i.kn = load i8, ptr %i.kg, align 1, !alias.scope !2052, !noalias !2037, !noundef !4
  %i.ko = load i8, ptr %i.ki, align 1, !alias.scope !2052, !noalias !2037, !noundef !4
  %i.kp = load i8, ptr %i.kk, align 1, !alias.scope !2052, !noalias !2037, !noundef !4
  %i.kq = insertelement <4 x i8> poison, i8 %i.km, i64 0
  %i.kr = insertelement <4 x i8> %i.kq, i8 %i.kn, i64 1
  %i.ks = insertelement <4 x i8> %i.kr, i8 %i.ko, i64 2
  %i.kt = insertelement <4 x i8> %i.ks, i8 %i.kp, i64 3
  %i.ku = uitofp <4 x i8> %i.kt to <4 x float>
  %i.kv = fmul nnan <4 x float> %i.ku, splat (float f0x3B808081)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %i.kx = getelementptr i8, ptr %i.kf, i64 3
  %i.ky = getelementptr i8, ptr %i.kh, i64 5
  %i.kz = getelementptr i8, ptr %i.kj, i64 7
  %i.la = load i8, ptr %i.kw, align 1, !alias.scope !2052, !noalias !2037, !noundef !4
  %i.lb = load i8, ptr %i.kx, align 1, !alias.scope !2052, !noalias !2037, !noundef !4
  %i.lc = load i8, ptr %i.ky, align 1, !alias.scope !2052, !noalias !2037, !noundef !4
  %i.ld = load i8, ptr %i.kz, align 1, !alias.scope !2052, !noalias !2037, !noundef !4
  %i.le = insertelement <4 x i8> poison, i8 %i.la, i64 0
  %i.lf = insertelement <4 x i8> %i.le, i8 %i.lb, i64 1
  %i.lg = insertelement <4 x i8> %i.lf, i8 %i.lc, i64 2
  %i.lh = insertelement <4 x i8> %i.lg, i8 %i.ld, i64 3
  %i.li = uitofp <4 x i8> %i.lh to <4 x float>
  %i.lj = fmul nnan <4 x float> %i.li, splat (float f0x3B808081)
  %interleaved.vec341 = shufflevector <4 x float> %i.kv, <4 x float> %i.lj, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 1, i32 1, i32 1, i32 5, i32 2, i32 2, i32 2, i32 6, i32 3, i32 3, i32 3, i32 7>
  store <16 x float> %interleaved.vec341, ptr %i.kl, align 4, !alias.scope !2053, !noalias !2037
  %index.next342 = add nuw i64 %index340, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next342, %n.vec338
  br i1 %i.lk, label %middle.block343, label %vector.body339, !llvm.loop !1984

middle.block343:                                  ; preds = %vector.body339
  %cmp.n344 = icmp eq i64 %i.jx, %n.vec338
  br i1 %cmp.n344, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck327, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block343
  %.sroa.511.017.i.i15.ph = phi i64 [ %.sroa.511.0.copyload.i.i13, %vector.memcheck327 ], [ %.sroa.511.0.copyload.i.i13, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.kc, %middle.block343 ] ; 6 uses
  %i.ll = sub i64 %.sroa.712.0.copyload.i.i14, %.sroa.511.017.i.i15.ph
  %.neg = add i64 %.sroa.511.017.i.i15.ph, 1
  %xtraiter = and i64 %i.ll, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %.sroa.511.017.i.i15.ph ; 2 uses
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %.sroa.511.017.i.i15.ph ; 4 uses
  %i.lo = add nuw i64 %.sroa.511.017.i.i15.ph, 1
  %i.lp = load i8, ptr %i.lm, align 1, !noalias !2037, !noundef !4
  %i.lq = uitofp i8 %i.lp to float
  %i.lr = fmul nnan float %i.lq, f0x3B808081      ; 3 uses
  store float %i.lr, ptr %i.ln, align 4, !noalias !2037
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  store float %i.lr, ptr %i.ls, align 4, !noalias !2037
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store float %i.lr, ptr %i.lt, align 4, !noalias !2037
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.lv = load i8, ptr %i.lu, align 1, !noalias !2037, !noundef !4
  %i.lw = uitofp i8 %i.lv to float
  %i.lx = fmul nnan float %i.lw, f0x3B808081
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store float %i.lx, ptr %i.ly, align 4, !noalias !2037
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.511.017.i.i15.unr = phi i64 [ %.sroa.511.017.i.i15.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.lo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.lz = icmp eq i64 %.sroa.712.0.copyload.i.i14, %.neg
  br i1 %i.lz, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i.i15 = phi i64 [ %i.mp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i.i15.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %.sroa.511.017.i.i15 ; 2 uses
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %.sroa.511.017.i.i15 ; 4 uses
  %i.mc = add nuw i64 %.sroa.511.017.i.i15, 1     ; 2 uses
  %i.md = load i8, ptr %i.ma, align 1, !noalias !2037, !noundef !4
  %i.me = uitofp i8 %i.md to float
  %i.mf = fmul nnan float %i.me, f0x3B808081      ; 3 uses
  store float %i.mf, ptr %i.mb, align 4, !noalias !2037
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store float %i.mf, ptr %i.mg, align 4, !noalias !2037
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store float %i.mf, ptr %i.mh, align 4, !noalias !2037
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.mj = load i8, ptr %i.mi, align 1, !noalias !2037, !noundef !4
  %i.mk = uitofp i8 %i.mj to float
  %i.ml = fmul nnan float %i.mk, f0x3B808081
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mb, i64 12
  store float %i.ml, ptr %i.mm, align 4, !noalias !2037
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.mc ; 2 uses
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %i.mc ; 4 uses
  %i.mp = add nuw i64 %.sroa.511.017.i.i15, 2     ; 2 uses
  %i.mq = load i8, ptr %i.mn, align 1, !noalias !2037, !noundef !4
  %i.mr = uitofp i8 %i.mq to float
  %i.ms = fmul nnan float %i.mr, f0x3B808081      ; 3 uses
  store float %i.ms, ptr %i.mo, align 4, !noalias !2037
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  store float %i.ms, ptr %i.mt, align 4, !noalias !2037
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store float %i.ms, ptr %i.mu, align 4, !noalias !2037
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.mw = load i8, ptr %i.mv, align 1, !noalias !2037, !noundef !4
  %i.mx = uitofp i8 %i.mw to float
  %i.my = fmul nnan float %i.mx, f0x3B808081
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  store float %i.my, ptr %i.mz, align 4, !noalias !2037
  %exitcond.not.i101.i.1 = icmp eq i64 %i.mp, %.sroa.712.0.copyload.i.i14
  br i1 %exitcond.not.i101.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1985

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block343, %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2038
  br label %bb.au

bb.ay:                                            ; preds = %bb.ba, %bb.az
  %i.na = mul i64 %i.do, %.sroa.019.0.i           ; 3 uses
  %.not76.i = icmp ugt i64 %i.na, %i.dp
  br i1 %.not76.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

bb.az:                                            ; preds = %bb.au
  br i1 %i.df, label %bb.bb, label %bb.ay

bb.ba:                                            ; preds = %bb.au
  br i1 %i.de, label %bb.bc, label %bb.ay

bb.bb:                                            ; preds = %bb.az
  %.lhs.trunc160.i = trunc nuw nsw i64 %i.dp to i16
  %i.nb = udiv i16 %.lhs.trunc160.i, 3
  %.zext161.i = zext nneg i16 %i.nb to i64
  %i.nc = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %.zext161.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2038
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.nc, ptr noundef nonnull %i.l, ptr noundef nonnull %i.di)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %bb.bb
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !2038 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !2038 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !2038 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2038
  %i.nd = icmp eq i64 %i.do, 0
  br i1 %i.nd, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph222.preheader.i

.lr.ph222.preheader.i:                            ; preds = %.noexc26
  %umax285.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.preheader.i
  %.sroa.8136.0221.i = phi i64 [ %i.ne, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.do, %.lr.ph222.preheader.i ]
  %.sroa.5134.0220.i = phi i64 [ %i.nh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph222.preheader.i ] ; 4 uses
  %exitcond286.not.i = icmp eq i64 %.sroa.5134.0220.i, %umax285.i
  br i1 %exitcond286.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph222.i
  %i.ne = add i64 %.sroa.8136.0221.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.nh = add i64 %.sroa.5134.0220.i, 1
  %i.ni = load float, ptr %i.nf, align 4, !noalias !2037, !noundef !4
  store float %i.ni, ptr %i.ng, align 4, !noalias !2037
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.nk = load float, ptr %i.nj, align 4, !noalias !2037, !noundef !4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  store float %i.nk, ptr %i.nl, align 4, !noalias !2037
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nn = load float, ptr %i.nm, align 4, !noalias !2037, !noundef !4
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.np = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.nn, i64 0
  store <2 x float> %i.np, ptr %i.no, align 4, !noalias !2037
  %i.nq = icmp eq i64 %i.ne, 0
  br i1 %i.nq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph222.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.i
  %i.nr = shl i64 %i.do, 2                        ; 3 uses
  %i.ns = icmp ult i64 %i.nr, 1025
  br i1 %i.ns, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc28, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc26, %bb.ay
  %.sroa.7.0.i = phi i64 [ %i.oi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.nr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.na, %bb.ay ], [ 0, %.noexc26 ], [ 0, %.noexc28 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.m, %bb.ay ], [ %i.l, %.noexc26 ], [ %i.l, %.noexc28 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.bd
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 3, label %bb.bg
  ]

bb.bc:                                            ; preds = %bb.ba
  %i.nt = lshr i64 %i.dp, 2
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2038
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.m, ptr noundef nonnull %i.nu, ptr noundef nonnull %i.l, ptr noundef nonnull %i.dh)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %bb.bc
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !noalias !2038 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !2038 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !2038 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2038
  %i.nv = icmp eq i64 %i.do, 0
  br i1 %i.nv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc28
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8151.0218.i = phi i64 [ %i.nw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.do, %.lr.ph.preheader.i ]
  %.sroa.5149.0217.i = phi i64 [ %i.nz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5149.0217.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.nw = add i64 %.sroa.8151.0218.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.ny = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.nz = add i64 %.sroa.5149.0217.i, 1
  %i.oa = load float, ptr %i.nx, align 4, !noalias !2037, !noundef !4
  store float %i.oa, ptr %i.ny, align 4, !noalias !2037
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oc = load float, ptr %i.ob, align 4, !noalias !2037, !noundef !4
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  store float %i.oc, ptr %i.od, align 4, !noalias !2037
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.of = load float, ptr %i.oe, align 4, !noalias !2037, !noundef !4
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store float %i.of, ptr %i.og, align 4, !noalias !2037
  %i.oh = icmp eq i64 %i.nw, 0
  br i1 %i.oh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.oi = mul i64 %i.do, 3                        ; 3 uses
  %i.oj = icmp ult i64 %i.oi, 1025
  br i1 %i.oj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

bb.bd:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ok = mul i64 %.sroa.038.0225.i, 3            ; 3 uses
  %i.ol = mul i64 %..i.i, 3                       ; 4 uses
  %i.om = icmp ult i64 %i.ol, %i.ok
  %.not81.i = icmp ugt i64 %i.ol, %i.cz
  %or.cond85.i = or i1 %i.om, %.not81.i
  br i1 %or.cond85.i, label %.invoke, label %bb.bh, !prof !9

bb.be:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.on = shl i64 %.sroa.038.0225.i, 2            ; 3 uses
  %i.oo = shl i64 %..i.i, 2                       ; 4 uses
  %i.op = icmp ult i64 %i.oo, %i.on
  %.not80.i = icmp ugt i64 %i.oo, %i.cz
  %or.cond86.i = or i1 %i.op, %.not80.i
  br i1 %or.cond86.i, label %.invoke, label %bb.bj, !prof !9

bb.bf:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.oq = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not79.i = icmp samesign ugt i64 %..i.i, %i.cz
  %or.cond87.i = or i1 %i.oq, %.not79.i
  br i1 %or.cond87.i, label %.invoke, label %bb.bk, !prof !9

bb.bg:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.or = shl nuw i64 %.sroa.038.0225.i, 1        ; 3 uses
  %i.os = shl nuw i64 %..i.i, 1                   ; 3 uses
  %i.ot = icmp ult i64 %i.os, %i.or
  %.not78.i = icmp ugt i64 %i.os, %i.cz
  %or.cond88.i = or i1 %i.ot, %.not78.i
  br i1 %or.cond88.i, label %.invoke, label %bb.bl, !prof !9

bb.bh:                                            ; preds = %bb.bd
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.ok
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2038
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.ol
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.ov, ptr noundef nonnull align 2 %i.ou, ptr noundef nonnull %i.ow)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.bh
  %.sroa.0.0.copyload.i106.i = load ptr, ptr %i.e, align 8, !noalias !2054 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2054 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !2054 ; 8 uses
  %.sroa.7.0.copyload.i108.i = load i64, ptr %.sroa.7.0..sroa_idx.i107.i, align 8, !noalias !2054 ; 7 uses
  %i.ox = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i108.i
  br i1 %i.ox, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i106.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.oy = sub nuw i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.oy, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.oz = shl i64 %.sroa.54.0.copyload.i.i, 1
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.oz
  %i.pa = shl i64 %.sroa.7.0.copyload.i108.i, 1
  %scevgep199 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.pa
  %i.pb = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep200 = getelementptr i8, ptr %.sroa.0.0.copyload.i106.i, i64 %i.pb
  %i.pc = shl i64 %.sroa.7.0.copyload.i108.i, 2
  %scevgep201 = getelementptr i8, ptr %.sroa.0.0.copyload.i106.i, i64 %i.pc
  %bound0 = icmp ult ptr %scevgep, %scevgep201
  %bound1 = icmp ult ptr %scevgep200, %scevgep199
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.oy, -4                      ; 3 uses
  %i.pd = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pe = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.pe
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.pe
  %wide.load = load <4 x float>, ptr %i.pf, align 4, !alias.scope !2055, !noalias !2037
  %i.ph = fmul <4 x float> %wide.load, splat (float 6.553500e+04)
  %i.pi = call <4 x float> @llvm.round.v4f32(<4 x float> %i.ph)
  %i.pj = call <4 x i16> @llvm.fptoui.sat.v4i16.v4f32(<4 x float> %i.pi)
  store <4 x i16> %i.pj, ptr %i.pg, align 2, !alias.scope !2056, !noalias !2057
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pk = icmp eq i64 %index.next, %n.vec
  br i1 %i.pk, label %middle.block, label %vector.body, !llvm.loop !1992

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oy, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.pd, %middle.block ] ; 6 uses
  %i.pl = sub i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.09.i.i.ph
  %.neg377 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter372 = and i64 %i.pl, 1
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i.ph
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.po = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.pp = load float, ptr %i.pm, align 4, !noalias !2037, !noundef !4
  %i.pq = fmul float %i.pp, 6.553500e+04
  %i.pr = call float @llvm.round.f32(float %i.pq)
  %i.ps = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.pr)
  store i16 %i.ps, ptr %i.pn, align 2, !noalias !2037
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.po, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.pt = icmp eq i64 %.sroa.7.0.copyload.i108.i, %.neg377
  br i1 %i.pt, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.qd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.pw = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.px = load float, ptr %i.pu, align 4, !noalias !2037, !noundef !4
  %i.py = fmul float %i.px, 6.553500e+04
  %i.pz = call float @llvm.round.f32(float %i.py)
  %i.qa = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.pz)
  store i16 %i.qa, ptr %i.pv, align 2, !noalias !2037
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.pw
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.pw
  %i.qd = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.qe = load float, ptr %i.qb, align 4, !noalias !2037, !noundef !4
  %i.qf = fmul float %i.qe, 6.553500e+04
  %i.qg = call float @llvm.round.f32(float %i.qf)
  %i.qh = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.qg)
  store i16 %i.qh, ptr %i.qc, align 2, !noalias !2037
  %exitcond.not.i109.i.1 = icmp eq i64 %i.qd, %.sroa.7.0.copyload.i108.i
  br i1 %exitcond.not.i109.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1993

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2038
  br label %bb.bi

bb.bi:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i
  %.not.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i, label %.loopexit4, label %bb.an

bb.bj:                                            ; preds = %bb.be
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.on
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2038
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.oo
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.qj, ptr noundef nonnull align 2 %i.qi, ptr noundef nonnull %i.qk)
          to label %.noexc33 unwind label %.loopexit

.noexc33:                                         ; preds = %bb.bj
  %.sroa.0.0.copyload.i110.i = load ptr, ptr %i.d, align 8, !noalias !2058 ; 7 uses
  %.sroa.43.0.copyload.i112.i = load ptr, ptr %.sroa.43.0..sroa_idx.i111.i, align 8, !noalias !2058 ; 7 uses
  %.sroa.54.0.copyload.i114.i = load i64, ptr %.sroa.54.0..sroa_idx.i113.i, align 8, !noalias !2058 ; 8 uses
  %.sroa.7.0.copyload.i116.i = load i64, ptr %.sroa.7.0..sroa_idx.i115.i, align 8, !noalias !2058 ; 7 uses
  %i.ql = icmp ult i64 %.sroa.54.0.copyload.i114.i, %.sroa.7.0.copyload.i116.i
  br i1 %i.ql, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i: ; preds = %.noexc33
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i110.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i112.i) ]
  %i.qm = sub nuw i64 %.sroa.7.0.copyload.i116.i, %.sroa.54.0.copyload.i114.i ; 3 uses
  %min.iters.check211 = icmp ult i64 %i.qm, 4
  br i1 %min.iters.check211, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i118.i.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i
end_hunk_5
begin_hunk_6_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouttfEBa_:switch.lookup
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04.0.copyload.i.i, i64 %.sroa.57.015.i.i
  %i.jh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %.sroa.57.015.i.i ; 3 uses
  %i.ji = add nuw i64 %.sroa.57.015.i.i, 1        ; 2 uses
  %i.jj = load i16, ptr %i.jg, align 2, !noalias !2178, !noundef !4
  %i.jk = uitofp i16 %i.jj to float
  %i.jl = fmul nnan float %i.jk, f0x37800080      ; 3 uses
  store float %i.jl, ptr %i.jh, align 4, !noalias !2178
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  store float %i.jl, ptr %i.jm, align 4, !noalias !2178
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store float %i.jl, ptr %i.jn, align 4, !noalias !2178
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04.0.copyload.i.i, i64 %i.ji
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.ji ; 3 uses
  %i.jq = add nuw i64 %.sroa.57.015.i.i, 2        ; 2 uses
  %i.jr = load i16, ptr %i.jo, align 2, !noalias !2178, !noundef !4
  %i.js = uitofp i16 %i.jr to float
  %i.jt = fmul nnan float %i.js, f0x37800080      ; 3 uses
  store float %i.jt, ptr %i.jp, align 4, !noalias !2178
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  store float %i.jt, ptr %i.ju, align 4, !noalias !2178
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store float %i.jt, ptr %i.jv, align 4, !noalias !2178
  %exitcond.not.i100.i.1 = icmp eq i64 %i.jq, %.sroa.78.0.copyload.i.i
  br i1 %exitcond.not.i100.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2122

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbtEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block317, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2179
  br label %bb.au

bb.ax:                                            ; preds = %bb.as
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ea ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2179
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.dm
  %i.jy = lshr i64 %i.dn, 2
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.jy
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 2 %i.jw, ptr noundef nonnull readonly %i.jx, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.jz)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.ax
  %.sroa.08.0.copyload.i.i11 = load ptr, ptr %i.f, align 8, !noalias !2192 ; 7 uses
  %.sroa.410.0.copyload.i.i12 = load ptr, ptr %.sroa.410.0..sroa_idx.i.i7, align 8, !noalias !2192 ; 7 uses
  %.sroa.511.0.copyload.i.i13 = load i64, ptr %.sroa.511.0..sroa_idx.i.i8, align 8, !noalias !2192 ; 8 uses
  %.sroa.712.0.copyload.i.i14 = load i64, ptr %.sroa.712.0..sroa_idx.i.i9, align 8, !noalias !2192 ; 7 uses
  %i.ka = icmp ult i64 %.sroa.511.0.copyload.i.i13, %.sroa.712.0.copyload.i.i14
  br i1 %i.ka, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i11) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i12) ]
  %i.kb = sub nuw i64 %.sroa.712.0.copyload.i.i14, %.sroa.511.0.copyload.i.i13 ; 3 uses
  %min.iters.check329 = icmp ult i64 %i.kb, 4
  br i1 %min.iters.check329, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck320

vector.memcheck320:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.kc = shl i64 %.sroa.511.0.copyload.i.i13, 4
  %scevgep321 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i12, i64 %i.kc
  %i.kd = shl i64 %.sroa.712.0.copyload.i.i14, 4
  %scevgep322 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i12, i64 %i.kd
  %i.ke = shl i64 %.sroa.511.0.copyload.i.i13, 2
  %scevgep323 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i11, i64 %i.ke
  %i.kf = shl i64 %.sroa.712.0.copyload.i.i14, 2
  %scevgep324 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i11, i64 %i.kf
  %bound0325 = icmp ult ptr %scevgep321, %scevgep324
  %bound1326 = icmp ult ptr %scevgep323, %scevgep322
  %found.conflict327 = and i1 %bound0325, %bound1326
  br i1 %found.conflict327, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck320
  %n.vec331 = and i64 %i.kb, -4                   ; 3 uses
  %i.kg = add i64 %.sroa.511.0.copyload.i.i13, %n.vec331
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next336, %vector.body332 ] ; 2 uses
  %i.kh = add nuw i64 %.sroa.511.0.copyload.i.i13, %index333 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kh
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %i.kh
  %wide.vec = load <8 x i16>, ptr %i.ki, align 2, !alias.scope !2193, !noalias !2178 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec334 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.kk = uitofp <4 x i16> %strided.vec to <4 x float>
  %i.kl = fmul nnan <4 x float> %i.kk, splat (float f0x37800080)
  %i.km = uitofp <4 x i16> %strided.vec334 to <4 x float>
  %i.kn = fmul nnan <4 x float> %i.km, splat (float f0x37800080)
  %interleaved.vec335 = shufflevector <4 x float> %i.kl, <4 x float> %i.kn, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 1, i32 1, i32 1, i32 5, i32 2, i32 2, i32 2, i32 6, i32 3, i32 3, i32 3, i32 7>
  store <16 x float> %interleaved.vec335, ptr %i.kj, align 4, !alias.scope !2194, !noalias !2178
  %index.next336 = add nuw i64 %index333, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.ko, label %middle.block337, label %vector.body332, !llvm.loop !2129

middle.block337:                                  ; preds = %vector.body332
  %cmp.n338 = icmp eq i64 %i.kb, %n.vec331
  br i1 %cmp.n338, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck320, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block337
  %.sroa.511.017.i.i15.ph = phi i64 [ %.sroa.511.0.copyload.i.i13, %vector.memcheck320 ], [ %.sroa.511.0.copyload.i.i13, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.kg, %middle.block337 ] ; 6 uses
  %i.kp = sub i64 %.sroa.712.0.copyload.i.i14, %.sroa.511.017.i.i15.ph
  %.neg = add i64 %.sroa.511.017.i.i15.ph, 1
  %xtraiter = and i64 %i.kp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %.sroa.511.017.i.i15.ph ; 2 uses
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %.sroa.511.017.i.i15.ph ; 4 uses
  %i.ks = add nuw i64 %.sroa.511.017.i.i15.ph, 1
  %i.kt = load i16, ptr %i.kq, align 2, !noalias !2178, !noundef !4
  %i.ku = uitofp i16 %i.kt to float
  %i.kv = fmul nnan float %i.ku, f0x37800080      ; 3 uses
  store float %i.kv, ptr %i.kr, align 4, !noalias !2178
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store float %i.kv, ptr %i.kw, align 4, !noalias !2178
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store float %i.kv, ptr %i.kx, align 4, !noalias !2178
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  %i.kz = load i16, ptr %i.ky, align 2, !noalias !2178, !noundef !4
  %i.la = uitofp i16 %i.kz to float
  %i.lb = fmul nnan float %i.la, f0x37800080
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  store float %i.lb, ptr %i.lc, align 4, !noalias !2178
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.511.017.i.i15.unr = phi i64 [ %.sroa.511.017.i.i15.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.ks, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ld = icmp eq i64 %.sroa.712.0.copyload.i.i14, %.neg
  br i1 %i.ld, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i.i15 = phi i64 [ %i.lt, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i.i15.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %.sroa.511.017.i.i15 ; 2 uses
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %.sroa.511.017.i.i15 ; 4 uses
  %i.lg = add nuw i64 %.sroa.511.017.i.i15, 1     ; 2 uses
  %i.lh = load i16, ptr %i.le, align 2, !noalias !2178, !noundef !4
  %i.li = uitofp i16 %i.lh to float
  %i.lj = fmul nnan float %i.li, f0x37800080      ; 3 uses
  store float %i.lj, ptr %i.lf, align 4, !noalias !2178
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store float %i.lj, ptr %i.lk, align 4, !noalias !2178
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store float %i.lj, ptr %i.ll, align 4, !noalias !2178
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  %i.ln = load i16, ptr %i.lm, align 2, !noalias !2178, !noundef !4
  %i.lo = uitofp i16 %i.ln to float
  %i.lp = fmul nnan float %i.lo, f0x37800080
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store float %i.lp, ptr %i.lq, align 4, !noalias !2178
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.lg ; 2 uses
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %i.lg ; 4 uses
  %i.lt = add nuw i64 %.sroa.511.017.i.i15, 2     ; 2 uses
  %i.lu = load i16, ptr %i.lr, align 2, !noalias !2178, !noundef !4
  %i.lv = uitofp i16 %i.lu to float
  %i.lw = fmul nnan float %i.lv, f0x37800080      ; 3 uses
  store float %i.lw, ptr %i.ls, align 4, !noalias !2178
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store float %i.lw, ptr %i.lx, align 4, !noalias !2178
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store float %i.lw, ptr %i.ly, align 4, !noalias !2178
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 2
  %i.ma = load i16, ptr %i.lz, align 2, !noalias !2178, !noundef !4
  %i.mb = uitofp i16 %i.ma to float
  %i.mc = fmul nnan float %i.mb, f0x37800080
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  store float %i.mc, ptr %i.md, align 4, !noalias !2178
  %exitcond.not.i101.i.1 = icmp eq i64 %i.lt, %.sroa.712.0.copyload.i.i14
  br i1 %exitcond.not.i101.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2130

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block337, %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2179
  br label %bb.au

bb.ay:                                            ; preds = %bb.ba, %bb.az
  %i.me = mul i64 %i.dm, %.sroa.019.0.i           ; 3 uses
  %.not76.i = icmp ugt i64 %i.me, %i.dn
  br i1 %.not76.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

bb.az:                                            ; preds = %bb.au
  br i1 %i.df, label %bb.bb, label %bb.ay

bb.ba:                                            ; preds = %bb.au
  br i1 %i.de, label %bb.bc, label %bb.ay

bb.bb:                                            ; preds = %bb.az
  %.lhs.trunc160.i = trunc nuw nsw i64 %i.dn to i16
  %i.mf = udiv i16 %.lhs.trunc160.i, 3
  %.zext161.i = zext nneg i16 %i.mf to i64
  %i.mg = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %.zext161.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2179
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.mg, ptr noundef nonnull %i.l, ptr noundef nonnull %i.di)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %bb.bb
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !2179 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !2179 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !2179 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !2179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2179
  %i.mh = icmp eq i64 %i.dm, 0
  br i1 %i.mh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph222.preheader.i

.lr.ph222.preheader.i:                            ; preds = %.noexc26
  %umax285.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.preheader.i
  %.sroa.8136.0221.i = phi i64 [ %i.mi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.dm, %.lr.ph222.preheader.i ]
  %.sroa.5134.0220.i = phi i64 [ %i.ml, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph222.preheader.i ] ; 4 uses
  %exitcond286.not.i = icmp eq i64 %.sroa.5134.0220.i, %umax285.i
  br i1 %exitcond286.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph222.i
  %i.mi = add i64 %.sroa.8136.0221.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.mj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.ml = add i64 %.sroa.5134.0220.i, 1
  %i.mm = load float, ptr %i.mj, align 4, !noalias !2178, !noundef !4
  store float %i.mm, ptr %i.mk, align 4, !noalias !2178
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mo = load float, ptr %i.mn, align 4, !noalias !2178, !noundef !4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store float %i.mo, ptr %i.mp, align 4, !noalias !2178
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mr = load float, ptr %i.mq, align 4, !noalias !2178, !noundef !4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mt = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.mr, i64 0
  store <2 x float> %i.mt, ptr %i.ms, align 4, !noalias !2178
  %i.mu = icmp eq i64 %i.mi, 0
  br i1 %i.mu, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph222.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.i
  %i.mv = shl i64 %i.dm, 2                        ; 3 uses
  %i.mw = icmp ult i64 %i.mv, 1025
  br i1 %i.mw, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc28, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc26, %bb.ay
  %.sroa.7.0.i = phi i64 [ %i.nm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.mv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.me, %bb.ay ], [ 0, %.noexc26 ], [ 0, %.noexc28 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.m, %bb.ay ], [ %i.l, %.noexc26 ], [ %i.l, %.noexc28 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.bd
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 3, label %bb.bg
  ]

bb.bc:                                            ; preds = %bb.ba
  %i.mx = lshr i64 %i.dn, 2
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2179
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.m, ptr noundef nonnull %i.my, ptr noundef nonnull %i.l, ptr noundef nonnull %i.dh)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %bb.bc
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !noalias !2179 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !2179 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !2179 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !2179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2179
  %i.mz = icmp eq i64 %i.dm, 0
  br i1 %i.mz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc28
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8151.0218.i = phi i64 [ %i.na, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.dm, %.lr.ph.preheader.i ]
  %.sroa.5149.0217.i = phi i64 [ %i.nd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5149.0217.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.na = add i64 %.sroa.8151.0218.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.nc = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.nd = add i64 %.sroa.5149.0217.i, 1
  %i.ne = load float, ptr %i.nb, align 4, !noalias !2178, !noundef !4
  store float %i.ne, ptr %i.nc, align 4, !noalias !2178
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.ng = load float, ptr %i.nf, align 4, !noalias !2178, !noundef !4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store float %i.ng, ptr %i.nh, align 4, !noalias !2178
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nj = load float, ptr %i.ni, align 4, !noalias !2178, !noundef !4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store float %i.nj, ptr %i.nk, align 4, !noalias !2178
  %i.nl = icmp eq i64 %i.na, 0
  br i1 %i.nl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.nm = mul i64 %i.dm, 3                        ; 3 uses
  %i.nn = icmp ult i64 %i.nm, 1025
  br i1 %i.nn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

bb.bd:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.no = mul nuw i64 %.sroa.038.0225.i, 3        ; 2 uses
  %i.np = mul nuw i64 %..i.i, 3                   ; 3 uses
  %i.nq = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not81.i = icmp ugt i64 %i.np, %i.cz
  %or.cond85.i = or i1 %i.nq, %.not81.i
  br i1 %or.cond85.i, label %.invoke, label %bb.bh, !prof !9

bb.be:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.nr = shl nuw i64 %.sroa.038.0225.i, 2        ; 3 uses
  %i.ns = shl nuw i64 %..i.i, 2                   ; 4 uses
  %i.nt = icmp ult i64 %i.ns, %i.nr
  %.not80.i = icmp ugt i64 %i.ns, %i.cz
  %or.cond86.i = or i1 %i.nt, %.not80.i
  br i1 %or.cond86.i, label %.invoke, label %bb.bj, !prof !9

bb.bf:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.nu = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not79.i = icmp samesign ugt i64 %..i.i, %i.cz
  %or.cond87.i = or i1 %i.nu, %.not79.i
  br i1 %or.cond87.i, label %.invoke, label %bb.bk, !prof !9

bb.bg:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.nv = shl nuw nsw i64 %.sroa.038.0225.i, 1    ; 3 uses
  %i.nw = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.nx = icmp samesign ult i64 %i.nw, %i.nv
  %.not78.i = icmp samesign ugt i64 %i.nw, %i.cz
  %or.cond88.i = or i1 %i.nx, %.not78.i
  br i1 %or.cond88.i, label %.invoke, label %bb.bl, !prof !9

bb.bh:                                            ; preds = %bb.bd
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.no
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2179
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.np
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.nz, ptr noundef nonnull align 4 %i.ny, ptr noundef nonnull %i.oa)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.bh
  %.sroa.0.0.copyload.i106.i = load ptr, ptr %i.e, align 8, !noalias !2195 ; 8 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2195 ; 8 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !2195 ; 5 uses
  %.sroa.7.0.copyload.i108.i = load i64, ptr %.sroa.7.0..sroa_idx.i107.i, align 8, !noalias !2195 ; 5 uses
  %i.ob = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i108.i
  br i1 %i.ob, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc31
  %.sroa.43.0.copyload.i.i199 = ptrtoaddr ptr %.sroa.43.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i106.i200 = ptrtoaddr ptr %.sroa.0.0.copyload.i106.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i106.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.oc = sub nuw i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.oc, 8
  %i.od = sub i64 %.sroa.0.0.copyload.i106.i200, %.sroa.43.0.copyload.i.i199
  %diff.check = icmp ugt i64 %i.od, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %n.vec = and i64 %i.oc, -8                      ; 3 uses
  %i.oe = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.of = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.of ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load = load <4 x float>, ptr %i.og, align 4, !noalias !2178
  %wide.load201 = load <4 x float>, ptr %i.oi, align 4, !noalias !2178
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <4 x float> %wide.load, ptr %i.oh, align 4, !noalias !2178
  store <4 x float> %wide.load201, ptr %i.oj, align 4, !noalias !2178
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ok = icmp eq i64 %index.next, %n.vec
  br i1 %i.ok, label %middle.block, label %vector.body, !llvm.loop !2134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oc, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.oe, %middle.block ] ; 4 uses
  %i.ol = sub i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.09.i.i.ph
  %xtraiter370 = and i64 %i.ol, 3                 ; 2 uses
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.54.09.i.i.prol = phi i64 [ %i.oo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter372 = phi i64 [ %prol.iter372.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i.prol
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.prol
  %i.oo = add nuw i64 %.sroa.54.09.i.i.prol, 1    ; 2 uses
  %i.op = load float, ptr %i.om, align 4, !noalias !2178, !noundef !4
  store float %i.op, ptr %i.on, align 4, !noalias !2178
  %prol.iter372.next = add i64 %prol.iter372, 1   ; 2 uses
  %prol.iter372.cmp.not = icmp eq i64 %prol.iter372.next, %xtraiter370
  br i1 %prol.iter372.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !2135

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.oo, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.oq = sub i64 %.sroa.54.09.i.i.ph, %.sroa.7.0.copyload.i108.i
  %i.or = icmp ugt i64 %i.oq, -4
  br i1 %i.or, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.pg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.ou = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.ov = load float, ptr %i.os, align 4, !noalias !2178, !noundef !4
  store float %i.ov, ptr %i.ot, align 4, !noalias !2178
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.ou
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.ou
  %i.oy = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.oz = load float, ptr %i.ow, align 4, !noalias !2178, !noundef !4
  store float %i.oz, ptr %i.ox, align 4, !noalias !2178
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.oy
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.oy
  %i.pc = add nuw i64 %.sroa.54.09.i.i, 3         ; 2 uses
  %i.pd = load float, ptr %i.pa, align 4, !noalias !2178, !noundef !4
  store float %i.pd, ptr %i.pb, align 4, !noalias !2178
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.pc
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.pc
  %i.pg = add nuw i64 %.sroa.54.09.i.i, 4         ; 2 uses
  %i.ph = load float, ptr %i.pe, align 4, !noalias !2178, !noundef !4
  store float %i.ph, ptr %i.pf, align 4, !noalias !2178
  %exitcond.not.i109.i.3 = icmp eq i64 %i.pg, %.sroa.7.0.copyload.i108.i
  br i1 %exitcond.not.i109.i.3, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2136

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2179
  br label %bb.bi

bb.bi:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i
  %.not.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i, label %.loopexit4, label %bb.an

bb.bj:                                            ; preds = %bb.be
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2179
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ns
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.pj, ptr noundef nonnull align 4 %i.pi, ptr noundef nonnull %i.pk)
          to label %.noexc33 unwind label %.loopexit

.noexc33:                                         ; preds = %bb.bj
  %.sroa.0.0.copyload.i110.i = load ptr, ptr %i.d, align 8, !noalias !2196 ; 8 uses
  %.sroa.43.0.copyload.i112.i = load ptr, ptr %.sroa.43.0..sroa_idx.i111.i, align 8, !noalias !2196 ; 8 uses
  %.sroa.54.0.copyload.i114.i = load i64, ptr %.sroa.54.0..sroa_idx.i113.i, align 8, !noalias !2196 ; 5 uses
  %.sroa.7.0.copyload.i116.i = load i64, ptr %.sroa.7.0..sroa_idx.i115.i, align 8, !noalias !2196 ; 5 uses
  %i.pl = icmp ult i64 %.sroa.54.0.copyload.i114.i, %.sroa.7.0.copyload.i116.i
  br i1 %i.pl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i: ; preds = %.noexc33
  %.sroa.43.0.copyload.i112.i203 = ptrtoaddr ptr %.sroa.43.0.copyload.i112.i to i64
  %.sroa.0.0.copyload.i110.i204 = ptrtoaddr ptr %.sroa.0.0.copyload.i110.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i110.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i112.i) ]
  %i.pm = sub nuw i64 %.sroa.7.0.copyload.i116.i, %.sroa.54.0.copyload.i114.i ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.pm, 8
  %i.pn = sub i64 %.sroa.0.0.copyload.i110.i204, %.sroa.43.0.copyload.i112.i203
  %diff.check205 = icmp ugt i64 %i.pn, -32
  %or.cond348 = select i1 %min.iters.check207, i1 true, i1 %diff.check205
  br i1 %or.cond348, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i118.i.preheader, label %vector.ph208
end_hunk_6
begin_hunk_7_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutthEBa_:switch.lookup
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04.0.copyload.i.i, i64 %.sroa.57.015.i.i
  %i.jj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %.sroa.57.015.i.i ; 3 uses
  %i.jk = add nuw i64 %.sroa.57.015.i.i, 1        ; 2 uses
  %i.jl = load i16, ptr %i.ji, align 2, !noalias !2317, !noundef !4
  %i.jm = uitofp i16 %i.jl to float
  %i.jn = fmul nnan float %i.jm, f0x37800080      ; 3 uses
  store float %i.jn, ptr %i.jj, align 4, !noalias !2317
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store float %i.jn, ptr %i.jo, align 4, !noalias !2317
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float %i.jn, ptr %i.jp, align 4, !noalias !2317
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04.0.copyload.i.i, i64 %i.jk
  %i.jr = getelementptr inbounds nuw [12 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.jk ; 3 uses
  %i.js = add nuw i64 %.sroa.57.015.i.i, 2        ; 2 uses
  %i.jt = load i16, ptr %i.jq, align 2, !noalias !2317, !noundef !4
  %i.ju = uitofp i16 %i.jt to float
  %i.jv = fmul nnan float %i.ju, f0x37800080      ; 3 uses
  store float %i.jv, ptr %i.jr, align 4, !noalias !2317
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  store float %i.jv, ptr %i.jw, align 4, !noalias !2317
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store float %i.jv, ptr %i.jx, align 4, !noalias !2317
  %exitcond.not.i100.i.1 = icmp eq i64 %i.js, %.sroa.78.0.copyload.i.i
  br i1 %exitcond.not.i100.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2257

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbtEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block322, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2318
  br label %bb.au

bb.ax:                                            ; preds = %bb.as
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ec ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2318
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.do
  %i.ka = lshr i64 %i.dp, 2
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ka
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 2 %i.jy, ptr noundef nonnull readonly %i.jz, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.kb)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.ax
  %.sroa.08.0.copyload.i.i11 = load ptr, ptr %i.f, align 8, !noalias !2331 ; 7 uses
  %.sroa.410.0.copyload.i.i12 = load ptr, ptr %.sroa.410.0..sroa_idx.i.i7, align 8, !noalias !2331 ; 7 uses
  %.sroa.511.0.copyload.i.i13 = load i64, ptr %.sroa.511.0..sroa_idx.i.i8, align 8, !noalias !2331 ; 8 uses
  %.sroa.712.0.copyload.i.i14 = load i64, ptr %.sroa.712.0..sroa_idx.i.i9, align 8, !noalias !2331 ; 7 uses
  %i.kc = icmp ult i64 %.sroa.511.0.copyload.i.i13, %.sroa.712.0.copyload.i.i14
  br i1 %i.kc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc25
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i11) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i12) ]
  %i.kd = sub nuw i64 %.sroa.712.0.copyload.i.i14, %.sroa.511.0.copyload.i.i13 ; 3 uses
  %min.iters.check334 = icmp ult i64 %i.kd, 4
  br i1 %min.iters.check334, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck325

vector.memcheck325:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.ke = shl i64 %.sroa.511.0.copyload.i.i13, 4
  %scevgep326 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i12, i64 %i.ke
  %i.kf = shl i64 %.sroa.712.0.copyload.i.i14, 4
  %scevgep327 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i12, i64 %i.kf
  %i.kg = shl i64 %.sroa.511.0.copyload.i.i13, 2
  %scevgep328 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i11, i64 %i.kg
  %i.kh = shl i64 %.sroa.712.0.copyload.i.i14, 2
  %scevgep329 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i11, i64 %i.kh
  %bound0330 = icmp ult ptr %scevgep326, %scevgep329
  %bound1331 = icmp ult ptr %scevgep328, %scevgep327
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph335

vector.ph335:                                     ; preds = %vector.memcheck325
  %n.vec336 = and i64 %i.kd, -4                   ; 3 uses
  %i.ki = add i64 %.sroa.511.0.copyload.i.i13, %n.vec336
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph335
  %index338 = phi i64 [ 0, %vector.ph335 ], [ %index.next341, %vector.body337 ] ; 2 uses
  %i.kj = add nuw i64 %.sroa.511.0.copyload.i.i13, %index338 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.kj
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %i.kj
  %wide.vec = load <8 x i16>, ptr %i.kk, align 2, !alias.scope !2332, !noalias !2317 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec339 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.km = uitofp <4 x i16> %strided.vec to <4 x float>
  %i.kn = fmul nnan <4 x float> %i.km, splat (float f0x37800080)
  %i.ko = uitofp <4 x i16> %strided.vec339 to <4 x float>
  %i.kp = fmul nnan <4 x float> %i.ko, splat (float f0x37800080)
  %interleaved.vec340 = shufflevector <4 x float> %i.kn, <4 x float> %i.kp, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 1, i32 1, i32 1, i32 5, i32 2, i32 2, i32 2, i32 6, i32 3, i32 3, i32 3, i32 7>
  store <16 x float> %interleaved.vec340, ptr %i.kl, align 4, !alias.scope !2333, !noalias !2317
  %index.next341 = add nuw i64 %index338, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next341, %n.vec336
  br i1 %i.kq, label %middle.block342, label %vector.body337, !llvm.loop !2264

middle.block342:                                  ; preds = %vector.body337
  %cmp.n343 = icmp eq i64 %i.kd, %n.vec336
  br i1 %cmp.n343, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck325, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block342
  %.sroa.511.017.i.i15.ph = phi i64 [ %.sroa.511.0.copyload.i.i13, %vector.memcheck325 ], [ %.sroa.511.0.copyload.i.i13, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ki, %middle.block342 ] ; 6 uses
  %i.kr = sub i64 %.sroa.712.0.copyload.i.i14, %.sroa.511.017.i.i15.ph
  %.neg = add i64 %.sroa.511.017.i.i15.ph, 1
  %xtraiter = and i64 %i.kr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %.sroa.511.017.i.i15.ph ; 2 uses
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %.sroa.511.017.i.i15.ph ; 4 uses
  %i.ku = add nuw i64 %.sroa.511.017.i.i15.ph, 1
  %i.kv = load i16, ptr %i.ks, align 2, !noalias !2317, !noundef !4
  %i.kw = uitofp i16 %i.kv to float
  %i.kx = fmul nnan float %i.kw, f0x37800080      ; 3 uses
  store float %i.kx, ptr %i.kt, align 4, !noalias !2317
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store float %i.kx, ptr %i.ky, align 4, !noalias !2317
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store float %i.kx, ptr %i.kz, align 4, !noalias !2317
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.lb = load i16, ptr %i.la, align 2, !noalias !2317, !noundef !4
  %i.lc = uitofp i16 %i.lb to float
  %i.ld = fmul nnan float %i.lc, f0x37800080
  %i.le = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  store float %i.ld, ptr %i.le, align 4, !noalias !2317
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.511.017.i.i15.unr = phi i64 [ %.sroa.511.017.i.i15.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.ku, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.lf = icmp eq i64 %.sroa.712.0.copyload.i.i14, %.neg
  br i1 %i.lf, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i.i15 = phi i64 [ %i.lv, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i.i15.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %.sroa.511.017.i.i15 ; 2 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %.sroa.511.017.i.i15 ; 4 uses
  %i.li = add nuw i64 %.sroa.511.017.i.i15, 1     ; 2 uses
  %i.lj = load i16, ptr %i.lg, align 2, !noalias !2317, !noundef !4
  %i.lk = uitofp i16 %i.lj to float
  %i.ll = fmul nnan float %i.lk, f0x37800080      ; 3 uses
  store float %i.ll, ptr %i.lh, align 4, !noalias !2317
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store float %i.ll, ptr %i.lm, align 4, !noalias !2317
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store float %i.ll, ptr %i.ln, align 4, !noalias !2317
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.lp = load i16, ptr %i.lo, align 2, !noalias !2317, !noundef !4
  %i.lq = uitofp i16 %i.lp to float
  %i.lr = fmul nnan float %i.lq, f0x37800080
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  store float %i.lr, ptr %i.ls, align 4, !noalias !2317
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i11, i64 %i.li ; 2 uses
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i12, i64 %i.li ; 4 uses
  %i.lv = add nuw i64 %.sroa.511.017.i.i15, 2     ; 2 uses
  %i.lw = load i16, ptr %i.lt, align 2, !noalias !2317, !noundef !4
  %i.lx = uitofp i16 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x37800080      ; 3 uses
  store float %i.ly, ptr %i.lu, align 4, !noalias !2317
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store float %i.ly, ptr %i.lz, align 4, !noalias !2317
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store float %i.ly, ptr %i.ma, align 4, !noalias !2317
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 2
  %i.mc = load i16, ptr %i.mb, align 2, !noalias !2317, !noundef !4
  %i.md = uitofp i16 %i.mc to float
  %i.me = fmul nnan float %i.md, f0x37800080
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  store float %i.me, ptr %i.mf, align 4, !noalias !2317
  %exitcond.not.i101.i.1 = icmp eq i64 %i.lv, %.sroa.712.0.copyload.i.i14
  br i1 %exitcond.not.i101.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2265

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block342, %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2318
  br label %bb.au

bb.ay:                                            ; preds = %bb.ba, %bb.az
  %i.mg = mul i64 %i.do, %.sroa.019.0.i           ; 3 uses
  %.not76.i = icmp ugt i64 %i.mg, %i.dp
  br i1 %.not76.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

bb.az:                                            ; preds = %bb.au
  br i1 %i.df, label %bb.bb, label %bb.ay

bb.ba:                                            ; preds = %bb.au
  br i1 %i.de, label %bb.bc, label %bb.ay

bb.bb:                                            ; preds = %bb.az
  %.lhs.trunc160.i = trunc nuw nsw i64 %i.dp to i16
  %i.mh = udiv i16 %.lhs.trunc160.i, 3
  %.zext161.i = zext nneg i16 %i.mh to i64
  %i.mi = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %.zext161.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2318
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.mi, ptr noundef nonnull %i.l, ptr noundef nonnull %i.di)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %bb.bb
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !2318 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !2318 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !2318 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !2318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2318
  %i.mj = icmp eq i64 %i.do, 0
  br i1 %i.mj, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph222.preheader.i

.lr.ph222.preheader.i:                            ; preds = %.noexc26
  %umax285.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.preheader.i
  %.sroa.8136.0221.i = phi i64 [ %i.mk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.do, %.lr.ph222.preheader.i ]
  %.sroa.5134.0220.i = phi i64 [ %i.mn, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph222.preheader.i ] ; 4 uses
  %exitcond286.not.i = icmp eq i64 %.sroa.5134.0220.i, %umax285.i
  br i1 %exitcond286.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph222.i
  %i.mk = add i64 %.sroa.8136.0221.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.mn = add i64 %.sroa.5134.0220.i, 1
  %i.mo = load float, ptr %i.ml, align 4, !noalias !2317, !noundef !4
  store float %i.mo, ptr %i.mm, align 4, !noalias !2317
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  %i.mq = load float, ptr %i.mp, align 4, !noalias !2317, !noundef !4
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store float %i.mq, ptr %i.mr, align 4, !noalias !2317
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mt = load float, ptr %i.ms, align 4, !noalias !2317, !noundef !4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mv = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.mt, i64 0
  store <2 x float> %i.mv, ptr %i.mu, align 4, !noalias !2317
  %i.mw = icmp eq i64 %i.mk, 0
  br i1 %i.mw, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph222.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.i
  %i.mx = shl i64 %i.do, 2                        ; 3 uses
  %i.my = icmp ult i64 %i.mx, 1025
  br i1 %i.my, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc28, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc26, %bb.ay
  %.sroa.7.0.i = phi i64 [ %i.no, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.mx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.mg, %bb.ay ], [ 0, %.noexc26 ], [ 0, %.noexc28 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.m, %bb.ay ], [ %i.l, %.noexc26 ], [ %i.l, %.noexc28 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.bd
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 3, label %bb.bg
  ]

bb.bc:                                            ; preds = %bb.ba
  %i.mz = lshr i64 %i.dp, 2
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2318
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.m, ptr noundef nonnull %i.na, ptr noundef nonnull %i.l, ptr noundef nonnull %i.dh)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %bb.bc
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !noalias !2318 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !2318 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !2318 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !2318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2318
  %i.nb = icmp eq i64 %i.do, 0
  br i1 %i.nb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc28
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8151.0218.i = phi i64 [ %i.nc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.do, %.lr.ph.preheader.i ]
  %.sroa.5149.0217.i = phi i64 [ %i.nf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5149.0217.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.nc = add i64 %.sroa.8151.0218.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.ne = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.nf = add i64 %.sroa.5149.0217.i, 1
  %i.ng = load float, ptr %i.nd, align 4, !noalias !2317, !noundef !4
  store float %i.ng, ptr %i.ne, align 4, !noalias !2317
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.ni = load float, ptr %i.nh, align 4, !noalias !2317, !noundef !4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  store float %i.ni, ptr %i.nj, align 4, !noalias !2317
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nl = load float, ptr %i.nk, align 4, !noalias !2317, !noundef !4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store float %i.nl, ptr %i.nm, align 4, !noalias !2317
  %i.nn = icmp eq i64 %i.nc, 0
  br i1 %i.nn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.no = mul i64 %i.do, 3                        ; 3 uses
  %i.np = icmp ult i64 %i.no, 1025
  br i1 %i.np, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

bb.bd:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.nq = mul nuw i64 %.sroa.038.0225.i, 3        ; 2 uses
  %i.nr = mul nuw i64 %..i.i, 3                   ; 3 uses
  %i.ns = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not81.i = icmp ugt i64 %i.nr, %i.cz
  %or.cond85.i = or i1 %i.ns, %.not81.i
  br i1 %or.cond85.i, label %.invoke, label %bb.bh, !prof !9

bb.be:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.nt = shl nuw i64 %.sroa.038.0225.i, 2        ; 3 uses
  %i.nu = shl nuw i64 %..i.i, 2                   ; 4 uses
  %i.nv = icmp ult i64 %i.nu, %i.nt
  %.not80.i = icmp ugt i64 %i.nu, %i.cz
  %or.cond86.i = or i1 %i.nv, %.not80.i
  br i1 %or.cond86.i, label %.invoke, label %bb.bj, !prof !9

bb.bf:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.nw = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not79.i = icmp samesign ugt i64 %..i.i, %i.cz
  %or.cond87.i = or i1 %i.nw, %.not79.i
  br i1 %or.cond87.i, label %.invoke, label %bb.bk, !prof !9

bb.bg:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.nx = shl nuw nsw i64 %.sroa.038.0225.i, 1    ; 3 uses
  %i.ny = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.nz = icmp samesign ult i64 %i.ny, %i.nx
  %.not78.i = icmp samesign ugt i64 %i.ny, %i.cz
  %or.cond88.i = or i1 %i.nz, %.not78.i
  br i1 %or.cond88.i, label %.invoke, label %bb.bl, !prof !9

bb.bh:                                            ; preds = %bb.bd
  %i.oa = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.nq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2318
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.nr
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.ob, ptr noundef nonnull %i.oa, ptr noundef nonnull %i.oc)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.bh
  %.sroa.0.0.copyload.i106.i = load ptr, ptr %i.e, align 8, !noalias !2334 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2334 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !2334 ; 8 uses
  %.sroa.7.0.copyload.i108.i = load i64, ptr %.sroa.7.0..sroa_idx.i107.i, align 8, !noalias !2334 ; 7 uses
  %i.od = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i108.i
  br i1 %i.od, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i106.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.oe = sub nuw i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.oe, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.0.copyload.i.i
  %scevgep197 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.7.0.copyload.i108.i
  %i.of = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep198 = getelementptr i8, ptr %.sroa.0.0.copyload.i106.i, i64 %i.of
  %i.og = shl i64 %.sroa.7.0.copyload.i108.i, 2
  %scevgep199 = getelementptr i8, ptr %.sroa.0.0.copyload.i106.i, i64 %i.og
  %bound0 = icmp ult ptr %scevgep, %scevgep199
  %bound1 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.oe, -4                      ; 3 uses
  %i.oh = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oi = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.oi
  %wide.load = load <4 x float>, ptr %i.oj, align 4, !alias.scope !2335, !noalias !2317
  %i.ol = fmul <4 x float> %wide.load, splat (float 2.550000e+02)
  %i.om = call <4 x float> @llvm.round.v4f32(<4 x float> %i.ol)
  %i.on = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.om)
  store <4 x i8> %i.on, ptr %i.ok, align 1, !alias.scope !2336, !noalias !2337
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oo = icmp eq i64 %index.next, %n.vec
  br i1 %i.oo, label %middle.block, label %vector.body, !llvm.loop !2272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.oe, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.oh, %middle.block ] ; 6 uses
  %i.op = sub i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.09.i.i.ph
  %.neg376 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter371 = and i64 %i.op, 1
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i.ph
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.os = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.ot = load float, ptr %i.oq, align 4, !noalias !2317, !noundef !4
  %i.ou = fmul float %i.ot, 2.550000e+02
  %i.ov = call float @llvm.round.f32(float %i.ou)
  %i.ow = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.ov)
  store i8 %i.ow, ptr %i.or, align 1, !noalias !2317
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.os, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ox = icmp eq i64 %.sroa.7.0.copyload.i108.i, %.neg376
  br i1 %i.ox, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.pa = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.pb = load float, ptr %i.oy, align 4, !noalias !2317, !noundef !4
  %i.pc = fmul float %i.pb, 2.550000e+02
  %i.pd = call float @llvm.round.f32(float %i.pc)
  %i.pe = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.pd)
  store i8 %i.pe, ptr %i.oz, align 1, !noalias !2317
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.pa
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.pa
  %i.ph = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.pi = load float, ptr %i.pf, align 4, !noalias !2317, !noundef !4
  %i.pj = fmul float %i.pi, 2.550000e+02
  %i.pk = call float @llvm.round.f32(float %i.pj)
  %i.pl = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.pk)
  store i8 %i.pl, ptr %i.pg, align 1, !noalias !2317
  %exitcond.not.i109.i.1 = icmp eq i64 %i.ph, %.sroa.7.0.copyload.i108.i
  br i1 %exitcond.not.i109.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2273

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2318
  br label %bb.bi

bb.bi:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i
  %.not.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i, label %.loopexit4, label %bb.an

bb.bj:                                            ; preds = %bb.be
  %i.pm = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.nt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2318
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.nu
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.pn, ptr noundef nonnull %i.pm, ptr noundef nonnull %i.po)
          to label %.noexc33 unwind label %.loopexit

.noexc33:                                         ; preds = %bb.bj
  %.sroa.0.0.copyload.i110.i = load ptr, ptr %i.d, align 8, !noalias !2338 ; 7 uses
  %.sroa.43.0.copyload.i112.i = load ptr, ptr %.sroa.43.0..sroa_idx.i111.i, align 8, !noalias !2338 ; 7 uses
  %.sroa.54.0.copyload.i114.i = load i64, ptr %.sroa.54.0..sroa_idx.i113.i, align 8, !noalias !2338 ; 8 uses
  %.sroa.7.0.copyload.i116.i = load i64, ptr %.sroa.7.0..sroa_idx.i115.i, align 8, !noalias !2338 ; 7 uses
  %i.pp = icmp ult i64 %.sroa.54.0.copyload.i114.i, %.sroa.7.0.copyload.i116.i
  br i1 %i.pp, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i: ; preds = %.noexc33
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i110.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i112.i) ]
  %i.pq = sub nuw i64 %.sroa.7.0.copyload.i116.i, %.sroa.54.0.copyload.i114.i ; 3 uses
  %min.iters.check209 = icmp ult i64 %i.pq, 4
  br i1 %min.iters.check209, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i118.i.preheader, label %vector.memcheck200

vector.memcheck200:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i
  %scevgep201 = getelementptr i8, ptr %.sroa.43.0.copyload.i112.i, i64 %.sroa.54.0.copyload.i114.i
  %scevgep202 = getelementptr i8, ptr %.sroa.43.0.copyload.i112.i, i64 %.sroa.7.0.copyload.i116.i
end_hunk_7
begin_hunk_8_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_:switch.lookup
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04.0.copyload.i.i, i64 %.sroa.57.015.i.i
  %i.kg = getelementptr inbounds nuw [12 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %.sroa.57.015.i.i ; 3 uses
  %i.kh = add nuw i64 %.sroa.57.015.i.i, 1        ; 2 uses
  %i.ki = load i16, ptr %i.kf, align 2, !noalias !2462, !noundef !4
  %i.kj = uitofp i16 %i.ki to float
  %i.kk = fmul nnan float %i.kj, f0x37800080      ; 3 uses
  store float %i.kk, ptr %i.kg, align 4, !noalias !2462
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store float %i.kk, ptr %i.kl, align 4, !noalias !2462
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store float %i.kk, ptr %i.km, align 4, !noalias !2462
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.04.0.copyload.i.i, i64 %i.kh
  %i.ko = getelementptr inbounds nuw [12 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %i.kh ; 3 uses
  %i.kp = add nuw i64 %.sroa.57.015.i.i, 2        ; 2 uses
  %i.kq = load i16, ptr %i.kn, align 2, !noalias !2462, !noundef !4
  %i.kr = uitofp i16 %i.kq to float
  %i.ks = fmul nnan float %i.kr, f0x37800080      ; 3 uses
  store float %i.ks, ptr %i.ko, align 4, !noalias !2462
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  store float %i.ks, ptr %i.kt, align 4, !noalias !2462
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store float %i.ks, ptr %i.ku, align 4, !noalias !2462
  %exitcond.not.i100.i.1 = icmp eq i64 %i.kp, %.sroa.78.0.copyload.i.i
  br i1 %exitcond.not.i100.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2402

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbtEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block320, %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2463
  br label %bb.av

bb.ay:                                            ; preds = %bb.at
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ez ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2463
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.el
  %i.kx = lshr i64 %i.em, 2
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.kx
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 2 %i.kv, ptr noundef nonnull readonly %i.kw, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.ky)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.ay
  %.sroa.08.0.copyload.i.i10 = load ptr, ptr %i.f, align 8, !noalias !2476 ; 7 uses
  %.sroa.410.0.copyload.i.i11 = load ptr, ptr %.sroa.410.0..sroa_idx.i.i6, align 8, !noalias !2476 ; 7 uses
  %.sroa.511.0.copyload.i.i12 = load i64, ptr %.sroa.511.0..sroa_idx.i.i7, align 8, !noalias !2476 ; 8 uses
  %.sroa.712.0.copyload.i.i13 = load i64, ptr %.sroa.712.0..sroa_idx.i.i8, align 8, !noalias !2476 ; 7 uses
  %i.kz = icmp ult i64 %.sroa.511.0.copyload.i.i12, %.sroa.712.0.copyload.i.i13
  br i1 %i.kz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.copyload.i.i10) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i11) ]
  %i.la = sub nuw i64 %.sroa.712.0.copyload.i.i13, %.sroa.511.0.copyload.i.i12 ; 3 uses
  %min.iters.check332 = icmp ult i64 %i.la, 4
  br i1 %min.iters.check332, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck323

vector.memcheck323:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.lb = shl i64 %.sroa.511.0.copyload.i.i12, 4
  %scevgep324 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i11, i64 %i.lb
  %i.lc = shl i64 %.sroa.712.0.copyload.i.i13, 4
  %scevgep325 = getelementptr i8, ptr %.sroa.410.0.copyload.i.i11, i64 %i.lc
  %i.ld = shl i64 %.sroa.511.0.copyload.i.i12, 2
  %scevgep326 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i10, i64 %i.ld
  %i.le = shl i64 %.sroa.712.0.copyload.i.i13, 2
  %scevgep327 = getelementptr i8, ptr %.sroa.08.0.copyload.i.i10, i64 %i.le
  %bound0328 = icmp ult ptr %scevgep324, %scevgep327
  %bound1329 = icmp ult ptr %scevgep326, %scevgep325
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck323
  %n.vec334 = and i64 %i.la, -4                   ; 3 uses
  %i.lf = add i64 %.sroa.511.0.copyload.i.i12, %n.vec334
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 2 uses
  %i.lg = add nuw i64 %.sroa.511.0.copyload.i.i12, %index336 ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %i.lg
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i11, i64 %i.lg
  %wide.vec = load <8 x i16>, ptr %i.lh, align 2, !alias.scope !2477, !noalias !2462 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec337 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.lj = uitofp <4 x i16> %strided.vec to <4 x float>
  %i.lk = fmul nnan <4 x float> %i.lj, splat (float f0x37800080)
  %i.ll = uitofp <4 x i16> %strided.vec337 to <4 x float>
  %i.lm = fmul nnan <4 x float> %i.ll, splat (float f0x37800080)
  %interleaved.vec338 = shufflevector <4 x float> %i.lk, <4 x float> %i.lm, <16 x i32> <i32 0, i32 0, i32 0, i32 4, i32 1, i32 1, i32 1, i32 5, i32 2, i32 2, i32 2, i32 6, i32 3, i32 3, i32 3, i32 7>
  store <16 x float> %interleaved.vec338, ptr %i.li, align 4, !alias.scope !2478, !noalias !2462
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.ln = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.ln, label %middle.block340, label %vector.body335, !llvm.loop !2409

middle.block340:                                  ; preds = %vector.body335
  %cmp.n341 = icmp eq i64 %i.la, %n.vec334
  br i1 %cmp.n341, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck323, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block340
  %.sroa.511.017.i.i14.ph = phi i64 [ %.sroa.511.0.copyload.i.i12, %vector.memcheck323 ], [ %.sroa.511.0.copyload.i.i12, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.lf, %middle.block340 ] ; 6 uses
  %i.lo = sub i64 %.sroa.712.0.copyload.i.i13, %.sroa.511.017.i.i14.ph
  %.neg377 = add i64 %.sroa.511.017.i.i14.ph, 1
  %xtraiter361 = and i64 %i.lo, 1
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %.sroa.511.017.i.i14.ph ; 2 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i11, i64 %.sroa.511.017.i.i14.ph ; 4 uses
  %i.lr = add nuw i64 %.sroa.511.017.i.i14.ph, 1
  %i.ls = load i16, ptr %i.lp, align 2, !noalias !2462, !noundef !4
  %i.lt = uitofp i16 %i.ls to float
  %i.lu = fmul nnan float %i.lt, f0x37800080      ; 3 uses
  store float %i.lu, ptr %i.lq, align 4, !noalias !2462
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  store float %i.lu, ptr %i.lv, align 4, !noalias !2462
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store float %i.lu, ptr %i.lw, align 4, !noalias !2462
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.ly = load i16, ptr %i.lx, align 2, !noalias !2462, !noundef !4
  %i.lz = uitofp i16 %i.ly to float
  %i.ma = fmul nnan float %i.lz, f0x37800080
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  store float %i.ma, ptr %i.mb, align 4, !noalias !2462
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.511.017.i.i14.unr = phi i64 [ %.sroa.511.017.i.i14.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.lr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.mc = icmp eq i64 %.sroa.712.0.copyload.i.i13, %.neg377
  br i1 %i.mc, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.511.017.i.i14 = phi i64 [ %i.ms, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.511.017.i.i14.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %.sroa.511.017.i.i14 ; 2 uses
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i11, i64 %.sroa.511.017.i.i14 ; 4 uses
  %i.mf = add nuw i64 %.sroa.511.017.i.i14, 1     ; 2 uses
  %i.mg = load i16, ptr %i.md, align 2, !noalias !2462, !noundef !4
  %i.mh = uitofp i16 %i.mg to float
  %i.mi = fmul nnan float %i.mh, f0x37800080      ; 3 uses
  store float %i.mi, ptr %i.me, align 4, !noalias !2462
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  store float %i.mi, ptr %i.mj, align 4, !noalias !2462
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store float %i.mi, ptr %i.mk, align 4, !noalias !2462
  %i.ml = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  %i.mm = load i16, ptr %i.ml, align 2, !noalias !2462, !noundef !4
  %i.mn = uitofp i16 %i.mm to float
  %i.mo = fmul nnan float %i.mn, f0x37800080
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 12
  store float %i.mo, ptr %i.mp, align 4, !noalias !2462
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.08.0.copyload.i.i10, i64 %i.mf ; 2 uses
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i11, i64 %i.mf ; 4 uses
  %i.ms = add nuw i64 %.sroa.511.017.i.i14, 2     ; 2 uses
  %i.mt = load i16, ptr %i.mq, align 2, !noalias !2462, !noundef !4
  %i.mu = uitofp i16 %i.mt to float
  %i.mv = fmul nnan float %i.mu, f0x37800080      ; 3 uses
  store float %i.mv, ptr %i.mr, align 4, !noalias !2462
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store float %i.mv, ptr %i.mw, align 4, !noalias !2462
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store float %i.mv, ptr %i.mx, align 4, !noalias !2462
  %i.my = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  %i.mz = load i16, ptr %i.my, align 2, !noalias !2462, !noundef !4
  %i.na = uitofp i16 %i.mz to float
  %i.nb = fmul nnan float %i.na, f0x37800080
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  store float %i.nb, ptr %i.nc, align 4, !noalias !2462
  %exitcond.not.i101.i.1 = icmp eq i64 %i.ms, %.sroa.712.0.copyload.i.i13
  br i1 %exitcond.not.i101.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2410

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbatEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAtj2_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block340, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2463
  br label %bb.av

bb.az:                                            ; preds = %bb.bb, %bb.ba
  %i.nd = mul i64 %i.el, %.sroa.019.0.i           ; 3 uses
  %.not76.i = icmp ugt i64 %i.nd, %i.em
  br i1 %.not76.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !9

bb.ba:                                            ; preds = %bb.av
  br i1 %i.ec, label %bb.bc, label %bb.az

bb.bb:                                            ; preds = %bb.av
  br i1 %i.eb, label %bb.bd, label %bb.az

bb.bc:                                            ; preds = %bb.ba
  %.lhs.trunc160.i = trunc nuw nsw i64 %i.em to i16
  %i.ne = udiv i16 %.lhs.trunc160.i, 3
  %.zext161.i = zext nneg i16 %i.ne to i64
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %.zext161.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2463
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.nf, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ef)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.bc
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !noalias !2463 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !2463 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !2463 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !2463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2463
  %i.ng = icmp eq i64 %i.el, 0
  br i1 %i.ng, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph222.preheader.i

.lr.ph222.preheader.i:                            ; preds = %.noexc25
  %umax285.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.preheader.i
  %.sroa.8136.0221.i = phi i64 [ %i.nh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.el, %.lr.ph222.preheader.i ]
  %.sroa.5134.0220.i = phi i64 [ %i.nk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph222.preheader.i ] ; 4 uses
  %exitcond286.not.i = icmp eq i64 %.sroa.5134.0220.i, %umax285.i
  br i1 %exitcond286.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph222.i
  %i.nh = add i64 %.sroa.8136.0221.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.nj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5134.0220.i ; 3 uses
  %i.nk = add i64 %.sroa.5134.0220.i, 1
  %i.nl = load float, ptr %i.ni, align 4, !noalias !2462, !noundef !4
  store float %i.nl, ptr %i.nj, align 4, !noalias !2462
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nn = load float, ptr %i.nm, align 4, !noalias !2462, !noundef !4
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store float %i.nn, ptr %i.no, align 4, !noalias !2462
  %i.np = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nq = load float, ptr %i.np, align 4, !noalias !2462, !noundef !4
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.ns = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.nq, i64 0
  store <2 x float> %i.ns, ptr %i.nr, align 4, !noalias !2462
  %i.nt = icmp eq i64 %i.nh, 0
  br i1 %i.nt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph222.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph222.i
  %i.nu = shl i64 %i.el, 2                        ; 3 uses
  %i.nv = icmp ult i64 %i.nu, 1025
  br i1 %i.nv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc27, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc25, %bb.az
  %.sroa.7.0.i = phi i64 [ %i.ol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.nu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.nd, %bb.az ], [ 0, %.noexc25 ], [ 0, %.noexc27 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.m, %bb.az ], [ %i.l, %.noexc25 ], [ %i.l, %.noexc27 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.be
    i8 1, label %bb.bf
    i8 2, label %bb.bg
    i8 3, label %bb.bh
  ]

bb.bd:                                            ; preds = %bb.bb
  %i.nw = lshr i64 %i.em, 2
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2463
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull %i.m, ptr noundef nonnull %i.nx, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ee)
          to label %.noexc27 unwind label %.loopexit

.noexc27:                                         ; preds = %bb.bd
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !noalias !2463 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !2463 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !2463 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !2463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2463
  %i.ny = icmp eq i64 %i.el, 0
  br i1 %i.ny, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc27
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8151.0218.i = phi i64 [ %i.nz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.el, %.lr.ph.preheader.i ]
  %.sroa.5149.0217.i = phi i64 [ %i.oc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5149.0217.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.nz = add i64 %.sroa.8151.0218.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.ob = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5149.0217.i ; 3 uses
  %i.oc = add i64 %.sroa.5149.0217.i, 1
  %i.od = load float, ptr %i.oa, align 4, !noalias !2462, !noundef !4
  store float %i.od, ptr %i.ob, align 4, !noalias !2462
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.of = load float, ptr %i.oe, align 4, !noalias !2462, !noundef !4
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  store float %i.of, ptr %i.og, align 4, !noalias !2462
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oi = load float, ptr %i.oh, align 4, !noalias !2462, !noundef !4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store float %i.oi, ptr %i.oj, align 4, !noalias !2462
  %i.ok = icmp eq i64 %i.nz, 0
  br i1 %i.ok, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.ol = mul i64 %i.el, 3                        ; 3 uses
  %i.om = icmp ult i64 %i.ol, 1025
  br i1 %i.om, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !14

bb.be:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.on = mul nuw i64 %.sroa.038.0225.i, 3        ; 2 uses
  %i.oo = mul nuw i64 %..i.i, 3                   ; 3 uses
  %i.op = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not81.i = icmp ugt i64 %i.oo, %i.dw
  %or.cond85.i = or i1 %i.op, %.not81.i
  br i1 %or.cond85.i, label %.invoke, label %bb.bi, !prof !9

bb.bf:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.oq = shl nuw i64 %.sroa.038.0225.i, 2        ; 3 uses
  %i.or = shl nuw i64 %..i.i, 2                   ; 4 uses
  %i.os = icmp ult i64 %i.or, %i.oq
  %.not80.i = icmp ugt i64 %i.or, %i.dw
  %or.cond86.i = or i1 %i.os, %.not80.i
  br i1 %or.cond86.i, label %.invoke, label %bb.bk, !prof !9

bb.bg:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ot = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  %.not79.i = icmp samesign ugt i64 %..i.i, %i.dw
  %or.cond87.i = or i1 %i.ot, %.not79.i
  br i1 %or.cond87.i, label %.invoke, label %bb.bl, !prof !9

bb.bh:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ou = shl nuw nsw i64 %.sroa.038.0225.i, 1    ; 3 uses
  %i.ov = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.ow = icmp samesign ult i64 %i.ov, %i.ou
  %.not78.i = icmp samesign ugt i64 %i.ov, %i.dw
  %or.cond88.i = or i1 %i.ow, %.not78.i
  br i1 %or.cond88.i, label %.invoke, label %bb.bm, !prof !9

bb.bi:                                            ; preds = %bb.be
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.on
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2463
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.oo
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.oy, ptr noundef nonnull align 2 %i.ox, ptr noundef nonnull %i.oz)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %bb.bi
  %.sroa.0.0.copyload.i106.i = load ptr, ptr %i.e, align 8, !noalias !2479 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2479 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !2479 ; 8 uses
  %.sroa.7.0.copyload.i108.i = load i64, ptr %.sroa.7.0..sroa_idx.i107.i, align 8, !noalias !2479 ; 7 uses
  %i.pa = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i108.i
  br i1 %i.pa, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc30
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i106.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.pb = sub nuw i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.pb, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.pc = shl i64 %.sroa.54.0.copyload.i.i, 1
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.pc
  %i.pd = shl i64 %.sroa.7.0.copyload.i108.i, 1
  %scevgep195 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.pd
  %i.pe = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep196 = getelementptr i8, ptr %.sroa.0.0.copyload.i106.i, i64 %i.pe
  %i.pf = shl i64 %.sroa.7.0.copyload.i108.i, 2
  %scevgep197 = getelementptr i8, ptr %.sroa.0.0.copyload.i106.i, i64 %i.pf
  %bound0 = icmp ult ptr %scevgep, %scevgep197
  %bound1 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.pb, -4                      ; 3 uses
  %i.pg = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ph = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.ph
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.ph
  %wide.load = load <4 x float>, ptr %i.pi, align 4, !alias.scope !2480, !noalias !2462
  %i.pk = fmul <4 x float> %wide.load, splat (float 6.553500e+04)
  %i.pl = call <4 x float> @llvm.round.v4f32(<4 x float> %i.pk)
  %i.pm = call <4 x i16> @llvm.fptoui.sat.v4i16.v4f32(<4 x float> %i.pl)
  store <4 x i16> %i.pm, ptr %i.pj, align 2, !alias.scope !2481, !noalias !2482
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pn = icmp eq i64 %index.next, %n.vec
  br i1 %i.pn, label %middle.block, label %vector.body, !llvm.loop !2417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pb, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.pg, %middle.block ] ; 6 uses
  %i.po = sub i64 %.sroa.7.0.copyload.i108.i, %.sroa.54.09.i.i.ph
  %.neg380 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter373 = and i64 %i.po, 1
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i.ph
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.pr = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.ps = load float, ptr %i.pp, align 4, !noalias !2462, !noundef !4
  %i.pt = fmul float %i.ps, 6.553500e+04
  %i.pu = call float @llvm.round.f32(float %i.pt)
  %i.pv = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.pu)
  store i16 %i.pv, ptr %i.pq, align 2, !noalias !2462
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.pr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.pw = icmp eq i64 %.sroa.7.0.copyload.i108.i, %.neg380
  br i1 %i.pw, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.qg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.54.09.i.i
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.pz = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.qa = load float, ptr %i.px, align 4, !noalias !2462, !noundef !4
  %i.qb = fmul float %i.qa, 6.553500e+04
  %i.qc = call float @llvm.round.f32(float %i.qb)
  %i.qd = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.qc)
  store i16 %i.qd, ptr %i.py, align 2, !noalias !2462
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i106.i, i64 %i.pz
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.pz
  %i.qg = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.qh = load float, ptr %i.qe, align 4, !noalias !2462, !noundef !4
  %i.qi = fmul float %i.qh, 6.553500e+04
  %i.qj = call float @llvm.round.f32(float %i.qi)
  %i.qk = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.qj)
  store i16 %i.qk, ptr %i.qf, align 2, !noalias !2462
  %exitcond.not.i109.i.1 = icmp eq i64 %i.qg, %.sroa.7.0.copyload.i108.i
  br i1 %exitcond.not.i109.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !2418

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2463
  br label %bb.bj

bb.bj:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i
  %.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i, label %.loopexit4, label %bb.ao

bb.bk:                                            ; preds = %bb.bf
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2463
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.or
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.qm, ptr noundef nonnull align 2 %i.ql, ptr noundef nonnull %i.qn)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %bb.bk
  %.sroa.0.0.copyload.i110.i = load ptr, ptr %i.d, align 8, !noalias !2483 ; 7 uses
  %.sroa.43.0.copyload.i112.i = load ptr, ptr %.sroa.43.0..sroa_idx.i111.i, align 8, !noalias !2483 ; 7 uses
  %.sroa.54.0.copyload.i114.i = load i64, ptr %.sroa.54.0..sroa_idx.i113.i, align 8, !noalias !2483 ; 8 uses
  %.sroa.7.0.copyload.i116.i = load i64, ptr %.sroa.7.0..sroa_idx.i115.i, align 8, !noalias !2483 ; 7 uses
  %i.qo = icmp ult i64 %.sroa.54.0.copyload.i114.i, %.sroa.7.0.copyload.i116.i
  br i1 %i.qo, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i: ; preds = %.noexc32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i110.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i112.i) ]
  %i.qp = sub nuw i64 %.sroa.7.0.copyload.i116.i, %.sroa.54.0.copyload.i114.i ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.qp, 4
  br i1 %min.iters.check207, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i118.i.preheader, label %vector.memcheck198

vector.memcheck198:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i117.i
end_hunk_8
