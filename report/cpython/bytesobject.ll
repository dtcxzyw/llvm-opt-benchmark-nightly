inline.NumInlined: 679
inline.NumDeleted: 129
begin_hunk_0_@bytes_fromformat:bb.a
  %.0134330 = phi i64 [ %i.af, %.lr.ph ], [ 0, %.preheader319 ]
  %i.ac = sext i8 %i.ab to i64
  %i.ad = mul i64 %.0134330, 10
  %i.ae = add i64 %i.ad, -48
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  %.2 = getelementptr i8, ptr %.2331, i64 1       ; 3 uses
  %i.ag = load i8, ptr %.2, align 1, !tbaa !14    ; 3 uses
  %i.ah = zext i8 %i.ag to i64
end_hunk_0
begin_hunk_1_@_PyBytes_FormatEx:bb.a

.lr.ph1244.preheader:                             ; preds = %bb.ci
  %i.hn = add nsw i64 %.7345, -2
  %4 = add nsw i32 %.4368696704, -48
  br label %.lr.ph1244

.lr.ph1244:                                       ; preds = %.lr.ph1244.preheader, %bb.cl
  %i.ho = phi i64 [ %i.ih, %bb.cl ], [ %i.hn, %.lr.ph1244.preheader ] ; 3 uses
  %.91243 = phi ptr [ %i.hp, %bb.cl ], [ %.8697703, %.lr.ph1244.preheader ] ; 2 uses
  %.03721242.a = phi i32 [ %i.ig, %bb.cl ], [ %4, %.lr.ph1244.preheader ] ; 3 uses
  %i.hp = getelementptr i8, ptr %.91243, i64 1    ; 2 uses
  %i.hq = load i8, ptr %.91243, align 1, !tbaa !14 ; 2 uses
  %i.hr = zext i8 %i.hq to i32                    ; 3 uses
end_hunk_1
begin_hunk_2_@_PyBytes_FormatEx:bb.a
bb.cj:                                            ; preds = %.lr.ph1244
  %i.hw = sub nuw i32 -2147483601, %i.hr
  %i.hx = sdiv i32 %i.hw, 10
  %i.hy = icmp sgt i32 %.03721242.a, %i.hx
  br i1 %i.hy, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
end_hunk_2
begin_hunk_3_@_PyBytes_FormatEx:bb.a
  br label %Py_XDECREF.exit.thread

bb.cl:                                            ; preds = %bb.cj
  %i.if = mul i32 %.03721242.a, 10
  %5 = add i32 %i.if, -48
  %i.ig = add i32 %5, %i.hr
  %i.ih = add nsw i64 %i.ho, -1
  %i.ii = icmp sgt i64 %i.ho, 0
  br i1 %i.ii, label %.lr.ph1244, label %.thread731, !llvm.loop !61
end_hunk_3
begin_hunk_4_@_PyBytes_FormatEx:bb.a
  %.10724 = phi ptr [ %.10, %.thread684 ], [ %i.fp, %bb.ch ], [ %i.cm, %bb.bg ], [ %i.hd, %bb.cg ], [ %i.hp, %.lr.ph1244 ] ; 3 uses
  %.9347723 = phi i64 [ %.9347, %.thread684 ], [ %i.fn, %bb.ch ], [ %i.cl, %bb.bg ], [ %i.hc, %bb.cg ], [ %i.ho, %.lr.ph1244 ] ; 3 uses
  %.6370722 = phi i32 [ %.6370, %.thread684 ], [ %i.hg, %bb.ch ], [ %i.ee, %bb.bg ], [ %i.hf, %bb.cg ], [ %i.hr, %.lr.ph1244 ] ; 2 uses
  %.1373721 = phi i32 [ %.1373, %.thread684 ], [ 0, %bb.ch ], [ -1, %bb.bg ], [ %spec.store.select, %bb.cg ], [ %.03721242.a, %.lr.ph1244 ] ; 9 uses
  %.4649719 = phi i64 [ %.3648, %.thread684 ], [ %.3648, %bb.ch ], [ %.2647, %bb.bg ], [ %i.ga, %bb.cg ], [ %.3648, %.lr.ph1244 ] ; 5 uses
  %.2383691717 = phi i32 [ %.2383, %.thread684 ], [ %.2383, %bb.ch ], [ %.03811224, %bb.bg ], [ %.2383, %bb.cg ], [ %.2383, %.lr.ph1244 ] ; 12 uses
  %.2376692715 = phi i64 [ %.2376, %.thread684 ], [ %.2376, %bb.ch ], [ -1, %bb.bg ], [ %.2376, %bb.cg ], [ %.2376, %.lr.ph1244 ] ; 6 uses
end_hunk_4
begin_hunk_5_@_PyBytes_DecodeEscape2:bb.a
  %i.ai = zext nneg i8 %i.ag to i32
  %i.aj = shl nuw nsw i32 %i.ae, 3
  %i.ak = getelementptr i8, ptr %.082124, i64 3   ; 4 uses
  %i.al = add nsw i32 %i.aj, -48
  %i.am = add nsw i32 %i.al, %i.ai                ; 3 uses
  %i.an = icmp ult ptr %i.ak, %i.j
  br i1 %i.an, label %bb.x, label %.thread

end_hunk_5
begin_hunk_6_@stringlib_adaptive_find:.lr.ph.preheader
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
end_hunk_6
begin_hunk_7_@stringlib__preprocess:bb.a
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

end_hunk_7
begin_hunk_8_@stringlib__preprocess:bb.a
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

end_hunk_8
begin_hunk_9_@bytes_rsplit:bb.a
  %.269.in.i.i271 = phi i64 [ %.269.in.i.i.lcssa, %.critedge2.i.i ], [ %.269.in.i.i.lcssa, %bb.m ], [ %.269.in.i.i317, %.lr.ph ] ; 2 uses
  %.269129.i.i = phi i64 [ -1, %.critedge2.i.i ], [ -1, %bb.m ], [ %.269.i.i, %.lr.ph ] ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ag, i64 %.269.in.i.i271
  %5 = add nuw i64 %.168117.i.i, 1
  %6 = sub i64 %5, %.269.in.i.i271
  %i.bc = call ptr @PyBytes_FromStringAndSize(ptr noundef readonly %i.bb, i64 noundef %6), !inline_history !218 ; 8 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %Py_DECREF.exit87.i.i, label %bb.p
end_hunk_9
