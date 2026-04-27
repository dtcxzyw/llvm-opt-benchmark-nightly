inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@uncompress_b44_impl:bb.a
  %i.bs = lshr i8 %i.br, 6
  %i.bt = zext nneg i8 %i.bs to i32
  %.masked97.i.us = and i32 %i.bp, 60
  %i.bu = or disjoint i32 %.masked97.i.us, %i.bt
  %i.bv = shl nuw nsw i32 %i.bu, %i.bb
  %i.bw = add nsw i32 %i.bl, %.neg106.i.us        ; 2 uses
  %i.bx = add nsw i32 %i.bv, %i.bw                ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 5
  %i.bz = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 6 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 7 ; 2 uses
  %i.cb = add nsw i32 %i.bx, %.neg106.i.us
  %i.cc = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 9 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 10 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 11
  %i.cg = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 12 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.2146343.us, i64 13 ; 2 uses
  %i.ci = trunc i32 %i.bx to i16                  ; 2 uses
  store i16 %i.ci, ptr %.16..16..16..sroa_idx501, align 16, !tbaa !35
  %i.cj = load i8, ptr %i.bq, align 1, !tbaa !37
  %i.ck = and i8 %i.cj, 63
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = add nsw i32 %i.cl, -32
  %i.cn = shl nsw i32 %i.cm, %i.bb
  %i.co = add nsw i32 %i.cn, %i.bx                ; 2 uses
  %i.cp = trunc i32 %i.co to i16                  ; 2 uses
  store i16 %i.cp, ptr %.24..24..24..sroa_idx506, align 8, !tbaa !35
  %i.cq = load i8, ptr %i.by, align 1, !tbaa !37  ; 2 uses
end_hunk_0
begin_hunk_1_@uncompress_b44_impl:bb.a
  %.masked98.i.us = and i32 %i.cx, 48
  %i.db = or disjoint i32 %.masked98.i.us, %i.da
  %i.dc = shl nuw nsw i32 %i.db, %i.bb
  %i.dd = add nsw i32 %i.dc, %i.bw                ; 2 uses
  %i.de = trunc i32 %i.dd to i16                  ; 2 uses
  store i16 %i.de, ptr %.10..10..10..sroa_idx, align 2, !tbaa !35
  %i.df = load i8, ptr %i.bz, align 1, !tbaa !37
end_hunk_1
