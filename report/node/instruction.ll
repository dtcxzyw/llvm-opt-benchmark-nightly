inline.NumInlined: 2270
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSequence20InstructionBlocksForEPNS0_4ZoneERKNS1_10turboshaft5GraphE:bb.a
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
  %i.fi = load ptr, ptr %i.ci, align 8            ; 9 uses
  %4 = ptrtoaddr ptr %i.fi to i64                 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8            ; 5 uses
  %5 = ptrtoaddr ptr %i.fk to i64                 ; 2 uses
  %i.fl = icmp ne ptr %i.fi, %i.fk
  %.012.i.i.i = getelementptr inbounds i8, ptr %i.fk, i64 -4 ; 5 uses
  %i.fm = icmp ult ptr %i.fi, %.012.i.i.i
  %or.cond.i.i.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.preheader, label %_ZN2v88internal8compilerL19InstructionBlockForEPNS0_4ZoneERKNS1_10turboshaft5GraphEPKNS4_5BlockESA_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge60.i
  %i.fn = add i64 %5, -8
  %i.fo = add i64 %4, 4
  %umax49 = call i64 @llvm.umax.i64(i64 %i.fn, i64 %i.fo)
  %i.fp = add i64 %umax49, -4                     ; 2 uses
  %i.fq = sub i64 %i.fp, %4
  %i.fr = icmp ne i64 %i.fp, %4                   ; 2 uses
  %umin50.neg = sext i1 %i.fr to i64
  %i.fs = select i1 %i.fr, i64 2, i64 1
  %i.ft = add i64 %i.fq, %umin50.neg
  %i.fu = lshr i64 %i.ft, 3
  %i.fv = add nuw nsw i64 %i.fs, %i.fu            ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.fv, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader59, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fi, i64 4
  %i.fw = add i64 %5, -8
  %i.fx = add i64 %4, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.fw, i64 %i.fx)
  %i.fy = add i64 %umax, -4                       ; 2 uses
  %i.fz = icmp ne i64 %i.fy, %4
  %umin = zext i1 %i.fz to i64                    ; 2 uses
  %i.ga = add i64 %4, %umin
  %i.gb = sub i64 %i.fy, %i.ga
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = add nuw nsw i64 %i.gc, %umin            ; 2 uses
  %i.ge = shl nuw i64 %i.gd, 2
  %scevgep46 = getelementptr i8, ptr %scevgep, i64 %i.ge
  %scevgep47 = getelementptr i8, ptr %i.fk, i64 -4
  %i.gf = mul nsw i64 %i.gd, -4
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.gf
  %bound0 = icmp ult ptr %i.fi, %i.fk
  %bound1 = icmp ult ptr %scevgep48, %scevgep46
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fv, 4611686018427387896     ; 4 uses
  %i.gg = mul i64 %n.vec, -4
  %i.gh = getelementptr i8, ptr %.012.i.i.i, i64 %i.gg
  %i.gi = shl nuw i64 %n.vec, 2
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
  %wide.load52 = load <4 x i32>, ptr %i.gm, align 4, !alias.scope !34, !noalias !37
  %i.gn = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep, i64 -28 ; 2 uses
  %wide.load53 = load <4 x i32>, ptr %i.gn, align 4, !alias.scope !37
  %wide.load54 = load <4 x i32>, ptr %i.go, align 4, !alias.scope !37
  %reverse = shufflevector <4 x i32> %wide.load53, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse55 = shufflevector <4 x i32> %wide.load54, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep51, align 4, !alias.scope !34, !noalias !37
  store <4 x i32> %reverse55, ptr %i.gm, align 4, !alias.scope !34, !noalias !37
  %reverse56 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse57 = shufflevector <4 x i32> %wide.load52, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
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
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler19InstructionSequence13GetBlockStartENS1_9RpoNumberE:bb.a
  %i.n = load ptr, ptr %i.m, align 8
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSequence10StartBlockENS1_9RpoNumberE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) initializes((344, 352)) %0, i32 %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  store i32 %i.q, ptr %i.r, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSequence8EndBlockENS1_9RpoNumberE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(352) %0, i32 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 116
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  %i.o = icmp sge i32 %i.m, %i.i
  %or.cond = select i1 %i.n, i1 true, i1 %i.o, !prof !47
  br i1 %or.cond, label %.critedge, label %bb.b, !prof !47

.critedge:                                        ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.628) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i32 %i.i, ptr %i.p, align 8
  store ptr null, ptr %i.j, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8compiler19InstructionSequence14AddInstructionEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef initializes((32, 40)) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE9push_backERKS4_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = add nsw i64 %i.v, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.w)
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE9push_backERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.x = phi ptr [ %i.m, %bb.a ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.a, align 8
  store ptr %1, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 1073741824
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE9push_backERKS4_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = icmp ult i64 %i.ai, 40
  br i1 %i.aj, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 noundef 40) #31
  %.pre.i.i = load i64, ptr %i.ag, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.ak = phi i64 [ %.pre.i.i, %bb.d ], [ %i.ah, %bb.c ] ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 5 uses
  %i.am = add i64 %i.ak, 40
  store i64 %i.am, ptr %i.ag, align 8
  store ptr %i.ad, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 %i.i, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.al, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp ult ptr %i.ar, %i.at
  br i1 %i.au, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE9push_backERKS4_.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = add nsw i64 %i.bb, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.bc)
  %.pre.i2 = load ptr, ptr %i.aq, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE9push_backERKS4_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE9push_backERKS4_.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit, %bb.e
  %i.bd = phi ptr [ %i.ar, %_ZN2v88internal4Zone3NewINS0_8compiler12ReferenceMapEJPS1_EEEPT_DpOT0_.exit ], [ %.pre.i2, %bb.e ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.aq, align 8
  store ptr %i.al, ptr %i.bd, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE9push_backERKS4_.exit, %_ZN2v88internal10ZoneVectorIPNS0_8compiler11InstructionEE9push_backERKS4_.exit
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i8 @_ZNK2v88internal8compiler19InstructionSequence17GetRepresentationEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.not = icmp slt i32 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.k, %bb.b ], [ 5, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %.not = icmp slt i32 %2, %i.i
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.g
  %.not.i.i = icmp ult i64 %i.p, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.l)
  %.pre.i = load ptr, ptr %i.d, align 8
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.r = phi ptr [ %i.e, %bb.b ], [ %.pre.i, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i
  %3 = ptrtoaddr ptr %i.q to i64
  %4 = ptrtoaddr ptr %i.r to i64
  %i.u = add i64 %4, %i.l
  %i.v = sub i64 %i.u, %3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 5, i64 %i.v, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit

_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit: ; preds = %.lr.ph.preheader.i, %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit, %bb.a
  switch i8 %1, label %bb.h [
    i8 1, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 16, label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.f
    i8 17, label %bb.f
    i8 18, label %bb.f
    i8 19, label %bb.f
    i8 20, label %bb.f
    i8 10, label %bb.f
    i8 11, label %bb.f
    i8 12, label %bb.f
    i8 14, label %bb.f
    i8 0, label %bb.g
    i8 6, label %bb.g
    i8 13, label %bb.g
    i8 15, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  br label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #30
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 5, %bb.e ], [ %1, %bb.f ], [ 17, %bb.d ] ; 2 uses
  %i.w = sext i32 %2 to i64
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 %.0.i, ptr %i.y, align 1
  %i.z = zext nneg i8 %.0.i to i32
  %i.aa = shl nuw nsw i32 1, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = or i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8compiler19InstructionSequence22AddDeoptimizationEntryEPNS1_20FrameStateDescriptorENS0_14DeoptimizeKindENS0_16DeoptimizeReasonEjRKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.6 = alloca { [6 x i8], %"struct.v8::internal::compiler::FeedbackSource" }, align 2 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult ptr %i.b, %i.g
  br i1 %i.h, label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = ashr exact i64 %i.k, 5
  %i.m = add nsw i64 %i.l, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.m)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 5 uses
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = sub i64 %i.o, %i.e
  %i.q = lshr exact i64 %i.p, 5
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.s, ptr %i.a, align 8
  store ptr %1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler19InstructionSequence22GetDeoptimizationEntryEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.a
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden i32 @_ZN2v88internal8compiler19InstructionSequence8InputRpoEPNS1_11InstructionEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %2
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %i.h to i32
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 3
  %i.n = ashr i64 %i.h, 32                        ; 4 uses
  switch i32 %i.m, label %default.unreachable [
    i32 0, label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit
    i32 1, label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n
  %.sroa.0.0.copyload.i = load i32, ptr %i.q, align 4
  %i.r = zext i32 %.sroa.0.0.copyload.i to i64
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.n
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.v = lshr i64 %i.h, 3
  %i.w = trunc i64 %i.v to i32                    ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load i64, ptr %i.x, align 8
  %.not.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.z, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, %i.w
  br i1 %i.ac, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %bb.g, !llvm.loop !48

bb.h:                                             ; preds = %bb.e
  %i.ad = xor i32 %i.w, -1
  %i.ae = shl i32 %i.w, 15
  %i.af = add i32 %i.ae, %i.ad                    ; 2 uses
  %i.ag = lshr i32 %i.af, 12
  %i.ah = xor i32 %i.ag, %i.af
  %i.ai = mul i32 %i.ah, 5                        ; 2 uses
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = mul i32 %i.ak, 2057                     ; 2 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = xor i32 %i.am, %i.al
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = urem i64 %i.ao, %i.aq                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_1
