inline.NumInlined: 16
inline.NumDeleted: 11
begin_hunk_0_@fpconv_dtoa:bb.a
  br i1 %i.u, label %.lr.ph.i.i, label %get_normalized_boundaries.exit.i, !llvm.loop !12

get_normalized_boundaries.exit.i:                 ; preds = %.lr.ph.i.i, %filter_special.exit
  %storemerge.in.lcssa.i.i = phi i32 [ %i.o, %filter_special.exit ], [ %storemerge.in28.i.i, %.lr.ph.i.i ] ; 3 uses
  %.lcssa.i.i = phi i64 [ %i.q, %filter_special.exit ], [ %i.s, %.lr.ph.i.i ]
  %i.v = shl i64 %.lcssa.i.i, 10                  ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, 4503599627370496 ; 2 uses
  %.neg82.i = select i1 %i.w, i32 -2, i32 -1
  %i.x = select i1 %i.w, i64 2, i64 1
end_hunk_0
begin_hunk_1_@fpconv_dtoa:bb.a
  %i.ao = sext i32 %.011.i.i to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr @powers_ten, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !15
  %2 = add i32 %storemerge.in.lcssa.i.i, %i.ar    ; 2 uses
  %i.as = add i32 %2, -11                         ; 2 uses
  %i.at = icmp slt i32 %i.as, -124
  br i1 %i.at, label %bb.k, label %bb.j

end_hunk_1
begin_hunk_2_@fpconv_dtoa:bb.a
  %i.bg = and i64 %i.ba, 4294967295
  %i.bh = and i64 %i.bd, 4294965248
  %i.bi = lshr i64 %i.be, 32
  %i.bj = add nuw nsw i64 %i.bh, %i.bg
  %i.bk = add nuw nsw i64 %i.bj, %i.bi
  %i.bl = add nuw nsw i64 %i.bk, 2147483648
  %i.bm = lshr i64 %i.ba, 32
  %i.bn = lshr i64 %i.bd, 32
  %i.bo = lshr i64 %i.bl, 32
end_hunk_2
begin_hunk_3_@fpconv_dtoa:bb.a
  %i.bv = and i64 %i.bq, 4294967295
  %i.bw = and i64 %i.bs, 4294966272
  %i.bx = lshr i64 %i.bt, 32
  %i.by = add nuw nsw i64 %i.bw, %i.bv
  %i.bz = add nuw nsw i64 %i.by, %i.bx
  %i.ca = add nuw nsw i64 %i.bz, 2147483648
  %i.cb = lshr i64 %i.bq, 32
  %i.cc = lshr i64 %i.bs, 32
  %i.cd = lshr i64 %i.ca, 32
  %i.ce = lshr i64 %i.ad, 32                      ; 2 uses
  %i.cf = mul nuw i64 %i.az, %i.ce                ; 2 uses
  %i.cg = and i64 %i.ad, 4294967295               ; 2 uses
end_hunk_3
begin_hunk_4_@fpconv_dtoa:bb.a
  %i.ck = and i64 %i.cf, 4294967295
  %i.cl = and i64 %i.ch, 4294967295
  %i.cm = lshr i64 %i.ci, 32
  %i.cn = add nuw nsw i64 %i.cl, %i.ck
  %i.co = add nuw nsw i64 %i.cn, %i.cm
  %i.cp = add nuw nsw i64 %i.co, 2147483648
  %i.cq = lshr i64 %i.cf, 32
  %i.cr = add nuw i64 %i.cq, %i.cj
  %i.cs = lshr i64 %i.ch, 32
end_hunk_4
begin_hunk_5_@fpconv_dtoa:bb.a
  %i.cu = lshr i64 %i.cp, 32
  %i.cv = add i64 %i.ct, %i.cu
  %.neg.i = xor i64 %i.cv, -1
  %i.cw = add nuw i64 %i.bu, %i.cb
  %i.cx = add nuw i64 %i.cw, %i.cc
  %i.cy = add nuw i64 %i.cx, %i.cd
  %i.cz = add i64 %i.cy, -1                       ; 4 uses
  %i.da = sub nsw i32 348, %i.ax                  ; 2 uses
  %i.db = add nuw i64 %i.bm, %i.bf
  %i.dc = add nuw i64 %i.db, %i.bn
  %i.dd = add nuw i64 %i.dc, %i.bo
  %i.de = sub i64 %i.cz, %i.dd                    ; 6 uses
  %i.df = add i64 %i.cz, %.neg.i                  ; 4 uses
  %3 = sub nuw nsw i32 -53, %2
  %i.dg = zext nneg i32 %3 to i64                 ; 5 uses
  %i.dh = shl nuw nsw i64 1, %i.dg                ; 4 uses
  %i.di = lshr i64 %i.cz, %i.dg
  %i.dj = add nsw i64 %i.dh, -1                   ; 2 uses
  %i.dk = and i64 %i.cz, %i.dj                    ; 2 uses
  br label %bb.m

end_hunk_5
begin_hunk_6_@fpconv_dtoa:bb.a
  %.072.i.i = phi i64 [ %i.et, %round_digit.exit94.i.i ], [ %i.df, %bb.l ]
  %.068.i.i = phi ptr [ %.169.i.i, %round_digit.exit94.i.i ], [ getelementptr inbounds nuw (i8, ptr @tens, i64 144), %bb.l ] ; 4 uses
  %.2.i.i = phi i32 [ %.3.i.i, %round_digit.exit94.i.i ], [ undef, %bb.l ]
  %i.es = mul nuw i64 %.074.i.i, 10               ; 2 uses
  %i.et = mul i64 %.072.i.i, 10                   ; 4 uses
  %i.eu = add nsw i32 %.177.i.i, -1               ; 2 uses
  %i.ev = lshr i64 %i.es, %i.dg                   ; 2 uses
  %i.ew = icmp ne i64 %i.ev, 0
  %i.ex = icmp ne i32 %.280.i.i, 0
  %or.cond4.i.i = select i1 %i.ew, i1 true, i1 %i.ex
  br i1 %or.cond4.i.i, label %bb.r, label %bb.s
end_hunk_6
