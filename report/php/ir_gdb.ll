Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_gdb?download=true
inline.NumInlined: 59
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ir_gdb_register:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 752
  store i64 0, ptr %i.bz, align 8, !tbaa !55
  %i.ca = load i32, ptr %i.d, align 8, !tbaa !33
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 760
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 748
  store i8 18, ptr %i.cd, align 4, !tbaa !53
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.cf = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 408
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !46
  store ptr %i.bu, ptr %i.k, align 8, !tbaa !37
  %i.cj = sub i64 %i.cf, %i.bw
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 528
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i16.i.i, i64 5
  store i16 2, ptr %i.cl, align 1, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i16.i.i, i64 7
  store i32 0, ptr %i.cm, align 1, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i16.i.i, i64 11
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i16.i.i, i64 12
  store i8 8, ptr %i.cn, align 1, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i16.i.i, i64 13 ; 2 uses
  store i8 1, ptr %i.co, align 1, !tbaa !25
  store ptr %i.cp, ptr %5, align 8, !tbaa !40
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %ir_gdbjit_symtab.exit.i
  %.08.i.i.i = phi ptr [ %i.cq, %ir_gdbjit_symtab.exit.i ], [ %i.ct, %bb.c ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.cp, %ir_gdbjit_symtab.exit.i ], [ %i.cs, %bb.c ] ; 14 uses
  %i.cr = load i8, ptr %.08.i.i.i, align 1, !tbaa !25 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  store i8 %i.cr, ptr %.0.i.i.i, align 1, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  %.not.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i, label %ir_gdbjit_debuginfo.exit.i, label %bb.c, !llvm.loop !54

ir_gdbjit_debuginfo.exit.i:                       ; preds = %bb.c
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.cu, ptr %i.cs, align 1, !tbaa !59
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 9
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !28
  %i.cx = load i32, ptr %i.d, align 8, !tbaa !33
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add i64 %i.cw, %i.cy
  store i64 %i.cz, ptr %i.cv, align 1, !tbaa !59
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 17
  store i32 0, ptr %i.da, align 1, !tbaa !58
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 21 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64               ; 3 uses
  %i.dd = sub i64 %i.dc, %i.cf
  %i.de = trunc i64 %i.dd to i32
  %i.df = add i32 %i.de, -4
  store i32 %i.df, ptr %i.bu, align 1, !tbaa !58
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dc, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 536
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !46
  %i.dk = sub i64 %i.dc, %i.bw
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 592
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 29
  store <8 x i8> <i8 1, i8 17, i8 0, i8 3, i8 8, i8 17, i8 1, i8 18>, ptr %i.db, align 1, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 33
  store <4 x i8> <i8 1, i8 16, i8 6, i8 0>, ptr %i.dm, align 1, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 34
  store i8 0, ptr %i.dn, align 1, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 35 ; 3 uses
  store i8 0, ptr %i.do, align 1, !tbaa !25
  %i.dq = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 600
  store i64 14, ptr %i.dr, align 8, !tbaa !46
  store ptr %i.dp, ptr %i.k, align 8, !tbaa !37
  %i.ds = sub i64 %i.dq, %i.bw
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 656
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 39
  store i16 2, ptr %i.du, align 1, !tbaa !57
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 45
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 53
  store <8 x i8> <i8 1, i8 1, i8 0, i8 2, i8 4, i8 0, i8 1, i8 1>, ptr %i.dv, align 1, !tbaa !25
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 54 ; 2 uses
  store i8 0, ptr %i.dw, align 1, !tbaa !25
  store ptr %i.dx, ptr %5, align 8, !tbaa !40
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %ir_gdbjit_debuginfo.exit.i
  %.08.i.i30.i = phi ptr [ %i.dy, %ir_gdbjit_debuginfo.exit.i ], [ %i.eb, %bb.d ] ; 2 uses
  %.0.i.i31.i = phi ptr [ %i.dx, %ir_gdbjit_debuginfo.exit.i ], [ %i.ea, %bb.d ] ; 8 uses
  %i.dz = load i8, ptr %.08.i.i30.i, align 1, !tbaa !25 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 1 ; 2 uses
  store i8 %i.dz, ptr %.0.i.i31.i, align 1, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i30.i, i64 1
  %.not.i.i32.i = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i32.i, label %ir_gdbjit_strz.exit.i.i, label %bb.d, !llvm.loop !54

ir_gdbjit_strz.exit.i.i:                          ; preds = %bb.d
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 41 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 5 ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = add i32 %i.eh, -4
  store i32 0, ptr %i.ea, align 1
  store i32 %i.ei, ptr %i.ec, align 1, !tbaa !58
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 6
  store i8 0, ptr %i.ed, align 1, !tbaa !25
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 7
  store i8 9, ptr %i.ej, align 1, !tbaa !25
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 8
  store i8 2, ptr %i.ek, align 1, !tbaa !25
  %i.em = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.em, ptr %i.el, align 1, !tbaa !59
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 16 ; 2 uses
  %i.eo = load i32, ptr %i.g, align 4, !tbaa !36
  %.not.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ir_gdbjit_strz.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 17 ; 2 uses
  store i8 3, ptr %i.en, align 1, !tbaa !25
  %i.eq = load i32, ptr %i.g, align 4, !tbaa !36  ; 2 uses
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  %i.es = add i32 %i.eq, -65
  %i.et = icmp ult i32 %i.es, -128
  br i1 %i.et, label %.lr.ph.i.i.i, label %ir_gdbjit_sleb128.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i ], [ %i.ep, %bb.e ] ; 2 uses
  %.089.i.i.i = phi i32 [ %i.ex, %.lr.ph.i.i.i ], [ %i.er, %bb.e ] ; 2 uses
  %i.eu = trunc i32 %.089.i.i.i to i8
  %i.ev = or i8 %i.eu, -128
  %i.ew = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 1 ; 2 uses
  store i8 %i.ev, ptr %.010.i.i.i, align 1, !tbaa !25
  %i.ex = ashr i32 %.089.i.i.i, 7                 ; 3 uses
  %i.ey = add nsw i32 %i.ex, -64
  %i.ez = icmp ult i32 %i.ey, -128
  br i1 %i.ez, label %.lr.ph.i.i.i, label %ir_gdbjit_sleb128.exit.i.i, !llvm.loop !60

ir_gdbjit_sleb128.exit.i.i:                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.08.lcssa.i.i.i = phi i32 [ %i.er, %bb.e ], [ %i.ex, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %i.ep, %bb.e ], [ %i.ew, %.lr.ph.i.i.i ] ; 2 uses
  %i.fa = trunc nsw i32 %.08.lcssa.i.i.i to i8
  %i.fb = and i8 %i.fa, 127
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 1
  store i8 %i.fb, ptr %.0.lcssa.i.i.i, align 1, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %ir_gdbjit_sleb128.exit.i.i, %ir_gdbjit_strz.exit.i.i
  %.0.i.i = phi ptr [ %i.fc, %ir_gdbjit_sleb128.exit.i.i ], [ %i.en, %ir_gdbjit_strz.exit.i.i ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 1, ptr %.0.i.i, align 1, !tbaa !25
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 2 uses
  store i8 2, ptr %i.fd, align 1, !tbaa !25
  %i.ff = load i32, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  %i.fg = icmp ugt i32 %i.ff, 127
  br i1 %i.fg, label %.lr.ph.i74.i.i, label %._crit_edge.i.i.a

.lr.ph.i74.i.i:                                   ; preds = %bb.f, %.lr.ph.i74.i.i
  %.010.i75.i.i = phi ptr [ %i.fj, %.lr.ph.i74.i.i ], [ %i.fe, %bb.f ] ; 2 uses
  %.089.i76.i.i = phi i32 [ %i.fk, %.lr.ph.i74.i.i ], [ %i.ff, %bb.f ] ; 3 uses
  %i.fh = trunc i32 %.089.i76.i.i to i8
  %i.fi = or i8 %i.fh, -128
  %i.fj = getelementptr inbounds nuw i8, ptr %.010.i75.i.i, i64 1 ; 2 uses
  store i8 %i.fi, ptr %.010.i75.i.i, align 1, !tbaa !25
  %i.fk = lshr i32 %.089.i76.i.i, 7               ; 2 uses
  %i.fl = icmp ugt i32 %.089.i76.i.i, 16383
  br i1 %i.fl, label %.lr.ph.i74.i.i, label %._crit_edge.i.i.a, !llvm.loop !61

._crit_edge.i.i.a:                                ; preds = %.lr.ph.i74.i.i, %bb.f
  %.08.lcssa.i72.i.i = phi i32 [ %i.ff, %bb.f ], [ %i.fk, %.lr.ph.i74.i.i ]
  %.0.lcssa.i73.i.i = phi ptr [ %i.fe, %bb.f ], [ %i.fj, %.lr.ph.i74.i.i ] ; 5 uses
  %i.fm = trunc nuw nsw i32 %.08.lcssa.i72.i.i to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i73.i.i, i64 1
  store i8 %i.fm, ptr %.0.lcssa.i73.i.i, align 1, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i73.i.i, i64 2
  store i8 0, ptr %i.fn, align 1, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i73.i.i, i64 3
  store i8 1, ptr %i.fo, align 1, !tbaa !25
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i73.i.i, i64 4
  store i8 1, ptr %i.fp, align 1, !tbaa !25
  %i.fr = ptrtoint ptr %i.fq to i64               ; 3 uses
  %i.fs = sub i64 %i.fr, %i.dq
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = add i32 %i.ft, -4
  store i32 %i.fu, ptr %i.dp, align 1, !tbaa !58
  %i.fv = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fr, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 664
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !46
  %i.fz = add i64 %i.fr, 7
  %i.ga = and i64 %i.fz, -8                       ; 4 uses
  %i.gb = inttoptr i64 %i.ga to ptr               ; 16 uses
  store ptr %i.gb, ptr %5, align 8, !tbaa !40
  store ptr %i.gb, ptr %i.k, align 8, !tbaa !37
  %i.gc = sub i64 %i.ga, %i.bw
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 272
  store i64 %i.gc, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i32 0, ptr %7, align 4, !tbaa !58
  %8 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <8 x i8> <i8 1, i8 122, i8 82, i8 0, i8 1, i8 120, i8 16, i8 1>, ptr %8, align 8, !tbaa !25
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  store <4 x i8> <i8 35, i8 12, i8 7, i8 8>, ptr %9, align 8, !tbaa !25
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 21
  store i8 -112, ptr %i.gd, align 4, !tbaa !25
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 22
  store i8 1, ptr %i.ge, align 1, !tbaa !25
  store i16 0, ptr %i.gf, align 2
  store i32 20, ptr %i.gb, align 8, !tbaa !58
  %i.gg = getelementptr i8, ptr %i.gb, i64 28     ; 2 uses
  %10 = ptrtoint ptr %i.gg to i64
  %11 = sub i64 %10, %i.ga
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %i.gg, align 4, !tbaa !58
  %i.gh = getelementptr i8, ptr %i.gb, i64 32
  store i32 0, ptr %i.gh, align 8, !tbaa !58
  %i.gi = getelementptr i8, ptr %i.gb, i64 36
  %13 = load i32, ptr %i.d, align 8, !tbaa !33
  store i32 %13, ptr %i.gi, align 4, !tbaa !58
  %14 = getelementptr i8, ptr %i.gb, i64 40
  %i.gj = getelementptr i8, ptr %i.gb, i64 41
  store i8 0, ptr %14, align 8, !tbaa !25
  %15 = getelementptr i8, ptr %i.gb, i64 42       ; 2 uses
  store i8 14, ptr %i.gj, align 1, !tbaa !25
  %16 = icmp ugt i32 %3, 127
  br i1 %16, label %.lr.ph.i.i36.i, label %ir_gdbjit_uleb128.exit.i.i

.lr.ph.i.i36.i:                                   ; preds = %._crit_edge.i.i.a, %.lr.ph.i.i36.i
  %.010.i.i37.i = phi ptr [ %i.gm, %.lr.ph.i.i36.i ], [ %15, %._crit_edge.i.i.a ] ; 2 uses
  %.089.i.i38.i = phi i32 [ %i.gn, %.lr.ph.i.i36.i ], [ %3, %._crit_edge.i.i.a ] ; 3 uses
  %i.gk = trunc i32 %.089.i.i38.i to i8
  %i.gl = or i8 %i.gk, -128
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i37.i, i64 1 ; 2 uses
  store i8 %i.gl, ptr %.010.i.i37.i, align 1, !tbaa !25
  %i.gn = lshr i32 %.089.i.i38.i, 7               ; 2 uses
  %i.go = icmp ugt i32 %.089.i.i38.i, 16383
  br i1 %i.go, label %.lr.ph.i.i36.i, label %ir_gdbjit_uleb128.exit.i.i, !llvm.loop !61

ir_gdbjit_uleb128.exit.i.i:                       ; preds = %.lr.ph.i.i36.i, %._crit_edge.i.i.a
  %.08.lcssa.i.i34.i = phi i32 [ %3, %._crit_edge.i.i.a ], [ %i.gn, %.lr.ph.i.i36.i ]
  %.0.lcssa.i.i35.i = phi ptr [ %15, %._crit_edge.i.i.a ], [ %i.gm, %.lr.ph.i.i36.i ] ; 4 uses
  %i.gp = trunc nuw nsw i32 %.08.lcssa.i.i34.i to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i35.i, i64 1 ; 2 uses
  store i8 %i.gp, ptr %.0.lcssa.i.i35.i, align 1, !tbaa !25
  %i.gr = icmp ugt i32 %4, %3
  br i1 %i.gr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %ir_gdbjit_uleb128.exit.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i35.i, i64 2
  store i8 65, ptr %i.gq, align 1, !tbaa !25
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i35.i, i64 3 ; 2 uses
  store i8 14, ptr %i.gs, align 1, !tbaa !25
  %i.gu = icmp ugt i32 %4, 127
  br i1 %i.gu, label %.lr.ph.i80.i.i, label %ir_gdbjit_uleb128.exit83.i.i

.lr.ph.i80.i.i:                                   ; preds = %bb.g, %.lr.ph.i80.i.i
  %.010.i81.i.i = phi ptr [ %i.gx, %.lr.ph.i80.i.i ], [ %i.gt, %bb.g ] ; 2 uses
  %.089.i82.i.i = phi i32 [ %i.gy, %.lr.ph.i80.i.i ], [ %4, %bb.g ] ; 3 uses
  %i.gv = trunc i32 %.089.i82.i.i to i8
  %i.gw = or i8 %i.gv, -128
  %i.gx = getelementptr inbounds nuw i8, ptr %.010.i81.i.i, i64 1 ; 2 uses
  store i8 %i.gw, ptr %.010.i81.i.i, align 1, !tbaa !25
  %i.gy = lshr i32 %.089.i82.i.i, 7               ; 2 uses
  %i.gz = icmp ugt i32 %.089.i82.i.i, 16383
  br i1 %i.gz, label %.lr.ph.i80.i.i, label %ir_gdbjit_uleb128.exit83.i.i, !llvm.loop !61

ir_gdbjit_uleb128.exit83.i.i:                     ; preds = %.lr.ph.i80.i.i, %bb.g
  %.08.lcssa.i78.i.i = phi i32 [ %4, %bb.g ], [ %i.gy, %.lr.ph.i80.i.i ]
  %.0.lcssa.i79.i.i = phi ptr [ %i.gt, %bb.g ], [ %i.gx, %.lr.ph.i80.i.i ] ; 2 uses
  %i.ha = trunc nuw nsw i32 %.08.lcssa.i78.i.i to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i79.i.i, i64 1
  store i8 %i.ha, ptr %.0.lcssa.i79.i.i, align 1, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %ir_gdbjit_uleb128.exit83.i.i, %ir_gdbjit_uleb128.exit.i.i
  %.1.i.i = phi ptr [ %i.hb, %ir_gdbjit_uleb128.exit83.i.i ], [ %i.gq, %ir_gdbjit_uleb128.exit.i.i ] ; 4 uses
  %i.hc = ptrtoint ptr %.1.i.i to i64             ; 4 uses
  %i.hd = and i64 %i.hc, 7                        ; 2 uses
  %.not7793.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not7793.i.i, label %ir_gdbjit_buildobj.exit, label %.lr.ph96.preheader.i.i

.lr.ph96.preheader.i.i:                           ; preds = %bb.h
  %17 = sub nuw nsw i64 8, %i.hd                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1.i.i, i8 0, i64 %17, i1 false), !tbaa !25
  %scevgep109.i.i = getelementptr i8, ptr %.1.i.i, i64 %17 ; 2 uses
  %18 = or i64 %i.hc, 7
  %19 = add i64 %18, 1
  %.pre.i = ptrtoint ptr %scevgep109.i.i to i64
  br label %ir_gdbjit_buildobj.exit

ir_gdbjit_buildobj.exit:                          ; preds = %bb.h, %.lr.ph96.preheader.i.i
  %.pre-phi.i = phi i64 [ %i.hc, %bb.h ], [ %.pre.i, %.lr.ph96.preheader.i.i ] ; 2 uses
  %.2.lcssa.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %scevgep109.i.i, %.lr.ph96.preheader.i.i ]
  %.lcssa.i.i = phi i64 [ %i.hc, %bb.h ], [ %19, %.lr.ph96.preheader.i.i ]
  %scevgep.i.i = getelementptr i8, ptr %i.gb, i64 24
  %reass.sub.i = sub i64 %.lcssa.i.i, %i.ga
  %i.he = trunc i64 %reass.sub.i to i32
  %i.hf = add i32 %i.he, -28
  store i32 %i.hf, ptr %scevgep.i.i, align 8, !tbaa !58
  store ptr %.2.lcssa.i.i, ptr %5, align 8, !tbaa !40
  %i.hg = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %.pre-phi.i, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 280
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !46
  %i.hk = sub i64 %.pre-phi.i, %i.bw              ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !62
  %i.hm = add i64 %i.hk, 32
  %i.hn = call noalias ptr @malloc(i64 noundef %i.hm) #12 ; 12 uses
  %i.ho = icmp ne ptr %i.hn, null                 ; 2 uses
  br i1 %i.ho, label %bb.i, label %ir_gdb_register_code.exit

bb.i:                                             ; preds = %ir_gdbjit_buildobj.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 32 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !63
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store i64 %i.hk, ptr %i.hr, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull readonly align 8 %i.h, i64 %i.hk, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !65
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ht ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 90
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !66
  %i.hx = zext i16 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 92
  %i.hz = load i16, ptr %i.hy, align 4, !tbaa !67
  %i.ia = zext i16 %i.hz to i64
  %i.ib = mul nuw nsw i64 %i.ia, %i.hx            ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ib
  %.not36.i = icmp eq i64 %i.ib, 0
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.l
  %.035.i = phi ptr [ %i.in, %bb.l ], [ %i.hu, %bb.i ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.035.i, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !44
  %i.if = and i64 %i.ie, 2
  %.not34.i = icmp eq i64 %i.if, 0
  br i1 %.not34.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.035.i, i64 16 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !45
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ij = getelementptr inbounds nuw i8, ptr %.035.i, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !38
  %i.il = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ik
  %i.im = ptrtoint ptr %i.il to i64
  store i64 %i.im, ptr %i.ig, align 8, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i
  %i.in = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.hx ; 2 uses
  %i.io = icmp ult ptr %i.in, %i.ic
  br i1 %i.io, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !68

._crit_edge.i:                                    ; preds = %bb.l, %bb.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr null, ptr %i.ip, align 8, !tbaa !21
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @__jit_debug_descriptor, i64 16), align 8, !tbaa !16 ; 3 uses
  store ptr %i.iq, ptr %i.hn, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.iq, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %i.hn, ptr %i.ir, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  store ptr %i.hn, ptr getelementptr inbounds nuw (i8, ptr @__jit_debug_descriptor, i64 16), align 8, !tbaa !16
  store ptr %i.hn, ptr getelementptr inbounds nuw (i8, ptr @__jit_debug_descriptor, i64 8), align 8, !tbaa !22
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @__jit_debug_descriptor, i64 4), align 4, !tbaa !12
  call void @__jit_debug_register_code() #10
  br label %ir_gdb_register_code.exit

ir_gdb_register_code.exit:                        ; preds = %ir_gdbjit_buildobj.exit, %bb.n
  %i.is = zext i1 %i.ho to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %i.is
}

; Function Attrs: nounwind uwtable
define hidden void @ir_gdb_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @ir_gdb_present()   ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 4}
!13 = !{!"_ir_gdbjit_descriptor", !9, i64 0, !9, i64 4, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTS21_ir_gdbjit_code_entry", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!13, !14, i64 16}
!17 = !{!18, !14, i64 0}
!18 = !{!"_ir_gdbjit_code_entry", !14, i64 0, !14, i64 8, !19, i64 16, !20, i64 24}
!19 = !{!"p1 omnipotent char", !15, i64 0}
!20 = !{!"long", !10, i64 0}
!21 = !{!18, !14, i64 8}
!22 = !{!13, !14, i64 8}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!10, !10, i64 0}
!26 = distinct !{!26, !24}
!27 = distinct !{null}
!28 = !{!29, !20, i64 16}
!29 = !{!"_ir_gdbjit_ctx", !19, i64 0, !19, i64 8, !20, i64 16, !9, i64 24, !9, i64 28, !19, i64 32, !19, i64 40, !20, i64 48, !30, i64 56}
!30 = !{!"_ir_gdbjit_obj", !31, i64 0, !10, i64 64, !10, i64 640, !10, i64 712}
!31 = !{!"_ir_elf_header", !10, i64 0, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 7, !10, i64 8, !10, i64 9, !32, i64 16, !32, i64 18, !9, i64 20, !20, i64 24, !20, i64 32, !20, i64 40, !9, i64 48, !32, i64 52, !32, i64 54, !32, i64 56, !32, i64 58, !32, i64 60, !32, i64 62}
!32 = !{!"short", !10, i64 0}
!33 = !{!29, !9, i64 24}
!34 = !{!29, !19, i64 32}
!35 = !{!29, !19, i64 40}
!36 = !{!29, !9, i64 28}
!37 = !{!29, !19, i64 8}
!38 = !{!39, !20, i64 24}
!39 = !{!"ir_elf_sectheader", !9, i64 0, !9, i64 4, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !9, i64 40, !9, i64 44, !20, i64 48, !20, i64 56}
!40 = !{!29, !19, i64 0}
!41 = !{!39, !9, i64 0}
!42 = !{!39, !9, i64 4}
!43 = !{!39, !20, i64 48}
!44 = !{!39, !20, i64 8}
!45 = !{!39, !20, i64 16}
!46 = !{!39, !20, i64 32}
!47 = !{!39, !9, i64 40}
!48 = !{!39, !20, i64 56}
!49 = !{!39, !9, i64 44}
!50 = !{!51, !9, i64 0}
!51 = !{!"ir_elf_symbol", !9, i64 0, !10, i64 4, !10, i64 5, !32, i64 6, !20, i64 8, !20, i64 16}
!52 = !{!51, !32, i64 6}
!53 = !{!51, !10, i64 4}
!54 = distinct !{!54, !24}
!55 = !{!51, !20, i64 8}
!56 = !{!51, !20, i64 16}
!57 = !{!32, !32, i64 0}
!58 = !{!9, !9, i64 0}
!59 = !{!20, !20, i64 0}
!60 = distinct !{!60, !24}
!61 = distinct !{!61, !24}
!62 = !{!29, !20, i64 48}
!63 = !{!18, !19, i64 16}
!64 = !{!18, !20, i64 24}
!65 = !{!31, !20, i64 40}
!66 = !{!31, !32, i64 58}
!67 = !{!31, !32, i64 60}
!68 = distinct !{!68, !24}
end_hunk_0
