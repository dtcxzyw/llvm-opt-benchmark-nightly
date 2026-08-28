Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.12?download=true
inline.NumInlined: 771
inline.NumDeleted: 266
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTmjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls:bb.a
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.039.i.i, %bb.g ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.021.1.i.i.ph = phi ptr [ %i.af, %bb.g ], [ %i.bb, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.at, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep32.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.021.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.021.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.an = icmp eq ptr %.sroa.13.1.i.i, %i.aj      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.an, ptr %i.b, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i = load i32, ptr %.sroa.01.0.i.i, align 4, !noalias !822, !noundef !4 ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr i8, ptr %.sroa.13.1.i.i, i64 8
  %.sroa.01.0.sroa.sel.i.i = select i1 %i.an, ptr %i.e, ptr %.sroa.13.1.sroa.gep.i.i
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel.i.i, align 8, !noalias !822
  %i.ao = icmp eq i32 %.val.i.i.i, %.val2.i.pre.i.i
  %i.ap = icmp ult i32 %.val.i.i.i, %.val2.i.pre.i.i
  %i.aq = icmp ult i64 %.val1.i.i.i, %.val3.i14.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ao, i1 %i.aq, i1 %i.ap
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.sroa.23.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.021.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !820, !noalias !822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !noalias !822
  %i.as = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.at = add i64 %.sroa.23.1.i.i, %i.as          ; 6 uses
  %.sroa.13.1.sroa.gep32.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16
  br i1 %i.an, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.13.042.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.039.i.i, %bb.g ] ; 3 uses
  %.sroa.021.041.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.af, %bb.g ] ; 5 uses
  %.sroa.23.040.i.i = phi i64 [ %i.bi, %.lr.ph.i.i ], [ 0, %bb.g ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.042.i.i, align 4, !alias.scope !820, !noalias !825, !noundef !4 ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.021.041.i.i, i64 24
  %.val1.i12.i.i = load i64, ptr %i.au, align 8, !alias.scope !820, !noalias !825
  %i.av = icmp eq i32 %.val.i11.i.i, %.val2.i.pre.i.i
  %i.aw = icmp ult i32 %.val.i11.i.i, %.val2.i.pre.i.i
  %i.ax = icmp ult i64 %.val1.i12.i.i, %.val3.i14.i.i
  %.sroa.0.0.i.i.i15.i.i = select i1 %i.av, i1 %i.ax, i1 %i.aw
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.sroa.23.040.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.021.041.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !820, !noalias !825
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.042.i.i, i64 16, i1 false), !alias.scope !820, !noalias !825
  %i.az = zext i1 %.sroa.0.0.i.i.i15.i.i to i64
  %i.ba = add i64 %.sroa.23.040.i.i, %i.az        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.021.041.i.i, i64 32 ; 4 uses
  %.val.i16.i.i = load i32, ptr %i.bb, align 8, !alias.scope !820, !noalias !828, !noundef !4 ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.021.041.i.i, i64 40
  %.val1.i17.i.i = load i64, ptr %i.bc, align 8, !alias.scope !820, !noalias !828
  %i.bd = icmp eq i32 %.val.i16.i.i, %.val2.i.pre.i.i
  %i.be = icmp ult i32 %.val.i16.i.i, %.val2.i.pre.i.i
  %i.bf = icmp ult i64 %.val1.i17.i.i, %.val3.i14.i.i
  %.sroa.0.0.i.i.i20.i.i = select i1 %i.bd, i1 %i.bf, i1 %i.be
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ba ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.042.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !820, !noalias !828
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !820, !noalias !828
  %i.bh = zext i1 %.sroa.0.0.i.i.i20.i.i to i64
  %i.bi = add i64 %i.ba, %i.bh                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.041.i.i, i64 48 ; 3 uses
  %i.bj = icmp ult ptr %.sroa.13.0.i.i, %i.ak
  br i1 %i.bj, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !819
  %.not7.i = icmp ult i64 %i.at, %.sroa.15.087130
  br i1 %.not7.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %.sroa.0.088129, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.087130, i64 noundef 0, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.088129, i64 %i.at ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = xor i64 %i.at, -1
  %i.bn = add i64 %.sroa.15.087130, %i.bm
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTmjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %.sroa.0.088129, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.086131, i32 noundef %i.h, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.i:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmjENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 %i.ad ; 2 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.086131, align 4, !noundef !4 ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.023.086131, i64 8
  %.sroa.023.0.val34 = load i64, ptr %i.bp, align 8
  %.val = load i32, ptr %i.bo, align 4, !noundef !4 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  %.val35 = load i64, ptr %i.bq, align 8
  %i.br = icmp eq i32 %.sroa.023.0.val, %.val
  %i.bs = icmp ult i32 %.sroa.023.0.val, %.val
  %i.bt = icmp ult i64 %.sroa.023.0.val34, %.val35
  %.sroa.0.0.i.i = select i1 %i.br, i1 %i.bt, i1 %i.bs
  br i1 %.sroa.0.0.i.i, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %.sroa.0.088129, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.087130, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 16 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !839
  %i.bv = load i32, ptr %i.bu, align 8, !alias.scope !840, !noalias !837, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !840, !noalias !837, !noundef !4
  store i32 %i.bv, ptr %i.a, align 8, !noalias !839
  store i64 %i.bx, ptr %i.d, align 8, !noalias !839
  %i.by = getelementptr [16 x i8], ptr %.sroa.0.088129, i64 %.sroa.15.087130 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -16    ; 2 uses
  %.sroa.13.039.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 32 ; 3 uses
  %i.ca = icmp ult ptr %.sroa.13.039.i.i43, %i.bz
  %.val2.i.pre.i.i44 = load i32, ptr %.sroa.0.088129, align 8, !alias.scope !841, !noalias !834 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.088129, i64 8
  %.val3.i14.i.i45 = load i64, ptr %i.cb, align 8, !alias.scope !841, !noalias !834 ; 3 uses
  br i1 %i.ca, label %.lr.ph.i.i60, label %.preheader.i.i46.preheader

.preheader.i.i46.preheader:                       ; preds = %.lr.ph.i.i60, %bb.j
  %.sroa.23.1.i.i50.ph = phi i64 [ 0, %bb.j ], [ %i.cx, %.lr.ph.i.i60 ]
  %.sroa.13.1.i.i51.ph = phi ptr [ %.sroa.13.039.i.i43, %bb.j ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i60 ]
  %.sroa.021.1.i.i52.ph = phi ptr [ %i.bu, %bb.j ], [ %i.cq, %.lr.ph.i.i60 ]
  br label %.preheader.i.i46

.preheader.i.i46:                                 ; preds = %.preheader.i.i46.preheader, %.preheader.i.i46
  %.sroa.23.1.i.i50 = phi i64 [ %i.ci, %.preheader.i.i46 ], [ %.sroa.23.1.i.i50.ph, %.preheader.i.i46.preheader ] ; 2 uses
  %.sroa.13.1.i.i51 = phi ptr [ %.sroa.13.1.sroa.gep32.i.i58, %.preheader.i.i46 ], [ %.sroa.13.1.i.i51.ph, %.preheader.i.i46.preheader ] ; 5 uses
  %.sroa.021.1.i.i52 = phi ptr [ %.sroa.13.1.i.i51, %.preheader.i.i46 ], [ %.sroa.021.1.i.i52.ph, %.preheader.i.i46.preheader ]
  %i.cc = icmp eq ptr %.sroa.13.1.i.i51, %i.by    ; 3 uses
  %.sroa.01.0.i.i53 = select i1 %i.cc, ptr %i.a, ptr %.sroa.13.1.i.i51 ; 2 uses
  %.val.i.i.i54 = load i32, ptr %.sroa.01.0.i.i53, align 4, !noalias !842, !noundef !4 ; 2 uses
  %.sroa.13.1.sroa.gep.i.i55 = getelementptr i8, ptr %.sroa.13.1.i.i51, i64 8
  %.sroa.01.0.sroa.sel.i.i56 = select i1 %i.cc, ptr %i.d, ptr %.sroa.13.1.sroa.gep.i.i55
  %.val1.i.i.i57 = load i64, ptr %.sroa.01.0.sroa.sel.i.i56, align 8, !noalias !842
  %i.cd = icmp eq i32 %.val2.i.pre.i.i44, %.val.i.i.i54
  %i.ce = icmp uge i32 %.val2.i.pre.i.i44, %.val.i.i.i54
  %i.cf = icmp uge i64 %.val3.i14.i.i45, %.val1.i.i.i57
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.cd, i1 %i.cf, i1 %i.ce
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.sroa.23.1.i.i50 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.021.1.i.i52, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !alias.scope !840, !noalias !842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i53, i64 16, i1 false), !noalias !842
  %i.ch = zext i1 %.sroa.0.0.i.i.i.i.i.i to i64
  %i.ci = add i64 %.sroa.23.1.i.i50, %i.ch        ; 4 uses
  %.sroa.13.1.sroa.gep32.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i51, i64 16
  br i1 %i.cc, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls.exit.i, label %.preheader.i.i46

.lr.ph.i.i60:                                     ; preds = %bb.j, %.lr.ph.i.i60
  %.sroa.13.042.i.i61 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i60 ], [ %.sroa.13.039.i.i43, %bb.j ] ; 3 uses
  %.sroa.021.041.i.i62 = phi ptr [ %i.cq, %.lr.ph.i.i60 ], [ %i.bu, %bb.j ] ; 5 uses
  %.sroa.23.040.i.i63 = phi i64 [ %i.cx, %.lr.ph.i.i60 ], [ 0, %bb.j ] ; 2 uses
  %.val.i11.i.i64 = load i32, ptr %.sroa.13.042.i.i61, align 4, !alias.scope !840, !noalias !845, !noundef !4 ; 2 uses
  %i.cj = getelementptr i8, ptr %.sroa.021.041.i.i62, i64 24
  %.val1.i12.i.i65 = load i64, ptr %i.cj, align 8, !alias.scope !840, !noalias !845
  %i.ck = icmp eq i32 %.val2.i.pre.i.i44, %.val.i11.i.i64
  %i.cl = icmp uge i32 %.val2.i.pre.i.i44, %.val.i11.i.i64
  %i.cm = icmp uge i64 %.val3.i14.i.i45, %.val1.i12.i.i65
  %.sroa.0.0.i.i.i.i15.i.i = select i1 %i.ck, i1 %i.cm, i1 %i.cl
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.sroa.23.040.i.i63 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.021.041.i.i62, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !alias.scope !840, !noalias !845
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.042.i.i61, i64 16, i1 false), !alias.scope !840, !noalias !845
  %i.co = zext i1 %.sroa.0.0.i.i.i.i15.i.i to i64
  %i.cp = add i64 %.sroa.23.040.i.i63, %i.co      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.021.041.i.i62, i64 32 ; 4 uses
  %.val.i16.i.i66 = load i32, ptr %i.cq, align 8, !alias.scope !840, !noalias !848, !noundef !4 ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.021.041.i.i62, i64 40
  %.val1.i17.i.i67 = load i64, ptr %i.cr, align 8, !alias.scope !840, !noalias !848
  %i.cs = icmp eq i32 %.val2.i.pre.i.i44, %.val.i16.i.i66
  %i.ct = icmp uge i32 %.val2.i.pre.i.i44, %.val.i16.i.i66
  %i.cu = icmp uge i64 %.val3.i14.i.i45, %.val1.i17.i.i67
  %.sroa.0.0.i.i.i.i20.i.i = select i1 %i.cs, i1 %i.cu, i1 %i.ct
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cp ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.042.i.i61, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !alias.scope !840, !noalias !848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !alias.scope !840, !noalias !848
  %i.cw = zext i1 %.sroa.0.0.i.i.i.i20.i.i to i64
  %i.cx = add i64 %i.cp, %i.cw                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.021.041.i.i62, i64 48 ; 3 uses
  %i.cy = icmp ult ptr %.sroa.13.0.i.i68, %i.bz
  br i1 %i.cy, label %.lr.ph.i.i60, label %.preheader.i.i46.preheader

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %.preheader.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !839
  %.not7.i59 = icmp ult i64 %i.ci, %.sroa.15.087130
  br i1 %.not7.i59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls.exit.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmjENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls.exit.i
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %.sroa.0.088129, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.087130, i64 noundef 0, i64 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.cz = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %i.da = sub nuw i64 %.sroa.15.087130, %i.cz
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.088129, i64 %i.cz
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit
  %.sroa.023.0.be = phi ptr [ %i.bk, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit ], [ null, %bb.l ]
  %.sroa.15.0.be = phi i64 [ %i.bn, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit ], [ %i.da, %bb.l ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bl, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmjE12split_at_mutCs7ZUl82OSlxp_6rustls.exit ], [ %i.db, %bb.l ] ; 3 uses
  %i.dc = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.dc, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTmmENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %5 = alloca [8 x i8], align 8                   ; 5 uses
  %6 = alloca [8 x i8], align 8                   ; 5 uses
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %._crit_edge140, label %.lr.ph139

bb.b:                                             ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %._crit_edge140, label %.lr.ph139

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_networkTmmENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull %4)
  br label %bb.f

._crit_edge140:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.092.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.091.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable8heapsort8heapsortTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %.sroa.0.092.lcssa, i64 noundef %.sroa.15.091.lcssa, ptr noalias nofree nonnull poison) #27
  br label %bb.f

.lr.ph139:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.089138 = phi i32 [ %i.d, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.090137 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 4 uses
  %.sroa.15.091136 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 13 uses
  %.sroa.0.092135 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 25 uses
  %i.d = add nsw i32 %.sroa.026.089138, -1        ; 3 uses
  %i.e = lshr i64 %.sroa.15.091136, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 %.idx2.i ; 4 uses
  %i.h = icmp samesign ult i64 %.sroa.15.091136, 64
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph139
  %i.i = tail call noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTmmENvYB14_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noundef nonnull readonly align 4 %.sroa.0.092135, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.g, i64 noundef %i.e, ptr noalias nofree noundef nonnull %4)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

bb.d:                                             ; preds = %.lr.ph139
  %.val10.i = load i32, ptr %.sroa.0.092135, align 4, !alias.scope !851, !noalias !854, !noundef !4 ; 4 uses
  %i.j = getelementptr i8, ptr %.sroa.0.092135, i64 4
  %.val11.i = load i32, ptr %i.j, align 4, !alias.scope !851, !noalias !854 ; 2 uses
  %.val12.i = load i32, ptr %i.f, align 4, !alias.scope !851, !noalias !854, !noundef !4 ; 4 uses
  %i.k = getelementptr i8, ptr %i.f, i64 4
  %.val13.i = load i32, ptr %i.k, align 4, !alias.scope !851, !noalias !854 ; 2 uses
  %i.l = icmp eq i32 %.val10.i, %.val12.i
  %i.m = icmp ult i32 %.val10.i, %.val12.i
  %i.n = icmp ult i32 %.val11.i, %.val13.i
  %.sroa.0.0.i.i.i = select i1 %i.l, i1 %i.n, i1 %i.m ; 2 uses
  %.val8.i = load i32, ptr %i.g, align 4, !alias.scope !851, !noalias !854, !noundef !4 ; 4 uses
  %i.o = getelementptr i8, ptr %i.g, i64 4
  %.val9.i = load i32, ptr %i.o, align 4, !alias.scope !851, !noalias !854 ; 2 uses
  %i.p = icmp eq i32 %.val10.i, %.val8.i
  %i.q = icmp ult i32 %.val10.i, %.val8.i
  %i.r = icmp ult i32 %.val11.i, %.val9.i
  %.sroa.0.0.i.i14.i = select i1 %i.p, i1 %i.r, i1 %i.q
  %i.s = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i14.i
  br i1 %i.s, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %.val12.i, %.val8.i
  %i.u = icmp ult i32 %.val12.i, %.val8.i
  %i.v = icmp ult i32 %.val13.i, %.val9.i
  %.sroa.0.0.i.i15.i = select i1 %i.t, i1 %i.v, i1 %i.u
  %i.w = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i15.i
  %..i.i = select i1 %i.w, ptr %i.g, ptr %i.f
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.sink.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.0.092135, %bb.d ], [ %..i.i, %bb.e ]
  %i.x = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.y = ptrtoint ptr %.sroa.0.092135 to i64
  %i.z = sub nuw i64 %i.x, %i.y                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.z, 3           ; 3 uses
  %i.aa = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.091136
  tail call void @llvm.assume(i1 %i.aa)
  %.not = icmp eq ptr %.sroa.023.090137, null
  br i1 %.not, label %bb.g, label %bb.i

bb.f:                                             ; preds = %._crit_edge140, %._crit_edge
  ret void

bb.g:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %.sroa.0.092135, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.091136, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %7 = load <2 x i32>, ptr %i.ab, align 4, !alias.scope !864, !noalias !862
  store <2 x i32> %7, ptr %6, align 8, !noalias !865
  %i.ac = getelementptr [8 x i8], ptr %.sroa.0.092135, i64 %.sroa.15.091136 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8     ; 2 uses
  %.sroa.13.039.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 16 ; 3 uses
  %i.ae = icmp ult ptr %.sroa.13.039.i.i, %i.ad
  %.val2.i.pre.i.i = load i32, ptr %.sroa.0.092135, align 4, !alias.scope !866, !noalias !859 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 4
  %.val3.i14.i.i = load i32, ptr %i.af, align 4, !alias.scope !866, !noalias !859 ; 3 uses
  br i1 %i.ae, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.g
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.g ], [ %i.bh, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.039.i.i, %bb.g ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.021.1.i.i.ph = phi ptr [ %i.ab, %bb.g ], [ %i.ay, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.ao, %.preheader.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep32.i.i, %.preheader.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.021.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.preheader.i.i ], [ %.sroa.021.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.ag = icmp eq ptr %.sroa.13.1.i.i, %i.ac      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.ag, ptr %6, ptr %.sroa.13.1.i.i ; 2 uses
  %.val.i.i.i = load i32, ptr %.sroa.01.0.i.i, align 4, !noalias !867, !noundef !4 ; 2 uses
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v = select i1 %i.ag, ptr %6, ptr %.sroa.13.1.i.i
  %.sroa.01.0.sroa.sel.i.i.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel.v, i64 4
  %.val1.i.i.i = load i32, ptr %.sroa.01.0.sroa.sel.i.i.v.sroa.sel, align 4, !noalias !867
  %i.ah = icmp eq i32 %.val.i.i.i, %.val2.i.pre.i.i
  %i.ai = icmp ult i32 %.val.i.i.i, %.val2.i.pre.i.i
  %i.aj = icmp ult i32 %.val1.i.i.i, %.val3.i14.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.23.1.i.i ; 2 uses
  %i.al = load i64, ptr %i.ak, align 4, !alias.scope !864, !noalias !867
  store i64 %i.al, ptr %.sroa.021.1.i.i, align 4, !alias.scope !864, !noalias !867
  %i.am = load i64, ptr %.sroa.01.0.i.i, align 4, !noalias !867
  store i64 %i.am, ptr %i.ak, align 4, !alias.scope !864, !noalias !867
  %i.an = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.ao = add i64 %.sroa.23.1.i.i, %i.an          ; 6 uses
  %.sroa.13.1.sroa.gep32.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br i1 %i.ag, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.13.042.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.039.i.i, %bb.g ] ; 3 uses
  %.sroa.021.041.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.ab, %bb.g ] ; 5 uses
  %.sroa.23.040.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ 0, %bb.g ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.042.i.i, align 4, !alias.scope !864, !noalias !870, !noundef !4 ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.021.041.i.i, i64 12
  %.val1.i12.i.i = load i32, ptr %i.ap, align 4, !alias.scope !864, !noalias !870
  %i.aq = icmp eq i32 %.val.i11.i.i, %.val2.i.pre.i.i
  %i.ar = icmp ult i32 %.val.i11.i.i, %.val2.i.pre.i.i
  %i.as = icmp ult i32 %.val1.i12.i.i, %.val3.i14.i.i
  %.sroa.0.0.i.i.i15.i.i = select i1 %i.aq, i1 %i.as, i1 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.23.040.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 4, !alias.scope !864, !noalias !870
  store i64 %i.au, ptr %.sroa.021.041.i.i, align 4, !alias.scope !864, !noalias !870
  %i.av = load i64, ptr %.sroa.13.042.i.i, align 4, !alias.scope !864, !noalias !870
  store i64 %i.av, ptr %i.at, align 4, !alias.scope !864, !noalias !870
  %i.aw = zext i1 %.sroa.0.0.i.i.i15.i.i to i64
  %i.ax = add i64 %.sroa.23.040.i.i, %i.aw        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.021.041.i.i, i64 16 ; 4 uses
  %.val.i16.i.i = load i32, ptr %i.ay, align 4, !alias.scope !864, !noalias !873, !noundef !4 ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.021.041.i.i, i64 20
  %.val1.i17.i.i = load i32, ptr %i.az, align 4, !alias.scope !864, !noalias !873
  %i.ba = icmp eq i32 %.val.i16.i.i, %.val2.i.pre.i.i
  %i.bb = icmp ult i32 %.val.i16.i.i, %.val2.i.pre.i.i
  %i.bc = icmp ult i32 %.val1.i17.i.i, %.val3.i14.i.i
  %.sroa.0.0.i.i.i20.i.i = select i1 %i.ba, i1 %i.bc, i1 %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ax ; 2 uses
  %i.be = load i64, ptr %i.bd, align 4, !alias.scope !864, !noalias !873
  store i64 %i.be, ptr %.sroa.13.042.i.i, align 4, !alias.scope !864, !noalias !873
  %i.bf = load i64, ptr %i.ay, align 4, !alias.scope !864, !noalias !873
  store i64 %i.bf, ptr %i.bd, align 4, !alias.scope !864, !noalias !873
  %i.bg = zext i1 %.sroa.0.0.i.i.i20.i.i to i64
  %i.bh = add i64 %i.ax, %i.bg                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.021.041.i.i, i64 24 ; 3 uses
  %i.bi = icmp ult ptr %.sroa.13.0.i.i, %i.ad
  br i1 %i.bi, label %.lr.ph.i.i, label %.preheader.i.i.preheader

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not7.i = icmp ult i64 %i.ao, %.sroa.15.091136
  br i1 %.not7.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENvYB1x_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %.sroa.0.092135, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.091136, i64 noundef 0, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.092135, i64 %i.ao ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = xor i64 %i.ao, -1
  %i.bm = add i64 %.sroa.15.091136, %i.bl
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort9quicksortTmmENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %.sroa.0.092135, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.090137, i32 noundef %i.d, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.i:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot12choose_pivotTmmENvYB15_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 %i.z ; 2 uses
  %.sroa.023.0.val = load i32, ptr %.sroa.023.090137, align 4, !noundef !4 ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.023.090137, i64 4
  %.sroa.023.0.val34 = load i32, ptr %i.bo, align 4
  %.val = load i32, ptr %i.bn, align 4, !noundef !4 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 4
  %.val35 = load i32, ptr %i.bp, align 4
  %i.bq = icmp eq i32 %.sroa.023.0.val, %.val
  %i.br = icmp ult i32 %.sroa.023.0.val, %.val
  %i.bs = icmp ult i32 %.sroa.023.0.val34, %.val35
  %.sroa.0.0.i.i = select i1 %i.bq, i1 %i.bs, i1 %i.br
  br i1 %.sroa.0.0.i.i, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %.sroa.0.092135, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.091136, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %8 = load <2 x i32>, ptr %i.bt, align 4, !alias.scope !884, !noalias !882
  store <2 x i32> %8, ptr %5, align 8, !noalias !885
  %i.bu = getelementptr [8 x i8], ptr %.sroa.0.092135, i64 %.sroa.15.091136 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8     ; 2 uses
  %.sroa.13.039.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 16 ; 3 uses
  %i.bw = icmp ult ptr %.sroa.13.039.i.i45, %i.bv
  %.val2.i.pre.i.i46 = load i32, ptr %.sroa.0.092135, align 4, !alias.scope !886, !noalias !879 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.092135, i64 4
  %.val3.i14.i.i47 = load i32, ptr %i.bx, align 4, !alias.scope !886, !noalias !879 ; 3 uses
  br i1 %i.bw, label %.lr.ph.i.i62, label %.preheader.i.i48.preheader

.preheader.i.i48.preheader:                       ; preds = %.lr.ph.i.i62, %bb.j
  %.sroa.23.1.i.i52.ph = phi i64 [ 0, %bb.j ], [ %i.cz, %.lr.ph.i.i62 ]
  %.sroa.13.1.i.i53.ph = phi ptr [ %.sroa.13.039.i.i45, %bb.j ], [ %.sroa.13.0.i.i70, %.lr.ph.i.i62 ]
  %.sroa.021.1.i.i54.ph = phi ptr [ %i.bt, %bb.j ], [ %i.cq, %.lr.ph.i.i62 ]
  br label %.preheader.i.i48

.preheader.i.i48:                                 ; preds = %.preheader.i.i48.preheader, %.preheader.i.i48
  %.sroa.23.1.i.i52 = phi i64 [ %i.cg, %.preheader.i.i48 ], [ %.sroa.23.1.i.i52.ph, %.preheader.i.i48.preheader ] ; 2 uses
  %.sroa.13.1.i.i53 = phi ptr [ %.sroa.13.1.sroa.gep32.i.i60, %.preheader.i.i48 ], [ %.sroa.13.1.i.i53.ph, %.preheader.i.i48.preheader ] ; 5 uses
  %.sroa.021.1.i.i54 = phi ptr [ %.sroa.13.1.i.i53, %.preheader.i.i48 ], [ %.sroa.021.1.i.i54.ph, %.preheader.i.i48.preheader ]
  %i.by = icmp eq ptr %.sroa.13.1.i.i53, %i.bu    ; 3 uses
  %.sroa.01.0.i.i55 = select i1 %i.by, ptr %5, ptr %.sroa.13.1.i.i53 ; 2 uses
  %.val.i.i.i56 = load i32, ptr %.sroa.01.0.i.i55, align 4, !noalias !887, !noundef !4 ; 2 uses
  %.sroa.01.0.sroa.sel.i.i58.v.sroa.sel.v = select i1 %i.by, ptr %5, ptr %.sroa.13.1.i.i53
  %.sroa.01.0.sroa.sel.i.i58.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.i.i58.v.sroa.sel.v, i64 4
  %.val1.i.i.i59 = load i32, ptr %.sroa.01.0.sroa.sel.i.i58.v.sroa.sel, align 4, !noalias !887
  %i.bz = icmp eq i32 %.val2.i.pre.i.i46, %.val.i.i.i56
  %i.ca = icmp uge i32 %.val2.i.pre.i.i46, %.val.i.i.i56
  %i.cb = icmp uge i32 %.val3.i14.i.i47, %.val1.i.i.i59
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.bz, i1 %i.cb, i1 %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.23.1.i.i52 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 4, !alias.scope !884, !noalias !887
  store i64 %i.cd, ptr %.sroa.021.1.i.i54, align 4, !alias.scope !884, !noalias !887
  %i.ce = load i64, ptr %.sroa.01.0.i.i55, align 4, !noalias !887
  store i64 %i.ce, ptr %i.cc, align 4, !alias.scope !884, !noalias !887
  %i.cf = zext i1 %.sroa.0.0.i.i.i.i.i.i to i64
  %i.cg = add i64 %.sroa.23.1.i.i52, %i.cf        ; 4 uses
  %.sroa.13.1.sroa.gep32.i.i60 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i53, i64 8
  br i1 %i.by, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls.exit.i, label %.preheader.i.i48

.lr.ph.i.i62:                                     ; preds = %bb.j, %.lr.ph.i.i62
  %.sroa.13.042.i.i63 = phi ptr [ %.sroa.13.0.i.i70, %.lr.ph.i.i62 ], [ %.sroa.13.039.i.i45, %bb.j ] ; 3 uses
  %.sroa.021.041.i.i64 = phi ptr [ %i.cq, %.lr.ph.i.i62 ], [ %i.bt, %bb.j ] ; 5 uses
  %.sroa.23.040.i.i65 = phi i64 [ %i.cz, %.lr.ph.i.i62 ], [ 0, %bb.j ] ; 2 uses
  %.val.i11.i.i66 = load i32, ptr %.sroa.13.042.i.i63, align 4, !alias.scope !884, !noalias !890, !noundef !4 ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.021.041.i.i64, i64 12
  %.val1.i12.i.i67 = load i32, ptr %i.ch, align 4, !alias.scope !884, !noalias !890
  %i.ci = icmp eq i32 %.val2.i.pre.i.i46, %.val.i11.i.i66
  %i.cj = icmp uge i32 %.val2.i.pre.i.i46, %.val.i11.i.i66
  %i.ck = icmp uge i32 %.val3.i14.i.i47, %.val1.i12.i.i67
  %.sroa.0.0.i.i.i.i15.i.i = select i1 %i.ci, i1 %i.ck, i1 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.23.040.i.i65 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 4, !alias.scope !884, !noalias !890
  store i64 %i.cm, ptr %.sroa.021.041.i.i64, align 4, !alias.scope !884, !noalias !890
  %i.cn = load i64, ptr %.sroa.13.042.i.i63, align 4, !alias.scope !884, !noalias !890
  store i64 %i.cn, ptr %i.cl, align 4, !alias.scope !884, !noalias !890
  %i.co = zext i1 %.sroa.0.0.i.i.i.i15.i.i to i64
  %i.cp = add i64 %.sroa.23.040.i.i65, %i.co      ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.021.041.i.i64, i64 16 ; 4 uses
  %.val.i16.i.i68 = load i32, ptr %i.cq, align 4, !alias.scope !884, !noalias !893, !noundef !4 ; 2 uses
  %i.cr = getelementptr i8, ptr %.sroa.021.041.i.i64, i64 20
  %.val1.i17.i.i69 = load i32, ptr %i.cr, align 4, !alias.scope !884, !noalias !893
  %i.cs = icmp eq i32 %.val2.i.pre.i.i46, %.val.i16.i.i68
  %i.ct = icmp uge i32 %.val2.i.pre.i.i46, %.val.i16.i.i68
  %i.cu = icmp uge i32 %.val3.i14.i.i47, %.val1.i17.i.i69
  %.sroa.0.0.i.i.i.i20.i.i = select i1 %i.cs, i1 %i.cu, i1 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cp ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 4, !alias.scope !884, !noalias !893
  store i64 %i.cw, ptr %.sroa.13.042.i.i63, align 4, !alias.scope !884, !noalias !893
  %i.cx = load i64, ptr %i.cq, align 4, !alias.scope !884, !noalias !893
  store i64 %i.cx, ptr %i.cv, align 4, !alias.scope !884, !noalias !893
  %i.cy = zext i1 %.sroa.0.0.i.i.i.i20.i.i to i64
  %i.cz = add i64 %i.cp, %i.cy                    ; 2 uses
  %.sroa.13.0.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.021.041.i.i64, i64 24 ; 3 uses
  %i.da = icmp ult ptr %.sroa.13.0.i.i70, %i.bv
  br i1 %i.da, label %.lr.ph.i.i62, label %.preheader.i.i48.preheader

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %.preheader.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not7.i61 = icmp ult i64 %i.cg, %.sroa.15.091136
  br i1 %.not7.i61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls.exit.i
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTmmENCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs7ZUl82OSlxp_6rustls.exit.i
  tail call void @_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE14swap_uncheckedCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 %.sroa.0.092135, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.091136, i64 noundef 0, i64 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.db = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %i.dc = sub nuw i64 %.sroa.15.091136, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.092135, i64 %i.db
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit
  %.sroa.023.0.be = phi ptr [ %i.bj, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit ], [ null, %bb.l ]
  %.sroa.15.0.be = phi i64 [ %i.bm, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit ], [ %i.dc, %bb.l ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bk, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTmmE12split_at_mutCs7ZUl82OSlxp_6rustls.exit ], [ %i.dd, %bb.l ] ; 3 uses
  %i.de = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.de, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXs5_NtNtBW_6client5tls12NtB2C_16ExpectServerDoneINtNtBW_12common_state5StateNtNtB2E_11client_conn20ClientConnectionDataE6handles0_0EBW_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.03.0.copyload.i = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.55.0..0.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load ptr, ptr %.sroa.55.0..0.val.sroa_idx.i, align 8 ; 2 uses
  %.sroa.66.0..0.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.66.0.copyload.i = load i64, ptr %.sroa.66.0..0.val.sroa_idx.i, align 8 ; 2 uses
  %.sroa.44.0..0.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load i64, ptr %.sroa.44.0..0.val.sroa_idx.i, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.e ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !111, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !4, !nonnull !4
  call void %i.n(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %i.j) #23, !inline_history !896
  %i.o = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.p = load i64, ptr %i.e, align 8, !alias.scope !897, !noalias !900, !noundef !4
  %i.q = icmp eq i64 %i.p, %.sroa.44.0.copyload.i
  br i1 %i.q, label %bb.d, label %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload.i) ]
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.o, ptr nonnull %.sroa.03.0.copyload.i, i64 %.sroa.44.0.copyload.i), !noalias !902
  %i.r = icmp eq i32 %bcmp.i.i, 0
  %i.s = load i64, ptr %i.f, align 8
  %i.t = icmp eq i64 %i.s, %.sroa.66.0.copyload.i
  %or.cond.i = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond.i, label %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit, label %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit.thread

_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit.thread: ; preds = %bb.b, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload.i) ]
  %i.u = load ptr, ptr %i.g, align 8, !alias.scope !897, !noalias !900, !nonnull !4, !noundef !4
  %bcmp2.i.i = call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %.sroa.55.0.copyload.i, i64 %.sroa.66.0.copyload.i), !noalias !902
  %i.v = icmp eq i32 %bcmp2.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.v, label %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit._crit_edge, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit.thread, %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit
  %i.w = icmp eq ptr %i.i, %i.c
  br i1 %i.w, label %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit._crit_edge, label %bb.b

_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit._crit_edge: ; preds = %bb.e, %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_RNCNvXs5_NtNtCs7ZUl82OSlxp_6rustls6client5tls12NtB7_16ExpectServerDoneINtNtBb_12common_state5StateNtNtB9_11client_conn20ClientConnectionDataE6handles0_0Bb_.exit ], [ null, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Cs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !111, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -48
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !111, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBW_4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6crypto6signer12CertifiedKeyEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1R_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !111, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !111, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtCs4wP2HXfJTCR_5alloc6string6StringECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameNtNtNtNtCs7ZUl82OSlxp_6rustls6client5handy5cache10ServerDataEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1R_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0B1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !111, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = sub nsw i64 0, %2
  %i.d = getelementptr inbounds [216 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -216
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !111, !noundef !4
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.e)
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc i8 @_RNvMNtCs7ZUl82OSlxp_6rustls5enumsNtB2_15SignatureScheme9algorithm(i16 %.0.val) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i16 %.0.val, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i16 %.0.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCs7ZUl82OSlxp_6rustls5enumsNtB2_15SignatureScheme9algorithm, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 6, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTINtNtCs4wP2HXfJTCR_5alloc3vec3VechEBP_EE14insert_no_growCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !903
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !115

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !4  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !26

bb.b:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !903
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
end_hunk_0
