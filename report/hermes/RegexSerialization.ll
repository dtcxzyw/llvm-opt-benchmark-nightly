Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegexSerialization?download=true
inline.NumInlined: 2396
inline.NumDeleted: 1188
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !248
  %i.kw = zext i8 %i.kv to i64
  %i.kx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i5.i, i64 noundef %i.kw) #19 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !22
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 24 ; 3 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !23 ; 2 uses
  %i.lc = icmp eq ptr %i.kz, %i.lb
  br i1 %i.lc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6.i
  %i.ld = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.kx, ptr noundef nonnull @.str.45, i64 noundef 1) #19
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex15AlternationInsnERN4llvh11raw_ostreamE.exit

bb.bh:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6.i
  store i8 44, ptr %i.lb, align 1
  %i.le = load ptr, ptr %i.la, align 8, !tbaa !23
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  store ptr %i.lf, ptr %i.la, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex15AlternationInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex15AlternationInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.bg, %bb.bh
  %.0.i.i8.i = phi ptr [ %i.ld, %bb.bg ], [ %i.kx, %bb.bh ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !249
  %i.li = zext i8 %i.lh to i64
  %i.lj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i8.i, i64 noundef %i.li) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.lk = add i32 %.0212, 7
  br label %bb.dc

bb.bi:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.ll = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.lm = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = icmp ult i64 %i.lp, 8
  br i1 %i.lq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.46, i64 noundef 8) #19
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex10Jump32InsnERN4llvh11raw_ostreamE.exit

bb.bk:                                            ; preds = %bb.bi
  store i64 2322223754373854538, ptr %i.lm, align 1
  %i.ls = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.lt, ptr %i.o, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex10Jump32InsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex10Jump32InsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.bj, %bb.bk
  %.0.i.i.i187 = phi ptr [ %i.lr, %bb.bj ], [ %2, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.lv = load i32, ptr %i.lu, align 1, !tbaa !251
  %i.lw = zext i32 %i.lv to i64
  store i64 %i.lw, ptr %9, align 8, !tbaa !27, !alias.scope !252
  store i64 0, ptr %i.ar, align 8, !tbaa !28, !alias.scope !252
  store i32 4, ptr %i.as, align 8, !tbaa !29, !alias.scope !252
  store i8 1, ptr %i.at, align 4, !tbaa !30, !alias.scope !252
  store i8 0, ptr %i.au, align 1, !tbaa !31, !alias.scope !252
  store i8 1, ptr %i.av, align 2, !tbaa !32, !alias.scope !252
  %i.lx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i187, ptr noundef nonnull align 8 dereferenceable(23) %9) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ly = add i32 %.0212, 5
  br label %bb.dc

bb.bl:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  call fastcc void @_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamE(ptr noundef nonnull %i.dp, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %i.lz = getelementptr i8, ptr %i.dp, i64 1
  %.val164 = load i32, ptr %i.lz, align 1, !tbaa !47
  %i.ma = shl i32 %.val164, 3
  %i.mb = add i32 %.0212, 6
  %i.mc = add i32 %i.mb, %i.ma
  br label %bb.dc

bb.bm:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  call fastcc void @_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamE(ptr noundef nonnull %i.dp, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %i.md = getelementptr i8, ptr %i.dp, i64 1
  %.val165 = load i32, ptr %i.md, align 1, !tbaa !47
  %i.me = shl i32 %.val165, 3
  %i.mf = add i32 %.0212, 6
  %i.mg = add i32 %i.mf, %i.me
  br label %bb.dc

bb.bn:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.mh = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.mi = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %i.mm = icmp ult i64 %i.ml, 26
  br i1 %i.mm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.mn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.54, i64 noundef 26) #19
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex28BeginMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.mi, ptr noundef nonnull align 1 dereferenceable(26) @.str.54, i64 26, i1 false)
  %i.mo = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 26
  store ptr %i.mp, ptr %i.o, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex28BeginMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex28BeginMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.bo, %bb.bp
  %.0.i.i.i189 = phi ptr [ %i.mn, %bb.bo ], [ %2, %bb.bp ]
  %i.mq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.mr = load i16, ptr %i.mq, align 1, !tbaa !254
  %i.ms = zext i16 %i.mr to i64
  %i.mt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i189, i64 noundef %i.ms) #19 ; 0 uses
  %i.mu = add i32 %.0212, 3
  br label %bb.dc

bb.bq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.mv = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.mw = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = icmp ult i64 %i.mz, 24
  br i1 %i.na, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.55, i64 noundef 24) #19
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex26EndMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.mw, ptr noundef nonnull align 1 dereferenceable(24) @.str.55, i64 24, i1 false)
  %i.nc = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  store ptr %i.nd, ptr %i.o, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex26EndMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex26EndMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.br, %bb.bs
  %.0.i.i.i191 = phi ptr [ %i.nb, %bb.br ], [ %2, %bb.bs ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.nf = load i16, ptr %i.ne, align 1, !tbaa !256
  %i.ng = zext i16 %i.nf to i64
  %i.nh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i191, i64 noundef %i.ng) #19 ; 0 uses
  %i.ni = add i32 %.0212, 3
  br label %bb.dc

bb.bt:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.nj = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.nk = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = icmp ult i64 %i.nn, 13
  br i1 %i.no, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.np = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.56, i64 noundef 13) #19
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BackRefInsnERN4llvh11raw_ostreamE.exit

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.nk, ptr noundef nonnull align 1 dereferenceable(13) @.str.56, i64 13, i1 false)
  %i.nq = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 13
  store ptr %i.nr, ptr %i.o, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BackRefInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BackRefInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.bu, %bb.bv
  %.0.i.i.i193 = phi ptr [ %i.np, %bb.bu ], [ %2, %bb.bv ]
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.nt = load i16, ptr %i.ns, align 1, !tbaa !258
  %i.nu = zext i16 %i.nt to i64
  %i.nv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i193, i64 noundef %i.nu) #19 ; 0 uses
  %i.nw = add i32 %.0212, 3
  br label %bb.dc

bb.bw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.nx = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.ny = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = icmp ult i64 %i.ob, 14
  br i1 %i.oc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.od = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.57, i64 noundef 14) #19 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i194

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ny, ptr noundef nonnull align 1 dereferenceable(14) @.str.57, i64 14, i1 false)
  %i.oe = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 14 ; 2 uses
  store ptr %i.of, ptr %i.o, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i194

_ZN4llvh11raw_ostreamlsEPKc.exit.i194:            ; preds = %bb.by, %bb.bx
  %i.og = phi ptr [ %.pre.i, %bb.bx ], [ %i.of, %bb.by ] ; 2 uses
  %.0.i.i.i195 = phi ptr [ %i.od, %bb.bx ], [ %2, %bb.by ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !260, !range !48, !noundef !49
  %i.oj = trunc nuw i8 %i.oi to i1                ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i.i.i195, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !22
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = ptrtoint ptr %i.og to i64
  %i.oo = sub i64 %i.om, %i.on
  %i.op = icmp ult i64 %i.oo, 2
  br i1 %i.op, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i194
  %.str.58..str.59.i = select i1 %i.oj, ptr @.str.58, ptr @.str.59
  %i.oq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i195, ptr noundef nonnull %.str.58..str.59.i, i64 noundef 2) #19 ; 0 uses
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex16WordBoundaryInsnERN4llvh11raw_ostreamE.exit

bb.ca:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i194
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i.i.i195, i64 24 ; 2 uses
  %25 = select i1 %i.oj, i16 16988, i16 25180
  store i16 %25, ptr %i.og, align 1
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !23
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  store ptr %i.ot, ptr %i.or, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex16WordBoundaryInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex16WordBoundaryInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.bz, %bb.ca
  %i.ou = add i32 %.0212, 2
  br label %bb.dc

bb.cb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.ov = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.ow = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = icmp ult i64 %i.oz, 12
  br i1 %i.pa, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.60, i64 noundef 12) #19 ; 2 uses
  %.phi.trans.insert.i200 = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %.pre.i201 = load ptr, ptr %.phi.trans.insert.i200, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i196

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ow, ptr noundef nonnull align 1 dereferenceable(12) @.str.60, i64 12, i1 false)
  %i.pc = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 12 ; 2 uses
  store ptr %i.pd, ptr %i.o, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i196

_ZN4llvh11raw_ostreamlsEPKc.exit.i196:            ; preds = %bb.cd, %bb.cc
  %i.pe = phi ptr [ %.pre.i201, %bb.cc ], [ %i.pd, %bb.cd ] ; 3 uses
  %.0.i.i.i197 = phi ptr [ %i.pb, %bb.cc ], [ %2, %bb.cd ] ; 5 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !262, !range !48, !noundef !49
  %i.ph = trunc nuw i8 %i.pg to i1                ; 3 uses
  %not..i = xor i1 %i.ph, true
  %i.pi = zext i1 %not..i to i64                  ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.0.i.i.i197, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !22
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.i.i.i197, i64 24 ; 2 uses
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = ptrtoint ptr %i.pe to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = icmp ult i64 %i.po, %i.pi
  br i1 %i.pp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i196
  %i.pq = select i1 %i.ph, ptr @.str.61, ptr @.str.62
  %i.pr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i197, ptr noundef nonnull %i.pq, i64 noundef %i.pi) #19 ; 2 uses
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %.pre26.i = load ptr, ptr %.phi.trans.insert25.i, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9.i

bb.cf:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i196
  br i1 %i.ph, label %_ZN4llvh11raw_ostreamlsEPKc.exit9.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pe, ptr nonnull align 1 @.str.62, i64 %i.pi, i1 false)
  %i.ps = load ptr, ptr %i.pl, align 8, !tbaa !23
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pi ; 2 uses
  store ptr %i.pt, ptr %i.pl, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9.i

_ZN4llvh11raw_ostreamlsEPKc.exit9.i:              ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.pu = phi ptr [ %.pre26.i, %bb.ce ], [ %i.pt, %bb.cg ], [ %i.pe, %bb.cf ] ; 3 uses
  %.0.i.i8.i198 = phi ptr [ %i.pr, %bb.ce ], [ %.0.i.i.i197, %bb.cg ], [ %.0.i.i.i197, %bb.cf ] ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !263, !range !48, !noundef !49
  %i.px = trunc nuw i8 %i.pw to i1
  %i.py = select i1 %i.px, i8 33, i8 61           ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i.i8.i198, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !22
  %.not.i.i = icmp ult ptr %i.pu, %i.qa
  br i1 %.not.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit9.i
  %i.qb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i8.i198, i8 noundef zeroext %i.py) #19
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.ci:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit9.i
  %i.qc = getelementptr inbounds nuw i8, ptr %.0.i.i8.i198, i64 24
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  store ptr %i.qd, ptr %i.qc, align 8, !tbaa !23
  store i8 %i.py, ptr %i.pu, align 1, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

_ZN4llvh11raw_ostreamlsEc.exit.i:                 ; preds = %bb.ci, %bb.ch
  %.0.i.i199 = phi ptr [ %i.qb, %bb.ch ], [ %.0.i.i8.i198, %bb.ci ] ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !22
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 24 ; 3 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !23 ; 2 uses
  %i.qi = ptrtoint ptr %i.qf to i64
  %i.qj = ptrtoint ptr %i.qh to i64
  %i.qk = sub i64 %i.qi, %i.qj
  %i.ql = icmp ult i64 %i.qk, 15
  br i1 %i.ql, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.qm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i199, ptr noundef nonnull @.str.63, i64 noundef 15) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12.i

bb.ck:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.qh, ptr noundef nonnull align 1 dereferenceable(15) @.str.63, i64 15, i1 false)
  %i.qn = load ptr, ptr %i.qg, align 8, !tbaa !23
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 15
  store ptr %i.qo, ptr %i.qg, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12.i

_ZN4llvh11raw_ostreamlsEPKc.exit12.i:             ; preds = %bb.ck, %bb.cj
  %.0.i.i11.i = phi ptr [ %i.qm, %bb.cj ], [ %.0.i.i199, %bb.ck ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !264
  %i.qr = zext i8 %i.qq to i64
  %i.qs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i11.i, i64 noundef %i.qr) #19 ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !22
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 24 ; 3 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !23 ; 2 uses
  %i.qx = ptrtoint ptr %i.qu to i64
  %i.qy = ptrtoint ptr %i.qw to i64
  %i.qz = sub i64 %i.qx, %i.qy
  %i.ra = icmp ult i64 %i.qz, 22
  br i1 %i.ra, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12.i
  %i.rb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.qs, ptr noundef nonnull @.str.64, i64 noundef 22) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit15.i

bb.cm:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.qw, ptr noundef nonnull align 1 dereferenceable(22) @.str.64, i64 22, i1 false)
  %i.rc = load ptr, ptr %i.qv, align 8, !tbaa !23
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 22
  store ptr %i.rd, ptr %i.qv, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit15.i

_ZN4llvh11raw_ostreamlsEPKc.exit15.i:             ; preds = %bb.cm, %bb.cl
  %.0.i.i14.i = phi ptr [ %i.rb, %bb.cl ], [ %i.qs, %bb.cm ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.rf = load i16, ptr %i.re, align 1, !tbaa !265
  %i.rg = zext i16 %i.rf to i64
  %i.rh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i14.i, i64 noundef %i.rg) #19 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !22
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 24 ; 3 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !23 ; 2 uses
  %i.rm = icmp eq ptr %i.rj, %i.rl
  br i1 %i.rm, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit15.i
  %i.rn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.rh, ptr noundef nonnull @.str.45, i64 noundef 1) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit18.i

bb.co:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit15.i
  store i8 44, ptr %i.rl, align 1
  %i.ro = load ptr, ptr %i.rk, align 8, !tbaa !23
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 1
  store ptr %i.rp, ptr %i.rk, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit18.i

_ZN4llvh11raw_ostreamlsEPKc.exit18.i:             ; preds = %bb.co, %bb.cn
  %.0.i.i17.i = phi ptr [ %i.rn, %bb.cn ], [ %i.rh, %bb.co ]
  %i.rq = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %i.rr = load i16, ptr %i.rq, align 1, !tbaa !266
  %i.rs = zext i16 %i.rr to i64
  %i.rt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i17.i, i64 noundef %i.rs) #19 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !22
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 24 ; 3 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !23 ; 2 uses
  %i.ry = ptrtoint ptr %i.rv to i64
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = icmp ult i64 %i.sa, 16
  br i1 %i.sb, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit18.i
  %i.sc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.rt, ptr noundef nonnull @.str.65, i64 noundef 16) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21.i

bb.cq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.rx, ptr noundef nonnull align 1 dereferenceable(16) @.str.65, i64 16, i1 false)
  %i.sd = load ptr, ptr %i.rw, align 8, !tbaa !23
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store ptr %i.se, ptr %i.rw, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21.i

_ZN4llvh11raw_ostreamlsEPKc.exit21.i:             ; preds = %bb.cq, %bb.cp
  %.0.i.i20.i = phi ptr [ %i.sc, %bb.cp ], [ %i.rt, %bb.cq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.sf = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.sg = load i32, ptr %i.sf, align 1, !tbaa !267
  %i.sh = zext i32 %i.sg to i64
  store i64 %i.sh, ptr %8, align 8, !tbaa !27, !alias.scope !268
  store i64 0, ptr %i.am, align 8, !tbaa !28, !alias.scope !268
  store i32 4, ptr %i.an, align 8, !tbaa !29, !alias.scope !268
  store i8 1, ptr %i.ao, align 4, !tbaa !30, !alias.scope !268
end_hunk_0
