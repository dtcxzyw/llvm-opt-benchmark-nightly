inline.NumInlined: 158
inline.NumDeleted: 36
begin_hunk_0_@tdefl_compress_fast:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32968
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168618
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 33226 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 33802
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 103074 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 456    ; 2 uses
end_hunk_0
begin_hunk_1_@tdefl_compress_fast:bb.a
  %.1237422 = phi i32 [ %i.fm, %bb.r ], [ %i.az, %.preheader366 ] ; 2 uses
  %.1242421 = phi i32 [ %.4245, %bb.r ], [ %.0241, %.preheader366 ]
  %.1259420 = phi i32 [ %.5263, %bb.r ], [ %.0258, %.preheader366 ]
  %.1270419 = phi ptr [ %.7276, %bb.r ], [ %.0269, %.preheader366 ] ; 7 uses
  %.1283418 = phi ptr [ %.5287, %bb.r ], [ %.0282, %.preheader366 ] ; 7 uses
  %.1296417 = phi i32 [ %i.fo, %bb.r ], [ %.0295, %.preheader366 ] ; 2 uses
  %i.be = zext nneg i32 %.1296417 to i64          ; 2 uses
end_hunk_1
begin_hunk_2_@tdefl_compress_fast:bb.a

bb.l:                                             ; preds = %bb.k, %.critedge6
  %i.dy = trunc i32 %i.bg to i8
  %1 = getelementptr inbounds nuw i8, ptr %.1270419, i64 1
  store i8 %i.dy, ptr %.1270419, align 1, !tbaa !7
  %i.dz = load i8, ptr %.1283418, align 1, !tbaa !7
  %i.ea = lshr i8 %i.dz, 1
  store i8 %i.ea, ptr %.1283418, align 1, !tbaa !7
  %.mask327 = and i32 %i.bg, 255
  %i.eb = zext nneg i32 %.mask327 to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ec = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %.1232423) ; 2 uses
end_hunk_2
begin_hunk_3_@tdefl_compress_fast:bb.a
  %i.eg = trunc i32 %i.ed to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %.1270419, i64 1
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !108
  %2 = getelementptr inbounds nuw i8, ptr %.1270419, i64 3
  %i.ei = load i8, ptr %.1283418, align 1, !tbaa !7
  %i.ej = lshr i8 %i.ei, 1
  %i.ek = or disjoint i8 %i.ej, -128
end_hunk_3
begin_hunk_4_@tdefl_compress_fast:bb.a
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !108
  %i.fb = zext i16 %i.fa to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.f, %.lr.ph426
end_hunk_4
begin_hunk_5_@tdefl_compress_fast:bb.a
  store i8 %i.ff, ptr %.1283418, align 1, !tbaa !7
  %.mask = and i32 %i.bg, 255
  %i.fg = zext nneg i32 %.mask to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %.sink569 = phi i64 [ %i.eb, %bb.l ], [ %i.fb, %bb.m ], [ %i.fg, %bb.n ]
  %.2301 = phi i32 [ 1, %bb.l ], [ %i.ec, %bb.m ], [ 1, %bb.n ] ; 5 uses
  %.3272 = phi ptr [ %1, %bb.l ], [ %2, %bb.m ], [ %i.fd, %bb.n ] ; 2 uses
  %3 = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %.sink569 ; 2 uses
  %4 = load i16, ptr %3, align 2, !tbaa !108
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 2, !tbaa !108
  %i.fh = add i32 %.1259420, -1                   ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 0                    ; 3 uses
  %.2284 = select i1 %i.fi, ptr %.3272, ptr %.1283418 ; 2 uses
end_hunk_5
