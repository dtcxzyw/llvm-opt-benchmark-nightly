Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyDebugFixup?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !157
  %i.s = and i32 %i.r, 8
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not34.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ], [ %.sroa.01.06.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !152  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !157
  %i.x = and i32 %i.w, 8
  %.not3.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !170

_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %.lr.ph.i
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %.sroa.01.06.i, %.lr.ph.i ], [ %.sroa.01.06.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.u, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !152  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !172 ; 2 uses
  %i.ac = and i32 %i.ab, -2
  %spec.select.i.i = icmp eq i32 %i.ac, 14
  br i1 %spec.select.i.i, label %bb.d, label %_ZNK4llvm12MachineInstr17isUndefDebugValueEv.exit.i

bb.d:                                             ; preds = %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i
  %i.ad = icmp eq i32 %i.ab, 14                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !173
  %.sroa.05.0.idx.i.i.i = select i1 %i.ad, i64 0, i64 64
  %.sroa.05.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.05.0.idx.i.i.i ; 4 uses
  %i.ag = load i32, ptr %.sroa.05.0.i.i.i, align 8
  %i.ah = and i32 %i.ag, 255
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %_ZNK4llvm12MachineInstr17isUndefDebugValueEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 40
  %i.ak = load i24, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ne i24 %i.ak, 0
  %..i.i.i.i = zext i1 %i.al to i64
  %i.am = zext i24 %i.ak to i64
  %i.an = add nsw i64 %i.am, -2
  %.sroa.5.0.i.i.i = select i1 %i.ad, i64 %..i.i.i.i, i64 %i.an ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.sroa.5.0.i.i.i, 5
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i.i, i64 %.idx.i.i ; 2 uses
  %.not19.i.i = icmp eq i64 %.sroa.5.0.i.i.i, 0
  br i1 %.not19.i.i, label %_ZNK4llvm12MachineInstr17isUndefDebugValueEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.critedge15.i.i
  %.01320.i.i = phi ptr [ %i.au, %.critedge15.i.i ], [ %.sroa.05.0.i.i.i, %bb.e ] ; 3 uses
  %i.ap = load i32, ptr %.01320.i.i, align 8
  %i.aq = and i32 %i.ap, 255
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %.critedge15.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !174
  %.not18.i.i = icmp eq i32 %i.at, 0
  br i1 %.not18.i.i, label %_ZNK4llvm12MachineInstr17isUndefDebugValueEv.exit.i, label %.critedge15.i.i

.critedge15.i.i:                                  ; preds = %bb.f, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, %i.ao
  br i1 %.not.i.i, label %.lr.ph.i15.i, label %.lr.ph.i.i

.lr.ph.i15.i:                                     ; preds = %.critedge15.i.i, %bb.h
  %.012.i.i = phi ptr [ %i.ba, %bb.h ], [ %.sroa.05.0.i.i.i, %.critedge15.i.i ] ; 5 uses
  %i.av = load i32, ptr %.012.i.i, align 8
  %i.aw = and i32 %i.av, 255
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i15.i
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i, i32 0) #13
  %i.ay = load i32, ptr %.012.i.i, align 8
  %i.az = and i32 %i.ay, -1048321
  store i32 %i.az, ptr %.012.i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i15.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.ba, %i.ao
  br i1 %.not.i16.i, label %_ZNK4llvm12MachineInstr17isUndefDebugValueEv.exit.i, label %.lr.ph.i15.i

_ZNK4llvm12MachineInstr17isUndefDebugValueEv.exit.i: ; preds = %bb.f, %bb.h, %bb.e, %bb.d, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i
  %.not.i = icmp eq ptr %i.z, %i.n
  br i1 %.not.i, label %_ZL27setDanglingDebugValuesUndefRN4llvm17MachineBasicBlockEPKNS_15TargetInstrInfoE.exit, label %.lr.ph.i

_ZL27setDanglingDebugValuesUndefRN4llvm17MachineBasicBlockEPKNS_15TargetInstrInfoE.exit: ; preds = %_ZNK4llvm12MachineInstr17isUndefDebugValueEv.exit.i, %._crit_edge165
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0108.0175, i64 8
  %.sroa.0108.0 = load ptr, ptr %i.bb, align 8, !tbaa !31 ; 2 uses
  %.not118 = icmp eq ptr %.sroa.0108.0, %i.b
  br i1 %.not118, label %._crit_edge178, label %bb.c

.lr.ph164:                                        ; preds = %bb.c, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.0105.0162 = phi ptr [ %.sroa.0105.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0105.0157, %bb.c ] ; 20 uses
  %.sroa.0111.1161 = phi ptr [ %.sroa.0111.4, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0111.0174, %bb.c ] ; 10 uses
  %.sroa.8.1160 = phi ptr [ %.sroa.8.6, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.8.0173, %bb.c ] ; 9 uses
  %.sroa.16.1159 = phi ptr [ %.sroa.16.4, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.16.0172, %bb.c ] ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0105.0162, i64 52
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !172
  %i.be = and i32 %i.bd, -2
  %spec.select.i = icmp eq i32 %i.be, 14
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0105.0162, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !173 ; 5 uses
  br i1 %spec.select.i, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.lr.ph164
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = and i32 %i.bh, 255
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !174 ; 4 uses
  %.not124.a = icmp eq i32 %i.bl, 0
  br i1 %.not124.a, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = and i32 %i.bl, 2147483647               ; 2 uses
  %i.bn = load i32, ptr %i.g, align 8, !tbaa !175
  %.not.i67 = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i67, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit, label %.critedge

_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit: ; preds = %bb.k
  %i.bo = and i32 %i.bl, 63
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = lshr i32 %i.bm, 6
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !14
  %i.bw = and i64 %i.bv, %i.bq
  %.not125 = icmp eq i64 %i.bw, 0
  br i1 %.not125, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit
  %i.bx = ptrtoint ptr %.sroa.0111.1161 to i64
  br label %.critedge56

.critedge56:                                      ; preds = %bb.m, %bb.l
  %.sroa.0100.0 = phi ptr [ %.sroa.8.1160, %bb.l ], [ %i.by, %bb.m ] ; 3 uses
  %.not126 = icmp eq ptr %.sroa.0100.0, %.sroa.0111.1161
  br i1 %.not126, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.critedge56
  %i.by = getelementptr inbounds i8, ptr %.sroa.0100.0, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !183
  %i.ca = icmp eq i32 %i.bl, %i.bz
  br i1 %i.ca, label %bb.n, label %.critedge56

bb.n:                                             ; preds = %bb.m
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.cb, %i.bx
  %i.cd = lshr exact i64 %i.cc, 4
  %i.ce = and i64 %i.cd, 4294967295
  tail call void @_ZN4llvm14MachineOperand19ChangeToTargetIndexEjlj(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i32 noundef 2, i64 noundef %i.ce, i32 noundef 0) #13
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0100.0, i64 -8
  store ptr %.sroa.0105.0162, ptr %i.cf, align 8, !tbaa !186
  br label %.critedge

bb.o:                                             ; preds = %.lr.ph164
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0105.0162, i64 40 ; 2 uses
  %i.ch = load i24, ptr %i.cg, align 8
  %i.ci = zext i24 %i.ch to i64
  %i.cj = tail call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0105.0162) #13
  %i.ck = zext i32 %i.cj to i64
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.ci) ; 2 uses
  %i.cl = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0105.0162) #13
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %i.cm
  %.not120144 = icmp samesign eq i64 %..i.i, %i.cm
  br i1 %.not120144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %..i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0105.0162, i64 44 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0105.0162, i64 16
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread, %bb.o
  %.sroa.8.2.lcssa = phi ptr [ %.sroa.8.1160, %bb.o ], [ %.sroa.8.3, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread ] ; 2 uses
  %i.cr = load ptr, ptr %i.bf, align 8, !tbaa !173 ; 2 uses
  %i.cs = load i24, ptr %i.cg, align 8
  %i.ct = zext i24 %i.cs to i64
  %i.cu = tail call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0105.0162) #13
  %i.cv = zext i32 %i.cu to i64
  %..i.i68 = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.ct) ; 2 uses
  %.idx = shl nuw nsw i64 %..i.i68, 5
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx
  %.not147 = icmp eq i64 %..i.i68, 0
  br i1 %.not147, label %.critedge, label %.lr.ph153

bb.p:                                             ; preds = %.lr.ph, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread
  %.sroa.8.2146.a = phi ptr [ %.sroa.8.1160, %.lr.ph ], [ %.sroa.8.3, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread ] ; 5 uses
  %.sroa.091.0145 = phi ptr [ %i.co, %.lr.ph ], [ %i.cx, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.091.0145, i64 -32 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = and i32 %i.cy, 255
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.q, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds i8, ptr %.sroa.091.0145, i64 -28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !174 ; 2 uses
  %i.dd = and i32 %i.dc, 2147483647               ; 2 uses
  %i.de = load i32, ptr %i.g, align 8, !tbaa !175
  %.not.i71 = icmp ult i32 %i.dd, %i.de
  br i1 %.not.i71, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread

_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73: ; preds = %bb.q
  %i.df = and i32 %i.dc, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = lshr i32 %i.dd, 6
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !14
  %i.dn = and i64 %i.dm, %i.dh
  %.not122.a = icmp eq i64 %i.dn, 0
  br i1 %.not122.a, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73
  %i.do = getelementptr inbounds i8, ptr %.sroa.8.2146.a, i64 -16 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.8.2146.a, i64 -8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !187 ; 4 uses
  %.not54 = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not54, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = load i32, ptr %i.cp, align 4, !tbaa !157 ; 2 uses
  %i.dq = and i32 %i.dp, 12
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = and i32 %i.dp, 4
  %i.dt = icmp ne i32 %i.ds, 0
  %or.cond.i.i = or i1 %i.dr, %i.dt
  br i1 %or.cond.i.i, label %.split, label %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit

.split:                                           ; preds = %bb.s
  %i.du = load ptr, ptr %i.cq, align 8, !tbaa !188
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !189
  %i.dx = and i64 %i.dw, 512
  %.not123 = icmp eq i64 %i.dx, 0
  br i1 %.not123, label %bb.t, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread

_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit: ; preds = %bb.s
  %i.dy = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0105.0162, i64 noundef 512, i32 noundef 1) #13
  br i1 %i.dy, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread, label %bb.t

bb.t:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !192
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0105.0162, align 8
  %i.eb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.t
  %i.ec = load i32, ptr %i.cp, align 4, !tbaa !157
  %i.ed = and i32 %i.ec, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ef, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0105.0162, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !152 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 44
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !157
  %i.ei = and i32 %i.eh, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !170

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.t
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0105.0162, %bb.t ], [ %.sroa.0105.0162, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ef, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !152
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 72
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -448
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !173 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 80
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !174
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 112
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !174
  %i.eu = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_11MCInstrDescEbNS_8RegisterEPKNS_6MDNodeESE_(ptr noundef nonnull align 8 dereferenceable(360) %i.ea, ptr %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.en, i1 noundef zeroext false, i32 0, ptr noundef %i.er, ptr noundef %i.et) #13 ; 0 uses
  br label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread

_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73.thread: ; preds = %bb.q, %.split, %bb.r, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73, %bb.p
  %.sroa.8.3 = phi ptr [ %i.do, %bb.r ], [ %i.do, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit ], [ %i.do, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.8.2146.a, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit73 ], [ %.sroa.8.2146.a, %bb.p ], [ %i.do, %.split ], [ %.sroa.8.2146.a, %bb.q ] ; 2 uses
  %.not120.a = icmp eq ptr %i.cx, %i.cn
  br i1 %.not120.a, label %._crit_edge, label %bb.p

.lr.ph153:                                        ; preds = %._crit_edge, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit
  %.053151 = phi ptr [ %i.gc, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit ], [ %i.cr, %._crit_edge ] ; 3 uses
  %.sroa.0111.2150 = phi ptr [ %.sroa.0111.3, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit ], [ %.sroa.0111.1161, %._crit_edge ] ; 9 uses
  %.sroa.8.4149 = phi ptr [ %.sroa.8.5, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit ], [ %.sroa.8.2.lcssa, %._crit_edge ] ; 9 uses
  %.sroa.16.2148 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit ], [ %.sroa.16.1159, %._crit_edge ] ; 5 uses
  %i.ev = load i32, ptr %.053151, align 8
  %i.ew = and i32 %i.ev, 255
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.u, label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit

bb.u:                                             ; preds = %.lr.ph153
  %i.ey = getelementptr inbounds nuw i8, ptr %.053151, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !174 ; 4 uses
  %i.fa = and i32 %i.ez, 2147483647               ; 2 uses
  %i.fb = load i32, ptr %i.g, align 8, !tbaa !175
  %.not.i75 = icmp ult i32 %i.fa, %i.fb
  br i1 %.not.i75, label %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit77, label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit

_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit77: ; preds = %bb.u
  %i.fc = and i32 %i.ez, 63
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = lshr i32 %i.fa, 6
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !14
  %i.fk = and i64 %i.fj, %i.fe
  %.not121 = icmp eq i64 %i.fk, 0
  br i1 %.not121, label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit77
  %.not.i.i78 = icmp eq ptr %.sroa.8.4149, %.sroa.16.2148
  br i1 %.not.i.i78, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.ez, ptr %.sroa.8.4149, align 8, !tbaa !196
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8.4149, i64 8
  store ptr null, ptr %.sroa.585.0..sroa_idx, align 8, !tbaa !187
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.8.4149, i64 16
  br label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit

bb.x:                                             ; preds = %bb.v
  %i.fm = ptrtoint ptr %.sroa.8.4149 to i64
  %i.fn = ptrtoint ptr %.sroa.0111.2150 to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 6 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775792
  br i1 %i.fp, label %bb.y, label %_ZNKSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
  unreachable

_ZNKSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.fq = ashr exact i64 %i.fo, 4                 ; 3 uses
  %i.fr = icmp eq ptr %.sroa.8.4149, %.sroa.0111.2150
  %.sroa.speculated.i.i.i.i = select i1 %i.fr, i64 1, i64 %i.fq
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fq ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fq
  %i.fu = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 576460752303423487)
  %i.fv = select i1 %i.ft, i64 576460752303423487, i64 %i.fu ; 3 uses
  %.not.i.i.i.i79 = icmp ne i64 %i.fv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i79)
  %i.fw = shl nuw nsw i64 %i.fv, 4
  %i.fx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #15 ; 4 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fo ; 3 uses
  store i32 %i.ez, ptr %i.fy, align 8, !tbaa !196
  %.sroa.585.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr null, ptr %.sroa.585.0..sroa_idx86, align 8, !tbaa !187
  %i.fz = icmp sgt i64 %i.fo, 0
  br i1 %i.fz, label %bb.z, label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i.i

bb.z:                                             ; preds = %_ZNKSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr align 8 %.sroa.0111.2150, i64 %i.fo, i1 false)
  br label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i.i

_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i.i: ; preds = %bb.z, %_ZNKSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %.not.i21.i.i.i = icmp eq ptr %.sroa.0111.2150, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.2150, i64 noundef %i.fo) #16
  br label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i.i
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fx, i64 %i.fv
  br label %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit: ; preds = %bb.u, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.w, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit77, %.lr.ph153
  %.sroa.16.3 = phi ptr [ %.sroa.16.2148, %bb.w ], [ %.sroa.16.2148, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit77 ], [ %.sroa.16.2148, %.lr.ph153 ], [ %i.gb, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.16.2148, %bb.u ] ; 2 uses
  %.sroa.8.5 = phi ptr [ %i.fl, %bb.w ], [ %.sroa.8.4149, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit77 ], [ %.sroa.8.4149, %.lr.ph153 ], [ %i.ga, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.8.4149, %bb.u ] ; 2 uses
  %.sroa.0111.3 = phi ptr [ %.sroa.0111.2150, %bb.w ], [ %.sroa.0111.2150, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit77 ], [ %.sroa.0111.2150, %.lr.ph153 ], [ %i.fx, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.0111.2150, %bb.u ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.053151, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.gc, %i.cw
  br i1 %.not, label %.critedge, label %.lr.ph153

.critedge:                                        ; preds = %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit, %.critedge56, %._crit_edge, %bb.k, %bb.j, %bb.i, %bb.n, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit
  %.sroa.16.4 = phi ptr [ %.sroa.16.1159, %.critedge56 ], [ %.sroa.16.1159, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit ], [ %.sroa.16.1159, %bb.k ], [ %.sroa.16.1159, %bb.j ], [ %.sroa.16.1159, %bb.n ], [ %.sroa.16.1159, %bb.i ], [ %.sroa.16.1159, %._crit_edge ], [ %.sroa.16.3, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %.sroa.8.6 = phi ptr [ %.sroa.8.1160, %.critedge56 ], [ %.sroa.8.1160, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit ], [ %.sroa.8.1160, %bb.k ], [ %.sroa.8.1160, %bb.j ], [ %.sroa.8.1160, %bb.n ], [ %.sroa.8.1160, %bb.i ], [ %.sroa.8.2.lcssa, %._crit_edge ], [ %.sroa.8.5, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %.sroa.0111.4 = phi ptr [ %.sroa.0111.1161, %.critedge56 ], [ %.sroa.0111.1161, %_ZNK4llvm23WebAssemblyFunctionInfo16isVRegStackifiedENS_8RegisterE.exit ], [ %.sroa.0111.1161, %bb.k ], [ %.sroa.0111.1161, %bb.j ], [ %.sroa.0111.1161, %bb.n ], [ %.sroa.0111.1161, %bb.i ], [ %.sroa.0111.1161, %._crit_edge ], [ %.sroa.0111.3, %_ZNSt6vectorIZN12_GLOBAL__N_121WebAssemblyDebugFixup20runOnMachineFunctionERN4llvm15MachineFunctionEE9StackElemSaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0105.0162) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0105.0162, align 8
  %i.gd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i80 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i.i80, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %.critedge
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0105.0162, i64 44
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !157
  %i.gg = and i32 %i.gf, 8
  %.not34.i.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.gi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.0105.0162, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !152 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !157
  %i.gl = and i32 %i.gk, 8
  %.not3.i.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !170

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %.critedge, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0105.0162, %.critedge ], [ %.sroa.0105.0162, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.gi, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.0105.0 = load ptr, ptr %i.gm, align 8, !tbaa !152 ; 2 uses
  %.not119 = icmp eq ptr %.sroa.0105.0, %i.n
  br i1 %.not119, label %._crit_edge165.loopexit, label %.lr.ph164, !llvm.loop !197
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare void @_ZN4llvm14MachineOperand19ChangeToTargetIndexEjlj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_11MCInstrDescEbNS_8RegisterEPKNS_6MDNodeESE_(ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @__once_proxy() #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #5 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198, !nonnull !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200, !nonnull !149, !align !150
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #13, !inline_history !204
  ret void
end_hunk_0
