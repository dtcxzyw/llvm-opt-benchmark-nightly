Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/transcode?download=true
inline.NumInlined: 403
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@transcode_restartable0:bb.a
  %i.jh = getelementptr i8, ptr %4, i64 40
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !77
  %i.jj = getelementptr i8, ptr %i.jg, i64 %i.ji
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.jj, ptr noundef nonnull align 1 %.81137, i64 noundef %i.iy, i1 noundef false) #19
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  store ptr %.91101, ptr %0, align 8, !tbaa !31
  store ptr %.9, ptr %1, align 8, !tbaa !31
  %i.jk = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !77
  %i.jm = add i64 %i.jl, %i.iy
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !77
  br label %bb.ma

bb.bt:                                            ; preds = %bb.a
  br label %.loopexit1281, !llvm.loop !199

bb.bu:                                            ; preds = %.loopexit1281
  %i.jn = getelementptr i8, ptr %4, i64 24
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !231
  %i.jp = lshr i64 %i.jo, 8
  %i.jq = trunc i64 %i.jp to i8
  %i.jr = getelementptr i8, ptr %.9, i64 1
  store i8 %i.jq, ptr %.9, align 1, !tbaa !32
  br label %bb.bv

bb.bv:                                            ; preds = %bb.cb, %bb.bu
  %.pre-phi1324 = phi i64 [ %.pre1323, %bb.cb ], [ %i.is, %bb.bu ] ; 2 uses
  %.91138 = phi ptr [ %i.d, %bb.cb ], [ %.81137, %bb.bu ] ; 3 uses
  %.101102 = phi ptr [ %i.d, %bb.cb ], [ %.91101, %bb.bu ] ; 3 uses
  %.10 = phi ptr [ %i.e, %bb.cb ], [ %i.jr, %bb.bu ] ; 4 uses
  %i.js = ptrtoint ptr %.10 to i64
  %i.jt = sub i64 %.pre-phi1324, %i.js
  %i.ju = icmp slt i64 %i.jt, 1
  br i1 %i.ju, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  store i32 15, ptr %i.f, align 4, !tbaa !124
  %i.jv = ptrtoint ptr %.101102 to i64
  %i.jw = ptrtoint ptr %.91138 to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 3 uses
  %i.jy = icmp sgt i64 %i.jx, 0
  br i1 %i.jy, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.jz = load ptr, ptr %4, align 8, !tbaa !60
  %i.ka = getelementptr i8, ptr %i.jz, i64 60
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !65
  %i.kc = icmp slt i32 %i.kb, 9
  %i.kd = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.kc, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.kf = phi ptr [ %i.ke, %bb.by ], [ %i.kd, %bb.bx ]
  %i.kg = getelementptr i8, ptr %4, i64 40
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !77
  %i.ki = getelementptr i8, ptr %i.kf, i64 %i.kh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ki, ptr noundef nonnull align 1 %.91138, i64 noundef %i.jx, i1 noundef false) #19
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw
  store ptr %.101102, ptr %0, align 8, !tbaa !31
  store ptr %.10, ptr %1, align 8, !tbaa !31
  %i.kj = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !77
  %i.kl = add i64 %i.kk, %i.jx
  store i64 %i.kl, ptr %i.kj, align 8, !tbaa !77
  br label %bb.ma

bb.cb:                                            ; preds = %bb.a
  %.pre1323 = ptrtoint ptr %3 to i64
  br label %bb.bv, !llvm.loop !200

bb.cc:                                            ; preds = %bb.bv
  %i.km = getelementptr i8, ptr %4, i64 24
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !231
  %i.ko = lshr i64 %i.kn, 16
  %i.kp = trunc i64 %i.ko to i8
  %i.kq = getelementptr i8, ptr %.10, i64 1
  store i8 %i.kp, ptr %.10, align 1, !tbaa !32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cj, %bb.cc
  %.pre-phi1326 = phi i64 [ %.pre1325, %bb.cj ], [ %.pre-phi1324, %bb.cc ]
  %.101139 = phi ptr [ %i.d, %bb.cj ], [ %.91138, %bb.cc ] ; 2 uses
  %.111103 = phi ptr [ %i.d, %bb.cj ], [ %.101102, %bb.cc ] ; 3 uses
  %.11 = phi ptr [ %i.e, %bb.cj ], [ %i.kq, %bb.cc ] ; 4 uses
  %i.kr = ptrtoint ptr %.11 to i64
  %i.ks = sub i64 %.pre-phi1326, %i.kr
  %i.kt = icmp slt i64 %i.ks, 1
  br i1 %i.kt, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  store i32 16, ptr %i.f, align 4, !tbaa !124
  %i.ku = ptrtoint ptr %.111103 to i64
  %i.kv = ptrtoint ptr %.101139 to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 3 uses
  %i.kx = icmp sgt i64 %i.kw, 0
  br i1 %i.kx, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.ky = load ptr, ptr %4, align 8, !tbaa !60
  %i.kz = getelementptr i8, ptr %i.ky, i64 60
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !65
  %i.lb = icmp slt i32 %i.la, 9
  %i.lc = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.lb, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !32
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.le = phi ptr [ %i.ld, %bb.cg ], [ %i.lc, %bb.cf ]
  %i.lf = getelementptr i8, ptr %4, i64 40
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !77
  %i.lh = getelementptr i8, ptr %i.le, i64 %i.lg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.lh, ptr noundef nonnull align 1 %.101139, i64 noundef %i.kw, i1 noundef false) #19
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ce
  store ptr %.111103, ptr %0, align 8, !tbaa !31
  store ptr %.11, ptr %1, align 8, !tbaa !31
  %i.li = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !77
  %i.lk = add i64 %i.lj, %i.kw
  store i64 %i.lk, ptr %i.li, align 8, !tbaa !77
  br label %bb.ma

bb.cj:                                            ; preds = %bb.a
  %.pre1325 = ptrtoint ptr %3 to i64
  br label %bb.cd, !llvm.loop !201

bb.ck:                                            ; preds = %bb.cd
  %i.ll = getelementptr i8, ptr %4, i64 24
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !231
  %i.ln = lshr i64 %i.lm, 24
  %i.lo = trunc i64 %i.ln to i8
  %i.lp = getelementptr i8, ptr %.11, i64 1
  store i8 %i.lo, ptr %.11, align 1, !tbaa !32
  br label %.loopexit

.loopexit1282:                                    ; preds = %bb.l, %bb.cq
  %.111140 = phi ptr [ %i.d, %bb.cq ], [ %.11130, %bb.l ] ; 3 uses
  %.121104 = phi ptr [ %i.d, %bb.cq ], [ %.21094, %bb.l ] ; 3 uses
  %.12 = phi ptr [ %i.e, %bb.cq ], [ %.2, %bb.l ] ; 4 uses
  %i.lq = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.lr = ptrtoint ptr %.12 to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = icmp slt i64 %i.ls, 1
  br i1 %i.lt, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %.loopexit1282
  store i32 12, ptr %i.f, align 4, !tbaa !124
  %i.lu = ptrtoint ptr %.121104 to i64
  %i.lv = ptrtoint ptr %.111140 to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 3 uses
  %i.lx = icmp sgt i64 %i.lw, 0
  br i1 %i.lx, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.ly = load ptr, ptr %4, align 8, !tbaa !60
  %i.lz = getelementptr i8, ptr %i.ly, i64 60
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !65
  %i.mb = icmp slt i32 %i.ma, 9
  %i.mc = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.mb, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !32
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.me = phi ptr [ %i.md, %bb.cn ], [ %i.mc, %bb.cm ]
  %i.mf = getelementptr i8, ptr %4, i64 40
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !77
  %i.mh = getelementptr i8, ptr %i.me, i64 %i.mg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.mh, ptr noundef nonnull align 1 %.111140, i64 noundef %i.lw, i1 noundef false) #19
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl
  store ptr %.121104, ptr %0, align 8, !tbaa !31
  store ptr %.12, ptr %1, align 8, !tbaa !31
  %i.mi = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !77
  %i.mk = add i64 %i.mj, %i.lw
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !77
  br label %bb.ma

bb.cq:                                            ; preds = %bb.a
  br label %.loopexit1282, !llvm.loop !202

bb.cr:                                            ; preds = %.loopexit1282
  %i.ml = getelementptr i8, ptr %4, i64 24
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !231
  %6 = lshr i64 %i.mm, 5
  %i.mn = trunc i64 %6 to i8
  %7 = and i8 %i.mn, 7
  %i.mo = or disjoint i8 %7, -16
  %i.mp = getelementptr i8, ptr %.12, i64 1
  store i8 %i.mo, ptr %.12, align 1, !tbaa !32
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cy, %bb.cr
  %.pre-phi1328 = phi i64 [ %.pre1327, %bb.cy ], [ %i.lq, %bb.cr ] ; 2 uses
  %.121141 = phi ptr [ %i.d, %bb.cy ], [ %.111140, %bb.cr ] ; 3 uses
  %.131105 = phi ptr [ %i.d, %bb.cy ], [ %.121104, %bb.cr ] ; 3 uses
  %.13 = phi ptr [ %i.e, %bb.cy ], [ %i.mp, %bb.cr ] ; 4 uses
  %i.mq = ptrtoint ptr %.13 to i64
  %i.mr = sub i64 %.pre-phi1328, %i.mq
  %i.ms = icmp slt i64 %i.mr, 1
  br i1 %i.ms, label %bb.ct, label %bb.cz

bb.ct:                                            ; preds = %bb.cs
  store i32 17, ptr %i.f, align 4, !tbaa !124
  %i.mt = ptrtoint ptr %.131105 to i64
  %i.mu = ptrtoint ptr %.121141 to i64
  %i.mv = sub i64 %i.mt, %i.mu                    ; 3 uses
  %i.mw = icmp sgt i64 %i.mv, 0
  br i1 %i.mw, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.mx = load ptr, ptr %4, align 8, !tbaa !60
  %i.my = getelementptr i8, ptr %i.mx, i64 60
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !65
  %i.na = icmp slt i32 %i.mz, 9
  %i.nb = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.na, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !32
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %i.nd = phi ptr [ %i.nc, %bb.cv ], [ %i.nb, %bb.cu ]
  %i.ne = getelementptr i8, ptr %4, i64 40
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !77
  %i.ng = getelementptr i8, ptr %i.nd, i64 %i.nf
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ng, ptr noundef nonnull align 1 %.121141, i64 noundef %i.mv, i1 noundef false) #19
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ct
  store ptr %.131105, ptr %0, align 8, !tbaa !31
  store ptr %.13, ptr %1, align 8, !tbaa !31
  %i.nh = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !77
  %i.nj = add i64 %i.ni, %i.mv
  store i64 %i.nj, ptr %i.nh, align 8, !tbaa !77
  br label %bb.ma

bb.cy:                                            ; preds = %bb.a
  %.pre1327 = ptrtoint ptr %3 to i64
  br label %bb.cs, !llvm.loop !203

bb.cz:                                            ; preds = %bb.cs
  %i.nk = getelementptr i8, ptr %4, i64 24
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !231
  %i.nm = lshr i64 %i.nl, 8
  %i.nn = trunc i64 %i.nm to i8
  %i.no = getelementptr i8, ptr %.13, i64 1
  store i8 %i.nn, ptr %.13, align 1, !tbaa !32
  br label %bb.da

bb.da:                                            ; preds = %bb.dg, %bb.cz
  %.pre-phi1330 = phi i64 [ %.pre1329, %bb.dg ], [ %.pre-phi1328, %bb.cz ] ; 2 uses
  %.131142 = phi ptr [ %i.d, %bb.dg ], [ %.121141, %bb.cz ] ; 3 uses
  %.141106 = phi ptr [ %i.d, %bb.dg ], [ %.131105, %bb.cz ] ; 3 uses
  %.14 = phi ptr [ %i.e, %bb.dg ], [ %i.no, %bb.cz ] ; 4 uses
  %i.np = ptrtoint ptr %.14 to i64
  %i.nq = sub i64 %.pre-phi1330, %i.np
  %i.nr = icmp slt i64 %i.nq, 1
  br i1 %i.nr, label %bb.db, label %bb.dh

bb.db:                                            ; preds = %bb.da
  store i32 18, ptr %i.f, align 4, !tbaa !124
  %i.ns = ptrtoint ptr %.141106 to i64
  %i.nt = ptrtoint ptr %.131142 to i64
  %i.nu = sub i64 %i.ns, %i.nt                    ; 3 uses
  %i.nv = icmp sgt i64 %i.nu, 0
  br i1 %i.nv, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.nw = load ptr, ptr %4, align 8, !tbaa !60
  %i.nx = getelementptr i8, ptr %i.nw, i64 60
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !65
  %i.nz = icmp slt i32 %i.ny, 9
  %i.oa = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.nz, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !32
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.oc = phi ptr [ %i.ob, %bb.dd ], [ %i.oa, %bb.dc ]
  %i.od = getelementptr i8, ptr %4, i64 40
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !77
  %i.of = getelementptr i8, ptr %i.oc, i64 %i.oe
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.of, ptr noundef nonnull align 1 %.131142, i64 noundef %i.nu, i1 noundef false) #19
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.db
  store ptr %.141106, ptr %0, align 8, !tbaa !31
  store ptr %.14, ptr %1, align 8, !tbaa !31
  %i.og = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !77
  %i.oi = add i64 %i.oh, %i.nu
  store i64 %i.oi, ptr %i.og, align 8, !tbaa !77
  br label %bb.ma

bb.dg:                                            ; preds = %bb.a
  %.pre1329 = ptrtoint ptr %3 to i64
  br label %bb.da, !llvm.loop !204

bb.dh:                                            ; preds = %bb.da
  %i.oj = getelementptr i8, ptr %4, i64 24
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !231
  %i.ol = lshr i64 %i.ok, 16
  %i.om = trunc i64 %i.ol to i8
  %i.on = getelementptr i8, ptr %.14, i64 1
  store i8 %i.om, ptr %.14, align 1, !tbaa !32
  br label %bb.di

bb.di:                                            ; preds = %bb.do, %bb.dh
  %.pre-phi1332 = phi i64 [ %.pre1331, %bb.do ], [ %.pre-phi1330, %bb.dh ]
  %.141143 = phi ptr [ %i.d, %bb.do ], [ %.131142, %bb.dh ] ; 2 uses
  %.151107 = phi ptr [ %i.d, %bb.do ], [ %.141106, %bb.dh ] ; 3 uses
  %.15 = phi ptr [ %i.e, %bb.do ], [ %i.on, %bb.dh ] ; 4 uses
  %i.oo = ptrtoint ptr %.15 to i64
  %i.op = sub i64 %.pre-phi1332, %i.oo
  %i.oq = icmp slt i64 %i.op, 1
  br i1 %i.oq, label %bb.dj, label %bb.dp

bb.dj:                                            ; preds = %bb.di
  store i32 19, ptr %i.f, align 4, !tbaa !124
  %i.or = ptrtoint ptr %.151107 to i64
  %i.os = ptrtoint ptr %.141143 to i64
  %i.ot = sub i64 %i.or, %i.os                    ; 3 uses
  %i.ou = icmp sgt i64 %i.ot, 0
  br i1 %i.ou, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.ov = load ptr, ptr %4, align 8, !tbaa !60
  %i.ow = getelementptr i8, ptr %i.ov, i64 60
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !65
  %i.oy = icmp slt i32 %i.ox, 9
  %i.oz = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.oy, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.pb = phi ptr [ %i.pa, %bb.dl ], [ %i.oz, %bb.dk ]
  %i.pc = getelementptr i8, ptr %4, i64 40
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !77
  %i.pe = getelementptr i8, ptr %i.pb, i64 %i.pd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.pe, ptr noundef nonnull align 1 %.141143, i64 noundef %i.ot, i1 noundef false) #19
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dj
  store ptr %.151107, ptr %0, align 8, !tbaa !31
  store ptr %.15, ptr %1, align 8, !tbaa !31
  %i.pf = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !77
  %i.ph = add i64 %i.pg, %i.ot
  store i64 %i.ph, ptr %i.pf, align 8, !tbaa !77
  br label %bb.ma

bb.do:                                            ; preds = %bb.a
  %.pre1331 = ptrtoint ptr %3 to i64
  br label %bb.di, !llvm.loop !205

bb.dp:                                            ; preds = %bb.di
  %i.pi = getelementptr i8, ptr %4, i64 24
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !231
  %i.pk = lshr i64 %i.pj, 24
  %i.pl = trunc i64 %i.pk to i8
  %i.pm = getelementptr i8, ptr %.15, i64 1
  store i8 %i.pl, ptr %.15, align 1, !tbaa !32
  br label %.loopexit

.loopexit1283:                                    ; preds = %bb.l, %bb.dv
  %.151144 = phi ptr [ %i.d, %bb.dv ], [ %.11130, %bb.l ] ; 3 uses
  %.161108 = phi ptr [ %i.d, %bb.dv ], [ %.21094, %bb.l ] ; 3 uses
  %.16 = phi ptr [ %i.e, %bb.dv ], [ %.2, %bb.l ] ; 4 uses
  %i.pn = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.po = ptrtoint ptr %.16 to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = icmp slt i64 %i.pp, 1
  br i1 %i.pq, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %.loopexit1283
  store i32 29, ptr %i.f, align 4, !tbaa !124
  %i.pr = ptrtoint ptr %.161108 to i64
  %i.ps = ptrtoint ptr %.151144 to i64
  %i.pt = sub i64 %i.pr, %i.ps                    ; 3 uses
  %i.pu = icmp sgt i64 %i.pt, 0
end_hunk_0
begin_hunk_1_@transcode_restartable0:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.qe, ptr noundef nonnull align 1 %.151144, i64 noundef %i.pt, i1 noundef false) #19
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dq
  store ptr %.161108, ptr %0, align 8, !tbaa !31
  store ptr %.16, ptr %1, align 8, !tbaa !31
  %i.qf = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !77
  %i.qh = add i64 %i.qg, %i.pt
  store i64 %i.qh, ptr %i.qf, align 8, !tbaa !77
  br label %bb.ma

bb.dv:                                            ; preds = %bb.a
  br label %.loopexit1283, !llvm.loop !206

bb.dw:                                            ; preds = %.loopexit1283
  %i.qi = getelementptr i8, ptr %4, i64 24
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !231
  %i.qk = lshr i64 %i.qj, 8
  %i.ql = trunc i64 %i.qk to i8
  %i.qm = getelementptr i8, ptr %.16, i64 1
  store i8 %i.ql, ptr %.16, align 1, !tbaa !32
  br label %bb.dx

bb.dx:                                            ; preds = %bb.ed, %bb.dw
  %.pre-phi1334 = phi i64 [ %.pre1333, %bb.ed ], [ %i.pn, %bb.dw ] ; 2 uses
  %.161145 = phi ptr [ %i.d, %bb.ed ], [ %.151144, %bb.dw ] ; 3 uses
  %.171109 = phi ptr [ %i.d, %bb.ed ], [ %.161108, %bb.dw ] ; 3 uses
  %.17 = phi ptr [ %i.e, %bb.ed ], [ %i.qm, %bb.dw ] ; 4 uses
  %i.qn = ptrtoint ptr %.17 to i64
  %i.qo = sub i64 %.pre-phi1334, %i.qn
  %i.qp = icmp slt i64 %i.qo, 1
  br i1 %i.qp, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %bb.dx
  store i32 30, ptr %i.f, align 4, !tbaa !124
  %i.qq = ptrtoint ptr %.171109 to i64
  %i.qr = ptrtoint ptr %.161145 to i64
  %i.qs = sub i64 %i.qq, %i.qr                    ; 3 uses
  %i.qt = icmp sgt i64 %i.qs, 0
  br i1 %i.qt, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.qu = load ptr, ptr %4, align 8, !tbaa !60
  %i.qv = getelementptr i8, ptr %i.qu, i64 60
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !65
  %i.qx = icmp slt i32 %i.qw, 9
  %i.qy = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.qx, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %i.ra = phi ptr [ %i.qz, %bb.ea ], [ %i.qy, %bb.dz ]
  %i.rb = getelementptr i8, ptr %4, i64 40
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !77
  %i.rd = getelementptr i8, ptr %i.ra, i64 %i.rc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.rd, ptr noundef nonnull align 1 %.161145, i64 noundef %i.qs, i1 noundef false) #19
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dy
  store ptr %.171109, ptr %0, align 8, !tbaa !31
  store ptr %.17, ptr %1, align 8, !tbaa !31
  %i.re = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !77
  %i.rg = add i64 %i.rf, %i.qs
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !77
  br label %bb.ma

bb.ed:                                            ; preds = %bb.a
  %.pre1333 = ptrtoint ptr %3 to i64
  br label %bb.dx, !llvm.loop !207

bb.ee:                                            ; preds = %bb.dx
  %i.rh = getelementptr i8, ptr %4, i64 24
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !231
  %i.rj = lshr i64 %i.ri, 24
  %i.rk = trunc i64 %i.rj to i8
  %i.rl = and i8 %i.rk, 15
  %i.rm = or disjoint i8 %i.rl, 48
  %i.rn = getelementptr i8, ptr %.17, i64 1
  store i8 %i.rm, ptr %.17, align 1, !tbaa !32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.el, %bb.ee
  %.pre-phi1336 = phi i64 [ %.pre1335, %bb.el ], [ %.pre-phi1334, %bb.ee ] ; 2 uses
  %.171146 = phi ptr [ %i.d, %bb.el ], [ %.161145, %bb.ee ] ; 3 uses
  %.181110 = phi ptr [ %i.d, %bb.el ], [ %.171109, %bb.ee ] ; 3 uses
  %.18 = phi ptr [ %i.e, %bb.el ], [ %i.rn, %bb.ee ] ; 4 uses
  %i.ro = ptrtoint ptr %.18 to i64
  %i.rp = sub i64 %.pre-phi1336, %i.ro
  %i.rq = icmp slt i64 %i.rp, 1
  br i1 %i.rq, label %bb.eg, label %bb.em

bb.eg:                                            ; preds = %bb.ef
  store i32 31, ptr %i.f, align 4, !tbaa !124
  %i.rr = ptrtoint ptr %.181110 to i64
  %i.rs = ptrtoint ptr %.171146 to i64
  %i.rt = sub i64 %i.rr, %i.rs                    ; 3 uses
  %i.ru = icmp sgt i64 %i.rt, 0
  br i1 %i.ru, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.rv = load ptr, ptr %4, align 8, !tbaa !60
  %i.rw = getelementptr i8, ptr %i.rv, i64 60
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !65
  %i.ry = icmp slt i32 %i.rx, 9
  %i.rz = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.ry, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !32
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %i.sb = phi ptr [ %i.sa, %bb.ei ], [ %i.rz, %bb.eh ]
  %i.sc = getelementptr i8, ptr %4, i64 40
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !77
  %i.se = getelementptr i8, ptr %i.sb, i64 %i.sd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.se, ptr noundef nonnull align 1 %.171146, i64 noundef %i.rt, i1 noundef false) #19
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eg
  store ptr %.181110, ptr %0, align 8, !tbaa !31
  store ptr %.18, ptr %1, align 8, !tbaa !31
  %i.sf = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !77
  %i.sh = add i64 %i.sg, %i.rt
  store i64 %i.sh, ptr %i.sf, align 8, !tbaa !77
  br label %bb.ma

bb.el:                                            ; preds = %bb.a
  %.pre1335 = ptrtoint ptr %3 to i64
  br label %bb.ef, !llvm.loop !208

bb.em:                                            ; preds = %bb.ef
  %i.si = getelementptr i8, ptr %4, i64 24
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !231
  %i.sk = lshr i64 %i.sj, 16
  %i.sl = trunc i64 %i.sk to i8
  %i.sm = getelementptr i8, ptr %.18, i64 1
  store i8 %i.sl, ptr %.18, align 1, !tbaa !32
  br label %bb.en

bb.en:                                            ; preds = %bb.et, %bb.em
  %.pre-phi1338 = phi i64 [ %.pre1337, %bb.et ], [ %.pre-phi1336, %bb.em ]
  %.181147 = phi ptr [ %i.d, %bb.et ], [ %.171146, %bb.em ] ; 2 uses
  %.191111 = phi ptr [ %i.d, %bb.et ], [ %.181110, %bb.em ] ; 3 uses
  %.19 = phi ptr [ %i.e, %bb.et ], [ %i.sm, %bb.em ] ; 4 uses
  %i.sn = ptrtoint ptr %.19 to i64
  %i.so = sub i64 %.pre-phi1338, %i.sn
  %i.sp = icmp slt i64 %i.so, 1
  br i1 %i.sp, label %bb.eo, label %bb.eu

bb.eo:                                            ; preds = %bb.en
  store i32 32, ptr %i.f, align 4, !tbaa !124
  %i.sq = ptrtoint ptr %.191111 to i64
  %i.sr = ptrtoint ptr %.181147 to i64
  %i.ss = sub i64 %i.sq, %i.sr                    ; 3 uses
  %i.st = icmp sgt i64 %i.ss, 0
  br i1 %i.st, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.su = load ptr, ptr %4, align 8, !tbaa !60
  %i.sv = getelementptr i8, ptr %i.su, i64 60
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !65
  %i.sx = icmp slt i32 %i.sw, 9
  %i.sy = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.sx, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !32
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %i.ta = phi ptr [ %i.sz, %bb.eq ], [ %i.sy, %bb.ep ]
  %i.tb = getelementptr i8, ptr %4, i64 40
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !77
  %i.td = getelementptr i8, ptr %i.ta, i64 %i.tc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.td, ptr noundef nonnull align 1 %.181147, i64 noundef %i.ss, i1 noundef false) #19
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eo
  store ptr %.191111, ptr %0, align 8, !tbaa !31
  store ptr %.19, ptr %1, align 8, !tbaa !31
  %i.te = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !77
  %i.tg = add i64 %i.tf, %i.ss
  store i64 %i.tg, ptr %i.te, align 8, !tbaa !77
  br label %bb.ma

bb.et:                                            ; preds = %bb.a
  %.pre1337 = ptrtoint ptr %3 to i64
  br label %bb.en, !llvm.loop !209

bb.eu:                                            ; preds = %bb.en
  %i.th = getelementptr i8, ptr %4, i64 24
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !231
  %8 = lshr i64 %i.ti, 28
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 15
  %i.tj = or disjoint i8 %10, 48
  %i.tk = getelementptr i8, ptr %.19, i64 1
  store i8 %i.tj, ptr %.19, align 1, !tbaa !32
  br label %.loopexit

bb.ev:                                            ; preds = %bb.l
  %i.tl = getelementptr i8, ptr %4, i64 36
  store i32 0, ptr %i.tl, align 4, !tbaa !234
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fe, %bb.ev
  %i.tm = phi i64 [ %i.bg, %bb.ev ], [ %.pre1316, %bb.fe ]
  %i.tn = phi i32 [ 0, %bb.ev ], [ %i.vf, %bb.fe ]
  %.191148 = phi ptr [ %.11130, %bb.ev ], [ %.201149, %bb.fe ]
  %.201112 = phi ptr [ %.21094, %bb.ev ], [ %.211113, %bb.fe ] ; 2 uses
  %.20 = phi ptr [ %.2, %bb.ev ], [ %i.vd, %bb.fe ] ; 2 uses
  %i.to = getelementptr i8, ptr %i.a, i64 24
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !229
  %i.tq = lshr i64 %i.tm, 6
  %i.tr = getelementptr i8, ptr %i.tp, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !32
  %i.tt = zext i8 %i.ts to i32
  %i.tu = add nuw nsw i32 %i.tt, 4
  %i.tv = icmp ult i32 %i.tn, %i.tu
  br i1 %i.tv, label %bb.ex, label %.loopexit

bb.ex:                                            ; preds = %bb.ew, %bb.fd
  %.201149 = phi ptr [ %.191148, %bb.ew ], [ %i.d, %bb.fd ] ; 3 uses
  %.211113 = phi ptr [ %.201112, %bb.ew ], [ %i.d, %bb.fd ] ; 3 uses
  %.21 = phi ptr [ %.20, %bb.ew ], [ %i.e, %bb.fd ] ; 4 uses
  %i.tw = ptrtoint ptr %3 to i64
  %i.tx = ptrtoint ptr %.21 to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = icmp slt i64 %i.ty, 1
  br i1 %i.tz, label %bb.ey, label %bb.fe

bb.ey:                                            ; preds = %bb.ex
  store i32 28, ptr %i.f, align 4, !tbaa !124
  %i.ua = ptrtoint ptr %.211113 to i64
  %i.ub = ptrtoint ptr %.201149 to i64
  %i.uc = sub i64 %i.ua, %i.ub                    ; 3 uses
  %i.ud = icmp sgt i64 %i.uc, 0
  br i1 %i.ud, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  %i.ue = load ptr, ptr %4, align 8, !tbaa !60
  %i.uf = getelementptr i8, ptr %i.ue, i64 60
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !65
  %i.uh = icmp slt i32 %i.ug, 9
  %i.ui = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.uh, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !32
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.uk = phi ptr [ %i.uj, %bb.fa ], [ %i.ui, %bb.ez ]
  %i.ul = getelementptr i8, ptr %4, i64 40
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !77
  %i.un = getelementptr i8, ptr %i.uk, i64 %i.um
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.un, ptr noundef nonnull align 1 %.201149, i64 noundef %i.uc, i1 noundef false) #19
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ey
  store ptr %.211113, ptr %0, align 8, !tbaa !31
  store ptr %.21, ptr %1, align 8, !tbaa !31
  %i.uo = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !77
  %i.uq = add i64 %i.up, %i.uc
  store i64 %i.uq, ptr %i.uo, align 8, !tbaa !77
  br label %bb.ma

bb.fd:                                            ; preds = %bb.a
  br label %bb.ex, !llvm.loop !210

bb.fe:                                            ; preds = %bb.ex
  %i.ur = getelementptr i8, ptr %i.a, i64 24
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !229
  %i.ut = getelementptr i8, ptr %4, i64 24        ; 2 uses
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !231
  %i.uv = lshr i64 %i.uu, 6
  %i.uw = getelementptr i8, ptr %i.us, i64 %i.uv
  %i.ux = getelementptr i8, ptr %4, i64 36        ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !234
  %i.uz = add i32 %i.uy, 1
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr i8, ptr %i.uw, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !32
  %i.vd = getelementptr i8, ptr %.21, i64 1
  store i8 %i.vc, ptr %.21, align 1, !tbaa !32
  %i.ve = load i32, ptr %i.ux, align 4, !tbaa !234
  %i.vf = add i32 %i.ve, 1                        ; 2 uses
  store i32 %i.vf, ptr %i.ux, align 4, !tbaa !234
  %.pre1316 = load i64, ptr %i.ut, align 8, !tbaa !231
  br label %bb.ew, !llvm.loop !211

bb.ff:                                            ; preds = %bb.l
  %i.vg = load ptr, ptr %i.bf, align 8, !tbaa !235
  %i.vh = load ptr, ptr %4, align 8, !tbaa !60
  %i.vi = getelementptr i8, ptr %i.vh, i64 72
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !64
  %i.vk = icmp ult i64 %i.vj, 9
  br i1 %i.vk, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.vl = load ptr, ptr %i.be, align 8, !tbaa !32
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg
  %i.vm = phi ptr [ %i.vl, %bb.fg ], [ %i.be, %bb.ff ]
  %i.vn = tail call i64 %i.vg(ptr noundef %i.vm, i64 noundef %i.bg) #19
  br label %.backedge

.backedge:                                        ; preds = %bb.fh, %bb.fq
  %storemerge = phi i64 [ %i.wp, %bb.fq ], [ %i.vn, %bb.fh ] ; 2 uses
  store i64 %storemerge, ptr %i.ax, align 8, !tbaa !231
  br label %bb.l

bb.fi:                                            ; preds = %bb.l
  %i.vo = load ptr, ptr %0, align 8, !tbaa !31
  %i.vp = ptrtoint ptr %i.vo to i64
  %i.vq = sub i64 %i.ay, %i.vp
  %i.vr = load i64, ptr %i.az, align 8, !tbaa !77 ; 3 uses
  %i.vs = icmp slt i64 %i.vq, %i.vr
  br i1 %i.vs, label %bb.fj, label %bb.fo

bb.fj:                                            ; preds = %bb.fi
  %i.vt = load ptr, ptr %4, align 8, !tbaa !60    ; 2 uses
  %i.vu = getelementptr i8, ptr %i.vt, i64 60
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !65 ; 2 uses
  %i.vw = icmp slt i32 %i.vv, 9
  br i1 %i.vw, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.vx = load ptr, ptr %i.ba, align 8, !tbaa !32
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.vy = phi ptr [ %i.vx, %bb.fk ], [ %i.ba, %bb.fj ]
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.vz = getelementptr i8, ptr %i.vy, i64 %i.vr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.vz, ptr noundef nonnull readonly align 1 %.11130, i64 noundef range(i64 1, 0) %i.bc, i1 noundef false) #19
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !60  ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 60
  %.pre21.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !65
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.fm, %bb.fl
  %i.wa = phi ptr [ %i.vt, %bb.fl ], [ %.pre.i, %bb.fm ] ; 2 uses
  %i.wb = phi i32 [ %i.vv, %bb.fl ], [ %.pre21.i, %bb.fm ]
  %i.wc = icmp slt i32 %i.wb, 9
  br i1 %i.wc, label %transcode_char_start.exit, label %bb.fn

bb.fn:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  %i.wd = load ptr, ptr %i.ba, align 8, !tbaa !32
  br label %transcode_char_start.exit

bb.fo:                                            ; preds = %bb.fi
  %i.we = sub i64 0, %i.vr
  %i.wf = getelementptr i8, ptr %.11130, i64 %i.we
  %.pre1314 = load ptr, ptr %4, align 8, !tbaa !60
  br label %transcode_char_start.exit

transcode_char_start.exit:                        ; preds = %ruby_nonempty_memcpy.exit.i, %bb.fn, %bb.fo
  %i.wg = phi ptr [ %.pre1314, %bb.fo ], [ %i.wa, %bb.fn ], [ %i.wa, %ruby_nonempty_memcpy.exit.i ]
  %.0.i = phi ptr [ %i.wf, %bb.fo ], [ %i.wd, %bb.fn ], [ %i.ba, %ruby_nonempty_memcpy.exit.i ]
  %i.wh = load i64, ptr %i.az, align 8, !tbaa !77
  %i.wi = add i64 %i.bc, %i.wh
  %i.wj = load ptr, ptr %i.bd, align 8, !tbaa !236
  %i.wk = getelementptr i8, ptr %i.wg, i64 72
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !64
  %i.wm = icmp ult i64 %i.wl, 9
  br i1 %i.wm, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %transcode_char_start.exit
  %i.wn = load ptr, ptr %i.be, align 8, !tbaa !32
  br label %bb.fq

bb.fq:                                            ; preds = %transcode_char_start.exit, %bb.fp
  %i.wo = phi ptr [ %i.wn, %bb.fp ], [ %i.be, %transcode_char_start.exit ]
  %i.wp = tail call i64 %i.wj(ptr noundef %i.wo, ptr noundef %.0.i, i64 noundef %i.wi) #19
  br label %.backedge

.loopexit1284:                                    ; preds = %bb.l, %bb.fw
  %.211150 = phi ptr [ %i.d, %bb.fw ], [ %.11130, %bb.l ] ; 3 uses
  %.221114 = phi ptr [ %i.d, %bb.fw ], [ %.21094, %bb.l ] ; 4 uses
  %.22 = phi ptr [ %i.e, %bb.fw ], [ %.2, %bb.l ] ; 5 uses
  %i.wq = ptrtoint ptr %3 to i64
  %i.wr = ptrtoint ptr %.22 to i64
  %i.ws = sub i64 %i.wq, %i.wr                    ; 3 uses
  %i.wt = icmp slt i64 %i.ws, 1
  br i1 %i.wt, label %bb.fr, label %bb.fx

bb.fr:                                            ; preds = %.loopexit1284
  store i32 13, ptr %i.f, align 4, !tbaa !124
  %i.wu = ptrtoint ptr %.221114 to i64
  %i.wv = ptrtoint ptr %.211150 to i64
  %i.ww = sub i64 %i.wu, %i.wv                    ; 3 uses
end_hunk_1
