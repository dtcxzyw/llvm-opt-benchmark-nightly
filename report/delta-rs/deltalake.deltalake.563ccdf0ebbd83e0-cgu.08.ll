inline.NumInlined: 4980
inline.NumDeleted: 1569
begin_hunk_0_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.fk, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.fl = sub i64 8, %i.fj                        ; 4 uses
  %i.fm = icmp ugt i64 %i.fl, 3                   ; 6 uses
  %.sroa.03.0.i.i = select i1 %i.fm, i64 4, i64 0
  %narrow = and i1 %i.fm, %i.ff
  %.sroa.0.0.i10.i = zext i1 %narrow to i64       ; 2 uses
  %2 = select i1 %i.fm, i64 5, i64 1
  %3 = icmp ugt i64 %i.fl, %2
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !6274, !noalias !6277
  %i.fn = zext i16 %.sroa.015.0.copyload.i.i to i64
  %4 = select i1 %i.fm, i64 32, i64 0
  %i.fo = shl nuw nsw i64 %i.fn, %4
  %i.fp = or i64 %i.fo, %.sroa.0.0.i10.i
  %5 = select i1 %i.fm, i64 6, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.03.1.i.i = phi i64 [ %5, %bb.f ], [ %.sroa.03.0.i.i, %bb.e ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.fp, %bb.f ], [ %.sroa.0.0.i10.i, %bb.e ] ; 2 uses
  %6 = icmp ugt i64 %i.fl, %.sroa.03.1.i.i
  br i1 %6, label %bb.h, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i

bb.h:                                             ; preds = %bb.g
  %i.fq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.03.1.i.i
  %i.fr = load i8, ptr %i.fq, align 2, !alias.scope !6274, !noalias !6277, !noundef !17
  %i.fs = zext i8 %i.fr to i64
  %i.ft = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.fu = shl nuw nsw i64 %i.fs, %i.ft
end_hunk_1
begin_hunk_2_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.kg, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph133
  %i.kh = sub i64 8, %i.kf                        ; 4 uses
  %i.ki = icmp ugt i64 %i.kh, 3                   ; 6 uses
  %.sroa.03.0.i.i87 = select i1 %i.ki, i64 4, i64 0
  %narrow184 = and i1 %i.ki, %i.kb
  %.sroa.0.0.i10.i88 = zext i1 %narrow184 to i64  ; 2 uses
  %7 = select i1 %i.ki, i64 5, i64 1
  %8 = icmp ugt i64 %i.kh, %7
  br i1 %8, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
end_hunk_2
begin_hunk_3_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.03.0.i.i87.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.03.0.i.i87.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i112 = load i16, ptr %.sroa.03.0.i.i87.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !6344, !noalias !6347
  %i.kj = zext i16 %.sroa.015.0.copyload.i.i112 to i64
  %9 = select i1 %i.ki, i64 32, i64 0
  %i.kk = shl nuw nsw i64 %i.kj, %9
  %i.kl = or i64 %i.kk, %.sroa.0.0.i10.i88
  %10 = select i1 %i.ki, i64 6, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.03.1.i.i89 = phi i64 [ %10, %bb.w ], [ %.sroa.03.0.i.i87, %bb.v ] ; 3 uses
  %.sroa.0.1.i.i90 = phi i64 [ %i.kl, %bb.w ], [ %.sroa.0.0.i10.i88, %bb.v ] ; 2 uses
  %11 = icmp ugt i64 %i.kh, %.sroa.03.1.i.i89
  br i1 %11, label %bb.y, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i91

bb.y:                                             ; preds = %bb.x
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.03.1.i.i89
  %i.kn = load i8, ptr %i.km, align 2, !alias.scope !6344, !noalias !6347, !noundef !17
  %i.ko = zext i8 %i.kn to i64
  %i.kp = shl nuw nsw i64 %.sroa.03.1.i.i89, 3
  %i.kq = shl nuw nsw i64 %i.ko, %i.kp
end_hunk_3
begin_hunk_4_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.oo, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %.lr.ph125
  %i.op = sub i64 8, %i.on                        ; 4 uses
  %i.oq = icmp ugt i64 %i.op, 3                   ; 6 uses
  %.sroa.03.0.i.i58 = select i1 %i.oq, i64 4, i64 0
  %narrow182 = and i1 %i.oq, %i.oj
  %.sroa.0.0.i10.i59 = zext i1 %narrow182 to i64  ; 2 uses
  %12 = select i1 %i.oq, i64 5, i64 1
  %13 = icmp ugt i64 %i.op, %12
  br i1 %13, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
end_hunk_4
begin_hunk_5_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.03.0.i.i58.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.03.0.i.i58.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i83 = load i16, ptr %.sroa.03.0.i.i58.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !6398, !noalias !6401
  %i.or = zext i16 %.sroa.015.0.copyload.i.i83 to i64
  %14 = select i1 %i.oq, i64 32, i64 0
  %i.os = shl nuw nsw i64 %i.or, %14
  %i.ot = or i64 %i.os, %.sroa.0.0.i10.i59
  %15 = select i1 %i.oq, i64 6, i64 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.03.1.i.i60 = phi i64 [ %15, %bb.am ], [ %.sroa.03.0.i.i58, %bb.al ] ; 3 uses
  %.sroa.0.1.i.i61 = phi i64 [ %i.ot, %bb.am ], [ %.sroa.0.0.i10.i59, %bb.al ] ; 2 uses
  %16 = icmp ugt i64 %i.op, %.sroa.03.1.i.i60
  br i1 %16, label %bb.ao, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i62

bb.ao:                                            ; preds = %bb.an
  %i.ou = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.03.1.i.i60
  %i.ov = load i8, ptr %i.ou, align 2, !alias.scope !6398, !noalias !6401, !noundef !17
  %i.ow = zext i8 %i.ov to i64
  %i.ox = shl nuw nsw i64 %.sroa.03.1.i.i60, 3
  %i.oy = shl nuw nsw i64 %i.ow, %i.ox
end_hunk_5
begin_hunk_6_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.sw, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph129
  %i.sx = sub i64 8, %i.sv                        ; 4 uses
  %i.sy = icmp ugt i64 %i.sx, 3                   ; 6 uses
  %.sroa.03.0.i.i29 = select i1 %i.sy, i64 4, i64 0
  %narrow183 = and i1 %i.sy, %i.sr
  %.sroa.0.0.i10.i30 = zext i1 %narrow183 to i64  ; 2 uses
  %17 = select i1 %i.sy, i64 5, i64 1
  %18 = icmp ugt i64 %i.sx, %17
  br i1 %18, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
end_hunk_6
begin_hunk_7_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.03.0.i.i29.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.03.0.i.i29.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i54 = load i16, ptr %.sroa.03.0.i.i29.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !6451, !noalias !6454
  %i.sz = zext i16 %.sroa.015.0.copyload.i.i54 to i64
  %19 = select i1 %i.sy, i64 32, i64 0
  %i.ta = shl nuw nsw i64 %i.sz, %19
  %i.tb = or i64 %i.ta, %.sroa.0.0.i10.i30
  %20 = select i1 %i.sy, i64 6, i64 2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.03.1.i.i31 = phi i64 [ %20, %bb.bb ], [ %.sroa.03.0.i.i29, %bb.ba ] ; 3 uses
  %.sroa.0.1.i.i32 = phi i64 [ %i.tb, %bb.bb ], [ %.sroa.0.0.i10.i30, %bb.ba ] ; 2 uses
  %21 = icmp ugt i64 %i.sx, %.sroa.03.1.i.i31
  br i1 %21, label %bb.bd, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i33

bb.bd:                                            ; preds = %bb.bc
  %i.tc = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.03.1.i.i31
  %i.td = load i8, ptr %i.tc, align 2, !alias.scope !6451, !noalias !6454, !noundef !17
  %i.te = zext i8 %i.td to i64
  %i.tf = shl nuw nsw i64 %.sroa.03.1.i.i31, 3
  %i.tg = shl nuw nsw i64 %i.te, %i.tf
end_hunk_7
begin_hunk_8_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.aa, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = sub i64 8, %i.z                         ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, 3                   ; 6 uses
  %.sroa.03.0.i.i = select i1 %i.ac, i64 4, i64 0
  %narrow = and i1 %i.ac, %i.v
  %.sroa.0.0.i10.i = zext i1 %narrow to i64       ; 2 uses
  %3 = select i1 %i.ac, i64 5, i64 1
  %4 = icmp ugt i64 %i.ab, %3
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_8
begin_hunk_9_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !12380, !noalias !12383
  %i.ad = zext i16 %.sroa.015.0.copyload.i.i to i64
  %5 = select i1 %i.ac, i64 32, i64 0
  %i.ae = shl nuw nsw i64 %i.ad, %5
  %i.af = or i64 %i.ae, %.sroa.0.0.i10.i
  %6 = select i1 %i.ac, i64 6, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.1.i.i = phi i64 [ %6, %bb.d ], [ %.sroa.03.0.i.i, %bb.c ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.af, %bb.d ], [ %.sroa.0.0.i10.i, %bb.c ] ; 2 uses
  %7 = icmp ugt i64 %i.ab, %.sroa.03.1.i.i
  br i1 %7, label %bb.f, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i
  %i.ah = load i8, ptr %i.ag, align 2, !alias.scope !12380, !noalias !12383, !noundef !17
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.ak = shl nuw nsw i64 %i.ai, %i.aj
end_hunk_9
