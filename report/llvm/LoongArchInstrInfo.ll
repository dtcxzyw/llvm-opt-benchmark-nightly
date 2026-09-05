Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchInstrInfo?download=true
inline.NumInlined: 1110
inline.NumDeleted: 533
begin_hunk_0_@_ZNK4llvm18LoongArchInstrInfo21isBranchOffsetInRangeEjl:bb.a
    i32 560, label %bb.e
    i32 558, label %bb.c
    i32 569, label %bb.c
    i32 555, label %bb.c
    i32 556, label %bb.c
    i32 554, label %bb.d
    i32 352, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.c
  %.sink5 = phi i64 [ 134217728, %bb.d ], [ 4194304, %bb.c ], [ 131072, %bb.a ], [ 131072, %bb.a ], [ 131072, %bb.a ], [ 131072, %bb.a ], [ 131072, %bb.a ], [ 131072, %bb.a ]
  %.sink4 = phi i64 [ 268435456, %bb.d ], [ 8388608, %bb.c ], [ 262144, %bb.a ], [ 262144, %bb.a ], [ 262144, %bb.a ], [ 262144, %bb.a ], [ 262144, %bb.a ], [ 262144, %bb.a ]
  %i.a = add i64 %2, %.sink5
  %i.b = icmp ult i64 %i.a, %.sink4
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18LoongArchInstrInfo12isSafeToMoveERKNS_12MachineInstrEPKNS_17MachineBasicBlockERKNS_15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL17DisableRelocSched, i64 120), align 8, !tbaa !371, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !285  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i24, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i24 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not231 = icmp eq i24 %i.f, 0
  br i1 %.not231, label %.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.0118232, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.h
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0118232 = phi ptr [ %i.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = load i32, ptr %.0118232, align 8         ; 2 uses
  %i.k = and i32 %i.j, 255
  %i.l = icmp eq i32 %i.k, 0
  %i.m = and i32 %i.j, 1048320
  %.not134216 = icmp eq i32 %i.m, 0
  %.not134 = or i1 %i.l, %.not134216
  br i1 %.not134, label %bb.c, label %.critedge157

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !284  ; 2 uses
  switch i32 %i.p, label %.critedge [
    i32 841, label %.preheader227.preheader
    i32 803, label %bb.j
  ]

.preheader227.preheader:                          ; preds = %.thread
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111  ; 4 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.preheader227.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !284
  %.not141 = icmp eq i32 %i.u, 465
  br i1 %.not141, label %.preheader226.preheader, label %.critedge

.preheader226.preheader:                          ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111  ; 3 uses
  %i.x = icmp eq ptr %i.w, %i.n
  br i1 %i.x, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader226.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !284
  %.not142 = icmp eq i32 %i.z, 802
  br i1 %.not142, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !285
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i32 %i.ad, 255
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = lshr i32 %i.ad, 8
  %i.ah = and i32 %i.ag, 4095
  %i.ai = select i1 %i.af, i32 0, i32 %i.ah       ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !285
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load i32, ptr %i.al, align 8            ; 2 uses
  %i.an = and i32 %i.am, 255
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = lshr i32 %i.am, 8
  %i.aq = and i32 %i.ap, 4095
  %i.ar = select i1 %i.ao, i32 0, i32 %i.aq       ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !285
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i32 %i.av, 255
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = lshr i32 %i.av, 8
  %i.az = and i32 %i.ay, 4095
  %i.ba = select i1 %i.ax, i32 0, i32 %i.az       ; 4 uses
  %i.bb = icmp eq i32 %i.ai, 3
  %i.bc = icmp eq i32 %i.ar, 4
  %or.cond = and i1 %i.bb, %i.bc
  %i.bd = icmp eq i32 %i.ba, 5
  %or.cond10 = and i1 %or.cond, %i.bd
  br i1 %or.cond10, label %.critedge157, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = icmp eq i32 %i.ai, 7
  %i.bf = add nsw i32 %i.ai, -19
  %i.bg = icmp ult i32 %i.bf, 2
  %or.cond14 = or i1 %i.be, %i.bg
  %i.bh = icmp eq i32 %i.ar, 8
  %or.cond16 = and i1 %or.cond14, %i.bh
  %i.bi = icmp eq i32 %i.ba, 9
  %or.cond18 = and i1 %or.cond16, %i.bi
  br i1 %or.cond18, label %.critedge157, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp eq i32 %i.ai, 15
  %i.bk = icmp eq i32 %i.ar, 16
  %or.cond20 = and i1 %i.bj, %i.bk
  %i.bl = icmp eq i32 %i.ba, 17
  %or.cond22 = and i1 %or.cond20, %i.bl
  br i1 %or.cond22, label %.critedge157, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = icmp ne i32 %i.ai, 23
  %i.bn = icmp ne i32 %i.ar, 24
  %or.cond24.not220 = or i1 %i.bm, %i.bn
  %i.bo = icmp ne i32 %i.ba, 26
  %or.cond26.not = or i1 %or.cond24.not220, %i.bo
  br i1 %or.cond26.not, label %.critedge, label %.critedge157

bb.j:                                             ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !285
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = and i32 %i.bs, 255
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = lshr i32 %i.bs, 8
  %i.bw = and i32 %i.bv, 4095
  %i.bx = add nsw i32 %i.bw, -6
  %switch.tableidx = select i1 %i.bu, i32 -6, i32 %i.bx ; 2 uses
  %i.by = icmp ult i32 %switch.tableidx, 20
  %switch.shifted = lshr i32 528401, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond243 = select i1 %i.by, i1 %switch.lobit, i1 false
  br i1 %or.cond243, label %.critedge157, label %.critedge

.critedge:                                        ; preds = %bb.j, %.preheader226.preheader, %bb.e, %bb.d, %.preheader227.preheader, %.thread, %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !372, !nonnull !15, !align !230 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 240
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !373
  %i.cd = and i64 %i.cc, 16384
  %.not221 = icmp eq i64 %i.cd, 0
  br i1 %.not221, label %.critedge157, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 354
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !358, !range !14, !noundef !15
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  %i.ch = select i1 %i.cg, i32 465, i32 466       ; 2 uses
  %i.ci = select i1 %i.cg, i32 792, i32 795       ; 2 uses
  switch i32 %i.p, label %.critedge153 [
    i32 841, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEElEvRT_T0_St26bidirectional_iterator_tag.exit174
    i32 466, label %bb.v
    i32 465, label %bb.v
    i32 795, label %bb.w
    i32 792, label %bb.w
    i32 373, label %bb.x
  ]

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEElEvRT_T0_St26bidirectional_iterator_tag.exit174: ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !285
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %.val166 = load i32, ptr %i.cl, align 8         ; 2 uses
  %i.cm = and i32 %.val166, 255
  %i.cn = icmp eq i32 %i.cm, 0
  %i.co = lshr i32 %.val166, 8
  %i.cp = and i32 %i.co, 63
  %i.cq = select i1 %i.cn, i32 0, i32 %i.cp       ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !111      ; 6 uses
  %i.cr = icmp eq i32 %i.cq, 23
  %i.cs = icmp eq ptr %5, %i.n                    ; 2 uses
  br i1 %i.cr, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEElEvRT_T0_St26bidirectional_iterator_tag.exit174
  br i1 %i.cs, label %.critedge153, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !284
  %.not149 = icmp eq i32 %i.cu, %i.ch
  br i1 %.not149, label %.preheader.preheader, label %.critedge153

.preheader.preheader:                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !111 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, %i.n
  br i1 %i.cx, label %.critedge153, label %bb.n

bb.n:                                             ; preds = %.preheader.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !284
  %.not150 = icmp eq i32 %i.cz, %i.ci
  br i1 %.not150, label %bb.o, label %.critedge153

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !285
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %.val165 = load i32, ptr %i.dc, align 8         ; 2 uses
  %i.dd = and i32 %.val165, 255
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !285
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %.val164 = load i32, ptr %i.dh, align 8         ; 2 uses
  %i.di = and i32 %.val164, 255
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = and i32 %.val165, 16128
  %i.dl = icmp eq i32 %i.dk, 6144
  %i.dm = and i1 %i.de, %i.dl
  %i.dn = and i32 %.val164, 16128
  %i.do = icmp eq i32 %i.dn, 6912
  %i.dp = and i1 %i.dj, %i.do
  %or.cond34 = and i1 %i.dm, %i.dp
  br i1 %or.cond34, label %.critedge157, label %.critedge153

bb.p:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEElEvRT_T0_St26bidirectional_iterator_tag.exit174
  br i1 %i.cs, label %.critedge153, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !284 ; 2 uses
  %.not147 = icmp eq i32 %i.dr, %i.ch             ; 3 uses
  %.not148 = icmp eq i32 %i.dr, %i.ci             ; 2 uses
  %or.cond214 = or i1 %.not147, %.not148
  br i1 %or.cond214, label %bb.r, label %.critedge153

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !285
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %.val163 = load i32, ptr %i.du, align 8         ; 2 uses
  %i.dv = and i32 %.val163, 255
  %i.dw = icmp eq i32 %i.dv, 0
  %i.dx = lshr i32 %.val163, 8
  %i.dy = and i32 %i.dx, 63
  %i.dz = select i1 %i.dw, i32 0, i32 %i.dy       ; 3 uses
  switch i32 %i.cq, label %bb.u [
    i32 3, label %bb.s
    i32 7, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ea = icmp eq i32 %i.dz, 4
  %or.cond36 = and i1 %.not147, %i.ea
  br i1 %or.cond36, label %.critedge157, label %.critedge153

bb.t:                                             ; preds = %bb.r
  %i.eb = icmp eq i32 %i.dz, 8
  %or.cond38 = and i1 %.not148, %i.eb
  br i1 %or.cond38, label %.critedge157, label %.critedge153

bb.u:                                             ; preds = %bb.r
  %i.ec = add nsw i32 %i.cq, -19
  %or.cond40 = icmp ult i32 %i.ec, 2
  %i.ed = icmp eq i32 %i.dz, 8
  %or.cond42 = and i1 %.not147, %i.ed
  %or.cond215 = select i1 %or.cond40, i1 %or.cond42, i1 false
  br i1 %or.cond215, label %.critedge157, label %.critedge153

bb.v:                                             ; preds = %bb.k, %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !285
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %.val162 = load i32, ptr %i.eg, align 8         ; 2 uses
  %i.eh = and i32 %.val162, 255
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = lshr i32 %.val162, 8
  %i.ek = and i32 %i.ej, 63
  %i.el = add nsw i32 %i.ek, -4
  %i.em = and i32 %i.el, -5
  %switch.selectcmp224 = icmp ne i32 %i.em, 0
  %switch.selectcmp.not = select i1 %i.ei, i1 true, i1 %switch.selectcmp224
  br label %.critedge157

bb.w:                                             ; preds = %bb.k, %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !285
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %.val161 = load i32, ptr %i.ep, align 8         ; 2 uses
  %i.eq = and i32 %.val161, 255
  %i.er = icmp ne i32 %i.eq, 0
  %i.es = and i32 %.val161, 16128
  %.not144223 = icmp eq i32 %i.es, 2048
  %.not144 = and i1 %i.er, %.not144223
  br i1 %.not144, label %.critedge157, label %.critedge153

bb.x:                                             ; preds = %bb.k
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !285
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %.val = load i32, ptr %i.ev, align 8            ; 2 uses
  %i.ew = and i32 %.val, 255
  %i.ex = icmp ne i32 %i.ew, 0
  %i.ey = and i32 %.val, 16128
  %.not143222 = icmp eq i32 %i.ey, 7168
  %.not143 = and i1 %i.ex, %.not143222
  br i1 %.not143, label %.critedge157, label %.critedge153

.critedge153:                                     ; preds = %bb.q, %bb.u, %bb.s, %bb.t, %.preheader.preheader, %bb.n, %bb.o, %bb.m, %bb.l, %bb.p, %bb.k, %bb.w, %bb.x
  br label %.critedge157

.critedge157:                                     ; preds = %.lr.ph, %bb.j, %bb.u, %bb.o, %bb.i, %.critedge, %.critedge153, %bb.x, %bb.w, %bb.v, %bb.s, %bb.t, %bb.f, %bb.h, %bb.g
  %.20 = phi i1 [ false, %bb.o ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.x ], [ %switch.selectcmp.not, %bb.v ], [ false, %bb.t ], [ false, %bb.w ], [ true, %.critedge153 ], [ true, %.critedge ], [ false, %bb.u ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.s ], [ false, %.lr.ph ]
  ret i1 %.20
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18LoongArchInstrInfo20isSchedulingBoundaryERKNS_12MachineInstrEPKNS_17MachineBasicBlockERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1065) %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo20isSchedulingBoundaryERKNS_12MachineInstrEPKNS_17MachineBasicBlockERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1065) %3) #20
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 976
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1065) %3) #20
  %not. = xor i1 %i.e, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %not., %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo20isSchedulingBoundaryERKNS_12MachineInstrEPKNS_17MachineBasicBlockERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK4llvm18LoongArchInstrInfo12removeBranchERNS_17MachineBasicBlockEPi(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nofree noundef captures(address_is_null) %2) unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %1, i1 noundef zeroext true) #20 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !363
  %i.h = and i64 %i.g, 1024
  %.not23 = icmp eq i64 %i.h, 0
  br i1 %.not23, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %0, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a) #20
  %i.m = load i32, ptr %2, align 4, !tbaa !40
  %i.n = add i32 %i.m, %i.l
  store i32 %i.n, ptr %2, align 4, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #20 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_0
