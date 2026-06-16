inline.NumInlined: 2477
inline.NumDeleted: 1488
begin_hunk_0_@_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE:bb.a
  %i.bl = sub nsw i32 %..017.i, %.0..i            ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.i, label %._crit_edge.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.bo = sext i32 %.0.lcssa.i to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 648 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.bu = add i64 %i.bq, 7
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 32
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = icmp sgt i32 %1, %i.by
  %i.ca = zext i1 %i.bz to i32
  br label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit

_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit: ; preds = %._crit_edge.i, %bb.k
  %.0.i22.i = phi i32 [ %i.ca, %bb.k ], [ 0, %._crit_edge.i ]
  %i.cb = add nsw i32 %.0.i22.i, %.0.lcssa.i      ; 7 uses
  %i.cc = icmp slt i32 %i.cb, %i.au
  br i1 %i.cc, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.cd ; 2 uses
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.bs
  br i1 %i.cg, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = add i64 %i.cf, 7
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = lshr i64 %i.cj, 32
  %i.cl = trunc nuw i64 %i.ck to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.cl, %bb.m ], [ 2147483647, %bb.l ]
  %i.cm = icmp eq i32 %.0.i, %1
  br i1 %i.cm, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cn = load atomic volatile i64, ptr %i.ce monotonic, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %bb.o, label %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.ct = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #18
  br label %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.n, %bb.o
  %.0.i.i68 = phi ptr [ %i.ct, %bb.o ], [ %i.cp, %bb.n ] ; 3 uses
  %i.cu = ptrtoint ptr %.0.i.i68 to i64
  %i.cv = add i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.co, align 8
  store i64 %i.cn, ptr %.0.i.i68, align 8
  tail call void @_ZN2v88internal14BreakPointInfo13SetBreakPointEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10BreakPointEEE(ptr noundef nonnull %i.b, ptr nonnull %.0.i.i68, ptr %2) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit82

.critedge:                                        ; preds = %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit
  %sext = add i64 %i.as, -4294967296
  %i.cx = ashr i64 %sext, 32
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.cx
  %i.cz = load atomic volatile i64, ptr %i.cy monotonic, align 8
  %i.da = icmp eq i64 %i.cz, %i.bs
  br i1 %i.da, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.db = shl nsw i32 %i.au, 1
  %i.dc = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef %i.db, i8 noundef zeroext 1, i8 0) #18 ; 4 uses
  %i.dd = load i64, ptr %0, align 8               ; 4 uses
  %i.de = load i64, ptr %i.dc, align 8            ; 5 uses
  %i.df = add i64 %i.dd, 71                       ; 3 uses
  %i.dg = inttoptr i64 %i.df to ptr
  store atomic volatile i64 %i.de, ptr %i.dg monotonic, align 8
  %i.dh = trunc i64 %i.de to i1
  br i1 %i.dh, label %bb.q, label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit77

bb.q:                                             ; preds = %bb.p
  %i.di = and i64 %i.dd, -262144
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load i64, ptr %i.dj, align 262144       ; 2 uses
  %i.dl = and i64 %i.dk, 32
  %.not.i.i.i73 = icmp eq i64 %i.dl, 0
  %i.dm = and i64 %i.dk, 25
  %.not38.i.i.i74 = icmp eq i64 %i.dm, 0
  br i1 %.not38.i.i.i74, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dn = and i64 %i.de, -262144
  %i.do = inttoptr i64 %i.dn to ptr
  %.sroa.0.0.copyload.i28.i.i.i75 = load i64, ptr %i.do, align 262144
  %i.dp = and i64 %.sroa.0.0.copyload.i28.i.i.i75, 25
  %.not39.i.i.i76 = icmp eq i64 %i.dp, 0
  br i1 %.not39.i.i.i76, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dd, i64 noundef %i.df, i64 %i.de) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i.i73, label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit77, label %bb.u, !prof !24

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dd, i64 %i.df, i64 %i.de) #18
  br label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit77

_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit77: ; preds = %bb.p, %bb.t, %bb.u
  %i.dq = icmp sgt i32 %i.cb, 0
  br i1 %i.dq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit77
  %wide.trip.count = zext nneg i32 %i.cb to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 3 uses
  %i.dr = load i64, ptr %i.dc, align 8
  %i.ds = add i64 %i.dr, -1                       ; 3 uses
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load i64, ptr %.sroa.0133.0, align 8
  %i.dv = add i64 %i.du, -1
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv
  %i.dz = load atomic volatile i64, ptr %i.dy monotonic, align 8 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.dz, ptr %i.eb monotonic, align 8
  %i.ec = trunc i64 %i.dz to i1
  br i1 %i.ec, label %bb.v, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.v:                                             ; preds = %.lr.ph
  %i.ed = or disjoint i64 %i.ds, 1                ; 2 uses
  %i.ee = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ef = and i64 %i.ds, -262144
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i64, ptr %i.eg, align 262144       ; 2 uses
  %i.ei = and i64 %i.eh, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.ei, 0
  %i.ej = and i64 %i.eh, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not38.i.i.i.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ek = and i64 %i.dz, -262144
  %i.el = inttoptr i64 %i.ek to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.el, align 262144
  %i.em = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not39.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ed, i64 noundef %i.ee, i64 %i.dz) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.z, !prof !24

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ed, i64 %i.ee, i64 %i.dz) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph, %bb.y, %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !37

.loopexit:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit77, %.critedge
  %.sroa.0109.0 = phi ptr [ %.sroa.0133.0, %.critedge ], [ %i.dc, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit77 ], [ %i.dc, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.en = load i64, ptr %.sroa.0133.0, align 8
  %i.eo = add i64 %i.en, -1
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8            ; 2 uses
  %i.es = lshr i64 %i.er, 32
  %i.et = trunc nuw i64 %i.es to i32
  %.not.not178 = icmp slt i32 %i.cb, %i.et
  br i1 %.not.not178, label %.lr.ph181.preheader, label %.loopexit.._crit_edge_crit_edge

.loopexit.._crit_edge_crit_edge:                  ; preds = %.loopexit
  %.pre = sext i32 %i.cb to i64
  br label %._crit_edge

.lr.ph181.preheader:                              ; preds = %.loopexit
  %i.eu = ashr i64 %i.er, 32                      ; 2 uses
  %3 = add nsw i64 %i.eu, -1
  %i.ev = sext i32 %i.cb to i64                   ; 2 uses
  br label %.lr.ph181

._crit_edge:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87, %.loopexit.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.loopexit.._crit_edge_crit_edge ], [ %i.ev, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87 ]
  %i.ew = tail call ptr @_ZN2v88internal7Factory17NewBreakPointInfoEi(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef %1) #18 ; 2 uses
  tail call void @_ZN2v88internal14BreakPointInfo13SetBreakPointEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10BreakPointEEE(ptr noundef nonnull %i.b, ptr %i.ew, ptr %2) #18
  %i.ex = load i64, ptr %.sroa.0109.0, align 8
  %i.ey = add i64 %i.ex, -1                       ; 3 uses
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = load i64, ptr %i.ew, align 8            ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.pre-phi ; 2 uses
  store atomic volatile i64 %i.fa, ptr %i.fc monotonic, align 8
  %i.fd = trunc i64 %i.fa to i1
  br i1 %i.fd, label %bb.aa, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit82

bb.aa:                                            ; preds = %._crit_edge
  %i.fe = or disjoint i64 %i.ey, 1                ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fg = and i64 %i.ey, -262144
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load i64, ptr %i.fh, align 262144       ; 2 uses
  %i.fj = and i64 %i.fi, 32
  %.not.i.i.i.i.i78 = icmp eq i64 %i.fj, 0
  %i.fk = and i64 %i.fi, 25
  %.not38.i.i.i.i.i79 = icmp eq i64 %i.fk, 0
  br i1 %.not38.i.i.i.i.i79, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fl = and i64 %i.fa, -262144
  %i.fm = inttoptr i64 %i.fl to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i80 = load i64, ptr %i.fm, align 262144
  %i.fn = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i80, 25
  %.not39.i.i.i.i.i81 = icmp eq i64 %i.fn, 0
  br i1 %.not39.i.i.i.i.i81, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.fe, i64 noundef %i.ff, i64 %i.fa) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %.not.i.i.i.i.i78, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit82, label %bb.ae, !prof !24

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.fe, i64 %i.ff, i64 %i.fa) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit82

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87
  %indvars.iv183.a = phi i64 [ %i.eu, %.lr.ph181.preheader ], [ %indvars.iv.next186, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87 ] ; 2 uses
  %indvars.iv183 = phi i64 [ %3, %.lr.ph181.preheader ], [ %indvars.iv.next184, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87 ] ; 2 uses
  %i.fo = load i64, ptr %.sroa.0133.0, align 8
  %i.fp = add i64 %i.fo, -1
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %indvars.iv183
  %i.ft = load atomic volatile i64, ptr %i.fs monotonic, align 8 ; 6 uses
  %i.fu = load i64, ptr %i.br, align 8
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87, label %bb.af

bb.af:                                            ; preds = %.lr.ph181
  %i.fw = load i64, ptr %.sroa.0109.0, align 8
  %i.fx = add i64 %i.fw, -1                       ; 3 uses
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %indvars.iv183.a ; 2 uses
  store atomic volatile i64 %i.ft, ptr %i.ga monotonic, align 8
  %i.gb = trunc i64 %i.ft to i1
  br i1 %i.gb, label %bb.ag, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87

bb.ag:                                            ; preds = %bb.af
  %i.gc = or disjoint i64 %i.fx, 1                ; 2 uses
  %i.gd = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.ge = and i64 %i.fx, -262144
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load i64, ptr %i.gf, align 262144       ; 2 uses
  %i.gh = and i64 %i.gg, 32
  %.not.i.i.i.i.i83 = icmp eq i64 %i.gh, 0
  %i.gi = and i64 %i.gg, 25
  %.not38.i.i.i.i.i84 = icmp eq i64 %i.gi, 0
  br i1 %.not38.i.i.i.i.i84, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gj = and i64 %i.ft, -262144
  %i.gk = inttoptr i64 %i.gj to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i85 = load i64, ptr %i.gk, align 262144
  %i.gl = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i85, 25
  %.not39.i.i.i.i.i86 = icmp eq i64 %i.gl, 0
  br i1 %.not39.i.i.i.i.i86, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.gc, i64 noundef %i.gd, i64 %i.ft) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  br i1 %.not.i.i.i.i.i83, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87, label %bb.ak, !prof !24

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.gc, i64 %i.gd, i64 %i.ft) #18
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit87: ; preds = %bb.ak, %bb.aj, %bb.af, %.lr.ph181
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, -1 ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next184, %i.ev
  %indvars.iv.next186 = add nsw i64 %indvars.iv183.a, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph181, !llvm.loop !38

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit82: ; preds = %bb.ae, %bb.ad, %._crit_edge, %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10WasmScript40SetBreakPointOnFirstBreakableForFunctionENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8
  %i.c = add i64 %i.b, 79
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 7
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_125FindNextBreakablePositionEPNS0_4wasm12NativeModuleEii(ptr noundef %i.l, i32 noundef %1, i32 noundef 0) ; 3 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %0, align 8
  %i.q = add i64 %i.p, 79
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, 7
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.ad = zext nneg i32 %1 to i64
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, %i.m
  tail call void @_ZN2v88internal10WasmScript19AddBreakpointToInfoENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr nonnull readonly %0, i32 noundef %i.ai, ptr %2)
  %i.aj = tail call noundef ptr @_ZN2v88internal4wasm12NativeModule12GetDebugInfoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.z) #18
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void @_ZN2v88internal4wasm13DebugInfoImpl13SetBreakpointEiiPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(160) %i.ak, i32 noundef %1, i32 noundef %i.m, ptr noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

declare noundef ptr @_ZN2v88internal4wasm12NativeModule12GetDebugInfoEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10WasmScript15ClearBreakPointENS0_12DirectHandleINS0_6ScriptEEEiNS2_INS0_10BreakPointEEE(ptr nofree readonly captures(none) %0, i32 noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.332", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, 47
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %.mask.i = and i64 %i.d, -4294967296
  %i.e = icmp eq i64 %.mask.i, 12884901888
  br i1 %i.e, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit

_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit: ; preds = %bb.a
  %i.f = add i64 %i.a, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit

bb.b:                                             ; preds = %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.q = load ptr, ptr %i.p, align 8              ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 568 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #18
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.w, %bb.c ], [ %i.s, %bb.b ] ; 4 uses
  %i.x = ptrtoint ptr %.0.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  %i.aa = load i64, ptr %i.k, align 8
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = trunc nuw i64 %i.ab to i32              ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 648
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %.lr.ph.i
  %i.ag = phi i32 [ %i.ac, %.lr.ph.i ], [ %i.at, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %.034.i = phi i32 [ 0, %.lr.ph.i ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %.01733.i = phi i32 [ %i.ac, %.lr.ph.i ], [ %..017.i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = add nsw i32 %i.ah, %.034.i              ; 3 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.aj
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8 ; 2 uses
  %i.am = load i64, ptr %i.af, align 8
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = add i64 %i.al, 7
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i52 = phi i32 [ %i.as, %bb.e ], [ 2147483647, %bb.d ]
  %.not.i = icmp sgt i32 %.0.i.i52, %1            ; 2 uses
  %..017.i = select i1 %.not.i, i32 %i.ai, i32 %.01733.i ; 2 uses
  %.0..i = select i1 %.not.i, i32 %.034.i, i32 %i.ai ; 3 uses
  %i.at = sub nsw i32 %..017.i, %.0..i            ; 2 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.d, label %._crit_edge.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.aw = sext i32 %.0.lcssa.i to i64             ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load atomic volatile i64, ptr %i.ax monotonic, align 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 648 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.bc = add i64 %i.ay, 7
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = lshr i64 %i.be, 32
  %i.bg = trunc nuw i64 %i.bf to i32
  %i.bh = icmp sgt i32 %1, %i.bg
  %i.bi = zext i1 %i.bh to i32
  br label %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit

_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit: ; preds = %._crit_edge.i, %bb.f
  %.0.i22.i = phi i32 [ %i.bi, %bb.f ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.bj = add nsw i32 %.0.i22.i, %.0.lcssa.i      ; 2 uses
  %.not = icmp eq i32 %i.bj, %i.ac
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_127FindBreakpointInfoInsertPosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bk
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.t, align 8
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.bq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #18
  br label %_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14BreakPointInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i50 = phi ptr [ %i.bq, %bb.h ], [ %i.bn, %bb.g ] ; 4 uses
  %i.br = ptrtoint ptr %.0.i.i50 to i64
  %i.bs = add i64 %i.br, 8
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %i.r, align 8
  store i64 %i.bm, ptr %.0.i.i50, align 8
  tail call void @_ZN2v88internal14BreakPointInfo15ClearBreakPointEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10BreakPointEEE(ptr noundef nonnull %i.q, ptr nonnull %.0.i.i50, ptr %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bu = load i64, ptr %.0.i.i50, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal10WasmScript19ClearAllBreakpointsENS0_6TaggedINS0_6ScriptEEE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i.i, label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !24

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %0, i64 %i.e, i64 %i.d) #18
  br label %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  %i.p = add i64 %0, 103
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = and i64 %i.r, 549755813888
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit
  %i.t = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.u = and i64 %i.t, -554050781184
  store atomic volatile i64 %i.u, ptr %i.q monotonic, align 8
  %i.v = add i64 %0, 87
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = add i64 %i.x, 15
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %invariant.op.i = add i64 %i.x, 23
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %i.ae = phi i64 [ %i.aa, %.lr.ph.preheader.i ], [ %i.ar, %bb.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.af = shl nsw i64 %indvars.iv.i, 3
  %.reass.i = add i64 %invariant.op.i, %i.af
  %i.ag = inttoptr i64 %.reass.i to ptr           ; 2 uses
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 3
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ak = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.al = and i64 %i.ak, -3
  %i.am = add i64 %i.al, 23
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i64, ptr %i.an acquire, align 8
  %i.ap = add i64 %i.ao, 271
  %i.aq = inttoptr i64 %i.ap to ptr
  store i8 0, ptr %i.aq, align 1
  %.pre.i = load i64, ptr %i.z, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.ar = phi i64 [ %i.ae, %.lr.ph.i ], [ %.pre.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = ashr i64 %i.ar, 32
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit, !llvm.loop !35

_ZN2v88internal12_GLOBAL__N_119SetBreakOnEntryFlagENS0_6TaggedINS0_6ScriptEEEb.exit: ; preds = %bb.i, %_ZN2v88internal6Script25set_wasm_breakpoint_infosENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit, %bb.g
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN2v88internal14BreakPointInfo13SetBreakPointEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_10BreakPointEEE(ptr noundef, ptr, ptr) local_unnamed_addr #1

declare ptr @_ZN2v88internal7Factory17NewBreakPointInfoEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal10WasmScript22GetPossibleBreakpointsEPNS0_4wasm12NativeModuleERKNS_5debug8LocationES8_PSt6vectorINS5_13BreakLocationESaISA_EE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(9) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Zone", align 8 ; 5 uses
  %5 = alloca %"struct.v8::internal::wasm::BodyLocalDecls", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::wasm::BytecodeIterator", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 3 uses
  %i.g = tail call noundef i32 @_ZNK2v85debug8Location13GetLineNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZNK2v85debug8Location7IsEmptyEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZNK2v85debug8Location13GetLineNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  %.not48 = icmp eq i32 %i.k, 0
  br i1 %.not48, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  %i.o = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.q = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18
  %i.r = tail call noundef i32 @_ZN2v88internal4wasm22GetNearestWasmFunctionEPKNS1_10WasmModuleEj(ptr noundef %i.e, i32 noundef %i.q) #18 ; 5 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %1) #18 ; 2 uses
  %i.u = tail call noundef zeroext i1 @_ZNK2v85debug8Location7IsEmptyEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 5
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add i32 %i.aj, %i.ah
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.al = tail call noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9) %2) #18 ; 2 uses
  %i.am = tail call noundef i32 @_ZN2v88internal4wasm22GetNearestWasmFunctionEPKNS1_10WasmModuleEj(ptr noundef %i.e, i32 noundef %i.al) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.045 = phi i32 [ %i.ad, %bb.i ], [ %i.am, %bb.j ] ; 3 uses
  %.044 = phi i32 [ %i.ak, %bb.i ], [ %i.al, %bb.j ]
  %i.an = icmp eq i32 %i.r, %.045
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %i.r to i64
  %i.ap = load ptr, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add i32 %i.au, %i.as
  %i.aw = icmp ugt i32 %i.t, %i.av
  br i1 %i.aw, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ax = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #18
  call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.ax, ptr noundef nonnull @__func__._ZN2v88internal10WasmScript22GetPossibleBreakpointsEPNS0_4wasm12NativeModuleERKNS_5debug8LocationES8_PSt6vectorINS5_13BreakLocationESaISA_EE) #18
  %i.ay = call { ptr, i64 } @_ZNK2v88internal4wasm12NativeModule10wire_bytesEv(ptr noundef nonnull align 8 dereferenceable(552) %0)
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 2 uses
  %.not4956 = icmp sgt i32 %i.r, %.045
  br i1 %.not4956, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.bi = zext nneg i32 %i.r to i64
  br label %bb.n

._crit_edge:                                      ; preds = %bb.w, %bb.m
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.x

bb.n:                                             ; preds = %.lr.ph58, %bb.w
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph58 ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.bj = load ptr, ptr %i.f, align 8
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 20 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bp = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bq
  %i.bs = load i32, ptr %i.bm, align 4
  %i.bt = add i32 %i.bs, %i.bp
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bu
  call void @_ZN2v88internal4wasm16BytecodeIteratorC1EPKhS4_PNS1_14BodyLocalDeclsEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef %i.br, ptr noundef %i.bv, ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %i.bw = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bx = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.by = icmp ult ptr %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit
  %i.bz = phi ptr [ %i.cy, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit ], [ %i.bx, %bb.o ] ; 6 uses
  %i.ca = phi ptr [ %i.cz, %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit ], [ %i.bw, %bb.o ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cb = load i32, ptr %i.bl, align 4
  %i.cc = load ptr, ptr %i.bc, align 8
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = load i32, ptr %i.bd, align 8
  %i.ci = add i32 %i.ch, %i.cb
  %i.cj = add i32 %i.ci, %i.cg                    ; 4 uses
  store i32 %i.cj, ptr %i.a, align 4
  %.not50 = icmp ult i32 %i.cj, %.044
  br i1 %.not50, label %bb.p, label %_ZN2v88internal4wasm11WasmOpcodes11IsBreakableENS1_10WasmOpcodeE.exit

bb.p:                                             ; preds = %.lr.ph
  %i.ck = icmp ult i32 %i.cj, %i.t
  br i1 %i.ck, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.ca, align 1
  switch i8 %.0.copyload.i.i.i.i.i, label %bb.r [
    i8 2, label %bb.u
    i8 6, label %bb.u
    i8 7, label %bb.u
    i8 3, label %bb.u
    i8 5, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 3, ptr %i.c, align 4
  %i.cl = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.cm = load ptr, ptr %i.bf, align 8
  %.not.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v85debug8LocationC2Eii(ptr noundef nonnull align 4 dereferenceable(16) %i.cl, i32 noundef 0, i32 noundef %i.cj) #18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 3, ptr %i.cn, align 4
  %i.co = load ptr, ptr %i.be, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.cp, ptr %i.be, align 8
  br label %_ZNSt6vectorIN2v85debug13BreakLocationESaIS2_EE12emplace_backIJiRjNS1_17BreakLocationTypeEEEERS2_DpOT_.exit

bb.t:                                             ; preds = %bb.r
  call void @_ZNSt6vectorIN2v85debug13BreakLocationESaIS2_EE17_M_realloc_insertIJiRjNS1_17BreakLocationTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.cl, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br label %_ZNSt6vectorIN2v85debug13BreakLocationESaIS2_EE12emplace_backIJiRjNS1_17BreakLocationTypeEEEERS2_DpOT_.exit

_ZNSt6vectorIN2v85debug13BreakLocationESaIS2_EE12emplace_backIJiRjNS1_17BreakLocationTypeEEEERS2_DpOT_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.pre = load ptr, ptr %i.ba, align 8
  %.pre60 = load ptr, ptr %i.bb, align 8
  br label %bb.u

_ZN2v88internal4wasm11WasmOpcodes11IsBreakableENS1_10WasmOpcodeE.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

bb.u:                                             ; preds = %bb.p, %_ZNSt6vectorIN2v85debug13BreakLocationESaIS2_EE12emplace_backIJiRjNS1_17BreakLocationTypeEEEERS2_DpOT_.exit, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.cq = phi ptr [ %i.bz, %bb.p ], [ %.pre60, %_ZNSt6vectorIN2v85debug13BreakLocationESaIS2_EE12emplace_backIJiRjNS1_17BreakLocationTypeEEEERS2_DpOT_.exit ], [ %i.bz, %bb.q ], [ %i.bz, %bb.q ], [ %i.bz, %bb.q ], [ %i.bz, %bb.q ], [ %i.bz, %bb.q ] ; 3 uses
  %i.cr = phi ptr [ %i.ca, %bb.p ], [ %.pre, %_ZNSt6vectorIN2v85debug13BreakLocationESaIS2_EE12emplace_backIJiRjNS1_17BreakLocationTypeEEEERS2_DpOT_.exit ], [ %i.ca, %bb.q ], [ %i.ca, %bb.q ], [ %i.ca, %bb.q ], [ %i.ca, %bb.q ], [ %i.ca, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cs = icmp ult ptr %i.cr, %i.cq
  br i1 %i.cs, label %bb.v, label %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit

bb.v:                                             ; preds = %bb.u
  %i.ct = call noundef i32 @_ZN2v88internal4wasm12OpcodeLengthEPKhS3_(ptr noundef %i.cr, ptr noundef nonnull %i.cq) #18
  %i.cu = load ptr, ptr %i.ba, align 8
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.bb, align 8            ; 3 uses
  %.not.i51 = icmp ult ptr %i.cw, %i.cx
  %spec.store.select.i = select i1 %.not.i51, ptr %i.cw, ptr %i.cx ; 2 uses
  store ptr %spec.store.select.i, ptr %i.ba, align 8
  br label %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit

_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit: ; preds = %bb.u, %bb.v
  %i.cy = phi ptr [ %i.cq, %bb.u ], [ %i.cx, %bb.v ] ; 2 uses
  %i.cz = phi ptr [ %i.cr, %bb.u ], [ %spec.store.select.i, %bb.v ] ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.cy
  br i1 %i.da, label %.lr.ph, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %_ZN2v88internal4wasm16BytecodeIterator4nextEv.exit, %bb.o, %_ZN2v88internal4wasm11WasmOpcodes11IsBreakableENS1_10WasmOpcodeE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm7DecoderE, i64 16), ptr %6, align 8
  %i.db = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bh
  br i1 %i.dc, label %_ZN2v88internal4wasm7DecoderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit
  %i.dd = load i64, ptr %i.bh, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #19, !inline_history !34
  br label %_ZN2v88internal4wasm7DecoderD2Ev.exit

_ZN2v88internal4wasm7DecoderD2Ev.exit:            ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.w

bb.w:                                             ; preds = %bb.n, %_ZN2v88internal4wasm7DecoderD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = trunc nuw i64 %indvars.iv.next to i32
  %.not49 = icmp slt i32 %.045, %i.df
  br i1 %.not49, label %._crit_edge, label %bb.n, !llvm.loop !42

bb.x:                                             ; preds = %bb.g, %bb.l, %._crit_edge, %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.g ], [ true, %._crit_edge ], [ false, %bb.l ]
  ret i1 %.2
}

declare noundef i32 @_ZNK2v85debug8Location13GetLineNumberEv(ptr noundef nonnull align 4 dereferenceable(9)) local_unnamed_addr #1

declare noundef i32 @_ZNK2v85debug8Location15GetColumnNumberEv(ptr noundef nonnull align 4 dereferenceable(9)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK2v85debug8Location7IsEmptyEv(ptr noundef nonnull align 4 dereferenceable(9)) local_unnamed_addr #1

declare noundef i32 @_ZN2v88internal4wasm22GetNearestWasmFunctionEPKNS1_10WasmModuleEj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() local_unnamed_addr #1

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal4wasm12NativeModule10wire_bytesEv(ptr noundef nonnull align 8 dereferenceable(552) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::_Sp_locker", align 1  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18, !noalias !43
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull %i.a) #18, !noalias !43
  %i.b = load ptr, ptr %i.a, align 8, !noalias !43 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !noalias !43 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !noalias !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !noalias !43
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !noalias !43
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !43 ; 0 uses
  br label %bb.e

_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit: ; preds = %bb.a
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %1) #18, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18, !noalias !43
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %1) #18, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18, !noalias !43
  %i.m = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.t, align 4
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !48
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !48
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.j, label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ae = phi i64 [ %i.l, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit ], [ %i.o, %bb.f ], [ %i.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.o, %bb.j ]
  %i.af = phi ptr [ %i.j, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit ], [ %i.m, %bb.f ], [ %i.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.m, %bb.j ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.af, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

declare void @_ZN2v88internal4wasm16BytecodeIteratorC1EPKhS4_PNS1_14BodyLocalDeclsEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal10WasmScript16CheckBreakPointsEPNS0_7IsolateENS0_12DirectHandleINS0_6ScriptEEEiNS0_12StackFrameIdE(ptr noundef %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, 47
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %.mask.i = and i64 %i.d, -4294967296
  %i.e = icmp eq i64 %.mask.i, 12884901888
  br i1 %i.e, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread

_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit: ; preds = %bb.a
  %i.f = add i64 %i.a, 71
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit.thread

bb.b:                                             ; preds = %_ZNK2v88internal6Script25has_wasm_breakpoint_infosEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i67 = phi ptr [ %i.u, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.v = ptrtoint ptr %.0.i.i67 to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.p, align 8
  store i64 %i.h, ptr %.0.i.i67, align 8
  %i.y = load i64, ptr %i.k, align 8
  %i.z = lshr i64 %i.y, 32
  %i.aa = trunc nuw i64 %i.z to i32               ; 4 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 648
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, %.lr.ph.i
  %i.ae = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.ar, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %.034.i = phi i32 [ 0, %.lr.ph.i ], [ %.0..i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ] ; 2 uses
  %.01733.i = phi i32 [ %i.aa, %.lr.ph.i ], [ %..017.i, %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.af = lshr i32 %i.ae, 1
  %i.ag = add nsw i32 %i.af, %.034.i              ; 3 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8 ; 2 uses
  %i.ak = load i64, ptr %i.ad, align 8
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add i64 %i.aj, 7
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  br label %_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal12_GLOBAL__N_116GetBreakpointPosEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i70 = phi i32 [ %i.aq, %bb.e ], [ 2147483647, %bb.d ]
  %.not.i = icmp sgt i32 %.0.i.i70, %2            ; 2 uses
  %..017.i = select i1 %.not.i, i32 %i.ag, i32 %.01733.i ; 2 uses
  %.0..i = select i1 %.not.i, i32 %.034.i, i32 %i.ag ; 3 uses
  %i.ar = sub nsw i32 %..017.i, %.0..i            ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.d, label %._crit_edge.i, !llvm.loop !36
end_hunk_1
