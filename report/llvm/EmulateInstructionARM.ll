Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmulateInstructionARM?download=true
inline.NumInlined: 2834
inline.NumDeleted: 409
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12lldb_private21EmulateInstructionARM15GetRegisterInfoEN4lldb12RegisterKindEj:bb.a

bb.fa:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fb:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fc:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fd:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fe:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.ff:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fg:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fh:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fi:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fj:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

bb.fk:                                            ; preds = %.thread.thread.thread
  br label %.thread.thread.thread.thread45

switch.lookup:                                    ; preds = %bb.b
  %i.d = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12lldb_private21EmulateInstructionARM15GetRegisterInfoEN4lldb12RegisterKindEj, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.e = zext nneg i32 %3 to i64
  %switch.gep64 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12lldb_private21EmulateInstructionARM15GetRegisterInfoEN4lldb12RegisterKindEj.1, i64 %i.e
  %switch.load65 = load ptr, ptr %switch.gep64, align 8
  %i.f = zext nneg i32 %3 to i64
  %switch.gep66 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12lldb_private21EmulateInstructionARM15GetRegisterInfoEN4lldb12RegisterKindEj.2, i64 %i.f
  %switch.load67 = load ptr, ptr %switch.gep66, align 8
  br label %.thread.thread.thread.thread45

.thread.thread.thread.thread45:                   ; preds = %switch.lookup, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.thread.thread.thread
  %.sroa.182.0.i26 = phi i32 [ %.sroa.182.0.i, %bb.fk ], [ %.sroa.182.0.i, %bb.d ], [ %.sroa.182.0.i, %bb.e ], [ %.sroa.182.0.i, %bb.f ], [ %.sroa.182.0.i, %bb.g ], [ %.sroa.182.0.i, %bb.h ], [ %.sroa.182.0.i, %bb.i ], [ %.sroa.182.0.i, %.thread.thread.thread ], [ %.sroa.182.0.i, %bb.k ], [ %.sroa.182.0.i, %bb.l ], [ %.sroa.182.0.i, %bb.m ], [ %.sroa.182.0.i, %bb.n ], [ %.sroa.182.0.i, %bb.o ], [ %.sroa.182.0.i, %bb.j ], [ %.sroa.182.0.i, %bb.p ], [ %.sroa.182.0.i, %bb.q ], [ %.sroa.182.0.i, %bb.r ], [ %.sroa.182.0.i, %bb.t ], [ %.sroa.182.0.i, %bb.u ], [ %.sroa.182.0.i, %bb.v ], [ %.sroa.182.0.i, %bb.w ], [ %.sroa.182.0.i, %bb.x ], [ %.sroa.182.0.i, %bb.y ], [ %.sroa.182.0.i, %bb.z ], [ %.sroa.182.0.i, %bb.aa ], [ %.sroa.182.0.i, %bb.ab ], [ %.sroa.182.0.i, %bb.ac ], [ %.sroa.182.0.i, %bb.ad ], [ %.sroa.182.0.i, %bb.ae ], [ %.sroa.182.0.i, %bb.af ], [ %.sroa.182.0.i, %bb.ag ], [ %.sroa.182.0.i, %bb.ah ], [ %.sroa.182.0.i, %bb.ai ], [ %.sroa.182.0.i, %bb.aj ], [ %.sroa.182.0.i, %bb.ak ], [ %.sroa.182.0.i, %bb.al ], [ %.sroa.182.0.i, %bb.am ], [ %.sroa.182.0.i, %bb.an ], [ %.sroa.182.0.i, %bb.ao ], [ %.sroa.182.0.i, %bb.ap ], [ %.sroa.182.0.i, %bb.aq ], [ %.sroa.182.0.i, %bb.ar ], [ %.sroa.182.0.i, %bb.as ], [ %.sroa.182.0.i, %bb.at ], [ %.sroa.182.0.i, %bb.au ], [ %.sroa.182.0.i, %bb.av ], [ %.sroa.182.0.i, %bb.aw ], [ %.sroa.182.0.i, %bb.ax ], [ %.sroa.182.0.i, %bb.ay ], [ %.sroa.182.0.i, %bb.az ], [ %.sroa.182.0.i, %bb.ba ], [ %.sroa.182.0.i, %bb.bb ], [ %.sroa.182.0.i, %bb.bc ], [ %.sroa.182.0.i, %bb.bd ], [ %.sroa.182.0.i, %bb.be ], [ %.sroa.182.0.i, %bb.bf ], [ %.sroa.182.0.i, %bb.bg ], [ %.sroa.182.0.i, %bb.bh ], [ %.sroa.182.0.i, %bb.bi ], [ %.sroa.182.0.i, %bb.bj ], [ %.sroa.182.0.i, %bb.bk ], [ %.sroa.182.0.i, %bb.bl ], [ %.sroa.182.0.i, %bb.bm ], [ %.sroa.182.0.i, %bb.bn ], [ %.sroa.182.0.i, %bb.bo ], [ %.sroa.182.0.i, %bb.bp ], [ %.sroa.182.0.i, %bb.bq ], [ %.sroa.182.0.i, %bb.br ], [ %.sroa.182.0.i, %bb.bs ], [ %.sroa.182.0.i, %bb.bt ], [ %.sroa.182.0.i, %bb.bu ], [ %.sroa.182.0.i, %bb.bv ], [ %.sroa.182.0.i, %bb.bw ], [ %.sroa.182.0.i, %bb.bx ], [ %.sroa.182.0.i, %bb.by ], [ %.sroa.182.0.i, %bb.bz ], [ %.sroa.182.0.i, %bb.ca ], [ %.sroa.182.0.i, %bb.cb ], [ %.sroa.182.0.i, %bb.cc ], [ %.sroa.182.0.i, %bb.cd ], [ %.sroa.182.0.i, %bb.ce ], [ %.sroa.182.0.i, %bb.cf ], [ %.sroa.182.0.i, %bb.cg ], [ %.sroa.182.0.i, %bb.ch ], [ %.sroa.182.0.i, %bb.ci ], [ %.sroa.182.0.i, %bb.cj ], [ %.sroa.182.0.i, %bb.ck ], [ %.sroa.182.0.i, %bb.cl ], [ %.sroa.182.0.i, %bb.cm ], [ %.sroa.182.0.i, %bb.cn ], [ %.sroa.182.0.i, %bb.co ], [ %.sroa.182.0.i, %bb.cp ], [ %.sroa.182.0.i, %bb.cq ], [ %.sroa.182.0.i, %bb.cr ], [ %.sroa.182.0.i, %bb.cs ], [ %.sroa.182.0.i, %bb.ct ], [ %.sroa.182.0.i, %bb.cu ], [ %.sroa.182.0.i, %bb.cv ], [ %.sroa.182.0.i, %bb.cw ], [ %.sroa.182.0.i, %bb.cx ], [ %.sroa.182.0.i, %bb.cy ], [ %.sroa.182.0.i, %bb.cz ], [ %.sroa.182.0.i, %bb.da ], [ %.sroa.182.0.i, %bb.db ], [ %.sroa.182.0.i, %bb.dc ], [ %.sroa.182.0.i, %bb.dd ], [ %.sroa.182.0.i, %bb.de ], [ %.sroa.182.0.i, %bb.df ], [ %.sroa.182.0.i, %bb.dg ], [ %.sroa.182.0.i, %bb.dh ], [ %.sroa.182.0.i, %bb.di ], [ %.sroa.182.0.i, %bb.dj ], [ %.sroa.182.0.i, %bb.dk ], [ %.sroa.182.0.i, %bb.dl ], [ %.sroa.182.0.i, %bb.dm ], [ %.sroa.182.0.i, %bb.dn ], [ %.sroa.182.0.i, %bb.do ], [ %.sroa.182.0.i, %bb.dp ], [ %.sroa.182.0.i, %bb.dq ], [ %.sroa.182.0.i, %bb.dr ], [ %.sroa.182.0.i, %bb.ds ], [ %.sroa.182.0.i, %bb.dt ], [ %.sroa.182.0.i, %bb.du ], [ %.sroa.182.0.i, %bb.dv ], [ %.sroa.182.0.i, %bb.dw ], [ %.sroa.182.0.i, %bb.dx ], [ %.sroa.182.0.i, %bb.dy ], [ %.sroa.182.0.i, %bb.dz ], [ %.sroa.182.0.i, %bb.ea ], [ %.sroa.182.0.i, %bb.eb ], [ %.sroa.182.0.i, %bb.ec ], [ %.sroa.182.0.i, %bb.ed ], [ %.sroa.182.0.i, %bb.ee ], [ %.sroa.182.0.i, %bb.ef ], [ %.sroa.182.0.i, %bb.eg ], [ %.sroa.182.0.i, %bb.eh ], [ %.sroa.182.0.i, %bb.ei ], [ %.sroa.182.0.i, %bb.ej ], [ %.sroa.182.0.i, %bb.ek ], [ %.sroa.182.0.i, %bb.el ], [ %.sroa.182.0.i, %bb.em ], [ %.sroa.182.0.i, %bb.en ], [ %.sroa.182.0.i, %bb.eo ], [ %.sroa.182.0.i, %bb.ep ], [ %.sroa.182.0.i, %bb.eq ], [ %.sroa.182.0.i, %bb.er ], [ %.sroa.182.0.i, %bb.es ], [ %.sroa.182.0.i, %bb.et ], [ %.sroa.182.0.i, %bb.eu ], [ %.sroa.182.0.i, %bb.ev ], [ %.sroa.182.0.i, %bb.ew ], [ %.sroa.182.0.i, %bb.ex ], [ %.sroa.182.0.i, %bb.ey ], [ %.sroa.182.0.i, %bb.ez ], [ %.sroa.182.0.i, %bb.fa ], [ %.sroa.182.0.i, %bb.fb ], [ %.sroa.182.0.i, %bb.fc ], [ %.sroa.182.0.i, %bb.fd ], [ %.sroa.182.0.i, %bb.fe ], [ %.sroa.182.0.i, %bb.ff ], [ %.sroa.182.0.i, %bb.fg ], [ %.sroa.182.0.i, %bb.fh ], [ %.sroa.182.0.i, %bb.fi ], [ %.sroa.182.0.i, %bb.fj ], [ %.sroa.182.0.i, %bb.s ], [ 11, %switch.lookup ]
  %.sroa.17717.0.i24 = phi i32 [ %.sroa.17717.0.i, %bb.fk ], [ %.sroa.17717.0.i, %bb.d ], [ %.sroa.17717.0.i, %bb.e ], [ %.sroa.17717.0.i, %bb.f ], [ %.sroa.17717.0.i, %bb.g ], [ %.sroa.17717.0.i, %bb.h ], [ %.sroa.17717.0.i, %bb.i ], [ %.sroa.17717.0.i, %.thread.thread.thread ], [ %.sroa.17717.0.i, %bb.k ], [ %.sroa.17717.0.i, %bb.l ], [ %.sroa.17717.0.i, %bb.m ], [ %.sroa.17717.0.i, %bb.n ], [ %.sroa.17717.0.i, %bb.o ], [ %.sroa.17717.0.i, %bb.j ], [ %.sroa.17717.0.i, %bb.p ], [ %.sroa.17717.0.i, %bb.q ], [ %.sroa.17717.0.i, %bb.r ], [ %.sroa.17717.0.i, %bb.t ], [ %.sroa.17717.0.i, %bb.u ], [ %.sroa.17717.0.i, %bb.v ], [ %.sroa.17717.0.i, %bb.w ], [ %.sroa.17717.0.i, %bb.x ], [ %.sroa.17717.0.i, %bb.y ], [ %.sroa.17717.0.i, %bb.z ], [ %.sroa.17717.0.i, %bb.aa ], [ %.sroa.17717.0.i, %bb.ab ], [ %.sroa.17717.0.i, %bb.ac ], [ %.sroa.17717.0.i, %bb.ad ], [ %.sroa.17717.0.i, %bb.ae ], [ %.sroa.17717.0.i, %bb.af ], [ %.sroa.17717.0.i, %bb.ag ], [ %.sroa.17717.0.i, %bb.ah ], [ %.sroa.17717.0.i, %bb.ai ], [ %.sroa.17717.0.i, %bb.aj ], [ %.sroa.17717.0.i, %bb.ak ], [ %.sroa.17717.0.i, %bb.al ], [ %.sroa.17717.0.i, %bb.am ], [ %.sroa.17717.0.i, %bb.an ], [ %.sroa.17717.0.i, %bb.ao ], [ %.sroa.17717.0.i, %bb.ap ], [ %.sroa.17717.0.i, %bb.aq ], [ %.sroa.17717.0.i, %bb.ar ], [ %.sroa.17717.0.i, %bb.as ], [ %.sroa.17717.0.i, %bb.at ], [ %.sroa.17717.0.i, %bb.au ], [ %.sroa.17717.0.i, %bb.av ], [ %.sroa.17717.0.i, %bb.aw ], [ %.sroa.17717.0.i, %bb.ax ], [ %.sroa.17717.0.i, %bb.ay ], [ %.sroa.17717.0.i, %bb.az ], [ %.sroa.17717.0.i, %bb.ba ], [ %.sroa.17717.0.i, %bb.bb ], [ %.sroa.17717.0.i, %bb.bc ], [ %.sroa.17717.0.i, %bb.bd ], [ %.sroa.17717.0.i, %bb.be ], [ %.sroa.17717.0.i, %bb.bf ], [ %.sroa.17717.0.i, %bb.bg ], [ %.sroa.17717.0.i, %bb.bh ], [ %.sroa.17717.0.i, %bb.bi ], [ %.sroa.17717.0.i, %bb.bj ], [ %.sroa.17717.0.i, %bb.bk ], [ %.sroa.17717.0.i, %bb.bl ], [ %.sroa.17717.0.i, %bb.bm ], [ %.sroa.17717.0.i, %bb.bn ], [ %.sroa.17717.0.i, %bb.bo ], [ %.sroa.17717.0.i, %bb.bp ], [ %.sroa.17717.0.i, %bb.bq ], [ %.sroa.17717.0.i, %bb.br ], [ %.sroa.17717.0.i, %bb.bs ], [ %.sroa.17717.0.i, %bb.bt ], [ %.sroa.17717.0.i, %bb.bu ], [ %.sroa.17717.0.i, %bb.bv ], [ %.sroa.17717.0.i, %bb.bw ], [ %.sroa.17717.0.i, %bb.bx ], [ %.sroa.17717.0.i, %bb.by ], [ %.sroa.17717.0.i, %bb.bz ], [ %.sroa.17717.0.i, %bb.ca ], [ %.sroa.17717.0.i, %bb.cb ], [ %.sroa.17717.0.i, %bb.cc ], [ %.sroa.17717.0.i, %bb.cd ], [ %.sroa.17717.0.i, %bb.ce ], [ %.sroa.17717.0.i, %bb.cf ], [ %.sroa.17717.0.i, %bb.cg ], [ %.sroa.17717.0.i, %bb.ch ], [ %.sroa.17717.0.i, %bb.ci ], [ %.sroa.17717.0.i, %bb.cj ], [ %.sroa.17717.0.i, %bb.ck ], [ %.sroa.17717.0.i, %bb.cl ], [ %.sroa.17717.0.i, %bb.cm ], [ %.sroa.17717.0.i, %bb.cn ], [ %.sroa.17717.0.i, %bb.co ], [ %.sroa.17717.0.i, %bb.cp ], [ %.sroa.17717.0.i, %bb.cq ], [ %.sroa.17717.0.i, %bb.cr ], [ %.sroa.17717.0.i, %bb.cs ], [ %.sroa.17717.0.i, %bb.ct ], [ %.sroa.17717.0.i, %bb.cu ], [ %.sroa.17717.0.i, %bb.cv ], [ %.sroa.17717.0.i, %bb.cw ], [ %.sroa.17717.0.i, %bb.cx ], [ %.sroa.17717.0.i, %bb.cy ], [ %.sroa.17717.0.i, %bb.cz ], [ %.sroa.17717.0.i, %bb.da ], [ %.sroa.17717.0.i, %bb.db ], [ %.sroa.17717.0.i, %bb.dc ], [ %.sroa.17717.0.i, %bb.dd ], [ %.sroa.17717.0.i, %bb.de ], [ %.sroa.17717.0.i, %bb.df ], [ %.sroa.17717.0.i, %bb.dg ], [ %.sroa.17717.0.i, %bb.dh ], [ %.sroa.17717.0.i, %bb.di ], [ %.sroa.17717.0.i, %bb.dj ], [ %.sroa.17717.0.i, %bb.dk ], [ %.sroa.17717.0.i, %bb.dl ], [ %.sroa.17717.0.i, %bb.dm ], [ %.sroa.17717.0.i, %bb.dn ], [ %.sroa.17717.0.i, %bb.do ], [ %.sroa.17717.0.i, %bb.dp ], [ %.sroa.17717.0.i, %bb.dq ], [ %.sroa.17717.0.i, %bb.dr ], [ %.sroa.17717.0.i, %bb.ds ], [ %.sroa.17717.0.i, %bb.dt ], [ %.sroa.17717.0.i, %bb.du ], [ %.sroa.17717.0.i, %bb.dv ], [ %.sroa.17717.0.i, %bb.dw ], [ %.sroa.17717.0.i, %bb.dx ], [ %.sroa.17717.0.i, %bb.dy ], [ %.sroa.17717.0.i, %bb.dz ], [ %.sroa.17717.0.i, %bb.ea ], [ %.sroa.17717.0.i, %bb.eb ], [ %.sroa.17717.0.i, %bb.ec ], [ %.sroa.17717.0.i, %bb.ed ], [ %.sroa.17717.0.i, %bb.ee ], [ %.sroa.17717.0.i, %bb.ef ], [ %.sroa.17717.0.i, %bb.eg ], [ %.sroa.17717.0.i, %bb.eh ], [ %.sroa.17717.0.i, %bb.ei ], [ %.sroa.17717.0.i, %bb.ej ], [ %.sroa.17717.0.i, %bb.ek ], [ %.sroa.17717.0.i, %bb.el ], [ %.sroa.17717.0.i, %bb.em ], [ %.sroa.17717.0.i, %bb.en ], [ %.sroa.17717.0.i, %bb.eo ], [ %.sroa.17717.0.i, %bb.ep ], [ %.sroa.17717.0.i, %bb.eq ], [ %.sroa.17717.0.i, %bb.er ], [ %.sroa.17717.0.i, %bb.es ], [ %.sroa.17717.0.i, %bb.et ], [ %.sroa.17717.0.i, %bb.eu ], [ %.sroa.17717.0.i, %bb.ev ], [ %.sroa.17717.0.i, %bb.ew ], [ %.sroa.17717.0.i, %bb.ex ], [ %.sroa.17717.0.i, %bb.ey ], [ %.sroa.17717.0.i, %bb.ez ], [ %.sroa.17717.0.i, %bb.fa ], [ %.sroa.17717.0.i, %bb.fb ], [ %.sroa.17717.0.i, %bb.fc ], [ %.sroa.17717.0.i, %bb.fd ], [ %.sroa.17717.0.i, %bb.fe ], [ %.sroa.17717.0.i, %bb.ff ], [ %.sroa.17717.0.i, %bb.fg ], [ %.sroa.17717.0.i, %bb.fh ], [ %.sroa.17717.0.i, %bb.fi ], [ %.sroa.17717.0.i, %bb.fj ], [ %.sroa.17717.0.i, %bb.s ], [ 1, %switch.lookup ]
  %.sroa.172.0.i22 = phi i32 [ %.sroa.172.0.i, %bb.fk ], [ %.sroa.172.0.i, %bb.d ], [ %.sroa.172.0.i, %bb.e ], [ %.sroa.172.0.i, %bb.f ], [ %.sroa.172.0.i, %bb.g ], [ %.sroa.172.0.i, %bb.h ], [ %.sroa.172.0.i, %bb.i ], [ %.sroa.172.0.i, %.thread.thread.thread ], [ %.sroa.172.0.i, %bb.k ], [ %.sroa.172.0.i, %bb.l ], [ %.sroa.172.0.i, %bb.m ], [ %.sroa.172.0.i, %bb.n ], [ %.sroa.172.0.i, %bb.o ], [ %.sroa.172.0.i, %bb.j ], [ %.sroa.172.0.i, %bb.p ], [ %.sroa.172.0.i, %bb.q ], [ %.sroa.172.0.i, %bb.r ], [ %.sroa.172.0.i, %bb.t ], [ %.sroa.172.0.i, %bb.u ], [ %.sroa.172.0.i, %bb.v ], [ %.sroa.172.0.i, %bb.w ], [ %.sroa.172.0.i, %bb.x ], [ %.sroa.172.0.i, %bb.y ], [ %.sroa.172.0.i, %bb.z ], [ %.sroa.172.0.i, %bb.aa ], [ %.sroa.172.0.i, %bb.ab ], [ %.sroa.172.0.i, %bb.ac ], [ %.sroa.172.0.i, %bb.ad ], [ %.sroa.172.0.i, %bb.ae ], [ %.sroa.172.0.i, %bb.af ], [ %.sroa.172.0.i, %bb.ag ], [ %.sroa.172.0.i, %bb.ah ], [ %.sroa.172.0.i, %bb.ai ], [ %.sroa.172.0.i, %bb.aj ], [ %.sroa.172.0.i, %bb.ak ], [ %.sroa.172.0.i, %bb.al ], [ %.sroa.172.0.i, %bb.am ], [ %.sroa.172.0.i, %bb.an ], [ %.sroa.172.0.i, %bb.ao ], [ %.sroa.172.0.i, %bb.ap ], [ %.sroa.172.0.i, %bb.aq ], [ %.sroa.172.0.i, %bb.ar ], [ %.sroa.172.0.i, %bb.as ], [ %.sroa.172.0.i, %bb.at ], [ %.sroa.172.0.i, %bb.au ], [ %.sroa.172.0.i, %bb.av ], [ %.sroa.172.0.i, %bb.aw ], [ %.sroa.172.0.i, %bb.ax ], [ %.sroa.172.0.i, %bb.ay ], [ %.sroa.172.0.i, %bb.az ], [ %.sroa.172.0.i, %bb.ba ], [ %.sroa.172.0.i, %bb.bb ], [ %.sroa.172.0.i, %bb.bc ], [ %.sroa.172.0.i, %bb.bd ], [ %.sroa.172.0.i, %bb.be ], [ %.sroa.172.0.i, %bb.bf ], [ %.sroa.172.0.i, %bb.bg ], [ %.sroa.172.0.i, %bb.bh ], [ %.sroa.172.0.i, %bb.bi ], [ %.sroa.172.0.i, %bb.bj ], [ %.sroa.172.0.i, %bb.bk ], [ %.sroa.172.0.i, %bb.bl ], [ %.sroa.172.0.i, %bb.bm ], [ %.sroa.172.0.i, %bb.bn ], [ %.sroa.172.0.i, %bb.bo ], [ %.sroa.172.0.i, %bb.bp ], [ %.sroa.172.0.i, %bb.bq ], [ %.sroa.172.0.i, %bb.br ], [ %.sroa.172.0.i, %bb.bs ], [ %.sroa.172.0.i, %bb.bt ], [ %.sroa.172.0.i, %bb.bu ], [ %.sroa.172.0.i, %bb.bv ], [ %.sroa.172.0.i, %bb.bw ], [ %.sroa.172.0.i, %bb.bx ], [ %.sroa.172.0.i, %bb.by ], [ %.sroa.172.0.i, %bb.bz ], [ %.sroa.172.0.i, %bb.ca ], [ %.sroa.172.0.i, %bb.cb ], [ %.sroa.172.0.i, %bb.cc ], [ %.sroa.172.0.i, %bb.cd ], [ %.sroa.172.0.i, %bb.ce ], [ %.sroa.172.0.i, %bb.cf ], [ %.sroa.172.0.i, %bb.cg ], [ %.sroa.172.0.i, %bb.ch ], [ %.sroa.172.0.i, %bb.ci ], [ %.sroa.172.0.i, %bb.cj ], [ %.sroa.172.0.i, %bb.ck ], [ %.sroa.172.0.i, %bb.cl ], [ %.sroa.172.0.i, %bb.cm ], [ %.sroa.172.0.i, %bb.cn ], [ %.sroa.172.0.i, %bb.co ], [ %.sroa.172.0.i, %bb.cp ], [ %.sroa.172.0.i, %bb.cq ], [ %.sroa.172.0.i, %bb.cr ], [ %.sroa.172.0.i, %bb.cs ], [ %.sroa.172.0.i, %bb.ct ], [ %.sroa.172.0.i, %bb.cu ], [ %.sroa.172.0.i, %bb.cv ], [ %.sroa.172.0.i, %bb.cw ], [ %.sroa.172.0.i, %bb.cx ], [ %.sroa.172.0.i, %bb.cy ], [ %.sroa.172.0.i, %bb.cz ], [ %.sroa.172.0.i, %bb.da ], [ %.sroa.172.0.i, %bb.db ], [ %.sroa.172.0.i, %bb.dc ], [ %.sroa.172.0.i, %bb.dd ], [ %.sroa.172.0.i, %bb.de ], [ %.sroa.172.0.i, %bb.df ], [ %.sroa.172.0.i, %bb.dg ], [ %.sroa.172.0.i, %bb.dh ], [ %.sroa.172.0.i, %bb.di ], [ %.sroa.172.0.i, %bb.dj ], [ %.sroa.172.0.i, %bb.dk ], [ %.sroa.172.0.i, %bb.dl ], [ %.sroa.172.0.i, %bb.dm ], [ %.sroa.172.0.i, %bb.dn ], [ %.sroa.172.0.i, %bb.do ], [ %.sroa.172.0.i, %bb.dp ], [ %.sroa.172.0.i, %bb.dq ], [ %.sroa.172.0.i, %bb.dr ], [ %.sroa.172.0.i, %bb.ds ], [ %.sroa.172.0.i, %bb.dt ], [ %.sroa.172.0.i, %bb.du ], [ %.sroa.172.0.i, %bb.dv ], [ %.sroa.172.0.i, %bb.dw ], [ %.sroa.172.0.i, %bb.dx ], [ %.sroa.172.0.i, %bb.dy ], [ %.sroa.172.0.i, %bb.dz ], [ %.sroa.172.0.i, %bb.ea ], [ %.sroa.172.0.i, %bb.eb ], [ %.sroa.172.0.i, %bb.ec ], [ %.sroa.172.0.i, %bb.ed ], [ %.sroa.172.0.i, %bb.ee ], [ %.sroa.172.0.i, %bb.ef ], [ %.sroa.172.0.i, %bb.eg ], [ %.sroa.172.0.i, %bb.eh ], [ %.sroa.172.0.i, %bb.ei ], [ %.sroa.172.0.i, %bb.ej ], [ %.sroa.172.0.i, %bb.ek ], [ %.sroa.172.0.i, %bb.el ], [ %.sroa.172.0.i, %bb.em ], [ %.sroa.172.0.i, %bb.en ], [ %.sroa.172.0.i, %bb.eo ], [ %.sroa.172.0.i, %bb.ep ], [ %.sroa.172.0.i, %bb.eq ], [ %.sroa.172.0.i, %bb.er ], [ %.sroa.172.0.i, %bb.es ], [ %.sroa.172.0.i, %bb.et ], [ %.sroa.172.0.i, %bb.eu ], [ %.sroa.172.0.i, %bb.ev ], [ %.sroa.172.0.i, %bb.ew ], [ %.sroa.172.0.i, %bb.ex ], [ %.sroa.172.0.i, %bb.ey ], [ %.sroa.172.0.i, %bb.ez ], [ %.sroa.172.0.i, %bb.fa ], [ %.sroa.172.0.i, %bb.fb ], [ %.sroa.172.0.i, %bb.fc ], [ %.sroa.172.0.i, %bb.fd ], [ %.sroa.172.0.i, %bb.fe ], [ %.sroa.172.0.i, %bb.ff ], [ %.sroa.172.0.i, %bb.fg ], [ %.sroa.172.0.i, %bb.fh ], [ %.sroa.172.0.i, %bb.fi ], [ %.sroa.172.0.i, %bb.fj ], [ %.sroa.172.0.i, %bb.s ], [ 4, %switch.lookup ]
  %.081020 = phi i32 [ %3, %bb.fk ], [ %3, %bb.d ], [ %3, %bb.e ], [ %3, %bb.f ], [ %3, %bb.g ], [ %3, %bb.h ], [ %3, %bb.i ], [ %3, %.thread.thread.thread ], [ %3, %bb.k ], [ %3, %bb.l ], [ %3, %bb.m ], [ %3, %bb.n ], [ %3, %bb.o ], [ %3, %bb.j ], [ %3, %bb.p ], [ %3, %bb.q ], [ %3, %bb.r ], [ %3, %bb.t ], [ %3, %bb.u ], [ %3, %bb.v ], [ %3, %bb.w ], [ %3, %bb.x ], [ %3, %bb.y ], [ %3, %bb.z ], [ %3, %bb.aa ], [ %3, %bb.ab ], [ %3, %bb.ac ], [ %3, %bb.ad ], [ %3, %bb.ae ], [ %3, %bb.af ], [ %3, %bb.ag ], [ %3, %bb.ah ], [ %3, %bb.ai ], [ %3, %bb.aj ], [ %3, %bb.ak ], [ %3, %bb.al ], [ %3, %bb.am ], [ %3, %bb.an ], [ %3, %bb.ao ], [ %3, %bb.ap ], [ %3, %bb.aq ], [ %3, %bb.ar ], [ %3, %bb.as ], [ %3, %bb.at ], [ %3, %bb.au ], [ %3, %bb.av ], [ %3, %bb.aw ], [ %3, %bb.ax ], [ %3, %bb.ay ], [ %3, %bb.az ], [ %3, %bb.ba ], [ %3, %bb.bb ], [ %3, %bb.bc ], [ %3, %bb.bd ], [ %3, %bb.be ], [ %3, %bb.bf ], [ %3, %bb.bg ], [ %3, %bb.bh ], [ %3, %bb.bi ], [ %3, %bb.bj ], [ %3, %bb.bk ], [ %3, %bb.bl ], [ %3, %bb.bm ], [ %3, %bb.bn ], [ %3, %bb.bo ], [ %3, %bb.bp ], [ %3, %bb.bq ], [ %3, %bb.br ], [ %3, %bb.bs ], [ %3, %bb.bt ], [ %3, %bb.bu ], [ %3, %bb.bv ], [ %3, %bb.bw ], [ %3, %bb.bx ], [ %3, %bb.by ], [ %3, %bb.bz ], [ %3, %bb.ca ], [ %3, %bb.cb ], [ %3, %bb.cc ], [ %3, %bb.cd ], [ %3, %bb.ce ], [ %3, %bb.cf ], [ %3, %bb.cg ], [ %3, %bb.ch ], [ %3, %bb.ci ], [ %3, %bb.cj ], [ %3, %bb.ck ], [ %3, %bb.cl ], [ %3, %bb.cm ], [ %3, %bb.cn ], [ %3, %bb.co ], [ %3, %bb.cp ], [ %3, %bb.cq ], [ %3, %bb.cr ], [ %3, %bb.cs ], [ %3, %bb.ct ], [ %3, %bb.cu ], [ %3, %bb.cv ], [ %3, %bb.cw ], [ %3, %bb.cx ], [ %3, %bb.cy ], [ %3, %bb.cz ], [ %3, %bb.da ], [ %3, %bb.db ], [ %3, %bb.dc ], [ %3, %bb.dd ], [ %3, %bb.de ], [ %3, %bb.df ], [ %3, %bb.dg ], [ %3, %bb.dh ], [ %3, %bb.di ], [ %3, %bb.dj ], [ %3, %bb.dk ], [ %3, %bb.dl ], [ %3, %bb.dm ], [ %3, %bb.dn ], [ %3, %bb.do ], [ %3, %bb.dp ], [ %3, %bb.dq ], [ %3, %bb.dr ], [ %3, %bb.ds ], [ %3, %bb.dt ], [ %3, %bb.du ], [ %3, %bb.dv ], [ %3, %bb.dw ], [ %3, %bb.dx ], [ %3, %bb.dy ], [ %3, %bb.dz ], [ %3, %bb.ea ], [ %3, %bb.eb ], [ %3, %bb.ec ], [ %3, %bb.ed ], [ %3, %bb.ee ], [ %3, %bb.ef ], [ %3, %bb.eg ], [ %3, %bb.eh ], [ %3, %bb.ei ], [ %3, %bb.ej ], [ %3, %bb.ek ], [ %3, %bb.el ], [ %3, %bb.em ], [ %3, %bb.en ], [ %3, %bb.eo ], [ %3, %bb.ep ], [ %3, %bb.eq ], [ %3, %bb.er ], [ %3, %bb.es ], [ %3, %bb.et ], [ %3, %bb.eu ], [ %3, %bb.ev ], [ %3, %bb.ew ], [ %3, %bb.ex ], [ %3, %bb.ey ], [ %3, %bb.ez ], [ %3, %bb.fa ], [ %3, %bb.fb ], [ %3, %bb.fc ], [ %3, %bb.fd ], [ %3, %bb.fe ], [ %3, %bb.ff ], [ %3, %bb.fg ], [ %3, %bb.fh ], [ %3, %bb.fi ], [ %3, %bb.fj ], [ %3, %bb.s ], [ %switch.ext, %switch.lookup ]
  %.sroa.0.0.i = phi ptr [ @.str.466, %bb.fk ], [ @.str.300, %bb.d ], [ @.str.301, %bb.e ], [ @.str.302, %bb.f ], [ @.str.303, %bb.g ], [ @.str.304, %bb.h ], [ @.str.305, %bb.i ], [ @.str.299, %.thread.thread.thread ], [ @.str.307, %bb.k ], [ @.str.308, %bb.l ], [ @.str.309, %bb.m ], [ @.str.310, %bb.n ], [ @.str.311, %bb.o ], [ @.str.306, %bb.j ], [ @.str.312, %bb.p ], [ @.str.314, %bb.q ], [ @.str.316, %bb.r ], [ @.str.319, %bb.t ], [ @.str.320, %bb.u ], [ @.str.321, %bb.v ], [ @.str.322, %bb.w ], [ @.str.323, %bb.x ], [ @.str.324, %bb.y ], [ @.str.325, %bb.z ], [ @.str.326, %bb.aa ], [ @.str.327, %bb.ab ], [ @.str.328, %bb.ac ], [ @.str.329, %bb.ad ], [ @.str.330, %bb.ae ], [ @.str.331, %bb.af ], [ @.str.332, %bb.ag ], [ @.str.333, %bb.ah ], [ @.str.334, %bb.ai ], [ @.str.335, %bb.aj ], [ @.str.336, %bb.ak ], [ @.str.337, %bb.al ], [ @.str.338, %bb.am ], [ @.str.339, %bb.an ], [ @.str.340, %bb.ao ], [ @.str.341, %bb.ap ], [ @.str.342, %bb.aq ], [ @.str.343, %bb.ar ], [ @.str.344, %bb.as ], [ @.str.345, %bb.at ], [ @.str.346, %bb.au ], [ @.str.347, %bb.av ], [ @.str.348, %bb.aw ], [ @.str.349, %bb.ax ], [ @.str.350, %bb.ay ], [ @.str.351, %bb.az ], [ @.str.352, %bb.ba ], [ @.str.353, %bb.bb ], [ @.str.354, %bb.bc ], [ @.str.355, %bb.bd ], [ @.str.356, %bb.be ], [ @.str.357, %bb.bf ], [ @.str.358, %bb.bg ], [ @.str.359, %bb.bh ], [ @.str.360, %bb.bi ], [ @.str.361, %bb.bj ], [ @.str.362, %bb.bk ], [ @.str.363, %bb.bl ], [ @.str.364, %bb.bm ], [ @.str.365, %bb.bn ], [ @.str.366, %bb.bo ], [ @.str.367, %bb.bp ], [ @.str.368, %bb.bq ], [ @.str.369, %bb.br ], [ @.str.370, %bb.bs ], [ @.str.371, %bb.bt ], [ @.str.372, %bb.bu ], [ @.str.373, %bb.bv ], [ @.str.374, %bb.bw ], [ @.str.375, %bb.bx ], [ @.str.376, %bb.by ], [ @.str.377, %bb.bz ], [ @.str.378, %bb.ca ], [ @.str.379, %bb.cb ], [ @.str.380, %bb.cc ], [ @.str.381, %bb.cd ], [ @.str.382, %bb.ce ], [ @.str.383, %bb.cf ], [ @.str.384, %bb.cg ], [ @.str.385, %bb.ch ], [ @.str.386, %bb.ci ], [ @.str.387, %bb.cj ], [ @.str.388, %bb.ck ], [ @.str.389, %bb.cl ], [ @.str.390, %bb.cm ], [ @.str.391, %bb.cn ], [ @.str.392, %bb.co ], [ @.str.393, %bb.cp ], [ @.str.394, %bb.cq ], [ @.str.395, %bb.cr ], [ @.str.396, %bb.cs ], [ @.str.397, %bb.ct ], [ @.str.398, %bb.cu ], [ @.str.399, %bb.cv ], [ @.str.400, %bb.cw ], [ @.str.401, %bb.cx ], [ @.str.402, %bb.cy ], [ @.str.403, %bb.cz ], [ @.str.404, %bb.da ], [ @.str.405, %bb.db ], [ @.str.406, %bb.dc ], [ @.str.407, %bb.dd ], [ @.str.408, %bb.de ], [ @.str.409, %bb.df ], [ @.str.410, %bb.dg ], [ @.str.411, %bb.dh ], [ @.str.412, %bb.di ], [ @.str.413, %bb.dj ], [ @.str.414, %bb.dk ], [ @.str.415, %bb.dl ], [ @.str.416, %bb.dm ], [ @.str.417, %bb.dn ], [ @.str.418, %bb.do ], [ @.str.419, %bb.dp ], [ @.str.420, %bb.dq ], [ @.str.421, %bb.dr ], [ @.str.422, %bb.ds ], [ @.str.423, %bb.dt ], [ @.str.424, %bb.du ], [ @.str.425, %bb.dv ], [ @.str.426, %bb.dw ], [ @.str.427, %bb.dx ], [ @.str.428, %bb.dy ], [ @.str.429, %bb.dz ], [ @.str.430, %bb.ea ], [ @.str.431, %bb.eb ], [ @.str.432, %bb.ec ], [ @.str.433, %bb.ed ], [ @.str.434, %bb.ee ], [ @.str.435, %bb.ef ], [ @.str.436, %bb.eg ], [ @.str.437, %bb.eh ], [ @.str.438, %bb.ei ], [ @.str.439, %bb.ej ], [ @.str.440, %bb.ek ], [ @.str.441, %bb.el ], [ @.str.442, %bb.em ], [ @.str.443, %bb.en ], [ @.str.444, %bb.eo ], [ @.str.445, %bb.ep ], [ @.str.446, %bb.eq ], [ @.str.447, %bb.er ], [ @.str.448, %bb.es ], [ @.str.449, %bb.et ], [ @.str.450, %bb.eu ], [ @.str.451, %bb.ev ], [ @.str.452, %bb.ew ], [ @.str.453, %bb.ex ], [ @.str.454, %bb.ey ], [ @.str.455, %bb.ez ], [ @.str.456, %bb.fa ], [ @.str.457, %bb.fb ], [ @.str.458, %bb.fc ], [ @.str.459, %bb.fd ], [ @.str.460, %bb.fe ], [ @.str.461, %bb.ff ], [ @.str.462, %bb.fg ], [ @.str.463, %bb.fh ], [ @.str.464, %bb.fi ], [ @.str.465, %bb.fj ], [ @.str.318, %bb.s ], [ %switch.load65, %switch.lookup ]
  %.sroa.169.0.i = phi ptr [ null, %bb.fk ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %.thread.thread.thread ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.j ], [ @.str.313, %bb.p ], [ @.str.315, %bb.q ], [ @.str.317, %bb.r ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ae ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.ao ], [ null, %bb.ap ], [ null, %bb.aq ], [ null, %bb.ar ], [ null, %bb.as ], [ null, %bb.at ], [ null, %bb.au ], [ null, %bb.av ], [ null, %bb.aw ], [ null, %bb.ax ], [ null, %bb.ay ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.bb ], [ null, %bb.bc ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.bf ], [ null, %bb.bg ], [ null, %bb.bh ], [ null, %bb.bi ], [ null, %bb.bj ], [ null, %bb.bk ], [ null, %bb.bl ], [ null, %bb.bm ], [ null, %bb.bn ], [ null, %bb.bo ], [ null, %bb.bp ], [ null, %bb.bq ], [ null, %bb.br ], [ null, %bb.bs ], [ null, %bb.bt ], [ null, %bb.bu ], [ null, %bb.bv ], [ null, %bb.bw ], [ null, %bb.bx ], [ null, %bb.by ], [ null, %bb.bz ], [ null, %bb.ca ], [ null, %bb.cb ], [ null, %bb.cc ], [ null, %bb.cd ], [ null, %bb.ce ], [ null, %bb.cf ], [ null, %bb.cg ], [ null, %bb.ch ], [ null, %bb.ci ], [ null, %bb.cj ], [ null, %bb.ck ], [ null, %bb.cl ], [ null, %bb.cm ], [ null, %bb.cn ], [ null, %bb.co ], [ null, %bb.cp ], [ null, %bb.cq ], [ null, %bb.cr ], [ null, %bb.cs ], [ null, %bb.ct ], [ null, %bb.cu ], [ null, %bb.cv ], [ null, %bb.cw ], [ null, %bb.cx ], [ null, %bb.cy ], [ null, %bb.cz ], [ null, %bb.da ], [ null, %bb.db ], [ null, %bb.dc ], [ null, %bb.dd ], [ null, %bb.de ], [ null, %bb.df ], [ null, %bb.dg ], [ null, %bb.dh ], [ null, %bb.di ], [ null, %bb.dj ], [ null, %bb.dk ], [ null, %bb.dl ], [ null, %bb.dm ], [ null, %bb.dn ], [ null, %bb.do ], [ null, %bb.dp ], [ null, %bb.dq ], [ null, %bb.dr ], [ null, %bb.ds ], [ null, %bb.dt ], [ null, %bb.du ], [ null, %bb.dv ], [ null, %bb.dw ], [ null, %bb.dx ], [ null, %bb.dy ], [ null, %bb.dz ], [ null, %bb.ea ], [ null, %bb.eb ], [ null, %bb.ec ], [ null, %bb.ed ], [ null, %bb.ee ], [ null, %bb.ef ], [ null, %bb.eg ], [ null, %bb.eh ], [ null, %bb.ei ], [ null, %bb.ej ], [ null, %bb.ek ], [ null, %bb.el ], [ null, %bb.em ], [ null, %bb.en ], [ null, %bb.eo ], [ null, %bb.ep ], [ null, %bb.eq ], [ null, %bb.er ], [ null, %bb.es ], [ null, %bb.et ], [ null, %bb.eu ], [ null, %bb.ev ], [ null, %bb.ew ], [ null, %bb.ex ], [ null, %bb.ey ], [ null, %bb.ez ], [ null, %bb.fa ], [ null, %bb.fb ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.fe ], [ null, %bb.ff ], [ null, %bb.fg ], [ null, %bb.fh ], [ null, %bb.fi ], [ null, %bb.fj ], [ null, %bb.s ], [ %switch.load67, %switch.lookup ]
  %.sroa.189.0.i = phi i32 [ -1, %bb.fk ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %.thread.thread.thread ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ], [ 2, %bb.j ], [ 1, %bb.p ], [ 3, %bb.q ], [ 0, %bb.r ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.ac ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ai ], [ -1, %bb.aj ], [ -1, %bb.ak ], [ -1, %bb.al ], [ -1, %bb.am ], [ -1, %bb.an ], [ -1, %bb.ao ], [ -1, %bb.ap ], [ -1, %bb.aq ], [ -1, %bb.ar ], [ -1, %bb.as ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.av ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.ba ], [ -1, %bb.bb ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.be ], [ -1, %bb.bf ], [ -1, %bb.bg ], [ -1, %bb.bh ], [ -1, %bb.bi ], [ -1, %bb.bj ], [ -1, %bb.bk ], [ -1, %bb.bl ], [ -1, %bb.bm ], [ -1, %bb.bn ], [ -1, %bb.bo ], [ -1, %bb.bp ], [ -1, %bb.bq ], [ -1, %bb.br ], [ -1, %bb.bs ], [ -1, %bb.bt ], [ -1, %bb.bu ], [ -1, %bb.bv ], [ -1, %bb.bw ], [ -1, %bb.bx ], [ -1, %bb.by ], [ -1, %bb.bz ], [ -1, %bb.ca ], [ -1, %bb.cb ], [ -1, %bb.cc ], [ -1, %bb.cd ], [ -1, %bb.ce ], [ -1, %bb.cf ], [ -1, %bb.cg ], [ -1, %bb.ch ], [ -1, %bb.ci ], [ -1, %bb.cj ], [ -1, %bb.ck ], [ -1, %bb.cl ], [ -1, %bb.cm ], [ -1, %bb.cn ], [ -1, %bb.co ], [ -1, %bb.cp ], [ -1, %bb.cq ], [ -1, %bb.cr ], [ -1, %bb.cs ], [ -1, %bb.ct ], [ -1, %bb.cu ], [ -1, %bb.cv ], [ -1, %bb.cw ], [ -1, %bb.cx ], [ -1, %bb.cy ], [ -1, %bb.cz ], [ -1, %bb.da ], [ -1, %bb.db ], [ -1, %bb.dc ], [ -1, %bb.dd ], [ -1, %bb.de ], [ -1, %bb.df ], [ -1, %bb.dg ], [ -1, %bb.dh ], [ -1, %bb.di ], [ -1, %bb.dj ], [ -1, %bb.dk ], [ -1, %bb.dl ], [ -1, %bb.dm ], [ -1, %bb.dn ], [ -1, %bb.do ], [ -1, %bb.dp ], [ -1, %bb.dq ], [ -1, %bb.dr ], [ -1, %bb.ds ], [ -1, %bb.dt ], [ -1, %bb.du ], [ -1, %bb.dv ], [ -1, %bb.dw ], [ -1, %bb.dx ], [ -1, %bb.dy ], [ -1, %bb.dz ], [ -1, %bb.ea ], [ -1, %bb.eb ], [ -1, %bb.ec ], [ -1, %bb.ed ], [ -1, %bb.ee ], [ -1, %bb.ef ], [ -1, %bb.eg ], [ -1, %bb.eh ], [ -1, %bb.ei ], [ -1, %bb.ej ], [ -1, %bb.ek ], [ -1, %bb.el ], [ -1, %bb.em ], [ -1, %bb.en ], [ -1, %bb.eo ], [ -1, %bb.ep ], [ -1, %bb.eq ], [ -1, %bb.er ], [ -1, %bb.es ], [ -1, %bb.et ], [ -1, %bb.eu ], [ -1, %bb.ev ], [ -1, %bb.ew ], [ -1, %bb.ex ], [ -1, %bb.ey ], [ -1, %bb.ez ], [ -1, %bb.fa ], [ -1, %bb.fb ], [ -1, %bb.fc ], [ -1, %bb.fd ], [ -1, %bb.fe ], [ -1, %bb.ff ], [ -1, %bb.fg ], [ -1, %bb.fh ], [ -1, %bb.fi ], [ -1, %bb.fj ], [ 4, %bb.s ], [ %3, %switch.lookup ]
  store ptr %.sroa.0.0.i, ptr %0, align 8, !tbaa !86, !alias.scope !87
  %.sroa.169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.169.0.i, ptr %.sroa.169.0..sroa_idx.i, align 8, !tbaa !86, !alias.scope !87
  %.sroa.172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.172.0.i22, ptr %.sroa.172.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !87
  %.sroa.177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.177.0..sroa_idx.i, align 4, !tbaa !12, !alias.scope !87
  %.sroa.17717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.17717.0.i24, ptr %.sroa.17717.0..sroa_idx.i, align 8, !tbaa !89, !alias.scope !87
  %.sroa.182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.182.0.i26, ptr %.sroa.182.0..sroa_idx.i, align 4, !tbaa !91, !alias.scope !87
  %.sroa.187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %.sroa.187.0..sroa_idx.i, align 8, !alias.scope !87
  %.sroa.188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.081020, ptr %.sroa.188.0..sroa_idx.i, align 4, !alias.scope !87
  %.sroa.189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.189.0.i, ptr %.sroa.189.0..sroa_idx.i, align 8, !alias.scope !87
  %.sroa.194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 -1, ptr %.sroa.194.0..sroa_idx.i, align 4, !tbaa !54, !alias.scope !87
  %.sroa.194.sroa.5.0..sroa.194.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.194.sroa.5.0..sroa.194.0..sroa_idx.sroa_idx.i, i8 0, i64 28, i1 false), !alias.scope !87
  br label %_ZL23GetARMDWARFRegisterInfoj.exit

_ZL23GetARMDWARFRegisterInfoj.exit:               ; preds = %bb.b, %bb.a, %.thread.thread.thread.thread45, %.thread.thread.thread
  %.sink = phi i8 [ 0, %.thread.thread.thread ], [ 0, %bb.b ], [ 1, %.thread.thread.thread.thread45 ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink, ptr %i.g, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, 12) i32 @_ZNK12lldb_private21EmulateInstructionARM29GetFramePointerRegisterNumberEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = icmp eq i32 %i.b, 17
  br i1 %i.c, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56   ; 2 uses
  %switch.tableidx = add i32 %i.e, -1             ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 30
  %switch.shifted = lshr i32 771752209, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.f, i1 %switch.lobit, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8
  %.fr = freeze i32 %i.h
  %i.i = icmp eq i32 %.fr, 1
  %i.j = or i1 %or.cond, %i.i
  %i.k = select i1 %i.j, i32 7, i32 11            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread
  %i.o = icmp eq i32 %i.e, 15
  %spec.select = select i1 %i.o, i32 %i.k, i32 7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread, %bb.a
  %.04 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ], [ %i.k, %.thread ]
  ret i32 %.04
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 7, 12) i32 @_ZNK12lldb_private21EmulateInstructionARM34GetFramePointerDWARFRegisterNumberEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56   ; 2 uses
  switch i32 %i.b, label %bb.b [
    i32 1, label %.thread
    i32 9, label %.thread
    i32 5, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %.fr = freeze i32 %i.d
  %i.e = icmp eq i32 %.fr, 1
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i32 [ 7, %.thread ], [ 11, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = icmp eq i32 %i.h, 1
  %i.j = icmp ne i32 %i.b, 15
  %i.k = and i1 %i.j, %i.i
  %.0 = select i1 %i.k, i32 7, i32 %i.f
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM11EmulatePUSHEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 12 uses
  %4 = alloca %"class.std::optional", align 8     ; 6 uses
  %5 = alloca %"class.std::optional", align 8     ; 5 uses
  %6 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 2 uses
  %i.e = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.f = and i64 %i.e, 4294967295                 ; 3 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.critedge63

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %.critedge63 [
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 0, label %bb.j
    i32 1, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 255
  %i.j = shl i32 %1, 6
  %i.k = and i32 %i.j, 16384
  %spec.select = or disjoint i32 %i.k, %i.i       ; 3 uses
  %.not6.i = icmp eq i32 %spec.select, 0
  br i1 %.not6.i, label %.critedge63, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.l = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.057.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %i.m = add nuw nsw i64 %.057.i, 32767
  %i.n = and i64 %i.m, %.057.i                    ; 2 uses
  %i.o = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge63, label %.lr.ph.i73.preheader

bb.e:                                             ; preds = %bb.c
  %i.q = and i32 %1, 24575                        ; 3 uses
  %.not6.i65 = icmp eq i32 %i.q, 0
  br i1 %.not6.i65, label %.critedge63, label %.lr.ph.i66.preheader

.lr.ph.i66.preheader:                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.q to i64
  br label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66
  %.08.i67 = phi i32 [ %i.u, %.lr.ph.i66 ], [ 0, %.lr.ph.i66.preheader ]
  %.057.i68 = phi i64 [ %i.t, %.lr.ph.i66 ], [ %i.r, %.lr.ph.i66.preheader ] ; 2 uses
  %i.s = add nuw nsw i64 %.057.i68, 32767
  %i.t = and i64 %i.s, %.057.i68                  ; 2 uses
  %i.u = add i32 %.08.i67, 1                      ; 2 uses
  %.not.i69 = icmp eq i64 %i.t, 0
  br i1 %.not.i69, label %_ZN12lldb_privateL8BitCountEm.exit71, label %.lr.ph.i66, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit71:             ; preds = %.lr.ph.i66
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %.critedge63, label %.lr.ph.i73.preheader

bb.f:                                             ; preds = %bb.c
  %i.w = and i32 %1, 53248
  %i.x = icmp eq i32 %i.w, 53248
  br i1 %i.x, label %.critedge63, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i32 %1, 12
  %i.z = and i32 %i.y, 15
  %i.aa = shl nuw nsw i32 1, %i.z
  br label %.lr.ph.i73.preheader

bb.h:                                             ; preds = %bb.c
  %i.ab = lshr i32 %1, 12
  %i.ac = and i32 %i.ab, 15                       ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 13
  br i1 %i.ad, label %.critedge63, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = shl nuw nsw i32 1, %i.ac
  br label %.lr.ph.i73.preheader

bb.j:                                             ; preds = %bb.c
  %i.af = and i32 %1, 65535                       ; 2 uses
  %.not6.i72 = icmp eq i32 %i.af, 0
  br i1 %.not6.i72, label %_ZN12lldb_privateL8BitCountEm.exit78, label %.lr.ph.i73.preheader

.lr.ph.i73.preheader:                             ; preds = %bb.i, %bb.g, %_ZN12lldb_privateL8BitCountEm.exit71, %_ZN12lldb_privateL8BitCountEm.exit, %bb.j
  %.in = phi i32 [ %i.af, %bb.j ], [ %i.ae, %bb.i ], [ %i.aa, %bb.g ], [ %i.q, %_ZN12lldb_privateL8BitCountEm.exit71 ], [ %spec.select, %_ZN12lldb_privateL8BitCountEm.exit ]
  %i.ag = zext i32 %.in to i64                    ; 2 uses
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader, %.lr.ph.i73
  %.08.i74 = phi i32 [ %i.aj, %.lr.ph.i73 ], [ 0, %.lr.ph.i73.preheader ]
  %.057.i75 = phi i64 [ %i.ai, %.lr.ph.i73 ], [ %i.ag, %.lr.ph.i73.preheader ] ; 2 uses
  %i.ah = add nuw nsw i64 %.057.i75, 2147483647
  %i.ai = and i64 %i.ah, %.057.i75                ; 2 uses
  %i.aj = add i32 %.08.i74, 1                     ; 2 uses
  %.not.i76 = icmp eq i64 %i.ai, 0
  br i1 %.not.i76, label %_ZN12lldb_privateL8BitCountEm.exit78.loopexit, label %.lr.ph.i73, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit78.loopexit:    ; preds = %.lr.ph.i73
  %i.ak = mul i32 %i.aj, %i.d
  %i.al = zext i32 %i.ak to i64
  br label %_ZN12lldb_privateL8BitCountEm.exit78

_ZN12lldb_privateL8BitCountEm.exit78:             ; preds = %_ZN12lldb_privateL8BitCountEm.exit78.loopexit, %bb.j
  %i.am = phi i64 [ 0, %bb.j ], [ %i.ag, %_ZN12lldb_privateL8BitCountEm.exit78.loopexit ] ; 2 uses
  %.0.lcssa.i77 = phi i64 [ 0, %bb.j ], [ %i.al, %_ZN12lldb_privateL8BitCountEm.exit78.loopexit ] ; 2 uses
  %i.an = sub nsw i64 %i.f, %.0.lcssa.i77         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  store i32 13, ptr %i.ao, align 4, !tbaa !50
  store i32 3, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ap = load ptr, ptr %0, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef 13) #20
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.av = zext i32 %i.d to i64                    ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit78, %bb.q
  %indvars.iv = phi i64 [ 0, %_ZN12lldb_privateL8BitCountEm.exit78 ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %.04787 = phi i64 [ %i.an, %_ZN12lldb_privateL8BitCountEm.exit78 ], [ %.2, %bb.q ] ; 4 uses
  %i.aw = shl nuw nsw i64 1, %indvars.iv
  %i.ax = and i64 %i.aw, %i.am
  %.not83 = icmp eq i64 %i.ax, 0
  br i1 %.not83, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ay = load ptr, ptr %0, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  call void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.bb) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.bc = sub i64 %.04787, %i.f
  store i32 2, ptr %i.ao, align 4, !tbaa !50
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !54
  switch i32 %i.bb, label %bb.n [
    i32 13, label %.thread.i
    i32 14, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %.thread.i

bb.n:                                             ; preds = %bb.l
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %.013.ph.i = phi i32 [ 1, %bb.n ], [ 2, %bb.m ], [ 2, %bb.l ]
  %.012.ph.i = phi i32 [ %i.bb, %bb.n ], [ 3, %bb.m ], [ 1, %bb.l ]
  %i.bd = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.be = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.thread.i
  %i.bg = and i64 %i.bd, 4294967295
  %i.bh = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %.04787, i64 noundef %i.bg, i64 noundef %i.av) #20
  br i1 %i.bh, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bi = add i64 %.04787, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.2 = phi i64 [ %i.bi, %bb.p ], [ %.04787, %bb.k ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %bb.r, label %bb.k, !llvm.loop !94

bb.r:                                             ; preds = %bb.q
  %i.bj = and i64 %i.am, 32768
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %bb.t, label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit80

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit80: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bk = load ptr, ptr %0, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef 15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.bn = sub i64 %.2, %i.f
  store i32 2, ptr %i.ao, align 4, !tbaa !50
  store i64 %i.bn, ptr %i.au, align 8, !tbaa !54
  %i.bo = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bp = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.s, label %.critedge60

bb.s:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit80
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !45
  %i.bt = icmp eq i32 %i.bs, 0
  %.014.i79.v = select i1 %i.bt, i64 8, i64 4
  %.014.i79 = add i64 %.014.i79.v, %i.bo
  %i.bu = and i64 %.014.i79, 4294967295
  %i.bv = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %.2, i64 noundef %i.bu, i64 noundef %i.av) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.bv, label %bb.t, label %.critedge63.critedge

bb.t:                                             ; preds = %bb.s, %bb.r
  store i32 5, ptr %3, align 8, !tbaa !49
  %i.bw = sub nsw i64 0, %.0.lcssa.i77
  store i32 8, ptr %i.ao, align 4, !tbaa !50
  store i64 %i.bw, ptr %i.as, align 8, !tbaa !54
  %i.bx = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 2, i32 noundef 1, i64 noundef %i.an) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %i.bx, label %bb.u, label %.critedge63

.critedge:                                        ; preds = %bb.o, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.critedge63.critedge

.critedge60:                                      ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.critedge63.critedge

bb.u:                                             ; preds = %bb.t, %bb.a
  br label %.critedge63

.critedge63.critedge:                             ; preds = %bb.s, %.critedge60, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge63

.critedge63:                                      ; preds = %bb.e, %bb.d, %.critedge63.critedge, %bb.b, %bb.h, %bb.f, %_ZN12lldb_privateL8BitCountEm.exit, %_ZN12lldb_privateL8BitCountEm.exit71, %bb.c, %bb.t, %bb.u
  %.8 = phi i1 [ true, %bb.u ], [ false, %bb.t ], [ false, %bb.c ], [ false, %_ZN12lldb_privateL8BitCountEm.exit71 ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.b ], [ false, %.critedge63.critedge ], [ false, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !52, !noundef !53
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN12lldb_private21EmulateInstructionARM11CurrentCondEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45
  switch i32 %i.e, label %_ZN12lldb_private21EmulateInstructionARM11CurrentCondEj.exit [
    i32 1, label %bb.d
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %1, 28
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.h = load i32, ptr %i.g, align 4, !tbaa !60
  switch i32 %i.h, label %_ZN12lldb_private21EmulateInstructionARM11CurrentCondEj.exit [
    i32 7, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.i
    i32 5, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread21.i
    i32 2, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread18.i
    i32 4, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.i
    i32 3, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread21.i
  ]

_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.i:  ; preds = %bb.d, %bb.d
  %.0.shrunk.i.in.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.0.shrunk.i.i = load i8, ptr %.0.shrunk.i.in.i, align 8, !tbaa !54
  switch i8 %.0.shrunk.i.i, label %_ZN12lldb_private21EmulateInstructionARM11CurrentCondEj.exit [
    i8 2, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread18.i
    i8 4, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread21.i
  ]

_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread18.i: ; preds = %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.i, %bb.d
  %i.i = and i32 %1, 61440
  %i.j = icmp eq i32 %i.i, 53248
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread18.i
  %i.k = lshr i32 %1, 8
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %.not.i = icmp eq i32 %i.l, 15
  br i1 %.not.i, label %bb.g, label %bb.h

_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread21.i: ; preds = %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.i, %bb.d, %bb.d
  %i.m = and i32 %1, -134164480
end_hunk_0
begin_hunk_1_@_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj:bb.a
  %i.w = lshr i32 %.1.i.ph, 1
  switch i32 %i.w, label %default.unreachable39 [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.p
    i32 5, label %bb.r
    i32 6, label %bb.t
    i32 7, label %_ZN12lldb_private21EmulateInstructionARM11CurrentCondEj.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.y = load i32, ptr %i.x, align 8, !tbaa !61   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = and i32 %i.y, 1073741824
  %i.ab = icmp ne i32 %i.aa, 0
  br label %bb.v

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = and i32 %i.ad, 536870912
  %i.ag = icmp ne i32 %i.af, 0
  br label %bb.v

bb.m:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !61
  %spec.select29 = icmp slt i32 %i.ai, 1
  br label %bb.v

bb.n:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = and i32 %i.ak, 268435456
  %i.an = icmp ne i32 %i.am, 0
  br label %bb.v

bb.p:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = and i32 %i.ap, 1610612736
  %i.as = icmp eq i32 %i.ar, 536870912
  br label %bb.v

bb.r:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = load i32, ptr %i.at, align 8, !tbaa !61 ; 3 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.lobit22 = lshr i32 %i.au, 31
  %i.aw = lshr i32 %i.au, 28
  %.lobit23 = and i32 %i.aw, 1
  %i.ax = icmp eq i32 %.lobit22, %.lobit23
  br label %bb.v

bb.t:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !61 ; 4 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.lobit = lshr i32 %i.az, 31
  %i.bb = lshr i32 %i.az, 28
  %.lobit21 = and i32 %i.bb, 1
  %i.bc = icmp eq i32 %.lobit, %.lobit21
  %i.bd = and i32 %i.az, 1073741824
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = and i1 %i.be, %i.bc
  br label %bb.v

default.unreachable39:                            ; preds = %bb.h
  unreachable

bb.v:                                             ; preds = %bb.m, %bb.t, %bb.r, %bb.p, %bb.n, %bb.k, %bb.i, %bb.u, %bb.s, %bb.q, %bb.o, %bb.l, %bb.j
  %.011 = phi i1 [ true, %bb.r ], [ %i.bf, %bb.u ], [ %i.ab, %bb.j ], [ true, %bb.i ], [ %i.ag, %bb.l ], [ true, %bb.k ], [ true, %bb.t ], [ %spec.select29, %bb.m ], [ %i.an, %bb.o ], [ true, %bb.n ], [ %i.as, %bb.q ], [ true, %bb.p ], [ %i.ax, %bb.s ]
  %i.bg = trunc i32 %.1.i.ph to i1
  %spec.select = xor i1 %.011, %i.bg
  br label %_ZN12lldb_private21EmulateInstructionARM11CurrentCondEj.exit

_ZN12lldb_private21EmulateInstructionARM11CurrentCondEj.exit: ; preds = %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.i, %bb.d, %bb.b, %bb.h, %bb.v, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %bb.h ], [ %spec.select, %bb.v ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 13, label %.thread
    i32 14, label %bb.b
    i32 15, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 13
  br i1 %i.a, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %2, align 1, !tbaa !51
  br label %bb.h

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.013.ph = phi i32 [ 1, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ]
  %.012.ph = phi i32 [ %1, %bb.c ], [ 3, %bb.b ], [ 1, %bb.a ]
  %i.b = tail call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %.013.ph, i32 noundef %.012.ph, i64 noundef 0, ptr noundef %2) #20
  %i.c = trunc i64 %i.b to i32
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef %2) #20
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %i.e, 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = add i32 %i.e, 4
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f, %bb.d
  %.014 = phi i32 [ -1, %bb.d ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %i.c, %.thread ]
  ret i32 %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM10EmulatePOPEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 13 uses
  %4 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 2 uses
  %i.e = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 1, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.f = and i64 %i.e, 4294967295                 ; 3 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %.critedge [
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.h
    i32 0, label %bb.k
    i32 1, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 255
  %i.j = shl i32 %1, 7
  %i.k = and i32 %i.j, 32768
  %spec.select = or disjoint i32 %i.k, %i.i       ; 3 uses
  %.not6.i = icmp eq i32 %spec.select, 0
  br i1 %.not6.i, label %.critedge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.l = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.057.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %i.m = add nuw nsw i64 %.057.i, 65535
  %i.n = and i64 %i.m, %.057.i                    ; 2 uses
  %i.o = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %.lr.ph.i64.preheader

bb.e:                                             ; preds = %bb.c
  %i.q = and i32 %1, 57343                        ; 5 uses
  %.not6.i56 = icmp eq i32 %i.q, 0
  br i1 %.not6.i56, label %.critedge, label %.lr.ph.i57.preheader

.lr.ph.i57.preheader:                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.q to i64
  br label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.preheader, %.lr.ph.i57
  %.08.i58 = phi i32 [ %i.u, %.lr.ph.i57 ], [ 0, %.lr.ph.i57.preheader ]
  %.057.i59 = phi i64 [ %i.t, %.lr.ph.i57 ], [ %i.r, %.lr.ph.i57.preheader ] ; 2 uses
  %i.s = add nuw nsw i64 %.057.i59, 65535
  %i.t = and i64 %i.s, %.057.i59                  ; 2 uses
  %i.u = add i32 %.08.i58, 1                      ; 2 uses
  %.not.i60 = icmp eq i64 %i.t, 0
  br i1 %.not.i60, label %_ZN12lldb_privateL8BitCountEm.exit62, label %.lr.ph.i57, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit62:             ; preds = %.lr.ph.i57
  %i.v = icmp ult i32 %i.u, 2
  %i.w = and i32 %1, 49152
  %or.cond85.not = icmp eq i32 %i.w, 49152
  %or.cond99 = or i1 %i.v, %or.cond85.not
  br i1 %or.cond99, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit62
  %.not79 = icmp samesign ult i32 %i.q, 32768
  br i1 %.not79, label %.lr.ph.i64.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.y = load i32, ptr %i.x, align 4, !tbaa !45
  %i.z = icmp ne i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp ult i32 %i.ab, 2
  %or.cond = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %or.cond, label %.lr.ph.i64.preheader, label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.ad = lshr i32 %1, 12
  %i.ae = and i32 %i.ad, 15                       ; 2 uses
  switch i32 %i.ae, label %bb.j [
    i32 13, label %.critedge
    i32 15, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = icmp ne i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp ult i32 %i.aj, 2
  %or.cond74 = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond74, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.al = shl nuw nsw i32 1, %i.ae
  br label %.lr.ph.i64.preheader

bb.k:                                             ; preds = %bb.c
  %i.am = and i32 %1, 65535                       ; 2 uses
  %i.an = and i32 %1, 8192
  %.not75 = icmp eq i32 %i.an, 0
  br i1 %.not75, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !44
  %i.aq = icmp ugt i32 %i.ap, 255
  br i1 %i.aq, label %.critedge, label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.ar = lshr i32 %1, 12
  %i.as = and i32 %i.ar, 15                       ; 2 uses
  %i.at = icmp eq i32 %i.as, 13
  br i1 %i.at, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = shl nuw nsw i32 1, %i.as
  br label %.lr.ph.i64.preheader

bb.o:                                             ; preds = %bb.k, %bb.l
  %.not6.i63 = icmp eq i32 %i.am, 0
  br i1 %.not6.i63, label %_ZN12lldb_privateL8BitCountEm.exit69, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %bb.j, %bb.f, %bb.g, %bb.n, %_ZN12lldb_privateL8BitCountEm.exit, %bb.o
  %.in = phi i32 [ %i.am, %bb.o ], [ %i.al, %bb.j ], [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ %i.au, %bb.n ], [ %spec.select, %_ZN12lldb_privateL8BitCountEm.exit ]
  %i.av = zext i32 %.in to i64                    ; 2 uses
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.preheader, %.lr.ph.i64
  %.08.i65 = phi i32 [ %i.ay, %.lr.ph.i64 ], [ 0, %.lr.ph.i64.preheader ]
  %.057.i66 = phi i64 [ %i.ax, %.lr.ph.i64 ], [ %i.av, %.lr.ph.i64.preheader ] ; 2 uses
  %i.aw = add nuw nsw i64 %.057.i66, 2147483647
  %i.ax = and i64 %i.aw, %.057.i66                ; 2 uses
  %i.ay = add i32 %.08.i65, 1                     ; 2 uses
  %.not.i67 = icmp eq i64 %i.ax, 0
  br i1 %.not.i67, label %_ZN12lldb_privateL8BitCountEm.exit69.loopexit, label %.lr.ph.i64, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit69.loopexit:    ; preds = %.lr.ph.i64
  %i.az = mul i32 %i.ay, %i.d
  %i.ba = zext i32 %i.az to i64
  br label %_ZN12lldb_privateL8BitCountEm.exit69

_ZN12lldb_privateL8BitCountEm.exit69:             ; preds = %_ZN12lldb_privateL8BitCountEm.exit69.loopexit, %bb.o
  %i.bb = phi i64 [ 0, %bb.o ], [ %i.av, %_ZN12lldb_privateL8BitCountEm.exit69.loopexit ] ; 2 uses
  %.0.lcssa.i68 = phi i64 [ 0, %bb.o ], [ %i.ba, %_ZN12lldb_privateL8BitCountEm.exit69.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 4, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bd = load ptr, ptr %0, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef 13) #20
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bh = zext i32 %i.d to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit69, %bb.t
  %indvars.iv = phi i64 [ 0, %_ZN12lldb_privateL8BitCountEm.exit69 ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %.04389 = phi i64 [ %i.f, %_ZN12lldb_privateL8BitCountEm.exit69 ], [ %.1, %bb.t ] ; 4 uses
  %i.bi = shl nuw nsw i64 1, %indvars.iv
  %i.bj = and i64 %i.bi, %i.bb
  %.not84 = icmp eq i64 %i.bj, 0
  br i1 %.not84, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 9, ptr %i.bc, align 4, !tbaa !50
  store i64 %.04389, ptr %i.bg, align 8, !tbaa !54
  %i.bk = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %.04389, i64 noundef 4, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bl = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.r, label %.critedge.critedge

bb.r:                                             ; preds = %bb.q
  %i.bn = and i64 %i.bk, 4294967295
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32
  %i.bp = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.bo, i64 noundef %i.bn) #20
  br i1 %i.bp, label %bb.s, label %.critedge.critedge

bb.s:                                             ; preds = %bb.r
  %i.bq = add i64 %.04389, %i.bh
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %.1 = phi i64 [ %i.bq, %bb.s ], [ %.04389, %bb.p ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %bb.u, label %bb.p, !llvm.loop !95

bb.u:                                             ; preds = %bb.t
  %i.br = and i64 %i.bb, 32768
  %.not83 = icmp eq i64 %i.br, 0
  br i1 %.not83, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.bs = sub i64 %.1, %i.f
  store i32 0, ptr %i.bc, align 4, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !54
  %i.bu = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %.1, i64 noundef 4, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bv = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.w, label %.critedge.critedge

bb.w:                                             ; preds = %bb.v
  %i.bx = trunc i64 %i.bu to i32
  %i.by = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM11LoadWritePCERNS_18EmulateInstruction7ContextEj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef %i.bx)
  br i1 %i.by, label %bb.x, label %.critedge.critedge

bb.x:                                             ; preds = %bb.w, %bb.u
  store i32 5, ptr %3, align 8, !tbaa !49
  store i32 8, ptr %i.bc, align 4, !tbaa !50
  store i64 %.0.lcssa.i68, ptr %i.bg, align 8, !tbaa !54
  %i.bz = add nuw nsw i64 %i.f, %.0.lcssa.i68
  %i.ca = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 2, i32 noundef 1, i64 noundef %i.bz) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %i.ca, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x, %bb.a
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.r, %bb.q, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.g, %bb.e, %bb.d, %.critedge.critedge, %bb.b, %bb.m, %bb.l, %_ZN12lldb_privateL8BitCountEm.exit, %_ZN12lldb_privateL8BitCountEm.exit62, %bb.h, %bb.c, %bb.x, %bb.y
  %.3 = phi i1 [ true, %bb.y ], [ false, %bb.x ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %_ZN12lldb_privateL8BitCountEm.exit62 ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.b ], [ false, %.critedge.critedge ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM9InITBlockEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, 0
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM13LastInITBlockEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN12lldb_private21EmulateInstructionARM11ArchVersionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(209) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM11LoadWritePCERNS_18EmulateInstruction7ContextEj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp ugt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not19.i = icmp eq i64 %i.e, 0
  br i1 %.not19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  %.not13.not.i = icmp eq i32 %i.g, 1
  br i1 %.not13.not.i, label %.sink.split.i, label %.split.thread.i

.split.thread.i:                                  ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.k = or i32 %i.i, 32
  store i32 %i.k, ptr %i.j, align 4, !tbaa !62
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = and i64 %i.d, 2
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZN12lldb_private21EmulateInstructionARM9BXWritePCERNS_18EmulateInstruction7ContextEj.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %.not.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.not.i, label %.sink.split.i, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = load i32, ptr %i.p, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.s = and i32 %i.q, -33
  store i32 %i.s, ptr %i.r, align 4, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %.split.thread.i
  %.sink22.i = phi i32 [ -2, %.split.thread.i ], [ -4, %.thread.i ]
  %.sink.i = phi i32 [ 1, %.split.thread.i ], [ 0, %.thread.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 12, ptr %i.t, align 4, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink.i, ptr %i.u, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62
  %i.x = zext i32 %i.w to i64
  %i.y = tail call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i32 noundef 2, i32 noundef 4, i64 noundef %i.x) #20
  br i1 %i.y, label %bb.g, label %_ZN12lldb_private21EmulateInstructionARM9BXWritePCERNS_18EmulateInstruction7ContextEj.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %.sink26.i = phi i32 [ -2, %bb.c ], [ -4, %bb.e ]
  %.sink23.i = phi i32 [ 1, %bb.c ], [ 0, %bb.e ]
end_hunk_1
begin_hunk_2_@_ZN12lldb_private21EmulateInstructionARM15EmulateShiftRegEjNS0_11ARMEncodingENS_15ARM_ShifterTypeE:bb.a
bb.t:                                             ; preds = %bb.s
  switch i32 %3, label %.critedge [
    i32 0, label %_ZN12lldb_privateL5LSL_CEjjRjPb.exit.i
    i32 1, label %_ZN12lldb_privateL5LSR_CEjjRjPb.exit.i
    i32 2, label %bb.u
    i32 3, label %_ZN12lldb_privateL5ROR_CEjjRjPb.exit.i
    i32 4, label %bb.v
  ]

_ZN12lldb_privateL5LSL_CEjjRjPb.exit.i:           ; preds = %bb.t
  %i.bl = icmp samesign ult i32 %i.be, 33
  %i.bm = sub nuw nsw i32 32, %i.be
  %i.bn = lshr i32 %.014.i, %i.bm
  %i.bo = select i1 %i.bl, i32 %i.bn, i32 0
  %i.bp = shl i32 %.014.i, %i.be
  br label %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread

_ZN12lldb_privateL5LSR_CEjjRjPb.exit.i:           ; preds = %bb.t
  %i.bq = icmp samesign ult i32 %i.be, 33
  %i.br = add nsw i32 %i.be, -1
  %i.bs = lshr i32 %.014.i, %i.br
  %i.bt = select i1 %i.bq, i32 %i.bs, i32 0
  %i.bu = lshr i32 %.014.i, %i.be
  br label %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bv = icmp samesign ugt i32 %i.be, 32
  br i1 %i.bv, label %.critedge, label %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread71

_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread71: ; preds = %bb.u
  %i.bw = add nsw i32 %i.be, -1
  %i.bx = lshr i32 %.014.i, %i.bw
  %i.by = sext i32 %.014.i to i64
  %i.bz = zext nneg i32 %i.be to i64
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i32
  br label %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread

_ZN12lldb_privateL5ROR_CEjjRjPb.exit.i:           ; preds = %bb.t
  %i.cc = call noundef i32 @llvm.fshr.i32(i32 %.014.i, i32 %.014.i, i32 %.014.i45)
  %i.cd = lshr i32 %.014.i, 31
  br label %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.ce = call noundef i32 @llvm.fshl.i32(i32 %i.bh, i32 %.014.i, i32 31)
  br label %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread

_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread: ; preds = %bb.s, %_ZN12lldb_privateL5ROR_CEjjRjPb.exit.i, %_ZN12lldb_privateL5LSR_CEjjRjPb.exit.i, %_ZN12lldb_privateL5LSL_CEjjRjPb.exit.i, %bb.v, %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread71
  %.1.i66 = phi i32 [ %i.cb, %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread71 ], [ %.014.i, %bb.s ], [ %i.cc, %_ZN12lldb_privateL5ROR_CEjjRjPb.exit.i ], [ %i.bu, %_ZN12lldb_privateL5LSR_CEjjRjPb.exit.i ], [ %i.bp, %_ZN12lldb_privateL5LSL_CEjjRjPb.exit.i ], [ %i.ce, %bb.v ] ; 4 uses
  %.165 = phi i32 [ %i.bx, %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread71 ], [ %i.bh, %bb.s ], [ %i.cd, %_ZN12lldb_privateL5ROR_CEjjRjPb.exit.i ], [ %i.bt, %_ZN12lldb_privateL5LSR_CEjjRjPb.exit.i ], [ %i.bo, %_ZN12lldb_privateL5LSL_CEjjRjPb.exit.i ], [ %.014.i, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %4, align 8, !tbaa !49
  store i32 13, ptr %i.cf, align 4, !tbaa !50
  switch i32 %.036, label %bb.y [
    i32 15, label %bb.w
    i32 13, label %bb.z
    i32 14, label %bb.x
  ]

bb.w:                                             ; preds = %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread
  %i.cg = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM10ALUWritePCERNS_18EmulateInstruction7ContextEj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef %.1.i66)
  br i1 %i.cg, label %_ZN12lldb_private21EmulateInstructionARM25WriteCoreRegOptionalFlagsERNS_18EmulateInstruction7ContextEjjbjj.exit, label %.critedge.sink.split

bb.x:                                             ; preds = %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread
  br label %bb.z

bb.y:                                             ; preds = %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread
  %.017.i = phi i32 [ 1, %bb.y ], [ 2, %bb.x ], [ 2, %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread ]
  %.016.i = phi i32 [ %.036, %bb.y ], [ 3, %bb.x ], [ 1, %_ZN12lldb_privateL7Shift_CEjNS_15ARM_ShifterTypeEjjRjPb.exit.thread ]
  %i.ch = zext i32 %.1.i66 to i64
  %i.ci = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef %.017.i, i32 noundef %.016.i, i64 noundef %i.ch) #20 ; 2 uses
  %brmerge.not.i = and i1 %.033.in, %i.ci
  br i1 %brmerge.not.i, label %bb.aa, label %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i32, ptr %i.bf, align 8, !tbaa !61 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cl = and i32 %.1.i66, -2147483648
  %i.cm = and i32 %i.cj, 536870911
  %i.cn = icmp eq i32 %.1.i66, 0
  %i.co = select i1 %i.cn, i32 1073741824, i32 0
  %i.cp = shl i32 %.165, 29
  %i.cq = and i32 %i.cp, 536870912
  %i.cr = or disjoint i32 %i.cq, %i.cl
  %i.cs = or disjoint i32 %i.cr, %i.co
  %i.ct = or disjoint i32 %i.cs, %i.cm            ; 3 uses
  store i32 %i.ct, ptr %i.ck, align 4, !tbaa !12
  %.not12.i.i = icmp eq i32 %i.ct, %i.cj
  br i1 %.not12.i.i, label %_ZN12lldb_private21EmulateInstructionARM25WriteCoreRegOptionalFlagsERNS_18EmulateInstruction7ContextEjjbjj.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = zext i32 %i.ct to i64
  %i.cv = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 2, i32 noundef 4, i64 noundef %i.cu) #20
  br i1 %i.cv, label %_ZN12lldb_private21EmulateInstructionARM25WriteCoreRegOptionalFlagsERNS_18EmulateInstruction7ContextEjjbjj.exit, label %.critedge.sink.split

_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i: ; preds = %bb.z
  br i1 %i.ci, label %_ZN12lldb_private21EmulateInstructionARM25WriteCoreRegOptionalFlagsERNS_18EmulateInstruction7ContextEjjbjj.exit, label %.critedge.sink.split

_ZN12lldb_private21EmulateInstructionARM25WriteCoreRegOptionalFlagsERNS_18EmulateInstruction7ContextEjjbjj.exit: ; preds = %bb.w, %bb.aa, %bb.ab, %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.ab, %bb.w, %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i, %_ZN12lldb_private21EmulateInstructionARM25WriteCoreRegOptionalFlagsERNS_18EmulateInstruction7ContextEjjbjj.exit
  %.5.ph = phi i1 [ true, %_ZN12lldb_private21EmulateInstructionARM25WriteCoreRegOptionalFlagsERNS_18EmulateInstruction7ContextEjjbjj.exit ], [ false, %_ZN12lldb_private21EmulateInstructionARM10WriteFlagsERNS_18EmulateInstruction7ContextEjjj.exit.i ], [ false, %bb.w ], [ false, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.u, %bb.t, %bb.r, %bb.e, %bb.b, %bb.d, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit49, %bb.a
  %.5 = phi i1 [ true, %bb.a ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.t ], [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit49 ], [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.d ], [ %.5.ph, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM13EmulateLSLImmEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15EmulateShiftImmEjNS0_11ARMEncodingENS_15ARM_ShifterTypeE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM13EmulateLSLRegEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15EmulateShiftRegEjNS0_11ARMEncodingENS_15ARM_ShifterTypeE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM13EmulateLSRImmEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15EmulateShiftImmEjNS0_11ARMEncodingENS_15ARM_ShifterTypeE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2, i32 noundef 1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM13EmulateLSRRegEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15EmulateShiftRegEjNS0_11ARMEncodingENS_15ARM_ShifterTypeE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2, i32 noundef 1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM13EmulateRORImmEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15EmulateShiftImmEjNS0_11ARMEncodingENS_15ARM_ShifterTypeE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2, i32 noundef 3)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM13EmulateRORRegEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15EmulateShiftRegEjNS0_11ARMEncodingENS_15ARM_ShifterTypeE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2, i32 noundef 3)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM10EmulateRRXEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15EmulateShiftImmEjNS0_11ARMEncodingENS_15ARM_ShifterTypeE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2, i32 noundef 4)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM10EmulateLDMEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 17 uses
  %4 = alloca %"class.std::optional", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 3 uses
  switch i32 %2, label %.thread130 [
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 0, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %1, 8
  %i.f = and i32 %i.e, 7                          ; 2 uses
  %i.g = and i32 %1, 255                          ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = zext nneg i32 %i.f to i64
  %i.j = shl nuw nsw i64 1, %i.i
  %i.k = and i64 %i.j, %i.h
  %i.l = icmp eq i64 %i.k, 0
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %.thread130, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.08.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %bb.c ]
  %.057.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.m = add nuw nsw i64 %.057.i, 255
  %i.n = and i64 %i.m, %.057.i                    ; 2 uses
  %i.o = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.thread130, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.q = lshr i32 %1, 16
  %i.r = and i32 %i.q, 15                         ; 4 uses
  %i.s = and i32 %1, 57343                        ; 5 uses
  %i.t = zext i32 %1 to i64                       ; 2 uses
  %i.u = and i64 %i.t, 2097152
  %.not146 = icmp eq i64 %i.u, 0
  %i.v = icmp eq i32 %i.r, 15
  br i1 %i.v, label %.thread130, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext nneg i32 %i.s to i64                ; 2 uses
  %.not6.i97 = icmp eq i32 %i.s, 0
  br i1 %.not6.i97, label %.thread130, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.e, %.lr.ph.i98
  %.08.i99 = phi i32 [ %i.z, %.lr.ph.i98 ], [ 0, %bb.e ]
  %.057.i100 = phi i64 [ %i.y, %.lr.ph.i98 ], [ %i.w, %bb.e ] ; 2 uses
  %i.x = add nuw nsw i64 %.057.i100, 65535
  %i.y = and i64 %i.x, %.057.i100                 ; 2 uses
  %i.z = add i32 %.08.i99, 1                      ; 2 uses
  %.not.i101 = icmp eq i64 %i.y, 0
  br i1 %.not.i101, label %_ZN12lldb_privateL8BitCountEm.exit103, label %.lr.ph.i98, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit103:            ; preds = %.lr.ph.i98
  %i.aa = icmp ult i32 %i.z, 2
  %i.ab = and i64 %i.t, 49152
  %or.cond142 = icmp eq i64 %i.ab, 49152
  %or.cond154 = or i1 %or.cond142, %i.aa
  br i1 %or.cond154, label %.thread130, label %bb.f

bb.f:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit103
  %.not147 = icmp samesign ult i32 %i.s, 32768
  br i1 %.not147, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.ae = icmp ne i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp ult i32 %i.ag, 2
  %or.cond144 = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond144, label %bb.h, label %.thread130

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not146, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = zext nneg i32 %i.r to i64
  %i.aj = shl nuw nsw i64 1, %i.ai
  %i.ak = and i64 %i.aj, %i.w
  %.not151 = icmp eq i64 %i.ak, 0
  br i1 %.not151, label %bb.k, label %.thread130

bb.j:                                             ; preds = %bb.b
  %i.al = lshr i32 %1, 16
  %i.am = and i32 %i.al, 15                       ; 2 uses
  %i.an = and i32 %1, 65535                       ; 3 uses
  %i.ao = and i32 %1, 2097152
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp eq i32 %i.am, 15
  %.not6.i104 = icmp eq i32 %i.an, 0
  %or.cond145 = or i1 %.not6.i104, %i.aq
  br i1 %or.cond145, label %.thread130, label %.lr.ph.i105.preheader

.lr.ph.i105.preheader:                            ; preds = %bb.j
  %i.ar = zext nneg i32 %i.an to i64
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.preheader, %.lr.ph.i105
  %.08.i106 = phi i32 [ %i.au, %.lr.ph.i105 ], [ 0, %.lr.ph.i105.preheader ]
  %.057.i107 = phi i64 [ %i.at, %.lr.ph.i105 ], [ %i.ar, %.lr.ph.i105.preheader ] ; 2 uses
  %i.as = add nuw nsw i64 %.057.i107, 65535
  %i.at = and i64 %i.as, %.057.i107               ; 2 uses
  %i.au = add i32 %.08.i106, 1                    ; 2 uses
  %.not.i108 = icmp eq i64 %i.at, 0
  br i1 %.not.i108, label %_ZN12lldb_privateL8BitCountEm.exit110, label %.lr.ph.i105, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit110:            ; preds = %.lr.ph.i105
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.thread130, label %bb.k

bb.k:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit110, %bb.h, %bb.i, %_ZN12lldb_privateL8BitCountEm.exit
  %.081 = phi i32 [ %i.f, %_ZN12lldb_privateL8BitCountEm.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ %i.am, %_ZN12lldb_privateL8BitCountEm.exit110 ] ; 7 uses
  %.080 = phi i32 [ %i.g, %_ZN12lldb_privateL8BitCountEm.exit ], [ %i.s, %bb.i ], [ %i.s, %bb.h ], [ %i.an, %_ZN12lldb_privateL8BitCountEm.exit110 ] ; 2 uses
  %.079.in = phi i1 [ %i.l, %_ZN12lldb_privateL8BitCountEm.exit ], [ true, %bb.i ], [ false, %bb.h ], [ %i.ap, %_ZN12lldb_privateL8BitCountEm.exit110 ] ; 4 uses
  %i.aw = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %.081, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 4 uses
  %i.ax = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %.thread130

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  store i32 10, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ba = load ptr, ptr %0, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %.081) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  store i32 0, ptr %i.az, align 4, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  store i64 0, ptr %i.be, align 8, !tbaa !54
  %i.bf = zext nneg i32 %.080 to i64              ; 4 uses
  %i.bg = icmp eq i32 %.081, 13
  %or.cond = and i1 %i.bg, %.079.in
  %i.bh = zext i32 %i.d to i64                    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.r
  %indvars.iv = phi i64 [ 0, %bb.l ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %.074159 = phi i32 [ 0, %bb.l ], [ %.2, %bb.r ] ; 3 uses
  %i.bi = shl nuw nsw i64 1, %indvars.iv
  %i.bj = and i64 %i.bi, %i.bf
  %.not152 = icmp eq i64 %i.bj, 0
  br i1 %.not152, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 10, ptr %3, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.bk = sext i32 %.074159 to i64                ; 3 uses
  store i32 0, ptr %i.az, align 4, !tbaa !50
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !54
  br i1 %or.cond, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre = add i64 %i.aw, %i.bk
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 4, ptr %3, align 8, !tbaa !49
  %i.bl = add i64 %i.aw, %i.bk                    ; 2 uses
  store i32 9, ptr %i.az, align 4, !tbaa !50
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.bl, %bb.o ]
  %i.bm = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %.pre-phi, i64 noundef %i.bh, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bn = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.q, label %.thread138

bb.q:                                             ; preds = %bb.p
  %i.bp = and i64 %i.bm, 4294967295
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.bq, i64 noundef %i.bp) #20
  %i.bs = add i32 %.074159, %i.d
  br i1 %i.br, label %bb.r, label %.thread138

bb.r:                                             ; preds = %bb.m, %bb.q
  %.2 = phi i32 [ %i.bs, %bb.q ], [ %.074159, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond, label %bb.s, label %bb.m, !llvm.loop !98

bb.s:                                             ; preds = %bb.r
  %.not153 = icmp samesign ult i32 %.080, 32768
  br i1 %.not153, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 10, ptr %3, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.bt = sext i32 %.2 to i64                     ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !50
  store i64 %i.bt, ptr %i.be, align 8, !tbaa !54
  %i.bu = add i64 %i.aw, %i.bt
  %i.bv = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.bu, i64 noundef %i.bh, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bw = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.u, label %.thread138

bb.u:                                             ; preds = %bb.t
  %i.by = trunc i64 %i.bv to i32
  %i.bz = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM11LoadWritePCERNS_18EmulateInstruction7ContextEj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef %i.by) ; 2 uses
  %brmerge.not = and i1 %.079.in, %i.bz
  br i1 %brmerge.not, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  br i1 %.079.in, label %.thread125, label %.thread134

bb.w:                                             ; preds = %bb.u
  %i.ca = zext nneg i32 %.081 to i64
  %i.cb = shl nuw nsw i64 1, %i.ca
  %i.cc = and i64 %i.cb, %i.bf
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i112.preheader, label %.thread126

.thread125:                                       ; preds = %bb.v
  %i.ce = zext nneg i32 %.081 to i64
  %i.cf = shl nuw nsw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.bf
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i112.preheader, label %.thread126

.lr.ph.i112.preheader:                            ; preds = %bb.w, %.thread125
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112.preheader, %.lr.ph.i112
  %.08.i113 = phi i32 [ %i.ck, %.lr.ph.i112 ], [ 0, %.lr.ph.i112.preheader ]
  %.057.i114 = phi i64 [ %i.cj, %.lr.ph.i112 ], [ %i.bf, %.lr.ph.i112.preheader ] ; 2 uses
  %i.ci = add nuw nsw i64 %.057.i114, 65535
  %i.cj = and i64 %i.ci, %.057.i114               ; 2 uses
  %i.ck = add i32 %.08.i113, 1                    ; 2 uses
  %.not.i115 = icmp eq i64 %i.cj, 0
  br i1 %.not.i115, label %_ZN12lldb_privateL8BitCountEm.exit117, label %.lr.ph.i112, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit117:            ; preds = %.lr.ph.i112
  %i.cl = mul i32 %i.ck, %i.d
  store i32 8, ptr %3, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !50
  store i64 %i.cm, ptr %i.be, align 8, !tbaa !54
  %i.cn = add i64 %i.aw, %i.cm
  %i.co = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %.081, i64 noundef %i.cn) #20 ; 2 uses
  %brmerge95.not = and i1 %.079.in, %i.co
  br i1 %brmerge95.not, label %.thread134, label %bb.x

.thread126:                                       ; preds = %bb.w, %.thread125
  %i.cp = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM18WriteBits32UnknownEi(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.081)
  br label %.thread138

.thread134:                                       ; preds = %bb.v, %_ZN12lldb_privateL8BitCountEm.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.y

.thread138:                                       ; preds = %bb.q, %bb.p, %.thread126, %bb.t
  %.8.ph = phi i1 [ %i.cp, %.thread126 ], [ false, %bb.t ], [ false, %bb.p ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.thread130

bb.x:                                             ; preds = %bb.u, %_ZN12lldb_privateL8BitCountEm.exit117
  %.4 = phi i1 [ %i.co, %_ZN12lldb_privateL8BitCountEm.exit117 ], [ %i.bz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.4, label %bb.y, label %.thread130

bb.y:                                             ; preds = %.thread134, %bb.x, %bb.a
  br label %.thread130

.thread130:                                       ; preds = %bb.g, %bb.e, %bb.c, %bb.k, %_ZN12lldb_privateL8BitCountEm.exit110, %_ZN12lldb_privateL8BitCountEm.exit103, %bb.d, %_ZN12lldb_privateL8BitCountEm.exit, %bb.b, %bb.i, %bb.j, %.thread138, %bb.x, %bb.y
  %.11 = phi i1 [ true, %bb.y ], [ false, %bb.x ], [ %.8.ph, %.thread138 ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.b ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.e ], [ false, %_ZN12lldb_privateL8BitCountEm.exit103 ], [ false, %_ZN12lldb_privateL8BitCountEm.exit110 ], [ false, %bb.k ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM12EmulateLDMDAEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 14 uses
  %4 = alloca %"class.std::optional", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 4 uses
  %cond = icmp eq i32 %2, 0
  br i1 %cond, label %bb.c, label %.thread100

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %1, 16
  %i.f = and i32 %i.e, 15                         ; 7 uses
  %i.g = and i32 %1, 2097152
  %.not111 = icmp eq i32 %i.g, 0                  ; 3 uses
  %i.h = icmp eq i32 %i.f, 15
  br i1 %i.h, label %.thread100, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 65535                        ; 3 uses
  %i.j = zext nneg i32 %i.i to i64                ; 5 uses
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %.thread100, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %bb.d ]
  %.057.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = add nuw nsw i64 %.057.i, 65535
  %i.l = and i64 %i.k, %.057.i                    ; 2 uses
  %i.m = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread100, label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit
  switch i32 %i.f, label %bb.g [
    i32 13, label %.thread.i
    i32 14, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %.thread.i

bb.g:                                             ; preds = %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %bb.e
  %.013.ph.i = phi i32 [ 1, %bb.g ], [ 2, %bb.f ], [ 2, %bb.e ]
  %.012.ph.i = phi i32 [ %i.f, %bb.g ], [ 3, %bb.f ], [ 1, %bb.e ]
  %i.o = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.p = and i64 %i.o, 4294967295                 ; 3 uses
  %i.q = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.lr.ph.i80, label %.thread100

.lr.ph.i80:                                       ; preds = %.thread.i, %.lr.ph.i80
  %.08.i81 = phi i32 [ %i.u, %.lr.ph.i80 ], [ 0, %.thread.i ]
  %.057.i82 = phi i64 [ %i.t, %.lr.ph.i80 ], [ %i.j, %.thread.i ] ; 2 uses
  %i.s = add nuw nsw i64 %.057.i82, 65535
  %i.t = and i64 %i.s, %.057.i82                  ; 2 uses
  %i.u = add i32 %.08.i81, 1                      ; 2 uses
  %.not.i83 = icmp eq i64 %i.t, 0
  br i1 %.not.i83, label %_ZN12lldb_privateL8BitCountEm.exit85, label %.lr.ph.i80, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit85:             ; preds = %.lr.ph.i80
  %i.v = mul i32 %i.u, %i.d
  %i.w = zext i32 %i.v to i64
  %i.x = sub nsw i64 %i.p, %i.w
  %i.y = zext i32 %i.d to i64                     ; 3 uses
  %i.z = add nsw i64 %i.x, %i.y                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  store i32 10, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ab = load ptr, ptr %0, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.f) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  store i32 0, ptr %i.aa, align 4, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit85, %bb.k
  %indvars.iv = phi i64 [ 0, %_ZN12lldb_privateL8BitCountEm.exit85 ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.059117 = phi i32 [ 0, %_ZN12lldb_privateL8BitCountEm.exit85 ], [ %.2, %bb.k ] ; 3 uses
  %i.ag = shl nuw nsw i64 1, %indvars.iv
  %i.ah = and i64 %i.ag, %i.j
  %.not112 = icmp eq i64 %i.ah, 0
  br i1 %.not112, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.ai = sext i32 %.059117 to i64
  %i.aj = add nsw i64 %i.z, %i.ai                 ; 2 uses
  %i.ak = sub nsw i64 %i.p, %i.aj
  store i32 0, ptr %i.aa, align 4, !tbaa !50
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !54
  %i.al = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.aj, i64 noundef %i.y, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.am = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %.thread104

bb.j:                                             ; preds = %bb.i
  %i.ao = and i64 %i.al, 4294967295
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  %i.aq = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.ap, i64 noundef %i.ao) #20
  %i.ar = add i32 %.059117, %i.d
  br i1 %i.aq, label %bb.k, label %.thread104

bb.k:                                             ; preds = %bb.h, %bb.j
  %.2 = phi i32 [ %i.ar, %bb.j ], [ %.059117, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond, label %bb.l, label %bb.h, !llvm.loop !99

bb.l:                                             ; preds = %bb.k
  %.not113 = icmp samesign ult i32 %i.i, 32768
  br i1 %.not113, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.as = sext i32 %.2 to i64                     ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !50
  store i64 %i.as, ptr %i.af, align 8, !tbaa !54
  %i.at = add nsw i64 %i.z, %i.as
  %i.au = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.at, i64 noundef %i.y, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.av = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.n, label %.thread104

bb.n:                                             ; preds = %bb.m
  %i.ax = trunc i64 %i.au to i32
  %i.ay = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM11LoadWritePCERNS_18EmulateInstruction7ContextEj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef %i.ax) ; 2 uses
  %..not = xor i1 %i.ay, true
  %brmerge = or i1 %.not111, %..not
  br i1 %brmerge, label %bb.r, label %bb.p

bb.o:                                             ; preds = %bb.l
  br i1 %.not111, label %.thread108, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.az = zext nneg i32 %i.f to i64
  %i.ba = shl nuw nsw i64 1, %i.az
  %i.bb = and i64 %i.ba, %i.j
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i87, label %bb.q

.lr.ph.i87:                                       ; preds = %bb.p, %.lr.ph.i87
  %.08.i88 = phi i32 [ %i.bf, %.lr.ph.i87 ], [ 0, %bb.p ] ; 2 uses
  %.057.i89 = phi i64 [ %i.be, %.lr.ph.i87 ], [ %i.j, %bb.p ] ; 2 uses
  %i.bd = add nuw nsw i64 %.057.i89, 65535
  %i.be = and i64 %i.bd, %.057.i89                ; 2 uses
  %i.bf = add i32 %.08.i88, 1
  %.not.i90 = icmp eq i64 %i.be, 0
  br i1 %.not.i90, label %_ZN12lldb_privateL8BitCountEm.exit92, label %.lr.ph.i87, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit92:             ; preds = %.lr.ph.i87
  %.neg.le = xor i32 %.08.i88, -1
  %.neg114 = mul i32 %i.d, %.neg.le
  store i32 8, ptr %3, align 8, !tbaa !49
  %i.bg = sext i32 %.neg114 to i64                ; 2 uses
  store i32 8, ptr %i.aa, align 4, !tbaa !50
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !54
  %i.bh = add nsw i64 %i.p, %i.bg
  %i.bi = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.f, i64 noundef %i.bh) #20 ; 2 uses
  %.not75 = xor i1 %i.bi, true
  %brmerge77 = or i1 %.not111, %.not75
  br i1 %brmerge77, label %bb.r, label %.thread108

bb.q:                                             ; preds = %bb.p
  %i.bj = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM18WriteBits32UnknownEi(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %i.f)
  br label %.thread104

.thread104:                                       ; preds = %bb.j, %bb.i, %bb.q, %bb.m
  %.8.ph = phi i1 [ %i.bj, %bb.q ], [ false, %bb.m ], [ false, %bb.i ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.thread100

.thread108:                                       ; preds = %bb.o, %_ZN12lldb_privateL8BitCountEm.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.s

bb.r:                                             ; preds = %bb.n, %_ZN12lldb_privateL8BitCountEm.exit92
  %.4 = phi i1 [ %i.bi, %_ZN12lldb_privateL8BitCountEm.exit92 ], [ %i.ay, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.4, label %bb.s, label %.thread100

bb.s:                                             ; preds = %.thread108, %bb.r, %bb.a
  br label %.thread100

.thread100:                                       ; preds = %bb.d, %.thread.i, %_ZN12lldb_privateL8BitCountEm.exit, %bb.b, %bb.c, %.thread104, %bb.r, %bb.s
  %.11 = phi i1 [ true, %bb.s ], [ false, %bb.r ], [ %.8.ph, %.thread104 ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %.thread.i ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM12EmulateLDMDBEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 14 uses
  %4 = alloca %"class.std::optional", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 4 uses
  switch i32 %2, label %.thread125 [
    i32 5, label %bb.c
    i32 0, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %1, 16
  %i.f = and i32 %i.e, 15                         ; 4 uses
  %i.g = and i32 %1, 57343                        ; 5 uses
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %i.i = and i64 %i.h, 2097152
  %.not140 = icmp eq i64 %i.i, 0
  %i.j = icmp eq i32 %i.f, 15
  br i1 %i.j, label %.thread125, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.g to i64                ; 2 uses
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %.thread125, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi i32 [ %i.n, %.lr.ph.i ], [ 0, %bb.d ]
  %.057.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = add nuw nsw i64 %.057.i, 65535
  %i.m = and i64 %i.l, %.057.i                    ; 2 uses
  %i.n = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.o = icmp ult i32 %i.n, 2
  %i.p = and i64 %i.h, 49152
  %or.cond = icmp eq i64 %i.p, 49152
  %or.cond149 = or i1 %or.cond, %i.o
  br i1 %or.cond149, label %.thread125, label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit
  %.not141 = icmp samesign ult i32 %i.g, 32768
  br i1 %.not141, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = icmp ne i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp ult i32 %i.u, 2
  %or.cond138 = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond138, label %bb.g, label %.thread125

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.not140, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = zext nneg i32 %i.f to i64
  %i.x = shl nuw nsw i64 1, %i.w
  %i.y = and i64 %i.x, %i.k
  %.not145 = icmp eq i64 %i.y, 0
  br i1 %.not145, label %bb.j, label %.thread125

bb.i:                                             ; preds = %bb.b
  %i.z = lshr i32 %1, 16
  %i.aa = and i32 %i.z, 15                        ; 2 uses
  %i.ab = and i32 %1, 65535                       ; 3 uses
  %i.ac = and i32 %1, 2097152
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = icmp eq i32 %i.aa, 15
  %.not6.i93 = icmp eq i32 %i.ab, 0
  %or.cond139 = or i1 %.not6.i93, %i.ae
  br i1 %or.cond139, label %.thread125, label %.lr.ph.i94.preheader

.lr.ph.i94.preheader:                             ; preds = %bb.i
  %i.af = zext nneg i32 %i.ab to i64
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.preheader, %.lr.ph.i94
  %.08.i95 = phi i32 [ %i.ai, %.lr.ph.i94 ], [ 0, %.lr.ph.i94.preheader ]
  %.057.i96 = phi i64 [ %i.ah, %.lr.ph.i94 ], [ %i.af, %.lr.ph.i94.preheader ] ; 2 uses
  %i.ag = add nuw nsw i64 %.057.i96, 65535
  %i.ah = and i64 %i.ag, %.057.i96                ; 2 uses
  %i.ai = add i32 %.08.i95, 1                     ; 2 uses
  %.not.i97 = icmp eq i64 %i.ah, 0
  br i1 %.not.i97, label %_ZN12lldb_privateL8BitCountEm.exit99, label %.lr.ph.i94, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit99:             ; preds = %.lr.ph.i94
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.thread125, label %bb.j

bb.j:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit99, %bb.g, %bb.h
  %.077 = phi i32 [ %i.f, %bb.h ], [ %i.f, %bb.g ], [ %i.aa, %_ZN12lldb_privateL8BitCountEm.exit99 ] ; 6 uses
  %.076 = phi i32 [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ %i.ab, %_ZN12lldb_privateL8BitCountEm.exit99 ] ; 2 uses
  %.075.in = phi i1 [ true, %bb.h ], [ false, %bb.g ], [ %i.ad, %_ZN12lldb_privateL8BitCountEm.exit99 ] ; 3 uses
  %i.ak = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %.077, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 3 uses
  %i.al = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.lr.ph.i101.preheader, label %.thread125

.lr.ph.i101.preheader:                            ; preds = %bb.j
  %i.an = zext nneg i32 %.076 to i64              ; 5 uses
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %.lr.ph.i101
  %.08.i102 = phi i32 [ %i.aq, %.lr.ph.i101 ], [ 0, %.lr.ph.i101.preheader ]
  %.057.i103 = phi i64 [ %i.ap, %.lr.ph.i101 ], [ %i.an, %.lr.ph.i101.preheader ] ; 2 uses
  %i.ao = add nuw nsw i64 %.057.i103, 65535
  %i.ap = and i64 %i.ao, %.057.i103               ; 2 uses
  %i.aq = add i32 %.08.i102, 1                    ; 2 uses
  %.not.i104 = icmp eq i64 %i.ap, 0
  br i1 %.not.i104, label %_ZN12lldb_privateL8BitCountEm.exit106, label %.lr.ph.i101, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit106:            ; preds = %.lr.ph.i101
  %i.ar = mul i32 %i.aq, %i.d
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = sub i64 %i.ak, %i.as                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  store i32 10, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.av = load ptr, ptr %0, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %.077) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ay, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  store i32 0, ptr %i.au, align 4, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  store i64 %i.as, ptr %i.az, align 8, !tbaa !54
  %i.ba = zext i32 %i.d to i64                    ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit106, %bb.n
  %indvars.iv = phi i64 [ 0, %_ZN12lldb_privateL8BitCountEm.exit106 ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %.070153 = phi i32 [ 0, %_ZN12lldb_privateL8BitCountEm.exit106 ], [ %.2, %bb.n ] ; 3 uses
  %i.bb = shl nuw nsw i64 1, %indvars.iv
  %i.bc = and i64 %i.bb, %i.an
  %.not146 = icmp eq i64 %i.bc, 0
  br i1 %.not146, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ay, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.bd = sext i32 %.070153 to i64
  %i.be = add i64 %i.at, %i.bd                    ; 2 uses
  %i.bf = sub i64 %i.ak, %i.be
  store i32 0, ptr %i.au, align 4, !tbaa !50
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !54
  %i.bg = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.be, i64 noundef %i.ba, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bh = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %.thread133

bb.m:                                             ; preds = %bb.l
  %i.bj = and i64 %i.bg, 4294967295
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  %i.bl = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.bk, i64 noundef %i.bj) #20
  %i.bm = add i32 %.070153, %i.d
  br i1 %i.bl, label %bb.n, label %.thread133

bb.n:                                             ; preds = %bb.k, %bb.m
  %.2 = phi i32 [ %i.bm, %bb.m ], [ %.070153, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond, label %bb.o, label %bb.k, !llvm.loop !100

bb.o:                                             ; preds = %bb.n
  %.not147 = icmp samesign ult i32 %.076, 32768
  br i1 %.not147, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ay, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.bn = sext i32 %.2 to i64                     ; 2 uses
  store i32 0, ptr %i.au, align 4, !tbaa !50
  store i64 %i.bn, ptr %i.az, align 8, !tbaa !54
  %i.bo = add i64 %i.at, %i.bn
  %i.bp = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.bo, i64 noundef %i.ba, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bq = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.q, label %.thread133

bb.q:                                             ; preds = %bb.p
  %i.bs = trunc i64 %i.bp to i32
  %i.bt = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM11LoadWritePCERNS_18EmulateInstruction7ContextEj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef %i.bs) ; 2 uses
  %brmerge.not = and i1 %.075.in, %i.bt
  br i1 %brmerge.not, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  br i1 %.075.in, label %.thread120, label %.thread129

bb.s:                                             ; preds = %bb.q
  %i.bu = zext nneg i32 %.077 to i64
  %i.bv = shl nuw nsw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %i.an
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i108.preheader, label %.thread121

.thread120:                                       ; preds = %bb.r
  %i.by = zext nneg i32 %.077 to i64
  %i.bz = shl nuw nsw i64 1, %i.by
  %i.ca = and i64 %i.bz, %i.an
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i108.preheader, label %.thread121

.lr.ph.i108.preheader:                            ; preds = %bb.s, %.thread120
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph.i108.preheader, %.lr.ph.i108
  %.08.i109 = phi i32 [ %i.ce, %.lr.ph.i108 ], [ 0, %.lr.ph.i108.preheader ] ; 2 uses
  %.057.i110 = phi i64 [ %i.cd, %.lr.ph.i108 ], [ %i.an, %.lr.ph.i108.preheader ] ; 2 uses
  %i.cc = add nuw nsw i64 %.057.i110, 65535
  %i.cd = and i64 %i.cc, %.057.i110               ; 2 uses
  %i.ce = add i32 %.08.i109, 1
  %.not.i111 = icmp eq i64 %i.cd, 0
  br i1 %.not.i111, label %_ZN12lldb_privateL8BitCountEm.exit113, label %.lr.ph.i108, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit113:            ; preds = %.lr.ph.i108
  %.neg.le = xor i32 %.08.i109, -1
  %i.cf = mul i32 %i.d, %.neg.le
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  store i32 8, ptr %3, align 8, !tbaa !49
  store i32 8, ptr %i.au, align 4, !tbaa !50
  store i64 %i.cg, ptr %i.ay, align 8, !tbaa !54
  %i.ch = add i64 %i.ak, %i.cg
  %i.ci = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %.077, i64 noundef %i.ch) #20 ; 2 uses
  %brmerge91.not = and i1 %.075.in, %i.ci
  br i1 %brmerge91.not, label %.thread129, label %bb.t

.thread121:                                       ; preds = %bb.s, %.thread120
  %i.cj = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM18WriteBits32UnknownEi(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.077)
  br label %.thread133

.thread129:                                       ; preds = %bb.r, %_ZN12lldb_privateL8BitCountEm.exit113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.u

.thread133:                                       ; preds = %bb.m, %bb.l, %.thread121, %bb.p
  %.8.ph = phi i1 [ %i.cj, %.thread121 ], [ false, %bb.p ], [ false, %bb.l ], [ false, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.thread125

bb.t:                                             ; preds = %bb.q, %_ZN12lldb_privateL8BitCountEm.exit113
  %.4 = phi i1 [ %i.ci, %_ZN12lldb_privateL8BitCountEm.exit113 ], [ %i.bt, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.4, label %bb.u, label %.thread125

bb.u:                                             ; preds = %.thread129, %bb.t, %bb.a
  br label %.thread125

.thread125:                                       ; preds = %bb.f, %bb.d, %bb.j, %_ZN12lldb_privateL8BitCountEm.exit99, %_ZN12lldb_privateL8BitCountEm.exit, %bb.c, %bb.b, %bb.h, %bb.i, %.thread133, %bb.t, %bb.u
  %.11 = phi i1 [ true, %bb.u ], [ false, %bb.t ], [ %.8.ph, %.thread133 ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %_ZN12lldb_privateL8BitCountEm.exit99 ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM12EmulateLDMIBEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 14 uses
  %4 = alloca %"class.std::optional", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 3 uses
  %cond = icmp eq i32 %2, 0
  br i1 %cond, label %bb.c, label %.thread90

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %1, 16
  %i.f = and i32 %i.e, 15                         ; 6 uses
  %i.g = and i32 %1, 2097152
  %.not101 = icmp eq i32 %i.g, 0                  ; 3 uses
  %i.h = icmp eq i32 %i.f, 15
  br i1 %i.h, label %.thread90, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 65535                        ; 3 uses
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  %.not6.i = icmp eq i32 %i.i, 0
  br i1 %.not6.i, label %.thread90, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %bb.d ]
  %.057.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = add nuw nsw i64 %.057.i, 65535
  %i.l = and i64 %i.k, %.057.i                    ; 2 uses
  %i.m = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread90, label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit
  %i.o = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.f, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.p = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %.thread90

bb.f:                                             ; preds = %bb.e
  %i.r = zext i32 %i.d to i64                     ; 3 uses
  %i.s = add i64 %i.o, %i.r                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  store i32 10, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.u = load ptr, ptr %0, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.f) #20
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  store i32 0, ptr %i.t, align 4, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.056106 = phi i32 [ 0, %bb.f ], [ %.2, %bb.j ] ; 3 uses
  %i.z = shl nuw nsw i64 1, %indvars.iv
  %i.aa = and i64 %i.z, %i.j
  %.not102 = icmp eq i64 %i.aa, 0
  br i1 %.not102, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.ab = add i32 %.056106, %i.d                  ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  store i32 0, ptr %i.t, align 4, !tbaa !50
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !54
  %i.ad = sext i32 %.056106 to i64
  %i.ae = add i64 %i.s, %i.ad
  %i.af = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.ae, i64 noundef %i.r, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ag = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %.thread94

bb.i:                                             ; preds = %bb.h
  %i.ai = and i64 %i.af, 4294967295
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.aj, i64 noundef %i.ai) #20
  br i1 %i.ak, label %bb.j, label %.thread94

bb.j:                                             ; preds = %bb.g, %bb.i
  %.2 = phi i32 [ %i.ab, %bb.i ], [ %.056106, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond, label %bb.k, label %bb.g, !llvm.loop !101

bb.k:                                             ; preds = %bb.j
  %.not103 = icmp samesign ult i32 %i.i, 32768
  br i1 %.not103, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false)
  %i.al = sext i32 %.2 to i64                     ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !50
  store i64 %i.al, ptr %i.y, align 8, !tbaa !54
  %i.am = add i64 %i.s, %i.al
  %i.an = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.am, i64 noundef %i.r, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ao = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.m, label %.thread94

bb.m:                                             ; preds = %bb.l
  %i.aq = trunc i64 %i.an to i32
  %i.ar = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM11LoadWritePCERNS_18EmulateInstruction7ContextEj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef %i.aq) ; 2 uses
  %.69.not = xor i1 %i.ar, true
  %brmerge = or i1 %.not101, %.69.not
  br i1 %brmerge, label %bb.q, label %bb.o

bb.n:                                             ; preds = %bb.k
  br i1 %.not101, label %.thread98, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.as = zext nneg i32 %i.f to i64
  %i.at = shl nuw nsw i64 1, %i.as
  %i.au = and i64 %i.at, %i.j
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i77, label %bb.p

.lr.ph.i77:                                       ; preds = %bb.o, %.lr.ph.i77
  %.08.i78 = phi i32 [ %i.ay, %.lr.ph.i77 ], [ 0, %bb.o ]
  %.057.i79 = phi i64 [ %i.ax, %.lr.ph.i77 ], [ %i.j, %bb.o ] ; 2 uses
  %i.aw = add nuw nsw i64 %.057.i79, 65535
  %i.ax = and i64 %i.aw, %.057.i79                ; 2 uses
  %i.ay = add i32 %.08.i78, 1                     ; 2 uses
  %.not.i80 = icmp eq i64 %i.ax, 0
  br i1 %.not.i80, label %_ZN12lldb_privateL8BitCountEm.exit82, label %.lr.ph.i77, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit82:             ; preds = %.lr.ph.i77
  %i.az = mul i32 %i.ay, %i.d
  store i32 8, ptr %3, align 8, !tbaa !49
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  store i32 8, ptr %i.t, align 4, !tbaa !50
  store i64 %i.ba, ptr %i.x, align 8, !tbaa !54
  %i.bb = add i64 %i.o, %i.ba
  %i.bc = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i32 noundef 1, i32 noundef %i.f, i64 noundef %i.bb) #20 ; 2 uses
  %.not72 = xor i1 %i.bc, true
  %brmerge74 = or i1 %.not101, %.not72
  br i1 %brmerge74, label %bb.q, label %.thread98

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM18WriteBits32UnknownEi(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %i.f)
  br label %.thread94

.thread94:                                        ; preds = %bb.i, %bb.h, %bb.p, %bb.l
  %.8.ph = phi i1 [ %i.bd, %bb.p ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.thread90

.thread98:                                        ; preds = %bb.n, %_ZN12lldb_privateL8BitCountEm.exit82
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.r

bb.q:                                             ; preds = %bb.m, %_ZN12lldb_privateL8BitCountEm.exit82
  %.4 = phi i1 [ %i.bc, %_ZN12lldb_privateL8BitCountEm.exit82 ], [ %i.ar, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br i1 %.4, label %bb.r, label %.thread90

bb.r:                                             ; preds = %.thread98, %bb.q, %bb.a
  br label %.thread90

.thread90:                                        ; preds = %bb.d, %bb.e, %_ZN12lldb_privateL8BitCountEm.exit, %bb.b, %bb.c, %.thread94, %bb.q, %bb.r
  %.11 = phi i1 [ true, %bb.r ], [ false, %bb.q ], [ %.8.ph, %.thread94 ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %bb.e ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM17EmulateLDRRtRnImmEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %3 = alloca %"class.std::optional", align 8     ; 6 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 10 uses
  %5 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %.critedge [
    i32 5, label %bb.c
    i32 6, label %.thread
    i32 7, label %bb.d
    i32 8, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %1, 7
  %i.d = lshr i32 %1, 3
  %i.e = and i32 %i.d, 7
  %i.f = lshr i32 %1, 4
  %i.g = and i32 %i.f, 124
  br label %bb.j

.thread:                                          ; preds = %bb.b
  %i.h = lshr i32 %1, 8
  %i.i = and i32 %i.h, 7
  %i.j = shl i32 %1, 2
  %i.k = and i32 %i.j, 1020
  br label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.l = lshr i32 %1, 12
  %i.m = and i32 %i.l, 15                         ; 2 uses
  %i.n = lshr i32 %1, 16
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = and i32 %1, 4095                         ; 2 uses
  %i.q = icmp eq i32 %i.m, 15
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45
  %i.t = icmp ne i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp ult i32 %i.v, 2
  %or.cond96 = select i1 %i.t, i1 true, i1 %i.w
  br i1 %or.cond96, label %bb.j, label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.x = zext i32 %1 to i64                       ; 4 uses
  %i.y = and i64 %i.x, 1280
  %or.cond98 = icmp eq i64 %i.y, 0
  br i1 %or.cond98, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = and i64 %i.x, 1024
  %i.aa = lshr i32 %1, 12
  %i.ab = and i32 %i.aa, 15                       ; 3 uses
  %i.ac = lshr i32 %1, 16
  %i.ad = and i32 %i.ac, 15                       ; 3 uses
  %i.ae = and i32 %1, 255                         ; 2 uses
  %i.af = icmp ne i64 %i.z, 0                     ; 2 uses
  %i.ag = and i64 %i.x, 512
  %i.ah = icmp ne i64 %i.ag, 0                    ; 2 uses
  %i.ai = and i64 %i.x, 256
  %i.aj = icmp ne i64 %i.ai, 0                    ; 3 uses
  %i.ak = icmp eq i32 %i.ad, %i.ab
  %or.cond = and i1 %i.aj, %i.ak
  br i1 %or.cond, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp eq i32 %i.ab, 15
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.an = load i32, ptr %i.am, align 4, !tbaa !45
  %i.ao = icmp ne i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp ult i32 %i.aq, 2
  %or.cond100 = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond100, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %bb.c
  %.064 = phi i32 [ %i.c, %bb.c ], [ %i.ab, %bb.h ], [ 15, %bb.i ], [ 15, %bb.e ], [ %i.m, %bb.d ] ; 5 uses
  %.063 = phi i32 [ %i.e, %bb.c ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ], [ %i.o, %bb.e ], [ %i.o, %bb.d ] ; 5 uses
  %.062 = phi i32 [ %i.g, %bb.c ], [ %i.ae, %bb.h ], [ %i.ae, %bb.i ], [ %i.p, %bb.e ], [ %i.p, %bb.d ] ; 5 uses
  %.060.shrunk = phi i1 [ true, %bb.c ], [ %i.ah, %bb.h ], [ %i.ah, %bb.i ], [ true, %bb.e ], [ true, %bb.d ] ; 5 uses
  %.059.shrunk = phi i1 [ true, %bb.c ], [ %i.af, %bb.h ], [ %i.af, %bb.i ], [ true, %bb.e ], [ true, %bb.d ] ; 5 uses
  %.058.shrunk = phi i1 [ false, %bb.c ], [ %i.aj, %bb.h ], [ %i.aj, %bb.i ], [ false, %bb.e ], [ false, %bb.d ] ; 5 uses
  switch i32 %.063, label %bb.l [
    i32 13, label %.thread.i
    i32 14, label %bb.k
    i32 15, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  br label %.thread.i

bb.l:                                             ; preds = %bb.j
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %.thread, %bb.k, %bb.j
  %.058.shrunk95 = phi i1 [ %.058.shrunk, %bb.l ], [ %.058.shrunk, %bb.k ], [ %.058.shrunk, %bb.j ], [ false, %.thread ]
  %.059.shrunk93 = phi i1 [ %.059.shrunk, %bb.l ], [ %.059.shrunk, %bb.k ], [ %.059.shrunk, %bb.j ], [ true, %.thread ]
  %.060.shrunk91 = phi i1 [ %.060.shrunk, %bb.l ], [ %.060.shrunk, %bb.k ], [ %.060.shrunk, %bb.j ], [ true, %.thread ]
  %.06289 = phi i32 [ %.062, %bb.l ], [ %.062, %bb.k ], [ %.062, %bb.j ], [ %i.k, %.thread ]
  %.06387 = phi i32 [ %.063, %bb.l ], [ %.063, %bb.k ], [ %.063, %bb.j ], [ 13, %.thread ]
  %.06485 = phi i32 [ %.064, %bb.l ], [ %.064, %bb.k ], [ %.064, %bb.j ], [ %i.i, %.thread ]
  %.013.ph.i = phi i32 [ 1, %bb.l ], [ 2, %bb.k ], [ 2, %bb.j ], [ 2, %.thread ]
  %.012.ph.i = phi i32 [ %.063, %bb.l ], [ 3, %bb.k ], [ 1, %bb.j ], [ 1, %.thread ]
  %i.as = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.at = trunc i64 %i.as to i32
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.m:                                             ; preds = %bb.j
  %i.au = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = add i32 %i.av, 8
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = add i32 %i.av, 4
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit: ; preds = %.thread.i, %bb.n, %bb.o
  %.058.shrunk94 = phi i1 [ %.058.shrunk95, %.thread.i ], [ %.058.shrunk, %bb.n ], [ %.058.shrunk, %bb.o ]
  %.059.shrunk92 = phi i1 [ %.059.shrunk93, %.thread.i ], [ %.059.shrunk, %bb.n ], [ %.059.shrunk, %bb.o ]
  %.060.shrunk90 = phi i1 [ %.060.shrunk91, %.thread.i ], [ %.060.shrunk, %bb.n ], [ %.060.shrunk, %bb.o ]
  %.06288 = phi i32 [ %.06289, %.thread.i ], [ %.062, %bb.n ], [ %.062, %bb.o ] ; 2 uses
  %.06386 = phi i32 [ %.06387, %.thread.i ], [ 15, %bb.n ], [ 15, %bb.o ] ; 4 uses
  %.06484 = phi i32 [ %.06485, %.thread.i ], [ %.064, %bb.n ], [ %.064, %bb.o ] ; 3 uses
  %.014.i = phi i32 [ %i.at, %.thread.i ], [ %i.az, %bb.n ], [ %i.ba, %bb.o ] ; 2 uses
  %i.bb = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.p, label %.critedge

bb.p:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %i.bd = sub nsw i32 0, %.06288
  %.061.in.p = select i1 %.060.shrunk90, i32 %.06288, i32 %i.bd ; 4 uses
  %.061.in = add i32 %.014.i, %.061.in.p
  %.061 = zext i32 %.061.in to i64                ; 2 uses
  %i.be = zext i32 %.014.i to i64
  %i.bf = select i1 %.059.shrunk92, i64 %.061, i64 %i.be ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.bg = load ptr, ptr %0, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %.06386) #20
  br i1 %.058.shrunk94, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bk = icmp eq i32 %.06386, 13
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 5, ptr %4, align 8, !tbaa !49
  %i.bl = sext i32 %.061.in.p to i64
  store i32 8, ptr %i.bj, align 4, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !54
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !55
  %i.bp = icmp eq i32 %i.bo, 17
  br i1 %i.bp, label %_ZNK12lldb_private21EmulateInstructionARM29GetFramePointerRegisterNumberEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !56 ; 2 uses
  %switch.tableidx = add i32 %i.br, -1            ; 2 uses
  %i.bs = icmp ult i32 %switch.tableidx, 30
  %switch.shifted = lshr i32 771752209, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond111 = select i1 %i.bs, i1 %switch.lobit, i1 false
  br i1 %or.cond111, label %.thread.i77, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !57
  %.fr.i = freeze i32 %i.bu
  %i.bv = icmp eq i32 %.fr.i, 1
  %spec.select = select i1 %i.bv, i32 7, i32 11
  br label %.thread.i77

.thread.i77:                                      ; preds = %bb.u, %bb.t
  %i.bw = phi i32 [ 7, %bb.t ], [ %spec.select, %bb.u ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.v, label %_ZNK12lldb_private21EmulateInstructionARM29GetFramePointerRegisterNumberEv.exit

bb.v:                                             ; preds = %.thread.i77
  %i.ca = icmp eq i32 %i.br, 15
  %spec.select.i = select i1 %i.ca, i32 %i.bw, i32 7
  br label %_ZNK12lldb_private21EmulateInstructionARM29GetFramePointerRegisterNumberEv.exit

_ZNK12lldb_private21EmulateInstructionARM29GetFramePointerRegisterNumberEv.exit: ; preds = %bb.s, %.thread.i77, %bb.v
  %.04.i = phi i32 [ -1, %bb.s ], [ %spec.select.i, %bb.v ], [ %i.bw, %.thread.i77 ]
  %i.cb = icmp eq i32 %.06386, %.04.i
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cd = sext i32 %.061.in.p to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  br i1 %i.cb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK12lldb_private21EmulateInstructionARM29GetFramePointerRegisterNumberEv.exit
  store i32 6, ptr %4, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cc, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  store i32 0, ptr %i.bj, align 4, !tbaa !50
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !54
  br label %bb.y

bb.x:                                             ; preds = %_ZNK12lldb_private21EmulateInstructionARM29GetFramePointerRegisterNumberEv.exit
  store i32 8, ptr %4, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cc, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  store i32 0, ptr %i.bj, align 4, !tbaa !50
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !54
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.r
  %i.cf = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %.06386, i64 noundef %.061) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.cf, label %bb.z, label %.critedge.sink.split

bb.z:                                             ; preds = %bb.y, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 12, ptr %5, align 8, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.ci = sext i32 %.061.in.p to i64
  store i32 0, ptr %i.cg, align 4, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !54
  %i.ck = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %5, i64 noundef %i.bf, i64 noundef 4, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.co = icmp eq i32 %.06484, 15
  br i1 %i.co, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cp = and i64 %i.bf, 3
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cr = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM11LoadWritePCERNS_18EmulateInstruction7ContextEj(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %5, i32 noundef %i.cl)
  br i1 %i.cr, label %.critedge.sink.split.sink.split, label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !44
  %i.cu = icmp ugt i32 %i.ct, 255
  %i.cv = and i64 %i.bf, 3
  %i.cw = icmp eq i64 %i.cv, 0
  %or.cond103 = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond103, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cx = and i64 %i.ck, 4294967295
  %i.cy = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %5, i32 noundef 1, i32 noundef %.06484, i64 noundef %i.cx) #20
  br i1 %i.cy, label %.critedge.sink.split.sink.split, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cz = call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM18WriteBits32UnknownEi(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.06484) ; 0 uses
  br label %.critedge.sink.split.sink.split

bb.ag:                                            ; preds = %bb.ae, %bb.ab, %bb.ac, %bb.z
  br label %.critedge.sink.split.sink.split

.critedge.sink.split.sink.split:                  ; preds = %bb.ac, %bb.ae, %bb.af, %bb.ag
  %.6.ph.ph = phi i1 [ false, %bb.ag ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %.critedge.sink.split.sink.split, %bb.y
  %.6.ph = phi i1 [ false, %bb.y ], [ %.6.ph.ph, %.critedge.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.i, %bb.f, %bb.e, %bb.a, %bb.b, %bb.g, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %.6 = phi i1 [ false, %bb.i ], [ true, %bb.a ], [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.b ], [ %.6.ph, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM10EmulateSTMEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 11 uses
  %5 = alloca %"class.std::optional", align 8     ; 4 uses
  %6 = alloca %"class.std::optional", align 8     ; 4 uses
  %7 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge93

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 3 uses
  switch i32 %2, label %.critedge93 [
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 0, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %1, 8
  %i.f = and i32 %i.e, 7
  %i.g = and i32 %1, 255                          ; 3 uses
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %.critedge93, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.k, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.057.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  %i.i = add nuw nsw i64 %.057.i, 255
  %i.j = and i64 %i.i, %.057.i                    ; 2 uses
  %i.k = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.critedge93, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i32 %1, 16
  %i.n = and i32 %i.m, 15                         ; 4 uses
  %i.o = and i32 %1, 24575                        ; 4 uses
  %i.p = and i32 %1, 2097152
  %.not121 = icmp eq i32 %i.p, 0
  %i.q = icmp eq i32 %i.n, 15
  br i1 %i.q, label %.critedge93, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i32 %i.o to i64                ; 2 uses
  %.not6.i96 = icmp eq i32 %i.o, 0
  br i1 %.not6.i96, label %.critedge93, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.e, %.lr.ph.i97
  %.08.i98 = phi i32 [ %i.u, %.lr.ph.i97 ], [ 0, %bb.e ]
  %.057.i99 = phi i64 [ %i.t, %.lr.ph.i97 ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = add nuw nsw i64 %.057.i99, 32767
  %i.t = and i64 %i.s, %.057.i99                  ; 2 uses
  %i.u = add i32 %.08.i98, 1                      ; 2 uses
  %.not.i100 = icmp eq i64 %i.t, 0
  br i1 %.not.i100, label %_ZN12lldb_privateL8BitCountEm.exit102, label %.lr.ph.i97, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit102:            ; preds = %.lr.ph.i97
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %.critedge93, label %bb.f

bb.f:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit102
  br i1 %.not121, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.n to i64
  %i.x = shl nuw nsw i64 1, %i.w
  %i.y = and i64 %i.x, %i.r
  %.not122 = icmp eq i64 %i.y, 0
  br i1 %.not122, label %bb.i, label %.critedge93

bb.h:                                             ; preds = %bb.b
  %i.z = lshr i32 %1, 16
  %i.aa = and i32 %i.z, 15                        ; 2 uses
  %i.ab = and i32 %1, 65535                       ; 3 uses
  %i.ac = and i32 %1, 2097152
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = icmp eq i32 %i.aa, 15
  %.not6.i103 = icmp eq i32 %i.ab, 0
  %or.cond120 = or i1 %.not6.i103, %i.ae
  br i1 %or.cond120, label %.critedge93, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %bb.h
  %i.af = zext nneg i32 %i.ab to i64
  br label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader, %.lr.ph.i104
  %.08.i105 = phi i32 [ %i.ai, %.lr.ph.i104 ], [ 0, %.lr.ph.i104.preheader ]
  %.057.i106 = phi i64 [ %i.ah, %.lr.ph.i104 ], [ %i.af, %.lr.ph.i104.preheader ] ; 2 uses
  %i.ag = add nuw nsw i64 %.057.i106, 65535
  %i.ah = and i64 %i.ag, %.057.i106               ; 2 uses
  %i.ai = add i32 %.08.i105, 1                    ; 2 uses
  %.not.i107 = icmp eq i64 %i.ah, 0
  br i1 %.not.i107, label %_ZN12lldb_privateL8BitCountEm.exit109, label %.lr.ph.i104, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit109:            ; preds = %.lr.ph.i104
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.critedge93, label %bb.i

bb.i:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit109, %bb.f, %bb.g, %_ZN12lldb_privateL8BitCountEm.exit
  %.077 = phi i32 [ %i.f, %_ZN12lldb_privateL8BitCountEm.exit ], [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ %i.aa, %_ZN12lldb_privateL8BitCountEm.exit109 ] ; 4 uses
  %.076 = phi i32 [ %i.g, %_ZN12lldb_privateL8BitCountEm.exit ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.ab, %_ZN12lldb_privateL8BitCountEm.exit109 ] ; 2 uses
  %.075.shrunk = phi i1 [ true, %_ZN12lldb_privateL8BitCountEm.exit ], [ true, %bb.g ], [ false, %bb.f ], [ %i.ad, %_ZN12lldb_privateL8BitCountEm.exit109 ] ; 2 uses
  %i.ak = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %.077, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 4 uses
  %i.al = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %.critedge93

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 13, ptr %i.an, align 4, !tbaa !50
  store i32 11, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ao = load ptr, ptr %0, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %.077) #20
  %i.ar = zext nneg i32 %.076 to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.av = zext i32 %i.d to i64                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ax = zext nneg i32 %.077 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.q
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next, %bb.q ] ; 5 uses
  %.069130 = phi i32 [ 14, %bb.j ], [ %.2, %bb.q ] ; 3 uses
  %.070129 = phi i32 [ 0, %bb.j ], [ %.171, %bb.q ] ; 4 uses
  %i.ay = shl nuw nsw i64 1, %indvars.iv
  %i.az = and i64 %i.ay, %i.ar
  %.not123 = icmp eq i64 %i.az, 0
  br i1 %.not123, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ba, i32 %.069130)
  %i.bb = icmp eq i64 %indvars.iv, %i.ax
  %or.cond = and i1 %.075.shrunk, %i.bb
  %i.bc = zext nneg i32 %.069130 to i64
  %.not = icmp samesign ugt i64 %indvars.iv, %i.bc
  %or.cond88.not = select i1 %or.cond, i1 %.not, i1 false
  br i1 %or.cond88.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = sext i32 %.070129 to i64
  %i.be = add i64 %i.ak, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 18, ptr %3, align 8, !tbaa !49
  store i32 13, ptr %i.aw, align 4, !tbaa !50
  %i.bf = call i32 @rand() #20
  %i.bg = call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20
  %i.bh = zext i32 %i.bf to i64
  %i.bi = zext i32 %i.bg to i64
  %i.bj = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.be, i64 noundef %i.bh, i64 noundef %i.bi) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bk = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.ba, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bl = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bn = load ptr, ptr %0, align 8, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.ba) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  %i.bq = sext i32 %.070129 to i64                ; 2 uses
  store i32 2, ptr %i.an, align 4, !tbaa !50
  store i64 %i.bq, ptr %i.au, align 8, !tbaa !54
  %i.br = add i64 %i.ak, %i.bq
  %i.bs = and i64 %i.bk, 4294967295
  %i.bt = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %i.br, i64 noundef %i.bs, i64 noundef %i.av) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.bt, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.bu = add i32 %.070129, %i.d
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p
  %.171 = phi i32 [ %i.bu, %bb.p ], [ %.070129, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.p ], [ %.069130, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond, label %.critedge89, label %bb.k, !llvm.loop !102

.critedge89:                                      ; preds = %bb.q
  %.not124 = icmp samesign ult i32 %.076, 32768
  br i1 %.not124, label %bb.s, label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit: ; preds = %.critedge89
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bv = load ptr, ptr %0, align 8, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef 15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false)
  store i32 0, ptr %i.an, align 4, !tbaa !50
  store i64 8, ptr %i.at, align 8, !tbaa !54
  %i.by = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bz = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.r, label %.critedge91

bb.r:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !45
  %i.cd = icmp eq i32 %i.cc, 0
  %.014.i.v = select i1 %i.cd, i64 8, i64 4
  %.014.i = add i64 %.014.i.v, %i.by
  %i.ce = sext i32 %.171 to i64
  %i.cf = add i64 %i.ak, %i.ce
  %i.cg = and i64 %.014.i, 4294967295
  %i.ch = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %i.cf, i64 noundef %i.cg, i64 noundef %i.av) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.ch, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r, %.critedge89
  br i1 %.075.shrunk, label %.lr.ph.i111, label %.critedge93.sink.split

.lr.ph.i111:                                      ; preds = %bb.s, %.lr.ph.i111
  %.08.i112 = phi i32 [ %i.ck, %.lr.ph.i111 ], [ 0, %bb.s ]
  %.057.i113 = phi i64 [ %i.cj, %.lr.ph.i111 ], [ %i.ar, %bb.s ] ; 2 uses
  %i.ci = add nuw nsw i64 %.057.i113, 65535
  %i.cj = and i64 %i.ci, %.057.i113               ; 2 uses
  %i.ck = add i32 %.08.i112, 1                    ; 2 uses
  %.not.i114 = icmp eq i64 %i.cj, 0
  br i1 %.not.i114, label %_ZN12lldb_privateL8BitCountEm.exit116, label %.lr.ph.i111, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit116:            ; preds = %.lr.ph.i111
  %i.cl = mul i32 %i.ck, %i.d
  store i32 8, ptr %4, align 8, !tbaa !49
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  store i32 8, ptr %i.an, align 4, !tbaa !50
  store i64 %i.cm, ptr %i.as, align 8, !tbaa !54
  %i.cn = add i64 %i.ak, %i.cm
  %i.co = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %.077, i64 noundef %i.cn) #20
  br i1 %i.co, label %.critedge93.sink.split, label %.critedge

.critedge91:                                      ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.n, %.critedge91, %bb.r, %_ZN12lldb_privateL8BitCountEm.exit116
  br label %.critedge93.sink.split

.critedge93.sink.split:                           ; preds = %bb.s, %_ZN12lldb_privateL8BitCountEm.exit116, %.critedge
  %.13.ph = phi i1 [ false, %.critedge ], [ true, %_ZN12lldb_privateL8BitCountEm.exit116 ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge93

.critedge93:                                      ; preds = %.critedge93.sink.split, %bb.e, %bb.c, %bb.a, %bb.h, %bb.g, %bb.b, %_ZN12lldb_privateL8BitCountEm.exit, %bb.d, %_ZN12lldb_privateL8BitCountEm.exit102, %_ZN12lldb_privateL8BitCountEm.exit109, %bb.i
  %.13 = phi i1 [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.i ], [ false, %_ZN12lldb_privateL8BitCountEm.exit109 ], [ false, %_ZN12lldb_privateL8BitCountEm.exit102 ], [ false, %bb.d ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.c ], [ true, %bb.a ], [ %.13.ph, %.critedge93.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM12EmulateSTMDAEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 11 uses
  %5 = alloca %"class.std::optional", align 8     ; 4 uses
  %6 = alloca %"class.std::optional", align 8     ; 4 uses
  %7 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge82

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 4 uses
  %cond = icmp eq i32 %2, 0
  br i1 %cond, label %bb.c, label %.critedge82

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %1, 16
  %i.f = and i32 %i.e, 15                         ; 6 uses
  %i.g = and i32 %1, 2097152
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = icmp eq i32 %i.f, 15
  br i1 %i.i, label %.critedge82, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %1, 65535                        ; 3 uses
  %i.k = zext nneg i32 %i.j to i64                ; 4 uses
  %.not6.i = icmp eq i32 %i.j, 0
  br i1 %.not6.i, label %.critedge82, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi i32 [ %i.n, %.lr.ph.i ], [ 0, %bb.d ]
  %.057.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = add nuw nsw i64 %.057.i, 65535
  %i.m = and i64 %i.l, %.057.i                    ; 2 uses
  %i.n = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.critedge82, label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit
  switch i32 %i.f, label %bb.g [
    i32 13, label %.thread.i
    i32 14, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %.thread.i

bb.g:                                             ; preds = %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f, %bb.e
  %.013.ph.i = phi i32 [ 1, %bb.g ], [ 2, %bb.f ], [ 2, %bb.e ]
  %.012.ph.i = phi i32 [ %i.f, %bb.g ], [ 3, %bb.f ], [ 1, %bb.e ]
  %i.p = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.q = and i64 %i.p, 4294967295                 ; 3 uses
  %i.r = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.lr.ph.i86, label %.critedge82

.lr.ph.i86:                                       ; preds = %.thread.i, %.lr.ph.i86
  %.08.i87 = phi i32 [ %i.v, %.lr.ph.i86 ], [ 0, %.thread.i ]
  %.057.i88 = phi i64 [ %i.u, %.lr.ph.i86 ], [ %i.k, %.thread.i ] ; 2 uses
  %i.t = add nuw nsw i64 %.057.i88, 65535
  %i.u = and i64 %i.t, %.057.i88                  ; 2 uses
  %i.v = add i32 %.08.i87, 1                      ; 2 uses
  %.not.i89 = icmp eq i64 %i.u, 0
  br i1 %.not.i89, label %_ZN12lldb_privateL8BitCountEm.exit91, label %.lr.ph.i86, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit91:             ; preds = %.lr.ph.i86
  %i.w = mul i32 %i.v, %i.d
  %i.x = zext i32 %i.w to i64
  %i.y = sub nsw i64 %i.q, %i.x
  %i.z = add nsw i64 %i.y, 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 13, ptr %i.aa, align 4, !tbaa !50
  store i32 11, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ab = load ptr, ptr %0, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.f) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.ai = zext i32 %i.d to i64                    ; 2 uses
  %i.aj = zext nneg i32 %i.f to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit91, %bb.n
  %indvars.iv = phi i64 [ 0, %_ZN12lldb_privateL8BitCountEm.exit91 ], [ %indvars.iv.next, %bb.n ] ; 5 uses
  %.062111 = phi i32 [ 14, %_ZN12lldb_privateL8BitCountEm.exit91 ], [ %.2, %bb.n ] ; 3 uses
  %.063110 = phi i32 [ 0, %_ZN12lldb_privateL8BitCountEm.exit91 ], [ %.164, %bb.n ] ; 4 uses
  %i.ak = shl nuw nsw i64 1, %indvars.iv
  %i.al = and i64 %i.ak, %i.k
  %.not102 = icmp eq i64 %i.al, 0
  br i1 %.not102, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.am, i32 %.062111)
  %i.an = icmp ne i64 %indvars.iv, %i.aj
  %or.cond.not105 = or i1 %i.h, %i.an
  %i.ao = zext nneg i32 %.062111 to i64
  %.not = icmp samesign ule i64 %indvars.iv, %i.ao
  %or.cond77 = select i1 %or.cond.not105, i1 true, i1 %.not
  br i1 %or.cond77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = sext i32 %.063110 to i64
  %i.aq = add nsw i64 %i.z, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 18, ptr %3, align 8, !tbaa !49
  store i32 13, ptr %i.ae, align 4, !tbaa !50
  %i.ar = call i32 @rand() #20
  %i.as = call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20
  %i.at = zext i32 %i.ar to i64
  %i.au = zext i32 %i.as to i64
  %i.av = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.aq, i64 noundef %i.at, i64 noundef %i.au) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.aw = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.am, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ax = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.az = load ptr, ptr %0, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.am) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  %i.bc = sext i32 %.063110 to i64
  %i.bd = add nsw i64 %i.z, %i.bc                 ; 2 uses
  %i.be = sub nsw i64 %i.q, %i.bd
  store i32 2, ptr %i.aa, align 4, !tbaa !50
  store i64 %i.be, ptr %i.ah, align 8, !tbaa !54
  %i.bf = and i64 %i.aw, 4294967295
  %i.bg = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %i.bd, i64 noundef %i.bf, i64 noundef %i.ai) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.bg, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bh = add i32 %.063110, %i.d
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  %.164 = phi i32 [ %i.bh, %bb.m ], [ %.063110, %bb.h ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.m ], [ %.062111, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond, label %.critedge78, label %bb.h, !llvm.loop !103

.critedge78:                                      ; preds = %bb.n
  %.not106 = icmp samesign ult i32 %i.j, 32768
  br i1 %.not106, label %bb.p, label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit93

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit93: ; preds = %.critedge78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bi = load ptr, ptr %0, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef 15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false)
  store i32 0, ptr %i.aa, align 4, !tbaa !50
  store i64 8, ptr %i.ag, align 8, !tbaa !54
  %i.bl = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bm = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.o, label %.critedge80

bb.o:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit93
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !45
  %i.bq = icmp eq i32 %i.bp, 0
  %.014.i92.v = select i1 %i.bq, i64 8, i64 4
  %.014.i92 = add i64 %.014.i92.v, %i.bl
  %i.br = sext i32 %.164 to i64
  %i.bs = add nsw i64 %i.z, %i.br
  %i.bt = and i64 %.014.i92, 4294967295
  %i.bu = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %i.bs, i64 noundef %i.bt, i64 noundef %i.ai) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.bu, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o, %.critedge78
  br i1 %i.h, label %.critedge82.sink.split, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.p, %.lr.ph.i95
  %.08.i96 = phi i32 [ %i.bx, %.lr.ph.i95 ], [ 0, %bb.p ] ; 2 uses
  %.057.i97 = phi i64 [ %i.bw, %.lr.ph.i95 ], [ %i.k, %bb.p ] ; 2 uses
  %i.bv = add nuw nsw i64 %.057.i97, 65535
  %i.bw = and i64 %i.bv, %.057.i97                ; 2 uses
  %i.bx = add i32 %.08.i96, 1
  %.not.i98 = icmp eq i64 %i.bw, 0
  br i1 %.not.i98, label %_ZN12lldb_privateL8BitCountEm.exit100, label %.lr.ph.i95, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit100:            ; preds = %.lr.ph.i95
  %.neg.le = xor i32 %.08.i96, -1
  %.neg107 = mul i32 %i.d, %.neg.le
  store i32 8, ptr %4, align 8, !tbaa !49
  %i.by = sext i32 %.neg107 to i64                ; 2 uses
  store i32 8, ptr %i.aa, align 4, !tbaa !50
  store i64 %i.by, ptr %i.af, align 8, !tbaa !54
  %i.bz = add nsw i64 %i.q, %i.by
  %i.ca = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %i.f, i64 noundef %i.bz) #20
  br i1 %i.ca, label %.critedge82.sink.split, label %.critedge

.critedge80:                                      ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %.critedge80, %bb.o, %_ZN12lldb_privateL8BitCountEm.exit100
  br label %.critedge82.sink.split

.critedge82.sink.split:                           ; preds = %bb.p, %_ZN12lldb_privateL8BitCountEm.exit100, %.critedge
  %.13.ph = phi i1 [ false, %.critedge ], [ true, %_ZN12lldb_privateL8BitCountEm.exit100 ], [ true, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge82

.critedge82:                                      ; preds = %.critedge82.sink.split, %bb.d, %bb.a, %bb.c, %bb.b, %_ZN12lldb_privateL8BitCountEm.exit, %.thread.i
  %.13 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ false, %.thread.i ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %bb.b ], [ false, %bb.d ], [ %.13.ph, %.critedge82.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM12EmulateSTMDBEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 11 uses
  %5 = alloca %"class.std::optional", align 8     ; 4 uses
  %6 = alloca %"class.std::optional", align 8     ; 4 uses
  %7 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge99

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 4 uses
  switch i32 %2, label %.critedge99 [
    i32 5, label %bb.c
    i32 0, label %_ZN12lldb_privateL8BitCountEm.exit108
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %1, 2097152
  %.not135 = icmp eq i32 %i.e, 0
  %i.f = lshr i32 %1, 16
  %i.g = and i32 %i.f, 15                         ; 4 uses
  %i.h = and i32 %1, 24575                        ; 4 uses
  %i.i = icmp eq i32 %i.g, 15
  br i1 %i.i, label %.critedge99, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %.not6.i = icmp eq i32 %i.h, 0
  br i1 %.not6.i, label %.critedge99, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %bb.d ]
  %.057.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = add nuw nsw i64 %.057.i, 32767
  %i.l = and i64 %i.k, %.057.i                    ; 2 uses
  %i.m = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %.critedge99, label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit
  br i1 %.not135, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %i.g to i64
  %i.p = shl nuw nsw i64 1, %i.o
  %i.q = and i64 %i.p, %i.j
  %.not136 = icmp eq i64 %i.q, 0
  br i1 %.not136, label %bb.g, label %.critedge99

_ZN12lldb_privateL8BitCountEm.exit108:            ; preds = %bb.b
  %i.r = and i32 %1, 2097152
  %i.s = icmp ne i32 %i.r, 0
  %i.t = and i32 %1, 65535                        ; 3 uses
  %i.u = lshr i32 %1, 16
  %i.v = and i32 %i.u, 15                         ; 2 uses
  %i.w = icmp eq i32 %i.v, 15
  %.not6.i109 = icmp eq i32 %i.t, 0
  %or.cond134 = or i1 %.not6.i109, %i.w
  br i1 %or.cond134, label %.critedge99, label %.lr.ph.i110.preheader

.lr.ph.i110.preheader:                            ; preds = %_ZN12lldb_privateL8BitCountEm.exit108
  %.pre-phi151 = zext nneg i32 %i.t to i64
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %.lr.ph.i110.preheader, %.lr.ph.i110
  %.08.i111 = phi i32 [ %i.z, %.lr.ph.i110 ], [ 0, %.lr.ph.i110.preheader ]
  %.057.i112 = phi i64 [ %i.y, %.lr.ph.i110 ], [ %.pre-phi151, %.lr.ph.i110.preheader ] ; 2 uses
  %i.x = add nuw nsw i64 %.057.i112, 65535
  %i.y = and i64 %i.x, %.057.i112                 ; 2 uses
  %i.z = add i32 %.08.i111, 1                     ; 2 uses
  %.not.i113 = icmp eq i64 %i.y, 0
  br i1 %.not.i113, label %_ZN12lldb_privateL8BitCountEm.exit115, label %.lr.ph.i110, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit115:            ; preds = %.lr.ph.i110
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge99, label %bb.g

bb.g:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit115, %bb.e, %bb.f
  %.083 = phi i32 [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.v, %_ZN12lldb_privateL8BitCountEm.exit115 ] ; 4 uses
  %.082 = phi i32 [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.t, %_ZN12lldb_privateL8BitCountEm.exit115 ] ; 2 uses
  %.081.in = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ %i.s, %_ZN12lldb_privateL8BitCountEm.exit115 ] ; 2 uses
  %i.ab = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %.083, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 3 uses
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i117.preheader, label %.critedge99

.lr.ph.i117.preheader:                            ; preds = %bb.g
  %i.ae = zext nneg i32 %.082 to i64              ; 3 uses
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117.preheader, %.lr.ph.i117
  %.08.i118 = phi i32 [ %i.ah, %.lr.ph.i117 ], [ 0, %.lr.ph.i117.preheader ]
  %.057.i119 = phi i64 [ %i.ag, %.lr.ph.i117 ], [ %i.ae, %.lr.ph.i117.preheader ] ; 2 uses
  %i.af = add nuw nsw i64 %.057.i119, 65535
  %i.ag = and i64 %i.af, %.057.i119               ; 2 uses
  %i.ah = add i32 %.08.i118, 1                    ; 2 uses
  %.not.i120 = icmp eq i64 %i.ag, 0
  br i1 %.not.i120, label %_ZN12lldb_privateL8BitCountEm.exit122, label %.lr.ph.i117, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit122:            ; preds = %.lr.ph.i117
  %i.ai = mul i32 %i.ah, %i.d
  %i.aj = zext i32 %i.ai to i64
  %i.ak = sub i64 %i.ab, %i.aj                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 13, ptr %i.al, align 4, !tbaa !50
  store i32 11, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.am = load ptr, ptr %0, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %.083) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.as = zext i32 %i.d to i64                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.au = zext nneg i32 %.083 to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN12lldb_privateL8BitCountEm.exit122, %bb.n
  %indvars.iv = phi i64 [ 0, %_ZN12lldb_privateL8BitCountEm.exit122 ], [ %indvars.iv.next, %bb.n ] ; 5 uses
  %.075144 = phi i32 [ 14, %_ZN12lldb_privateL8BitCountEm.exit122 ], [ %.2, %bb.n ] ; 3 uses
  %.076143 = phi i32 [ 0, %_ZN12lldb_privateL8BitCountEm.exit122 ], [ %.177, %bb.n ] ; 4 uses
  %i.av = shl nuw nsw i64 1, %indvars.iv
  %i.aw = and i64 %i.av, %i.ae
  %.not137 = icmp eq i64 %i.aw, 0
  br i1 %.not137, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ax, i32 %.075144)
  %i.ay = icmp eq i64 %indvars.iv, %i.au
  %or.cond = and i1 %.081.in, %i.ay
  %i.az = zext nneg i32 %.075144 to i64
  %.not = icmp samesign ugt i64 %indvars.iv, %i.az
  %or.cond94.not = select i1 %or.cond, i1 %.not, i1 false
  br i1 %or.cond94.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = sext i32 %.076143 to i64
  %i.bb = add i64 %i.ak, %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 18, ptr %3, align 8, !tbaa !49
  store i32 13, ptr %i.at, align 4, !tbaa !50
  %i.bc = call i32 @rand() #20
  %i.bd = call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20
  %i.be = zext i32 %i.bc to i64
  %i.bf = zext i32 %i.bd to i64
  %i.bg = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.bb, i64 noundef %i.be, i64 noundef %i.bf) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.bh = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.ax, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bk = load ptr, ptr %0, align 8, !tbaa !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.ax) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  %i.bn = sext i32 %.076143 to i64
  %i.bo = add i64 %i.ak, %i.bn                    ; 2 uses
  %i.bp = sub i64 %i.ab, %i.bo
  store i32 2, ptr %i.al, align 4, !tbaa !50
  store i64 %i.bp, ptr %i.ar, align 8, !tbaa !54
  %i.bq = and i64 %i.bh, 4294967295
  %i.br = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %i.bo, i64 noundef %i.bq, i64 noundef %i.as) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.br, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bs = add i32 %.076143, %i.d
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m
  %.177 = phi i32 [ %i.bs, %bb.m ], [ %.076143, %bb.h ] ; 2 uses
  %.2 = phi i32 [ %spec.select, %bb.m ], [ %.075144, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond, label %.critedge95, label %bb.h, !llvm.loop !104

.critedge95:                                      ; preds = %bb.n
  %.not138 = icmp samesign ult i32 %.082, 32768
  br i1 %.not138, label %bb.p, label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit: ; preds = %.critedge95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bt = load ptr, ptr %0, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef 15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false)
  store i32 0, ptr %i.al, align 4, !tbaa !50
  store i64 8, ptr %i.aq, align 8, !tbaa !54
  %i.bw = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bx = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.o, label %.critedge97

bb.o:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !45
  %i.cb = icmp eq i32 %i.ca, 0
  %.014.i.v = select i1 %i.cb, i64 8, i64 4
  %.014.i = add i64 %.014.i.v, %i.bw
  %i.cc = sext i32 %.177 to i64
  %i.cd = add i64 %i.ak, %i.cc
  %i.ce = and i64 %.014.i, 4294967295
  %i.cf = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %i.cd, i64 noundef %i.ce, i64 noundef %i.as) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.cf, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o, %.critedge95
  br i1 %.081.in, label %.lr.ph.i124, label %.critedge99.sink.split

.lr.ph.i124:                                      ; preds = %bb.p, %.lr.ph.i124
  %.08.i125 = phi i32 [ %i.ci, %.lr.ph.i124 ], [ 0, %bb.p ] ; 2 uses
  %.057.i126 = phi i64 [ %i.ch, %.lr.ph.i124 ], [ %i.ae, %bb.p ] ; 2 uses
  %i.cg = add nuw nsw i64 %.057.i126, 65535
  %i.ch = and i64 %i.cg, %.057.i126               ; 2 uses
  %i.ci = add i32 %.08.i125, 1
  %.not.i127 = icmp eq i64 %i.ch, 0
  br i1 %.not.i127, label %_ZN12lldb_privateL8BitCountEm.exit129, label %.lr.ph.i124, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit129:            ; preds = %.lr.ph.i124
  %.neg.le = xor i32 %.08.i125, -1
  %i.cj = mul i32 %i.d, %.neg.le
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  store i32 8, ptr %4, align 8, !tbaa !49
  store i32 8, ptr %i.al, align 4, !tbaa !50
  store i64 %i.ck, ptr %i.ap, align 8, !tbaa !54
  %i.cl = add i64 %i.ab, %i.ck
  %i.cm = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %.083, i64 noundef %i.cl) #20
  br i1 %i.cm, label %.critedge99.sink.split, label %.critedge

.critedge97:                                      ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %.critedge97, %bb.o, %_ZN12lldb_privateL8BitCountEm.exit129
  br label %.critedge99.sink.split

.critedge99.sink.split:                           ; preds = %bb.p, %_ZN12lldb_privateL8BitCountEm.exit129, %.critedge
  %.13.ph = phi i1 [ false, %.critedge ], [ true, %_ZN12lldb_privateL8BitCountEm.exit129 ], [ true, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge99

.critedge99:                                      ; preds = %.critedge99.sink.split, %bb.d, %bb.a, %_ZN12lldb_privateL8BitCountEm.exit108, %bb.f, %bb.c, %bb.b, %_ZN12lldb_privateL8BitCountEm.exit, %_ZN12lldb_privateL8BitCountEm.exit115, %bb.g
  %.13 = phi i1 [ false, %_ZN12lldb_privateL8BitCountEm.exit108 ], [ true, %bb.a ], [ false, %bb.g ], [ false, %_ZN12lldb_privateL8BitCountEm.exit115 ], [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.d ], [ %.13.ph, %.critedge99.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM12EmulateSTMIBEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 10 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 11 uses
  %5 = alloca %"class.std::optional", align 8     ; 4 uses
  %6 = alloca %"class.std::optional", align 8     ; 4 uses
  %7 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge81

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20 ; 4 uses
  %cond = icmp eq i32 %2, 0
  br i1 %cond, label %bb.c, label %.critedge81

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i32 %1, 16
  %i.f = and i32 %i.e, 15                         ; 5 uses
  %i.g = and i32 %1, 65535                        ; 5 uses
  %i.h = and i32 %1, 2097152
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 15, label %bb.f
    i32 13, label %.thread.i
    i32 14, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.thread.i

bb.e:                                             ; preds = %bb.c
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.e, %bb.d
  %.013.ph.i = phi i32 [ 1, %bb.e ], [ 2, %bb.d ], [ 2, %bb.c ]
  %.012.ph.i = phi i32 [ %i.f, %bb.e ], [ 3, %bb.d ], [ 1, %bb.c ]
  %i.j = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.f:                                             ; preds = %bb.c
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %.critedge81, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.k = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.n, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.057.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.k, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = add nuw nsw i64 %.057.i, 65535
  %i.m = and i64 %i.l, %.057.i                    ; 2 uses
  %i.n = add i32 %.08.i, 1                        ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZN12lldb_privateL8BitCountEm.exit, label %.lr.ph.i, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit:               ; preds = %.lr.ph.i
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.critedge81, label %.split

.split:                                           ; preds = %_ZN12lldb_privateL8BitCountEm.exit
  %i.p = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split
  %i.t = add i64 %i.p, 8
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

bb.h:                                             ; preds = %.split
  %i.u = add i64 %i.p, 4
  br label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit: ; preds = %bb.h, %bb.g, %.thread.i
  %phi.call = phi i64 [ %i.u, %bb.h ], [ %i.j, %.thread.i ], [ %i.t, %bb.g ]
  %i.v = and i64 %phi.call, 4294967295            ; 2 uses
  %i.w = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.i, label %.critedge81

bb.i:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %i.y = zext i32 %i.d to i64                     ; 3 uses
  %i.z = add nuw nsw i64 %i.v, %i.y               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  store i32 13, ptr %i.aa, align 4, !tbaa !50
  store i32 11, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ab = load ptr, ptr %0, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.f) #20
  %i.ae = zext nneg i32 %i.g to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.aj = zext nneg i32 %i.f to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.o
  %indvars.iv = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %bb.o ] ; 5 uses
  %.060104 = phi i32 [ 14, %bb.i ], [ %.2, %bb.o ] ; 3 uses
  %.061103 = phi i32 [ 0, %bb.i ], [ %.162, %bb.o ] ; 5 uses
  %i.ak = shl nuw nsw i64 1, %indvars.iv
  %i.al = and i64 %i.ak, %i.ae
  %.not96 = icmp eq i64 %i.al, 0
  br i1 %.not96, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.am, i32 %.060104) ; 2 uses
  %i.an = icmp ne i64 %indvars.iv, %i.aj
  %or.cond.not99 = or i1 %i.i, %i.an
  %i.ao = zext nneg i32 %.060104 to i64
  %.not = icmp samesign ule i64 %indvars.iv, %i.ao
  %or.cond76 = select i1 %or.cond.not99, i1 true, i1 %.not
  br i1 %or.cond76, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = sext i32 %.061103 to i64
  %i.aq = add nsw i64 %i.z, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 18, ptr %3, align 8, !tbaa !49
  store i32 13, ptr %i.af, align 4, !tbaa !50
  %i.ar = call i32 @rand() #20
  %i.as = call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20
  %i.at = zext i32 %i.ar to i64
  %i.au = zext i32 %i.as to i64
  %i.av = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.aq, i64 noundef %i.at, i64 noundef %i.au) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre = add i32 %.061103, %i.d
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.aw = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %i.am, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ax = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.az = load ptr, ptr %0, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %i.am) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  %i.bc = add i32 %.061103, %i.d                  ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  store i32 2, ptr %i.aa, align 4, !tbaa !50
  store i64 %i.bd, ptr %i.ai, align 8, !tbaa !54
  %i.be = sext i32 %.061103 to i64
  %i.bf = add nsw i64 %i.z, %i.be
  %i.bg = and i64 %i.aw, 4294967295
  %i.bh = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %i.bf, i64 noundef %i.bg, i64 noundef %i.y) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.bh, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.j
  %.162 = phi i32 [ %.061103, %bb.j ], [ %i.bc, %bb.n ], [ %.pre, %bb.l ] ; 2 uses
  %.2 = phi i32 [ %.060104, %bb.j ], [ %spec.select, %bb.n ], [ %spec.select, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond, label %.critedge77, label %bb.j, !llvm.loop !105

.critedge77:                                      ; preds = %bb.o
  %.not100 = icmp samesign ult i32 %i.g, 32768
  br i1 %.not100, label %bb.q, label %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit87

_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit87: ; preds = %.critedge77
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.bi = load ptr, ptr %0, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef 15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 80, i1 false)
  store i32 0, ptr %i.aa, align 4, !tbaa !50
  store i64 8, ptr %i.ah, align 8, !tbaa !54
  %i.bl = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.bm = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.p, label %.critedge79

bb.p:                                             ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit87
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !45
  %i.bq = icmp eq i32 %i.bp, 0
  %.014.i86.v = select i1 %i.bq, i64 8, i64 4
  %.014.i86 = add i64 %.014.i86.v, %i.bl
  %i.br = sext i32 %.162 to i64
  %i.bs = add nsw i64 %i.z, %i.br
  %i.bt = and i64 %.014.i86, 4294967295
  %i.bu = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i64 noundef %i.bs, i64 noundef %i.bt, i64 noundef %i.y) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.bu, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p, %.critedge77
  br i1 %i.i, label %.critedge81.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not6.i88 = icmp eq i32 %i.g, 0
  br i1 %.not6.i88, label %_ZN12lldb_privateL8BitCountEm.exit94, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %bb.r, %.lr.ph.i89
  %.08.i90 = phi i32 [ %i.bx, %.lr.ph.i89 ], [ 0, %bb.r ]
  %.057.i91 = phi i64 [ %i.bw, %.lr.ph.i89 ], [ %i.ae, %bb.r ] ; 2 uses
  %i.bv = add nuw nsw i64 %.057.i91, 65535
  %i.bw = and i64 %i.bv, %.057.i91                ; 2 uses
  %i.bx = add i32 %.08.i90, 1                     ; 2 uses
  %.not.i92 = icmp eq i64 %i.bw, 0
  br i1 %.not.i92, label %_ZN12lldb_privateL8BitCountEm.exit94.loopexit, label %.lr.ph.i89, !llvm.loop !0

_ZN12lldb_privateL8BitCountEm.exit94.loopexit:    ; preds = %.lr.ph.i89
  %i.by = mul i32 %i.bx, %i.d
  %i.bz = sext i32 %i.by to i64
  br label %_ZN12lldb_privateL8BitCountEm.exit94

_ZN12lldb_privateL8BitCountEm.exit94:             ; preds = %_ZN12lldb_privateL8BitCountEm.exit94.loopexit, %bb.r
  %.0.lcssa.i93 = phi i64 [ 0, %bb.r ], [ %i.bz, %_ZN12lldb_privateL8BitCountEm.exit94.loopexit ] ; 2 uses
  store i32 8, ptr %4, align 8, !tbaa !49
  store i32 8, ptr %i.aa, align 4, !tbaa !50
  store i64 %.0.lcssa.i93, ptr %i.ag, align 8, !tbaa !54
  %i.ca = add nsw i64 %i.v, %.0.lcssa.i93
  %i.cb = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %4, i32 noundef 1, i32 noundef %i.f, i64 noundef %i.ca) #20
  br i1 %i.cb, label %.critedge81.sink.split, label %.critedge

.critedge79:                                      ; preds = %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit87
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.m, %.critedge79, %bb.p, %_ZN12lldb_privateL8BitCountEm.exit94
  br label %.critedge81.sink.split

.critedge81.sink.split:                           ; preds = %bb.q, %_ZN12lldb_privateL8BitCountEm.exit94, %.critedge
  %.13.ph = phi i1 [ false, %.critedge ], [ true, %_ZN12lldb_privateL8BitCountEm.exit94 ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge81

.critedge81:                                      ; preds = %.critedge81.sink.split, %bb.f, %bb.a, %_ZN12lldb_privateL8BitCountEm.exit, %bb.b, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit
  %.13 = phi i1 [ false, %_ZN12lldb_privateL8BitCountEm.exit ], [ true, %bb.a ], [ false, %_ZN12lldb_private21EmulateInstructionARM11ReadCoreRegEjPb.exit ], [ false, %bb.b ], [ false, %bb.f ], [ %.13.ph, %.critedge81.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15EmulateSTRThumbEjNS0_11ARMEncodingE(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1, i32 noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %4 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 11 uses
  %5 = alloca %"class.std::optional", align 8     ; 4 uses
  %6 = alloca %"class.std::optional", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private21EmulateInstructionARM15ConditionPassedEj(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %1)
  br i1 %i.b, label %bb.b, label %.critedge74

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #20
  switch i32 %2, label %.critedge74 [
    i32 5, label %bb.c
    i32 6, label %.thread
    i32 7, label %bb.d
    i32 8, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %1, 7
  %i.f = lshr i32 %1, 3
  %i.g = and i32 %i.f, 7
  %i.h = lshr i32 %1, 4
  %i.i = and i32 %i.h, 124
  br label %bb.i

.thread:                                          ; preds = %bb.b
  %i.j = lshr i32 %1, 8
  %i.k = and i32 %i.j, 7
  %i.l = shl i32 %1, 2
  %i.m = and i32 %i.l, 1020
  br label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i32 %1, 16
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = icmp eq i32 %i.o, 15
  br i1 %i.p, label %.critedge74, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = lshr i32 %1, 12
  %i.r = and i32 %i.q, 15                         ; 2 uses
  %i.s = and i32 %1, 4095
  %i.t = icmp eq i32 %i.r, 15
  br i1 %i.t, label %.critedge74, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.u = lshr i32 %1, 16
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = icmp eq i32 %i.v, 15
  br i1 %i.w, label %.critedge74, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = zext i32 %1 to i64                       ; 4 uses
  %i.y = and i64 %i.x, 1280
  %or.cond96 = icmp eq i64 %i.y, 0
  br i1 %or.cond96, label %.critedge74, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = and i64 %i.x, 1024
  %i.aa = lshr i32 %1, 12
  %i.ab = and i32 %i.aa, 15                       ; 3 uses
  %i.ac = and i32 %1, 255
  %i.ad = icmp ne i64 %i.z, 0
  %i.ae = and i64 %i.x, 512
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = and i64 %i.x, 256
  %i.ah = icmp ne i64 %i.ag, 0                    ; 2 uses
  %i.ai = icmp eq i32 %i.ab, 15
  %i.aj = icmp eq i32 %i.v, %i.ab
  %or.cond = and i1 %i.ah, %i.aj
  %or.cond75 = or i1 %i.ai, %or.cond
  br i1 %or.cond75, label %.critedge74, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.c
  %.063 = phi i32 [ %i.e, %bb.c ], [ %i.ab, %bb.h ], [ %i.r, %bb.e ] ; 3 uses
  %.062 = phi i32 [ %i.g, %bb.c ], [ %i.v, %bb.h ], [ %i.o, %bb.e ] ; 5 uses
  %.061 = phi i32 [ %i.i, %bb.c ], [ %i.ac, %bb.h ], [ %i.s, %bb.e ] ; 3 uses
  %.060.shrunk = phi i1 [ true, %bb.c ], [ %i.ad, %bb.h ], [ true, %bb.e ] ; 3 uses
  %.059.shrunk = phi i1 [ true, %bb.c ], [ %i.af, %bb.h ], [ true, %bb.e ] ; 3 uses
  %.058.shrunk = phi i1 [ false, %bb.c ], [ %i.ah, %bb.h ], [ false, %bb.e ] ; 3 uses
  switch i32 %.062, label %bb.k [
    i32 13, label %.thread.i
    i32 14, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %.thread.i

bb.k:                                             ; preds = %bb.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %.thread, %bb.j, %bb.i
  %.058.shrunk94 = phi i1 [ %.058.shrunk, %bb.k ], [ %.058.shrunk, %bb.j ], [ %.058.shrunk, %bb.i ], [ false, %.thread ]
  %.059.shrunk92 = phi i1 [ %.059.shrunk, %bb.k ], [ %.059.shrunk, %bb.j ], [ %.059.shrunk, %bb.i ], [ true, %.thread ]
  %.060.shrunk90 = phi i1 [ %.060.shrunk, %bb.k ], [ %.060.shrunk, %bb.j ], [ %.060.shrunk, %bb.i ], [ true, %.thread ]
  %.06188 = phi i32 [ %.061, %bb.k ], [ %.061, %bb.j ], [ %.061, %bb.i ], [ %i.m, %.thread ] ; 2 uses
  %.06286 = phi i32 [ %.062, %bb.k ], [ %.062, %bb.j ], [ %.062, %bb.i ], [ 13, %.thread ] ; 3 uses
  %.06384 = phi i32 [ %.063, %bb.k ], [ %.063, %bb.j ], [ %.063, %bb.i ], [ %i.k, %.thread ] ; 2 uses
  %.013.ph.i = phi i32 [ 1, %bb.k ], [ 2, %bb.j ], [ 2, %bb.i ], [ 2, %.thread ]
  %.012.ph.i = phi i32 [ %.062, %bb.k ], [ 3, %bb.j ], [ 1, %bb.i ], [ 1, %.thread ]
  %i.ak = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef %.013.ph.i, i32 noundef %.012.ph.i, i64 noundef 0, ptr noundef nonnull %i.a) #20 ; 3 uses
  %i.al = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.l, label %.critedge74

bb.l:                                             ; preds = %.thread.i
  %i.an = trunc i64 %i.ak to i32
  %i.ao = sub nsw i32 0, %.06188
  %.056.in.p = select i1 %.059.shrunk92, i32 %.06188, i32 %i.ao
  %.056.in = add i32 %.056.in.p, %i.an
  %.056 = zext i32 %.056.in to i64                ; 3 uses
  %i.ap = and i64 %i.ak, 4294967295
  %.0 = select i1 %.060.shrunk90, i64 %.056, i64 %i.ap ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 13, ptr %i.aq, align 4, !tbaa !50
  %i.ar = icmp eq i32 %.06286, 13                 ; 2 uses
  %storemerge = select i1 %i.ar, i32 3, i32 11
  store i32 %storemerge, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.as = load ptr, ptr %0, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %.06286) #20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !44
  %i.ax = icmp ugt i32 %i.aw, 255
  %i.ay = and i64 %.0, 3
  %or.cond98 = icmp eq i64 %i.ay, 0
  %or.cond99 = select i1 %i.ax, i1 true, i1 %or.cond98
  br i1 %or.cond99, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.az = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 1, i32 noundef %.06384, i64 noundef 0, ptr noundef nonnull %i.a) #20
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bc = load ptr, ptr %0, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(209) %0, i32 noundef 1, i32 noundef %.06384) #20
  %i.bf = sub i64 %.0, %i.ak
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 80, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bh, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false)
  %sext = shl i64 %i.bf, 32
  %i.bi = ashr exact i64 %sext, 32
  store i32 2, ptr %i.aq, align 4, !tbaa !50
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !54
  %i.bk = and i64 %i.az, 4294967295
  %i.bl = zext i32 %i.d to i64
end_hunk_2
