inline.NumInlined: 53
inline.NumDeleted: 13
begin_hunk_0_@UpsampleRgb565LinePair_SSE2:bb.a
  %i.bc = add nuw nsw i32 %i.bb, %i.af            ; 2 uses
  %i.bd = add nsw i32 %i.bc, -17685               ; 2 uses
  %i.be = icmp ult i32 %i.bd, 16384
  %i.bf = lshr i32 %i.bd, 9
  %i.bg = icmp samesign ult i32 %i.bc, 17685
  %i.bh = select i1 %i.bg, i32 0, i32 31
  %i.bi = select i1 %i.be, i32 %i.bf, i32 %i.bh
  %i.bj = and i32 %i.al, 248
  %i.bk = select i1 %i.ak, i32 %i.bj, i32 %i.an
end_hunk_0
begin_hunk_1_@UpsampleRgb565LinePair_SSE2:bb.a
  %i.bm = or i32 %i.bk, %i.bl
  %i.bn = shl nuw nsw i32 %i.az, 3
  %i.bo = and i32 %i.bn, 224
  %i.bp = or i32 %i.bo, %i.bi
  %i.bq = trunc i32 %i.bm to i8
  store i8 %i.bq, ptr %6, align 1, !tbaa !9
  %i.br = trunc i32 %i.bp to i8
end_hunk_1
begin_hunk_2_@UpsampleRgb565LinePair_SSE2:bb.a
  %i.cx = add nuw nsw i32 %i.ca, %i.cw            ; 2 uses
  %i.cy = add nsw i32 %i.cx, -17685               ; 2 uses
  %i.cz = icmp ult i32 %i.cy, 16384
  %i.da = lshr i32 %i.cy, 9
  %i.db = icmp samesign ult i32 %i.cx, 17685
  %i.dc = select i1 %i.db, i32 0, i32 31
  %i.dd = select i1 %i.cz, i32 %i.da, i32 %i.dc
  %i.de = and i32 %i.cg, 248
  %i.df = select i1 %i.cf, i32 %i.de, i32 %i.ci
end_hunk_2
begin_hunk_3_@UpsampleRgb565LinePair_SSE2:bb.a
  %i.dh = or i32 %i.df, %i.dg
  %i.di = shl nuw nsw i32 %i.cu, 3
  %i.dj = and i32 %i.di, 224
  %i.dk = or i32 %i.dj, %i.dd
  %i.dl = trunc i32 %i.dh to i8
  store i8 %i.dl, ptr %7, align 1, !tbaa !9
  %i.dm = trunc i32 %i.dk to i8
end_hunk_3
begin_hunk_4_@UpsampleRgba4444LinePair_SSE2:bb.a
  %i.at = sub nsw i32 %i.af, %i.as                ; 2 uses
  %i.au = add nsw i32 %i.at, 8708                 ; 2 uses
  %i.av = icmp ult i32 %i.au, 16384
  %i.aw = lshr i32 %i.au, 10
  %i.ax = icmp slt i32 %i.at, -8708
  %i.ay = select i1 %i.ax, i32 0, i32 15
  %i.az = select i1 %i.av, i32 %i.aw, i32 %i.ay
  %i.ba = mul nuw nsw i32 %i.z, 33050
  %i.bb = lshr i32 %i.ba, 8
end_hunk_4
begin_hunk_5_@UpsampleRgba4444LinePair_SSE2:bb.a
  %i.bi = select i1 %i.be, i32 %i.bf, i32 %i.bh
  %i.bj = and i32 %i.al, 240
  %i.bk = select i1 %i.ak, i32 %i.bj, i32 %i.an
  %i.bl = or i32 %i.bk, %i.az
  %i.bm = trunc i32 %i.bl to i8
  store i8 %i.bm, ptr %6, align 1, !tbaa !9
  %i.bn = trunc i32 %i.bi to i8
end_hunk_5
begin_hunk_6_@UpsampleRgba4444LinePair_SSE2:bb.a
  %i.cl = sub nsw i32 %i.bx, %i.ck                ; 2 uses
  %i.cm = add nsw i32 %i.cl, 8708                 ; 2 uses
  %i.cn = icmp ult i32 %i.cm, 16384
  %i.co = lshr i32 %i.cm, 10
  %i.cp = icmp slt i32 %i.cl, -8708
  %i.cq = select i1 %i.cp, i32 0, i32 15
  %i.cr = select i1 %i.cn, i32 %i.co, i32 %i.cq
  %i.cs = mul nuw nsw i32 %i.br, 33050
  %i.ct = lshr i32 %i.cs, 8
end_hunk_6
begin_hunk_7_@UpsampleRgba4444LinePair_SSE2:bb.a
  %i.da = select i1 %i.cw, i32 %i.cx, i32 %i.cz
  %i.db = and i32 %i.cd, 240
  %i.dc = select i1 %i.cc, i32 %i.db, i32 %i.cf
  %i.dd = or i32 %i.dc, %i.cr
  %i.de = trunc i32 %i.dd to i8
  store i8 %i.de, ptr %7, align 1, !tbaa !9
  %i.df = trunc i32 %i.da to i8
end_hunk_7
