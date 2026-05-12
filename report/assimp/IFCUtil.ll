inline.NumInlined: 1656
inline.NumDeleted: 752
begin_hunk_0_@_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 2305843009213693950      ; 3 uses
  %2 = load <2 x double>, ptr %i.r, align 8
  %broadcast.splat38 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = load <2 x double>, ptr %i.q, align 8
  %broadcast.splat36.a = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = load <2 x double>, ptr %i.p, align 8
  %broadcast.splat32.a = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = load <2 x double>, ptr %i.o, align 8
  %broadcast.splat34.a = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = load <2 x double>, ptr %i.n, align 8
  %i.af = load <2 x double>, ptr %i.m, align 8
  %broadcast.splat28.a = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = load <2 x double>, ptr %i.l, align 8
  %broadcast.splat24 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = load <2 x double>, ptr %i.k, align 8
  %broadcast.splat26 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = load <2 x double>, ptr %i.j, align 8
  %i.aj = load <2 x double>, ptr %i.i, align 8
  %broadcast.splat20 = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = load <2 x double>, ptr %i.h, align 8
  %broadcast.splat = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = load <2 x double>, ptr %1, align 8
  %broadcast.splat18 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = mul i64 %n.vec, 24
  %4 = getelementptr i8, ptr %i.c, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE:bb.a
  %i.av = load double, ptr %i.at, align 8, !alias.scope !3, !noalias !6
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1 ; 3 uses
  %i.ay = fmul <2 x double> %broadcast.splat, %i.ax
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat18, <2 x double> %i.ar, <2 x double> %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.bb = getelementptr i8, ptr %i.an, i64 40
  %i.bc = load double, ptr %i.ba, align 8, !alias.scope !3, !noalias !6
  %i.bd = load double, ptr %i.bb, align 8, !alias.scope !3, !noalias !6
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 3 uses
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat20, <2 x double> %i.bf, <2 x double> %i.az)
  %i.bh = fmul <2 x double> %i.ax, %broadcast.splat24
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat26, <2 x double> %i.ar, <2 x double> %i.bh)
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat28.a, <2 x double> %i.bf, <2 x double> %i.bi)
  %i.bk = fmul <2 x double> %i.ax, %broadcast.splat32.a
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat34.a, <2 x double> %i.ar, <2 x double> %i.bk)
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat36.a, <2 x double> %i.bf, <2 x double> %i.bl)
  %i.bn = fadd <2 x double> %broadcast.splat38, %i.bm
  %i.bo = shufflevector <2 x double> %i.bg, <2 x double> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bp = shufflevector <2 x double> %i.ai, <2 x double> %i.bj, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bq = fadd <4 x double> %i.bo, %i.bp
  %i.br = shufflevector <2 x double> %i.bn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bq, <4 x double> %i.br, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE:bb.a
  br i1 %cmp.n, label %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.05.09.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i ], [ %4, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_2
begin_hunk_3_@_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE:bb.a

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ds, 2305843009213693950   ; 3 uses
  %5 = load <2 x double>, ptr %i.do, align 8
  %broadcast.splat77 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = load <2 x double>, ptr %i.dn, align 8
  %broadcast.splat75.a = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = load <2 x double>, ptr %i.dm, align 8
  %broadcast.splat71.a = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = load <2 x double>, ptr %i.dl, align 8
  %broadcast.splat73.a = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = load <2 x double>, ptr %i.dk, align 8
  %i.ec = load <2 x double>, ptr %i.dj, align 8
  %broadcast.splat67.a = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = load <2 x double>, ptr %i.di, align 8
  %broadcast.splat63 = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = load <2 x double>, ptr %i.dh, align 8
  %broadcast.splat65 = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = load <2 x double>, ptr %i.dg, align 8
  %i.eg = load <2 x double>, ptr %i.df, align 8
  %broadcast.splat59 = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = load <2 x double>, ptr %i.de, align 8
  %broadcast.splat55 = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = load <2 x double>, ptr %1, align 8
  %broadcast.splat57 = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = mul i64 %n.vec49, 24
  %7 = getelementptr i8, ptr %i.cz, i64 %6
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
end_hunk_3
begin_hunk_4_@_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE:bb.a
  %i.es = load double, ptr %i.eq, align 8, !alias.scope !16, !noalias !19
  %i.et = insertelement <2 x double> poison, double %i.er, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.es, i64 1 ; 3 uses
  %i.ev = fmul <2 x double> %broadcast.splat55, %i.eu
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat57, <2 x double> %i.eo, <2 x double> %i.ev)
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep52, i64 16
  %i.ey = getelementptr i8, ptr %i.ek, i64 40
  %i.ez = load double, ptr %i.ex, align 8, !alias.scope !16, !noalias !19
  %i.fa = load double, ptr %i.ey, align 8, !alias.scope !16, !noalias !19
  %i.fb = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.fa, i64 1 ; 3 uses
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %i.fc, <2 x double> %i.ew)
  %i.fe = fmul <2 x double> %i.eu, %broadcast.splat63
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat65, <2 x double> %i.eo, <2 x double> %i.fe)
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat67.a, <2 x double> %i.fc, <2 x double> %i.ff)
  %i.fh = fmul <2 x double> %i.eu, %broadcast.splat71.a
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat73.a, <2 x double> %i.eo, <2 x double> %i.fh)
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat75.a, <2 x double> %i.fc, <2 x double> %i.fi)
  %i.fk = fadd <2 x double> %broadcast.splat77, %i.fj
  %i.fl = shufflevector <2 x double> %i.fd, <2 x double> %i.eb, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fm = shufflevector <2 x double> %i.ef, <2 x double> %i.fg, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.fn = fadd <4 x double> %i.fl, %i.fm
  %i.fo = shufflevector <2 x double> %i.fk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec78 = shufflevector <4 x double> %i.fn, <4 x double> %i.fo, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
end_hunk_4
begin_hunk_5_@_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE:bb.a
  br i1 %cmp.n81, label %_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE.exit8, label %scalar.ph45.preheader

scalar.ph45.preheader:                            ; preds = %vector.memcheck39, %.lr.ph.i5, %middle.block80
  %.sroa.05.09.i6.ph = phi ptr [ %i.cz, %vector.memcheck39 ], [ %i.cz, %.lr.ph.i5 ], [ %7, %middle.block80 ]
  br label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.preheader, %scalar.ph45
end_hunk_5
begin_hunk_6_@_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 2305843009213693950      ; 3 uses
  %2 = load <2 x double>, ptr %i.p, align 8
  %broadcast.splat34 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = load <2 x double>, ptr %i.o, align 8
  %broadcast.splat32.a = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = load <2 x double>, ptr %i.n, align 8
  %broadcast.splat28.a = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = load <2 x double>, ptr %i.m, align 8
  %broadcast.splat30.a = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = load <2 x double>, ptr %i.l, align 8
  %i.ad = load <2 x double>, ptr %i.k, align 8
  %broadcast.splat24.a = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = load <2 x double>, ptr %i.j, align 8
  %broadcast.splat20 = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = load <2 x double>, ptr %i.i, align 8
  %broadcast.splat22 = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = load <2 x double>, ptr %i.h, align 8
  %i.ah = load <2 x double>, ptr %i.g, align 8
  %broadcast.splat16 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = load <2 x double>, ptr %i.f, align 8
  %broadcast.splat = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = load <2 x double>, ptr %1, align 8
  %broadcast.splat14 = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = mul i64 %n.vec, 24
  %4 = getelementptr i8, ptr %i.a, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_6
begin_hunk_7_@_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE:bb.a
  %i.at = load double, ptr %i.ar, align 8, !alias.scope !30, !noalias !33
  %i.au = insertelement <2 x double> poison, double %i.as, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.at, i64 1 ; 3 uses
  %i.aw = fmul <2 x double> %broadcast.splat, %i.av
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat14, <2 x double> %i.ap, <2 x double> %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.az = getelementptr i8, ptr %i.al, i64 40
  %i.ba = load double, ptr %i.ay, align 8, !alias.scope !30, !noalias !33
  %i.bb = load double, ptr %i.az, align 8, !alias.scope !30, !noalias !33
  %i.bc = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.bb, i64 1 ; 3 uses
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat16, <2 x double> %i.bd, <2 x double> %i.ax)
  %i.bf = fmul <2 x double> %i.av, %broadcast.splat20
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat22, <2 x double> %i.ap, <2 x double> %i.bf)
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat24.a, <2 x double> %i.bd, <2 x double> %i.bg)
  %i.bi = fmul <2 x double> %i.av, %broadcast.splat28.a
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat30.a, <2 x double> %i.ap, <2 x double> %i.bi)
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat32.a, <2 x double> %i.bd, <2 x double> %i.bj)
  %i.bl = fadd <2 x double> %broadcast.splat34, %i.bk
  %i.bm = shufflevector <2 x double> %i.be, <2 x double> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bn = shufflevector <2 x double> %i.ag, <2 x double> %i.bh, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bo = fadd <4 x double> %i.bm, %i.bn
  %i.bp = shufflevector <2 x double> %i.bl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
end_hunk_7
begin_hunk_8_@_ZN6Assimp3IFC8TempMesh9TransformERK12aiMatrix4x4tIdE:bb.a
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.05.09.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph ], [ %4, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
end_hunk_8
