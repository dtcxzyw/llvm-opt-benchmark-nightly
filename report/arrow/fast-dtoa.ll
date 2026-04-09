inline.NumInlined: 153
inline.NumDeleted: 41
begin_hunk_0_@_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a
  %i.bx = lshr i64 %i.bw, 32
  %i.by = and i64 %i.bv, 4294967295
  %i.bz = and i64 %i.bu, 4294965248
  %i.ca = add nuw nsw i64 %i.bx, %i.by
  %i.cb = add nuw nsw i64 %i.ca, %i.bz
  %i.cc = add nuw nsw i64 %i.cb, 2147483648
  %i.cd = load i32, ptr %i.bl, align 8, !tbaa !14
  %i.ce = add i32 %i.cd, %.0.lcssa.i.i            ; 2 uses
  %i.cf = lshr i64 %i.bv, 32
  %i.cg = lshr i64 %i.bu, 32
  %i.ch = lshr i64 %i.cc, 32
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a
  %i.cz = insertelement <2 x i64> %i.cy, i64 %i.cs, i64 1
  %i.da = and <2 x i64> %i.cz, splat (i64 4294967295)
  %i.db = and <2 x i64> %i.cr, splat (i64 4294967295)
  %i.dc = add nuw nsw <2 x i64> %i.cx, %i.da
  %i.dd = add nuw nsw <2 x i64> %i.dc, %i.db
  %i.de = add nuw nsw <2 x i64> %i.dd, splat (i64 2147483648)
  %i.df = lshr i64 %i.cs, 32
  %i.dg = lshr i64 %i.ct, 32
  %i.dh = lshr <2 x i64> %i.cr, splat (i64 32)
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a
  %i.dr = extractelement <2 x i64> %i.do, i64 1
  %i.ds = sub i64 %i.dp, %i.dr                    ; 2 uses
  %i.dt = add i64 %i.ds, 2                        ; 4 uses
  %i.du = sub i32 -53, %i.ce
  %i.dv = zext nneg i32 %i.du to i64              ; 5 uses
  %i.dw = shl nuw i64 1, %i.dv                    ; 5 uses
  %i.dx = lshr i64 %i.dq, %i.dv
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a
  %i.dz = add i64 %i.dw, -1                       ; 2 uses
  %i.ea = and i64 %i.dq, %i.dz                    ; 2 uses
  %i.eb = mul i32 %i.ce, 1233
  %i.ec = add i32 %i.eb, 145494
  %i.ed = ashr i32 %i.ec, 12                      ; 2 uses
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = sext i32 %i.ee to i64
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a
  %i.iu = lshr i64 %i.it, 32
  %i.iv = and i64 %i.is, 4294967295
  %i.iw = and i64 %i.ir, 4294965248
  %i.ix = add nuw nsw i64 %i.iu, %i.iv
  %i.iy = add nuw nsw i64 %i.ix, %i.iw
  %i.iz = add nuw nsw i64 %i.iy, 2147483648
  %i.ja = load i32, ptr %i.ii, align 8, !tbaa !14
  %i.jb = add i32 %i.ja, %.0.lcssa.i.i16          ; 2 uses
  %i.jc = lshr i64 %i.is, 32
  %i.jd = add nuw i64 %i.jc, %i.iq
  %i.je = lshr i64 %i.ir, 32
  %i.jf = add nuw i64 %i.jd, %i.je
  %i.jg = lshr i64 %i.iz, 32
  %i.jh = add nuw i64 %i.jf, %i.jg                ; 2 uses
  %i.ji = sub i32 -53, %i.jb
  %i.jj = zext nneg i32 %i.ji to i64              ; 5 uses
  %i.jk = shl nuw i64 1, %i.jj                    ; 6 uses
  %i.jl = lshr i64 %i.jh, %i.jj
end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored17double_conversion8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_:bb.a
  %i.jn = add i64 %i.jk, -1                       ; 2 uses
  %i.jo = and i64 %i.jh, %i.jn                    ; 3 uses
  %i.jp = mul i32 %i.jb, 1233
  %i.jq = add i32 %i.jp, 145494
  %i.jr = ashr i32 %i.jq, 12                      ; 2 uses
  %i.js = add nsw i32 %i.jr, 1                    ; 2 uses
  %i.jt = sext i32 %i.js to i64
end_hunk_5
