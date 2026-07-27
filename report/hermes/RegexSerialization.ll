inline.NumInlined: 2396
inline.NumDeleted: 1188
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6hermes17dumpRegexBytecodeEN4llvh8ArrayRefIhEERNS0_11raw_ostreamE:bb.a
  %i.lw = zext i32 %i.lv to i64
  store i64 %i.lw, ptr %9, align 8, !tbaa !29, !alias.scope !111
  store i64 0, ptr %i.ar, align 8, !tbaa !36, !alias.scope !111
  store i32 4, ptr %i.as, align 8, !tbaa !37, !alias.scope !111
  store i8 1, ptr %i.at, align 4, !tbaa !38, !alias.scope !111
  store i8 0, ptr %i.au, align 1, !tbaa !39, !alias.scope !111
  store i8 1, ptr %i.av, align 2, !tbaa !40, !alias.scope !111
  %i.lx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i187, ptr noundef nonnull align 8 dereferenceable(23) %9) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ly = add i32 %.0212, 5
  br label %bb.dc

bb.bl:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  call fastcc void @_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamE(ptr noundef nonnull %i.dp, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %i.lz = getelementptr i8, ptr %i.dp, i64 1
  %.val164 = load i32, ptr %i.lz, align 1, !tbaa !114
  %i.ma = shl i32 %.val164, 3
  %i.mb = add i32 %.0212, 6
  %i.mc = add i32 %i.mb, %i.ma
  br label %bb.dc

bb.bm:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  call fastcc void @_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BracketInsnERN4llvh11raw_ostreamE(ptr noundef nonnull %i.dp, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %i.md = getelementptr i8, ptr %i.dp, i64 1
  %.val165 = load i32, ptr %i.md, align 1, !tbaa !114
  %i.me = shl i32 %.val165, 3
  %i.mf = add i32 %.0212, 6
  %i.mg = add i32 %i.mf, %i.me
  br label %bb.dc

bb.bn:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.mh = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.mi = load ptr, ptr %i.o, align 8, !tbaa !28  ; 2 uses
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
  %i.mo = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 26
  store ptr %i.mp, ptr %i.o, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex28BeginMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex28BeginMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.bo, %bb.bp
  %.0.i.i.i189 = phi ptr [ %i.mn, %bb.bo ], [ %2, %bb.bp ]
  %i.mq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.mr = load i16, ptr %i.mq, align 1, !tbaa !116
  %i.ms = zext i16 %i.mr to i64
  %i.mt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i189, i64 noundef %i.ms) #19 ; 0 uses
  %i.mu = add i32 %.0212, 3
  br label %bb.dc

bb.bq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.mv = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.mw = load ptr, ptr %i.o, align 8, !tbaa !28  ; 2 uses
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
  %i.nc = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  store ptr %i.nd, ptr %i.o, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex26EndMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex26EndMarkedSubexpressionInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.br, %bb.bs
  %.0.i.i.i191 = phi ptr [ %i.nb, %bb.br ], [ %2, %bb.bs ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.nf = load i16, ptr %i.ne, align 1, !tbaa !118
  %i.ng = zext i16 %i.nf to i64
  %i.nh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i191, i64 noundef %i.ng) #19 ; 0 uses
  %i.ni = add i32 %.0212, 3
  br label %bb.dc

bb.bt:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.nj = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.nk = load ptr, ptr %i.o, align 8, !tbaa !28  ; 2 uses
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
  %i.nq = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 13
  store ptr %i.nr, ptr %i.o, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BackRefInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11BackRefInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.bu, %bb.bv
  %.0.i.i.i193 = phi ptr [ %i.np, %bb.bu ], [ %2, %bb.bv ]
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.nt = load i16, ptr %i.ns, align 1, !tbaa !120
  %i.nu = zext i16 %i.nt to i64
  %i.nv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i193, i64 noundef %i.nu) #19 ; 0 uses
  %i.nw = add i32 %.0212, 3
  br label %bb.dc

bb.bw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.nx = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.ny = load ptr, ptr %i.o, align 8, !tbaa !28  ; 2 uses
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = icmp ult i64 %i.ob, 14
  br i1 %i.oc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.od = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.57, i64 noundef 14) #19 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i194

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ny, ptr noundef nonnull align 1 dereferenceable(14) @.str.57, i64 14, i1 false)
  %i.oe = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 14 ; 2 uses
  store ptr %i.of, ptr %i.o, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i194

_ZN4llvh11raw_ostreamlsEPKc.exit.i194:            ; preds = %bb.by, %bb.bx
  %i.og = phi ptr [ %.pre.i, %bb.bx ], [ %i.of, %bb.by ] ; 2 uses
  %.0.i.i.i195 = phi ptr [ %i.od, %bb.bx ], [ %2, %bb.by ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !122, !range !124, !noundef !125
  %i.oj = trunc nuw i8 %i.oi to i1
  %.str.58..str.59.i = select i1 %i.oj, ptr @.str.58, ptr @.str.59 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i.i.i195, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !25
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = ptrtoint ptr %i.og to i64
  %i.oo = sub i64 %i.om, %i.on
  %i.op = icmp ult i64 %i.oo, 2
  br i1 %i.op, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i194
  %i.oq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i195, ptr noundef nonnull %.str.58..str.59.i, i64 noundef 2) #19 ; 0 uses
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex16WordBoundaryInsnERN4llvh11raw_ostreamE.exit

bb.ca:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i194
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i.i.i195, i64 24 ; 2 uses
  %i.os = load i16, ptr %.str.58..str.59.i, align 1
  store i16 %i.os, ptr %i.og, align 1
  %i.ot = load ptr, ptr %i.or, align 8, !tbaa !28
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 2
  store ptr %i.ou, ptr %i.or, align 8, !tbaa !28
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex16WordBoundaryInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex16WordBoundaryInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.bz, %bb.ca
  %i.ov = add i32 %.0212, 2
  br label %bb.dc

bb.cb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.ow = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.ox = load ptr, ptr %i.o, align 8, !tbaa !28  ; 2 uses
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = icmp ult i64 %i.pa, 12
  br i1 %i.pb, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.pc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.60, i64 noundef 12) #19 ; 2 uses
  %.phi.trans.insert.i200 = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %.pre.i201 = load ptr, ptr %.phi.trans.insert.i200, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i196

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ox, ptr noundef nonnull align 1 dereferenceable(12) @.str.60, i64 12, i1 false)
  %i.pd = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 12 ; 2 uses
  store ptr %i.pe, ptr %i.o, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i196

_ZN4llvh11raw_ostreamlsEPKc.exit.i196:            ; preds = %bb.cd, %bb.cc
  %i.pf = phi ptr [ %.pre.i201, %bb.cc ], [ %i.pe, %bb.cd ] ; 3 uses
  %.0.i.i.i197 = phi ptr [ %i.pc, %bb.cc ], [ %2, %bb.cd ] ; 5 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !126, !range !124, !noundef !125
  %i.pi = trunc nuw i8 %i.ph to i1                ; 3 uses
  %not..i = xor i1 %i.pi, true
  %i.pj = zext i1 %not..i to i64                  ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.0.i.i.i197, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !25
  %i.pm = getelementptr inbounds nuw i8, ptr %.0.i.i.i197, i64 24 ; 2 uses
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = ptrtoint ptr %i.pf to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = icmp ult i64 %i.pp, %i.pj
  br i1 %i.pq, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i196
  %i.pr = select i1 %i.pi, ptr @.str.61, ptr @.str.62
  %i.ps = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i197, ptr noundef nonnull %i.pr, i64 noundef %i.pj) #19 ; 2 uses
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  %.pre26.i = load ptr, ptr %.phi.trans.insert25.i, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9.i

bb.cf:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i196
  br i1 %i.pi, label %_ZN4llvh11raw_ostreamlsEPKc.exit9.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i8 60, ptr %i.pf, align 1
  %i.pt = load ptr, ptr %i.pm, align 8, !tbaa !28
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1 ; 2 uses
  store ptr %i.pu, ptr %i.pm, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9.i

_ZN4llvh11raw_ostreamlsEPKc.exit9.i:              ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.pv = phi ptr [ %.pre26.i, %bb.ce ], [ %i.pu, %bb.cg ], [ %i.pf, %bb.cf ] ; 3 uses
  %.0.i.i8.i198 = phi ptr [ %i.ps, %bb.ce ], [ %.0.i.i.i197, %bb.cg ], [ %.0.i.i.i197, %bb.cf ] ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !128, !range !124, !noundef !125
  %i.py = trunc nuw i8 %i.px to i1
  %i.pz = select i1 %i.py, i8 33, i8 61           ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.0.i.i8.i198, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !25
  %.not.i.i = icmp ult ptr %i.pv, %i.qb
  br i1 %.not.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit9.i
  %i.qc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i8.i198, i8 noundef zeroext %i.pz) #19
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

bb.ci:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit9.i
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i.i8.i198, i64 24
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pv, i64 1
  store ptr %i.qe, ptr %i.qd, align 8, !tbaa !28
  store i8 %i.pz, ptr %i.pv, align 1, !tbaa !19
  br label %_ZN4llvh11raw_ostreamlsEc.exit.i

_ZN4llvh11raw_ostreamlsEc.exit.i:                 ; preds = %bb.ci, %bb.ch
  %.0.i.i199 = phi ptr [ %i.qc, %bb.ch ], [ %.0.i.i8.i198, %bb.ci ] ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !25
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 24 ; 3 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !28 ; 2 uses
  %i.qj = ptrtoint ptr %i.qg to i64
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = sub i64 %i.qj, %i.qk
  %i.qm = icmp ult i64 %i.ql, 15
  br i1 %i.qm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i
  %i.qn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i199, ptr noundef nonnull @.str.63, i64 noundef 15) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12.i

bb.ck:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.qi, ptr noundef nonnull align 1 dereferenceable(15) @.str.63, i64 15, i1 false)
  %i.qo = load ptr, ptr %i.qh, align 8, !tbaa !28
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 15
  store ptr %i.qp, ptr %i.qh, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit12.i

_ZN4llvh11raw_ostreamlsEPKc.exit12.i:             ; preds = %bb.ck, %bb.cj
  %.0.i.i11.i = phi ptr [ %i.qn, %bb.cj ], [ %.0.i.i199, %bb.ck ]
  %i.qq = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !129
  %i.qs = zext i8 %i.qr to i64
  %i.qt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i11.i, i64 noundef %i.qs) #19 ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !25
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 24 ; 3 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !28 ; 2 uses
  %i.qy = ptrtoint ptr %i.qv to i64
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = icmp ult i64 %i.ra, 22
  br i1 %i.rb, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12.i
  %i.rc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.qt, ptr noundef nonnull @.str.64, i64 noundef 22) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit15.i

bb.cm:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.qx, ptr noundef nonnull align 1 dereferenceable(22) @.str.64, i64 22, i1 false)
  %i.rd = load ptr, ptr %i.qw, align 8, !tbaa !28
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 22
  store ptr %i.re, ptr %i.qw, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit15.i

_ZN4llvh11raw_ostreamlsEPKc.exit15.i:             ; preds = %bb.cm, %bb.cl
  %.0.i.i14.i = phi ptr [ %i.rc, %bb.cl ], [ %i.qt, %bb.cm ]
  %i.rf = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.rg = load i16, ptr %i.rf, align 1, !tbaa !130
  %i.rh = zext i16 %i.rg to i64
  %i.ri = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i14.i, i64 noundef %i.rh) #19 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !25
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 24 ; 3 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !28 ; 2 uses
  %i.rn = icmp eq ptr %i.rk, %i.rm
  br i1 %i.rn, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit15.i
  %i.ro = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ri, ptr noundef nonnull @.str.45, i64 noundef 1) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit18.i

bb.co:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit15.i
  store i8 44, ptr %i.rm, align 1
  %i.rp = load ptr, ptr %i.rl, align 8, !tbaa !28
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 1
  store ptr %i.rq, ptr %i.rl, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit18.i

_ZN4llvh11raw_ostreamlsEPKc.exit18.i:             ; preds = %bb.co, %bb.cn
  %.0.i.i17.i = phi ptr [ %i.ro, %bb.cn ], [ %i.ri, %bb.co ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %i.rs = load i16, ptr %i.rr, align 1, !tbaa !131
  %i.rt = zext i16 %i.rs to i64
  %i.ru = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i17.i, i64 noundef %i.rt) #19 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !25
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 24 ; 3 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !28 ; 2 uses
  %i.rz = ptrtoint ptr %i.rw to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa
  %i.sc = icmp ult i64 %i.sb, 16
  br i1 %i.sc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit18.i
  %i.sd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ru, ptr noundef nonnull @.str.65, i64 noundef 16) #19
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21.i

bb.cq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ry, ptr noundef nonnull align 1 dereferenceable(16) @.str.65, i64 16, i1 false)
  %i.se = load ptr, ptr %i.rx, align 8, !tbaa !28
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  store ptr %i.sf, ptr %i.rx, align 8, !tbaa !28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21.i

_ZN4llvh11raw_ostreamlsEPKc.exit21.i:             ; preds = %bb.cq, %bb.cp
  %.0.i.i20.i = phi ptr [ %i.sd, %bb.cp ], [ %i.ru, %bb.cq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.sg = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.sh = load i32, ptr %i.sg, align 1, !tbaa !132
  %i.si = zext i32 %i.sh to i64
  store i64 %i.si, ptr %8, align 8, !tbaa !29, !alias.scope !133
  store i64 0, ptr %i.am, align 8, !tbaa !36, !alias.scope !133
  store i32 4, ptr %i.an, align 8, !tbaa !37, !alias.scope !133
  store i8 1, ptr %i.ao, align 4, !tbaa !38, !alias.scope !133
  store i8 0, ptr %i.ap, align 1, !tbaa !39, !alias.scope !133
  store i8 1, ptr %i.aq, align 2, !tbaa !40, !alias.scope !133
  %i.sj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i20.i, ptr noundef nonnull align 8 dereferenceable(23) %8) #19 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !28 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !25
  %.not.i22.i = icmp ult ptr %i.sl, %i.sn
  br i1 %.not.i22.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit21.i
  %i.so = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.sj, i8 noundef zeroext 41) #19 ; 0 uses
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex14LookaroundInsnERN4llvh11raw_ostreamE.exit

bb.cs:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit21.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  store ptr %i.sp, ptr %i.sk, align 8, !tbaa !28
  store i8 41, ptr %i.sl, align 1, !tbaa !19
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex14LookaroundInsnERN4llvh11raw_ostreamE.exit

_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex14LookaroundInsnERN4llvh11raw_ostreamE.exit: ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.sq = add i32 %.0212, 12
  br label %bb.dc

bb.ct:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.sr = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.ss = load i32, ptr %i.sr, align 1, !tbaa !136
  %i.st = getelementptr inbounds nuw i8, ptr %i.dp, i64 17
  %i.su = load i8, ptr %i.st, align 1, !tbaa !138, !range !124, !noundef !125
  %i.sv = trunc nuw i8 %i.su to i1
  %i.sw = select i1 %i.sv, ptr @.str.67, ptr @.str.68
  %i.sx = getelementptr inbounds nuw i8, ptr %i.dp, i64 5
  %i.sy = getelementptr inbounds nuw i8, ptr %i.dp, i64 18
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !139
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJjPKcjjhEEE, i64 16), ptr @.str.66>, ptr %7, align 16, !alias.scope !140
  store i8 %i.sz, ptr %i.ai, align 16, !tbaa !143, !alias.scope !140
  %i.ta = load <2 x i32>, ptr %i.sx, align 1, !tbaa !3
  %i.tb = shufflevector <2 x i32> %i.ta, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.tb, ptr %i.aj, align 4, !tbaa !3, !alias.scope !140
  store ptr %i.sw, ptr %i.ak, align 16, !tbaa !145, !alias.scope !140
  store i32 %i.ss, ptr %i.al, align 8, !tbaa !147, !alias.scope !140
  %i.tc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %7) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.td = add i32 %.0212, 23
  br label %bb.dc

bb.cu:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit169
  %i.te = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.tf = load ptr, ptr %i.o, align 8, !tbaa !28  ; 2 uses
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = sub i64 %i.tg, %i.th
  %i.tj = icmp ult i64 %i.ti, 9
  br i1 %i.tj, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.tk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @.str.69, i64 noundef 9) #19
  br label %_ZN12_GLOBAL__N_115dumpInstructionEPKN6hermes5regex11EndLoopInsnERN4llvh11raw_ostreamE.exit

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.tf, ptr noundef nonnull align 1 dereferenceable(9) @.str.69, i64 9, i1 false)
end_hunk_0
