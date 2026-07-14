inline.NumInlined: 2270
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSequence20InstructionBlocksForEPNS0_4ZoneERKNS1_10turboshaft5GraphE:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = icmp eq i8 %i.bo, 1
  br i1 %i.bp, label %bb.i, label %_ZN2v88internal8compilerL13GetLoopEndRpoEPKNS1_10turboshaft5BlockE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN2v88internal8compilerL13GetLoopEndRpoEPKNS1_10turboshaft5BlockE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 52
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bt, align 4
  %i.bu = add nsw i32 %.sroa.0.0.copyload.i.i.i.i, 1
  br label %_ZN2v88internal8compilerL13GetLoopEndRpoEPKNS1_10turboshaft5BlockE.exit.i

_ZN2v88internal8compilerL13GetLoopEndRpoEPKNS1_10turboshaft5BlockE.exit.i: ; preds = %bb.j, %bb.i, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit.i
  %.sroa.0.0.i31.i = phi i32 [ -1, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit.i ], [ %i.bu, %bb.j ], [ 0, %bb.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit34.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compilerL13GetLoopEndRpoEPKNS1_10turboshaft5BlockE.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %.sroa.0.0.copyload.i.i32.i = load i32, ptr %i.by, align 4
  br label %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit34.i

_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit34.i: ; preds = %bb.k, %_ZN2v88internal8compilerL13GetLoopEndRpoEPKNS1_10turboshaft5BlockE.exit.i
  %.sroa.0.0.i33.i = phi i32 [ %.sroa.0.0.copyload.i.i32.i, %bb.k ], [ -1, %_ZN2v88internal8compilerL13GetLoopEndRpoEPKNS1_10turboshaft5BlockE.exit.i ]
  %i.bz = load i64, ptr %i.a, align 8
  %i.ca = load i64, ptr %i.c, align 8             ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp ult i64 %i.cb, 128
  br i1 %i.cc, label %bb.l, label %_ZN2v88internal4Zone3NewINS0_8compiler16InstructionBlockEJRPS1_NS3_9RpoNumberES7_S7_S7_RbS8_EEEPT_DpOT0_.exit.i, !prof !26

bb.l:                                             ; preds = %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit34.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 128) #31
  %.pre.i.i.i20 = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler16InstructionBlockEJRPS1_NS3_9RpoNumberES7_S7_S7_RbS8_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler16InstructionBlockEJRPS1_NS3_9RpoNumberES7_S7_S7_RbS8_EEEPT_DpOT0_.exit.i: ; preds = %bb.l, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit34.i
  %i.cd = phi i64 [ %.pre.i.i.i20, %bb.l ], [ %i.ca, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit34.i ] ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 21 uses
  %i.cf = add i64 %i.cd, 128
  store i64 %i.cf, ptr %i.c, align 8
  store ptr %0, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 3 uses
  store ptr %0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  store ptr %0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  store i32 -1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 100
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 104
  store i32 %.sroa.0.0.i.i, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 108
  store i32 %.sroa.0.0.i31.i, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  store i32 %.sroa.0.0.i33.i, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 120
  store i32 -1, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 124 ; 3 uses
  %i.cs = load i16, ptr %i.cr, align 4
  %i.ct = and i16 %i.cs, -64
  %i.cu = select i1 %i.bg, i16 2, i16 0
  %i.cv = or disjoint i16 %i.cu, %i.bk
  %i.cw = or disjoint i16 %i.cv, %i.ct            ; 2 uses
  store i16 %i.cw, ptr %i.cr, align 4
  %i.cx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 557), align 1, !range !28, !noundef !29
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = select i1 %i.cy, i16 0, i16 64
  %i.da = and i16 %i.cw, -1021
  %i.db = or disjoint i16 %i.cz, %i.da
  store i16 %i.db, ptr %i.cr, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.dc = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %.sroa.0.0.copyload.i36.i = load i32, ptr %i.dc, align 8 ; 2 uses
  %i.dd = load ptr, ptr %i.am, align 8
  %i.de = lshr i32 %.sroa.0.0.copyload.i36.i, 4
  %i.df = add nsw i32 %i.de, -1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = zext i16 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 3
  %i.dl = sub i32 %.sroa.0.0.copyload.i36.i, %i.dk
  %i.dm = load ptr, ptr %i.al, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = zext i32 %i.dl to i64
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = inttoptr i64 %i.dp to ptr
  call void @_ZN2v88internal8compiler10turboshaft15SuccessorBlocksERKNS2_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.v8::base::SmallVector") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.dq)
  %i.dr = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ds = load ptr, ptr %2, align 8               ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 3                 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %i.cg, align 8
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 2
  %.not.i.i.i = icmp ugt i64 %i.dw, %i.ed
  br i1 %.not.i.i.i, label %bb.m, label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit.i, !prof !26

bb.m:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler16InstructionBlockEJRPS1_NS3_9RpoNumberES7_S7_S7_RbS8_EEEPT_DpOT0_.exit.i
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 noundef %i.dw)
  %.pre.i = load ptr, ptr %2, align 8
  %.pre61.i = load ptr, ptr %i.an, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit.i: ; preds = %bb.m, %_ZN2v88internal4Zone3NewINS0_8compiler16InstructionBlockEJRPS1_NS3_9RpoNumberES7_S7_S7_RbS8_EEEPT_DpOT0_.exit.i
  %i.ee = phi ptr [ %i.dr, %_ZN2v88internal4Zone3NewINS0_8compiler16InstructionBlockEJRPS1_NS3_9RpoNumberES7_S7_S7_RbS8_EEEPT_DpOT0_.exit.i ], [ %.pre61.i, %bb.m ] ; 2 uses
  %i.ef = phi ptr [ %i.ds, %_ZN2v88internal4Zone3NewINS0_8compiler16InstructionBlockEJRPS1_NS3_9RpoNumberES7_S7_S7_RbS8_EEEPT_DpOT0_.exit.i ], [ %.pre.i, %bb.m ] ; 2 uses
  %.not55.i = icmp eq ptr %i.ef, %i.ee
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  br label %bb.o

._crit_edge.i:                                    ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit.i, %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ce, i64 56 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %i.ci, align 8
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 2
  %.not.i.i37.i = icmp ult i64 %i.eq, %i.ej
  br i1 %.not.i.i37.i, label %bb.n, label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit38.i, !prof !26

bb.n:                                             ; preds = %._crit_edge.i
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.ej)
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit38.i

_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit38.i: ; preds = %bb.n, %._crit_edge.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %.057.i = load ptr, ptr %i.er, align 8          ; 2 uses
  %.not2958.i = icmp eq ptr %.057.i, null
  br i1 %.not2958.i, label %._crit_edge60.i, label %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.lr.ph.i

_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.lr.ph.i: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit38.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ce, i64 48 ; 3 uses
  br label %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i

bb.o:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit.i, %.lr.ph.i18
  %.02856.i = phi ptr [ %i.ef, %.lr.ph.i18 ], [ %i.fh, %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit.i ] ; 2 uses
  %i.et = load ptr, ptr %.02856.i, align 8        ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit41.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 52
  %.sroa.0.0.copyload.i.i39.i = load i32, ptr %i.ev, align 4
  br label %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit41.i

_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit41.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i40.i = phi i32 [ %.sroa.0.0.copyload.i.i39.i, %bb.p ], [ -1, %bb.o ]
  %i.ew = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ex = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.ey = icmp ult ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit41.i
  %i.ez = load ptr, ptr %i.cg, align 8
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 2
  %i.fe = add nsw i64 %i.fd, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 noundef %i.fe)
  %.pre.i.i42.i = load ptr, ptr %i.eg, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit.i: ; preds = %bb.q, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit41.i
  %i.ff = phi ptr [ %i.ew, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit41.i ], [ %.pre.i.i42.i, %bb.q ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store ptr %i.fg, ptr %i.eg, align 8
  store i32 %.sroa.0.0.i40.i, ptr %i.ff, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.02856.i, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.fh, %i.ee
  br i1 %.not.i19, label %._crit_edge.i, label %bb.o

._crit_edge60.i:                                  ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i, %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE7reserveEm.exit38.i
  %i.fi = load ptr, ptr %i.ci, align 8            ; 10 uses
  %i.fj = ptrtoint ptr %i.fi to i64               ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8            ; 6 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = icmp ne ptr %i.fi, %i.fl
  %.012.i.i.i = getelementptr inbounds i8, ptr %i.fl, i64 -4 ; 5 uses
  %i.fo = icmp ult ptr %i.fi, %.012.i.i.i
  %or.cond.i.i.i = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.preheader, label %_ZN2v88internal8compilerL19InstructionBlockForEPNS0_4ZoneERKNS1_10turboshaft5GraphEPKNS4_5BlockESA_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge60.i
  %4 = ptrtoint ptr %i.fl to i64
  %i.fp = add i64 %4, -8
  %5 = ptrtoint ptr %i.fi to i64                  ; 2 uses
  %i.fq = add i64 %5, 4
  %6 = call i64 @llvm.umax.i64(i64 %i.fp, i64 %i.fq)
  %i.fr = sub i64 %6, %5                          ; 2 uses
  %i.fs = icmp ne i64 %i.fr, 4
  %7 = zext i1 %i.fs to i64                       ; 2 uses
  %8 = sub i64 %i.fr, %7
  %i.ft = add i64 %8, -4
  %i.fu = lshr i64 %i.ft, 3
  %9 = add nuw nsw i64 %i.fu, %7                  ; 2 uses
  %i.fv = add nuw nsw i64 %9, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %9, 15
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fi, i64 4
  %i.fw = add i64 %i.fm, -8
  %i.fx = add i64 %i.fj, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.fw, i64 %i.fx)
  %i.fy = add i64 %umax, -4                       ; 2 uses
  %i.fz = icmp ne i64 %i.fy, %i.fj
  %umin = zext i1 %i.fz to i64                    ; 2 uses
  %i.ga = add i64 %i.fj, %umin
  %i.gb = sub i64 %i.fy, %i.ga
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = add nuw nsw i64 %i.gc, %umin            ; 2 uses
  %i.ge = shl nuw i64 %i.gd, 2
  %scevgep46 = getelementptr i8, ptr %scevgep, i64 %i.ge
  %scevgep47 = getelementptr i8, ptr %i.fl, i64 -4
  %i.gf = mul nsw i64 %i.gd, -4
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.gf
  %bound0 = icmp ult ptr %i.fi, %i.fl
  %bound1 = icmp ult ptr %scevgep48, %scevgep46
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fv, 9223372036854775800     ; 4 uses
  %i.gg = mul i64 %n.vec, -4
  %i.gh = getelementptr i8, ptr %.012.i.i.i, i64 %i.gg
  %i.gi = shl i64 %n.vec, 2
  %i.gj = getelementptr i8, ptr %i.fi, i64 %i.gi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gk = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.012.i.i.i, i64 %i.gk ; 2 uses
  %i.gl = shl i64 %index, 2
  %next.gep51 = getelementptr i8, ptr %i.fi, i64 %i.gl ; 3 uses
  %i.gm = getelementptr i8, ptr %next.gep51, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep51, align 4, !alias.scope !34, !noalias !37
  %wide.load52.a = load <4 x i32>, ptr %i.gm, align 4, !alias.scope !34, !noalias !37
  %i.gn = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep, i64 -28 ; 2 uses
  %wide.load53 = load <4 x i32>, ptr %i.gn, align 4, !alias.scope !37
  %wide.load54 = load <4 x i32>, ptr %i.go, align 4, !alias.scope !37
  %reverse = shufflevector <4 x i32> %wide.load53, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse55.a = shufflevector <4 x i32> %wide.load54, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep51, align 4, !alias.scope !34, !noalias !37
  store <4 x i32> %reverse55.a, ptr %i.gm, align 4, !alias.scope !34, !noalias !37
  %reverse56 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse57 = shufflevector <4 x i32> %wide.load52.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse56, ptr %i.gn, align 4, !alias.scope !37
  store <4 x i32> %reverse57, ptr %i.go, align 4, !alias.scope !37
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal8compilerL19InstructionBlockForEPNS0_4ZoneERKNS1_10turboshaft5GraphEPKNS4_5BlockESA_.exit, label %.lr.ph.i.i.i.preheader59

.lr.ph.i.i.i.preheader59:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.014.i.i.i.ph = phi ptr [ %.012.i.i.i, %vector.memcheck ], [ %.012.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.gh, %middle.block ]
  %.0913.i.i.i.ph = phi ptr [ %i.fi, %vector.memcheck ], [ %i.fi, %.lr.ph.i.i.i.preheader ], [ %i.gj, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader59, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.014.i.i.i.ph, %.lr.ph.i.i.i.preheader59 ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i ], [ %.0913.i.i.i.ph, %.lr.ph.i.i.i.preheader59 ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %.0913.i.i.i, align 4
  %i.gq = load i32, ptr %.014.i.i.i, align 4
  store i32 %i.gq, ptr %.0913.i.i.i, align 4
  store i32 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.014.i.i.i, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 4 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -4 ; 2 uses
  %i.gs = icmp ult ptr %i.gr, %.0.i.i.i
  br i1 %i.gs, label %.lr.ph.i.i.i, label %_ZN2v88internal8compilerL19InstructionBlockForEPNS0_4ZoneERKNS1_10turboshaft5GraphEPKNS4_5BlockESA_.exit, !llvm.loop !40

_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.lr.ph.i
  %.059.i = phi ptr [ %.057.i, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.lr.ph.i ], [ %.0.i, %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.059.i, i64 52
  %.sroa.0.0.copyload.i.i43.i = load i32, ptr %i.gt, align 4
  %i.gu = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.gv = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.gw = icmp ult ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i, label %bb.r, !prof !7

bb.r:                                             ; preds = %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i
  %i.gx = load ptr, ptr %i.ci, align 8
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 2
  %i.hc = add nsw i64 %i.hb, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef %i.hc)
  %.pre.i.i46.i = load ptr, ptr %i.es, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i

_ZN2v88internal10ZoneVectorINS0_8compiler9RpoNumberEE9push_backEOS3_.exit47.i: ; preds = %bb.r, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i
  %i.hd = phi ptr [ %i.gu, %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i ], [ %.pre.i.i46.i, %bb.r ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store ptr %i.he, ptr %i.es, align 8
  store i32 %.sroa.0.0.copyload.i.i43.i, ptr %i.hd, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.059.i, i64 64
  %.0.i = load ptr, ptr %i.hf, align 8            ; 2 uses
  %.not29.i = icmp eq ptr %.0.i, null
  br i1 %.not29.i, label %._crit_edge60.i, label %_ZN2v88internal8compilerL6GetRpoEPKNS1_10turboshaft5BlockE.exit45.i, !llvm.loop !41

_ZN2v88internal8compilerL19InstructionBlockForEPNS0_4ZoneERKNS1_10turboshaft5GraphEPKNS4_5BlockESA_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %._crit_edge60.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.hg = load ptr, ptr %i.r, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.027
  store ptr %i.ce, ptr %i.hh, align 8
  %i.hi = add i64 %.027, 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 8 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.ai
  br i1 %i.hk, label %._crit_edge, label %bb.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10LoopFinderC2EPNS0_4ZoneEPKNS2_5GraphENS_4base7EnumSetINS3_11ConfigFlagsEaEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, i8 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = and i64 %i.k, 4294967295                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not.i.i.i = icmp eq i64 %i.l, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = shl nuw nsw i64 %i.l, 3                  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.c, label %.lr.ph.preheader.i.i.i, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.p) #31
  %.pre.i.i.i.i.i = load i64, ptr %i.s, align 8
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i.i.i, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  store ptr %i.x, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %i.z, ptr %i.o, align 8
  store ptr %i.z, ptr %i.n, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.09.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i ] ; 2 uses
  store ptr null, ptr %.09.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.n, align 8
  %i.ac = icmp ult ptr %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit, !llvm.loop !42

_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = ptrtoint ptr %1 to i64
  store i64 %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i64 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #31 ; 5 uses
  %i.am = load i64, ptr %i.ah, align 8
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %_ZN2v88internal16ZoneUnorderedMapIPKNS0_8compiler10turboshaft5BlockENS3_10LoopFinder8LoopInfoENS_4base4hashIS6_EESt8equal_toIS6_EEC2EPNS0_4ZoneEm.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FixedBlockSidetableIPKNS2_5BlockEEC2EmRKS6_PNS0_4ZoneE.exit
  %i.ao = icmp eq i64 %i.al, 1
  br i1 %i.ao, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.ag, align 8
  br label %_ZNSt10_HashtableIPKN2v88internal8compiler10turboshaft5BlockESt4pairIKS6_NS3_10LoopFinder8LoopInfoEENS1_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS0_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.aq = icmp ult i64 %i.al, 2305843009213693951
  br i1 %i.aq, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ar = shl nuw i64 %i.al, 3                    ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = icmp ugt i64 %i.ar, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKPKNS2_8compiler10turboshaft5BlockENS7_10LoopFinder8LoopInfoEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !26
end_hunk_0
