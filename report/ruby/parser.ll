inline.NumInlined: 234
inline.NumDeleted: 77
begin_hunk_0_@json_parse_number:bb.a
  %i.al = mul i64 %i.ak, 10
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !43
  %i.an = sext i8 %i.am to i64
  %i.ao = add i64 %i.al, %i.an
  %i.ap = add i64 %i.ao, -48                      ; 3 uses
  %i.aq = add nsw i32 %.13447.i.prol, -1          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 4 uses
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !56
end_hunk_0
begin_hunk_1_@json_parse_number:bb.a
  %i.av = mul i64 %i.au, 10
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !43
  %i.ax = sext i8 %i.aw to i64
  %i.ay = add i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !56
  %i.ba = mul i64 %i.ay, 10
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !43
  %i.bc = sext i8 %i.bb to i64
  %i.bd = add i64 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 2 uses
  store ptr %i.be, ptr %i.b, align 8, !tbaa !56
  %i.bf = mul i64 %i.bd, 10
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !43
  %i.bh = sext i8 %i.bg to i64
  %i.bi = add i64 %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 3 ; 2 uses
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !56
  %i.bk = mul i64 %i.bi, 10
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !43
  %i.bm = sext i8 %i.bl to i64
  %i.bn = add i64 %i.bk, %i.bm
  %i.bo = add i64 %i.bn, -53328                   ; 2 uses
  %i.bp = add nsw i32 %.13447.i, -4               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 3 uses
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !56
end_hunk_1
begin_hunk_2_@json_parse_number:bb.a
  %i.ee = mul i64 %i.ed, 10
  %i.ef = load i8, ptr %i.ec, align 1, !tbaa !43
  %i.eg = sext i8 %i.ef to i64
  %i.eh = add i64 %i.ee, %i.eg
  %i.ei = add i64 %i.eh, -48                      ; 3 uses
  %i.ej = add nsw i32 %.13447.i82.prol, -1        ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 1 ; 4 uses
  store ptr %i.ek, ptr %i.b, align 8, !tbaa !56
end_hunk_2
begin_hunk_3_@json_parse_number:bb.a
  %i.eo = mul i64 %i.en, 10
  %i.ep = load i8, ptr %i.em, align 1, !tbaa !43
  %i.eq = sext i8 %i.ep to i64
  %i.er = add i64 %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 2 uses
  store ptr %i.es, ptr %i.b, align 8, !tbaa !56
  %i.et = mul i64 %i.er, 10
  %i.eu = load i8, ptr %i.es, align 1, !tbaa !43
  %i.ev = sext i8 %i.eu to i64
  %i.ew = add i64 %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 2 ; 2 uses
  store ptr %i.ex, ptr %i.b, align 8, !tbaa !56
  %i.ey = mul i64 %i.ew, 10
  %i.ez = load i8, ptr %i.ex, align 1, !tbaa !43
  %i.fa = sext i8 %i.ez to i64
  %i.fb = add i64 %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 3 ; 2 uses
  store ptr %i.fc, ptr %i.b, align 8, !tbaa !56
  %i.fd = mul i64 %i.fb, 10
  %i.fe = load i8, ptr %i.fc, align 1, !tbaa !43
  %i.ff = sext i8 %i.fe to i64
  %i.fg = add i64 %i.fd, %i.ff
  %i.fh = add i64 %i.fg, -53328                   ; 2 uses
  %i.fi = add nsw i32 %.13447.i82, -4             ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 3 uses
  store ptr %i.fj, ptr %i.b, align 8, !tbaa !56
end_hunk_3
begin_hunk_4_@json_parse_number:bb.a
  %i.ig = mul i64 %i.if, 10
  %i.ih = load i8, ptr %i.ie, align 1, !tbaa !43
  %i.ii = sext i8 %i.ih to i64
  %i.ij = add i64 %i.ig, %i.ii
  %i.ik = add i64 %i.ij, -48                      ; 3 uses
  %i.il = add nsw i32 %.13447.i113.prol, -1       ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 4 uses
  store ptr %i.im, ptr %i.b, align 8, !tbaa !56
end_hunk_4
begin_hunk_5_@json_parse_number:bb.a
  %i.iq = mul i64 %i.ip, 10
  %i.ir = load i8, ptr %i.io, align 1, !tbaa !43
  %i.is = sext i8 %i.ir to i64
  %i.it = add i64 %i.iq, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 1 ; 2 uses
  store ptr %i.iu, ptr %i.b, align 8, !tbaa !56
  %i.iv = mul i64 %i.it, 10
  %i.iw = load i8, ptr %i.iu, align 1, !tbaa !43
  %i.ix = sext i8 %i.iw to i64
  %i.iy = add i64 %i.iv, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.io, i64 2 ; 2 uses
  store ptr %i.iz, ptr %i.b, align 8, !tbaa !56
  %i.ja = mul i64 %i.iy, 10
  %i.jb = load i8, ptr %i.iz, align 1, !tbaa !43
  %i.jc = sext i8 %i.jb to i64
  %i.jd = add i64 %i.ja, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.io, i64 3 ; 2 uses
  store ptr %i.je, ptr %i.b, align 8, !tbaa !56
  %i.jf = mul i64 %i.jd, 10
  %i.jg = load i8, ptr %i.je, align 1, !tbaa !43
  %i.jh = sext i8 %i.jg to i64
  %i.ji = add i64 %i.jf, %i.jh
  %i.jj = add i64 %i.ji, -53328                   ; 2 uses
  %i.jk = add nsw i32 %.13447.i113, -4            ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 3 uses
  store ptr %i.jl, ptr %i.b, align 8, !tbaa !56
end_hunk_5
begin_hunk_6_@json_parse_number:bb.a
  %i.mj = mul i32 %.151, 1217359
  %i.mk = lshr i32 %i.mj, 19                      ; 2 uses
  %reass.sub197 = sub nsw i32 %.151, %i.mi
  %i.ml = add i32 %reass.sub197, %i.mk
  %i.mm = add i32 %i.ml, 10                       ; 5 uses
  %i.mn = sub nsw i32 %i.mm, %.151                ; 3 uses
  %i.mo = zext nneg i32 %.151 to i64
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr @DOUBLE_POW5_SPLIT, i64 %i.mo ; 2 uses
end_hunk_6
begin_hunk_7_@json_parse_number:bb.a
  %i.nr = lshr i32 %i.nq, 19                      ; 2 uses
  %.neg77.i.i = xor i32 %i.nr, -1
  %reass.sub = sub nuw i32 %.151, %i.np
  %i.ns = add i32 %reass.sub, %.neg77.i.i
  %i.nt = add i32 %i.ns, 10                       ; 2 uses
  %i.nu = zext i64 %.0138 to i128                 ; 2 uses
  %i.nv = zext i64 %.val.i.i to i128
  %i.nw = mul nuw i128 %i.nv, %i.nu
end_hunk_7
begin_hunk_8_@json_parse_number:bb.a
  %i.nz = lshr i128 %i.nw, 64
  %i.oa = add nuw i128 %i.nz, %i.ny
  %reass.sub196 = sub i32 %i.nr, %.151
  %i.ob = add i32 %reass.sub196, %i.nt
  %i.oc = add i32 %i.ob, 61
  %i.od = zext nneg i32 %i.oc to i128
  %i.oe = lshr i128 %i.oa, %i.od
  %i.of = trunc i128 %i.oe to i64
end_hunk_8
begin_hunk_9_@json_parse_number:bb.a
  %.066.i.i = phi i1 [ %i.og, %multipleOfPowerOf5.exit.i.i ], [ true, %bb.ar ], [ false, %bb.as ], [ %i.nh, %bb.at ]
  %.065.i.i = phi i64 [ %i.of, %multipleOfPowerOf5.exit.i.i ], [ %i.nb, %bb.ar ], [ %i.nb, %bb.as ], [ %i.nb, %bb.at ] ; 5 uses
  %.064.i.i = phi i32 [ %i.nt, %multipleOfPowerOf5.exit.i.i ], [ %i.mm, %bb.ar ], [ %i.mm, %bb.as ], [ %i.mm, %bb.at ] ; 2 uses
  %i.oh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.065.i.i, i1 true)
  %i.oi = trunc nuw nsw i64 %i.oh to i32
  %i.oj = xor i32 %i.oi, 63
  %4 = add i32 %.064.i.i, %i.oj
  %i.ok = add i32 %4, 1023                        ; 3 uses
  %i.ol = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ok, i32 0)
  %i.om = icmp sgt i32 %i.ok, 2046
  br i1 %i.om, label %bb.ax, label %bb.ay
end_hunk_9
