Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/contexts?download=true
inline.NumInlined: 1533
inline.NumDeleted: 632
begin_hunk_0_@_ZN2v88internal7Context3SetENS0_12DirectHandleIS1_EEiNS2_INS0_6ObjectEEEPNS0_7IsolateE:bb.a
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load atomic volatile i16, ptr %i.bl monotonic, align 2
  %i.bn = icmp eq i16 %i.bm, 263
  br i1 %i.bn, label %bb.v, label %_ZN2v88internal2IsINS0_11ContextCellENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.thread

_ZN2v88internal2IsINS0_11ContextCellENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.thread: ; preds = %bb.p, %_ZN2v88internal2IsINS0_11ContextCellENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit
  %i.bo = load i64, ptr %2, align 8               ; 5 uses
  %i.bp = sext i32 %i.b to i64
  %i.bq = add nsw i64 %i.bp, 15
  %i.br = add i64 %i.bq, %i.q                     ; 3 uses
  %i.bs = inttoptr i64 %i.br to ptr
  store atomic volatile i64 %i.bo, ptr %i.bs monotonic, align 8
  %i.bt = trunc i64 %i.bo to i1
  br i1 %i.bt, label %bb.q, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.q:                                             ; preds = %_ZN2v88internal2IsINS0_11ContextCellENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.thread
  %i.bu = and i64 %i.q, -262144
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 262144       ; 2 uses
  %i.bx = and i64 %i.bw, 32
  %.not.i.i168 = icmp eq i64 %i.bx, 0
  %i.by = and i64 %i.bw, 25
  %.not38.i.i169 = icmp eq i64 %i.by, 0
  br i1 %.not38.i.i169, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bz = and i64 %i.bo, -262144
  %i.ca = inttoptr i64 %i.bz to ptr
  %.sroa.0.0.copyload.i28.i.i170 = load i64, ptr %i.ca, align 262144
  %i.cb = and i64 %.sroa.0.0.copyload.i28.i.i170, 25
  %.not39.i.i171 = icmp eq i64 %i.cb, 0
  br i1 %.not39.i.i171, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.q, i64 noundef %i.br, i64 %i.bo) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not.i.i168, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit, label %bb.u, !prof !7

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.q, i64 %i.br, i64 %i.bo) #12
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.v:                                             ; preds = %_ZN2v88internal2IsINS0_11ContextCellENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 2072
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp eq i64 %i.g, %i.cd
  br i1 %i.ce, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cf = load i64, ptr %2, align 8               ; 4 uses
  %i.cg = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 10624
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp eq i64 %i.cf, %i.ck
  br i1 %i.cl, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = icmp eq i64 %i.cf, %i.cn
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = sext i32 %i.b to i64
  %i.cq = add nsw i64 %i.cp, 15
  %i.cr = add i64 %i.cq, %i.q                     ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr
  store atomic volatile i64 %i.cf, ptr %i.cs monotonic, align 8
  tail call void @_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE(i64 %i.q, i64 %i.cr, i64 %i.cf, i32 noundef 4)
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.z:                                             ; preds = %bb.x
  %i.ct = tail call ptr @_ZN2v88internal7Factory14NewContextCellENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr nonnull %2, i8 noundef zeroext 0) #12
  %i.cu = load i64, ptr %0, align 8               ; 2 uses
  %i.cv = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cw = sext i32 %i.b to i64
  %i.cx = add nsw i64 %i.cw, 15
  %i.cy = add i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = inttoptr i64 %i.cy to ptr
  store atomic volatile i64 %i.cv, ptr %i.cz monotonic, align 8
  tail call void @_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE(i64 %i.cu, i64 %i.cy, i64 %i.cv, i32 noundef 4)
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.aa:                                            ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.db = load atomic i32, ptr %i.da acquire, align 8
  switch i32 %i.db, label %bb.az [
    i32 0, label %bb.ab
    i32 1, label %bb.ai
    i32 2, label %bb.ao
    i32 3, label %bb.au
    i32 4, label %bb.ay
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i64, ptr %.0.i, align 8
  %i.dd = add i64 %i.dc, -1
  %i.de = inttoptr i64 %i.dd to ptr               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dg = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.dh = load i64, ptr %2, align 8               ; 3 uses
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load atomic volatile i64, ptr %i.df monotonic, align 8 ; 2 uses
  %i.dk = trunc i64 %i.dj to i1
  br i1 %i.dk, label %_ZN2v88internal2IsINS0_10HeapNumberEJNS0_3SmiES2_NS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEbNS0_6TaggedINS0_5UnionIJDpT0_EEEEE.exit, label %.critedge

_ZN2v88internal2IsINS0_10HeapNumberEJNS0_3SmiES2_NS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEbNS0_6TaggedINS0_5UnionIJDpT0_EEEEE.exit: ; preds = %bb.ac
  %i.dl = add nsw i64 %i.dj, -1
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = load atomic volatile i64, ptr %i.dm monotonic, align 8
  %i.do = add i64 %i.dn, 11
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load atomic volatile i16, ptr %i.dp monotonic, align 2
  %i.dr = icmp eq i16 %i.dq, 130
  %i.ds = trunc i64 %i.dh to i1
  %or.cond = and i1 %i.dr, %i.ds
  br i1 %or.cond, label %_ZN2v88internal2IsINS0_10HeapNumberENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit, label %.critedge

_ZN2v88internal2IsINS0_10HeapNumberENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit: ; preds = %_ZN2v88internal2IsINS0_10HeapNumberEJNS0_3SmiES2_NS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEbNS0_6TaggedINS0_5UnionIJDpT0_EEEEE.exit
  %i.dt = add nsw i64 %i.dh, -1
  %i.du = inttoptr i64 %i.dt to ptr               ; 2 uses
  %i.dv = load atomic volatile i64, ptr %i.du monotonic, align 8
  %i.dw = add i64 %i.dv, 11
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load atomic volatile i16, ptr %i.dx monotonic, align 2
  %i.dz = icmp eq i16 %i.dy, 130
  br i1 %i.dz, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %_ZN2v88internal2IsINS0_10HeapNumberENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit
  %i.ea = load atomic volatile i64, ptr %i.df monotonic, align 8
  %i.eb = add i64 %i.ea, -1
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.ed, align 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.0.copyload.i.i.i.i173 = load double, ptr %i.ee, align 8
  %i.ef = fcmp une double %.0.copyload.i.i.i.i, %.0.copyload.i.i.i.i173
  %i.eg = fcmp oeq double %.0.copyload.i.i.i.i, 0.000000e+00
  %or.cond.not = or i1 %i.eg, %i.ef
  br i1 %or.cond.not, label %.critedge, label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

.critedge:                                        ; preds = %bb.ac, %_ZN2v88internal2IsINS0_10HeapNumberEJNS0_3SmiES2_NS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEbNS0_6TaggedINS0_5UnionIJDpT0_EEEEE.exit, %bb.ad, %_ZN2v88internal2IsINS0_10HeapNumberENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.ei = load i64, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  store ptr %i.am, ptr %13, align 8
  %i.ej = call i64 @_ZN2v88internal13DependentCode20empty_dependent_codeERKNS0_13ReadOnlyRootsE(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
  %i.ek = icmp eq i64 %i.ei, %i.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br i1 %i.ek, label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit136, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.el = load i64, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.em = add i64 %i.el, -1
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8
  store i64 %i.ep, ptr %8, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %3, i32 512) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit136

_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit136: ; preds = %.critedge, %bb.ae
  %i.eq = load i64, ptr %2, align 8               ; 5 uses
  %i.er = and i64 %i.eq, 1
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.af, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit139

bb.af:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit136
  %i.et = load i64, ptr %.0.i, align 8
  %i.eu = add i64 %i.et, -1
  %i.ev = inttoptr i64 %i.eu to ptr
  call void @_ZN2v88internal11ContextCell13set_smi_valueENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 4 dereferenceable(40) %i.ev, i64 %i.eq)
  %i.ew = load i64, ptr %.0.i, align 8
  %i.ex = add i64 %i.ew, -1
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store atomic i32 1, ptr %i.ez release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit139: ; preds = %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit136
  %i.fa = add nsw i64 %i.eq, -1
  %i.fb = inttoptr i64 %i.fa to ptr               ; 2 uses
  %i.fc = load atomic volatile i64, ptr %i.fb monotonic, align 8
  %i.fd = add i64 %i.fc, 11
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load atomic volatile i16, ptr %i.fe monotonic, align 2
  %i.fg = icmp eq i16 %i.ff, 130
  br i1 %i.fg, label %bb.ag, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit139.thread

bb.ag:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit139
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.0.copyload.i.i.i.i175 = load double, ptr %i.fh, align 8 ; 8 uses
  %i.fi = fcmp oeq double %.0.copyload.i.i.i.i175, 0.000000e+00
  %i.fj = bitcast double %.0.copyload.i.i.i.i175 to i64
  %i.fk = icmp slt i64 %i.fj, 0
  %or.cond12.i = and i1 %i.fi, %i.fk
  br i1 %or.cond12.i, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit.thread, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit

_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit: ; preds = %bb.ag
  %i.fl = fcmp ult double %.0.copyload.i.i.i.i175, f0xC1E0000000000000
  %i.fm = fcmp ugt double %.0.copyload.i.i.i.i175, f0x41DFFFFFFFC00000
  %or.cond.i.not603 = or i1 %i.fl, %i.fm
  %14 = call double @llvm.trunc.f64(double %.0.copyload.i.i.i.i175)
  %i.fn = fcmp une double %.0.copyload.i.i.i.i175, %14
  %or.cond10.i.not = or i1 %or.cond.i.not603, %i.fn
  br i1 %or.cond10.i.not, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit
  %i.fo = fptosi double %.0.copyload.i.i.i.i175 to i32
  %i.fp = load i64, ptr %.0.i, align 8
  %i.fq = add i64 %i.fp, -1
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  store i32 %i.fo, ptr %i.fs, align 4
  br label %_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit145

_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit.thread: ; preds = %bb.ag, %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit
  %i.ft = load i64, ptr %.0.i, align 8
  %i.fu = add i64 %i.ft, -1
  %i.fv = inttoptr i64 %i.fu to ptr
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  store double %.0.copyload.i.i.i.i175, ptr %i.fw, align 1
  br label %_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit145

_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit145: ; preds = %bb.ah, %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit.thread
  %.sink = phi i32 [ 2, %bb.ah ], [ 3, %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit.thread ]
  %i.fx = load i64, ptr %.0.i, align 8
  %i.fy = add i64 %i.fx, -1
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store atomic i32 %.sink, ptr %i.ga release, align 4
  %i.gb = load i64, ptr %.0.i, align 8
  %i.gc = add i64 %i.gb, -1
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store atomic volatile i64 0, ptr %i.ge monotonic, align 8
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit139.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit139
  %i.gf = load i64, ptr %0, align 8               ; 2 uses
  %i.gg = sext i32 %i.b to i64
  %i.gh = add nsw i64 %i.gg, 15
  %i.gi = add i64 %i.gh, %i.gf                    ; 2 uses
  %i.gj = inttoptr i64 %i.gi to ptr
  store atomic volatile i64 %i.eq, ptr %i.gj monotonic, align 8
  call void @_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE(i64 %i.gf, i64 %i.gi, i64 %i.eq, i32 noundef 4)
  %i.gk = load i64, ptr %.0.i, align 8
  %i.gl = add i64 %i.gk, -1
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store atomic volatile i64 0, ptr %i.gn monotonic, align 8
  %i.go = load i64, ptr %.0.i, align 8
  %i.gp = add i64 %i.go, -1
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store atomic i32 4, ptr %i.gr release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.ai:                                            ; preds = %bb.aa
  %i.gs = load i64, ptr %2, align 8               ; 2 uses
  %i.gt = and i64 %i.gs, 1
  %i.gu = icmp eq i64 %i.gt, 0
  %i.gv = load i64, ptr %.0.i, align 8
  %i.gw = add i64 %i.gv, -1
  %i.gx = inttoptr i64 %i.gw to ptr               ; 2 uses
  br i1 %i.gu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZN2v88internal11ContextCell13set_smi_valueENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 4 dereferenceable(40) %i.gx, i64 %i.gs)
  %i.gy = load i64, ptr %.0.i, align 8
  %i.gz = add i64 %i.gy, -1
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store atomic i32 1, ptr %i.hb release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.ak:                                            ; preds = %bb.ai
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hd = load i64, ptr %i.hc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  store ptr %i.am, ptr %12, align 8
  %i.he = call i64 @_ZN2v88internal13DependentCode20empty_dependent_codeERKNS0_13ReadOnlyRootsE(ptr noundef nonnull align 8 dereferenceable(8) %12) #12
  %i.hf = icmp eq i64 %i.hd, %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br i1 %i.hf, label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit134, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hg = load i64, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.hh = add i64 %i.hg, -1
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load i64, ptr %i.hj, align 8
  store i64 %i.hk, ptr %7, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3, i32 512) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit134

_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit134: ; preds = %bb.ak, %bb.al
  %i.hl = load i64, ptr %2, align 8               ; 4 uses
  %i.hm = trunc i64 %i.hl to i1
  br i1 %i.hm, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138: ; preds = %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit134
  %i.hn = add nsw i64 %i.hl, -1
  %i.ho = inttoptr i64 %i.hn to ptr               ; 2 uses
  %i.hp = load atomic volatile i64, ptr %i.ho monotonic, align 8
  %i.hq = add i64 %i.hp, 11
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = load atomic volatile i16, ptr %i.hr monotonic, align 2
  %i.ht = icmp eq i16 %i.hs, 130
  br i1 %i.ht, label %bb.am, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138.thread

bb.am:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %.0.copyload.i.i.i.i177 = load double, ptr %i.hu, align 8 ; 8 uses
  %i.hv = fcmp oeq double %.0.copyload.i.i.i.i177, 0.000000e+00
  %i.hw = bitcast double %.0.copyload.i.i.i.i177 to i64
  %i.hx = icmp slt i64 %i.hw, 0
  %or.cond12.i178 = and i1 %i.hv, %i.hx
  br i1 %or.cond12.i178, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182.thread, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182

_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182: ; preds = %bb.am
  %i.hy = fcmp ult double %.0.copyload.i.i.i.i177, f0xC1E0000000000000
  %i.hz = fcmp ugt double %.0.copyload.i.i.i.i177, f0x41DFFFFFFFC00000
  %or.cond.i179.not599 = or i1 %i.hy, %i.hz
  %15 = call double @llvm.trunc.f64(double %.0.copyload.i.i.i.i177)
  %i.ia = fcmp une double %.0.copyload.i.i.i.i177, %15
  %or.cond10.i180.not = or i1 %or.cond.i179.not599, %i.ia
  br i1 %or.cond10.i180.not, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182.thread, label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182
  %i.ib = fptosi double %.0.copyload.i.i.i.i177 to i32
  %i.ic = load i64, ptr %.0.i, align 8
  %i.id = add i64 %i.ic, -1
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  store i32 %i.ib, ptr %i.if, align 4
  br label %_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit

_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182.thread: ; preds = %bb.am, %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182
  %i.ig = load i64, ptr %.0.i, align 8
  %i.ih = add i64 %i.ig, -1
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  store double %.0.copyload.i.i.i.i177, ptr %i.ij, align 1
  br label %_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit134, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138
  %i.ik = load i64, ptr %0, align 8               ; 2 uses
  %i.il = sext i32 %i.b to i64
  %i.im = add nsw i64 %i.il, 15
  %i.in = add i64 %i.im, %i.ik                    ; 2 uses
  %i.io = inttoptr i64 %i.in to ptr
  store atomic volatile i64 %i.hl, ptr %i.io monotonic, align 8
  call void @_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE(i64 %i.ik, i64 %i.in, i64 %i.hl, i32 noundef 4)
  br label %_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit

_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182.thread, %bb.an, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138.thread
  %.sink614 = phi i32 [ 3, %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit182.thread ], [ 2, %bb.an ], [ 4, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit138.thread ]
  %i.ip = load i64, ptr %.0.i, align 8
  %i.iq = add i64 %i.ip, -1
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  store atomic i32 %.sink614, ptr %i.is release, align 4
  %i.it = load i64, ptr %.0.i, align 8
  %i.iu = add i64 %i.it, -1
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store atomic volatile i64 0, ptr %i.iw monotonic, align 8
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.ao:                                            ; preds = %bb.aa
  %i.ix = load i64, ptr %2, align 8               ; 3 uses
  %i.iy = and i64 %i.ix, 1
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %bb.ap, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit137

bb.ap:                                            ; preds = %bb.ao
  %i.ja = load i64, ptr %.0.i, align 8
  %i.jb = add i64 %i.ja, -1
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = lshr i64 %i.ix, 32
  %i.je = trunc nuw i64 %i.jd to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  store i32 %i.je, ptr %i.jf, align 4
  %i.jg = load i64, ptr %.0.i, align 8
  %i.jh = add i64 %i.jg, -1
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store atomic i32 2, ptr %i.jj release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit137: ; preds = %bb.ao
  %i.jk = add nsw i64 %i.ix, -1
  %i.jl = inttoptr i64 %i.jk to ptr               ; 2 uses
  %i.jm = load atomic volatile i64, ptr %i.jl monotonic, align 8
  %i.jn = add i64 %i.jm, 11
  %i.jo = inttoptr i64 %i.jn to ptr
  %i.jp = load atomic volatile i16, ptr %i.jo monotonic, align 2
  %i.jq = icmp eq i16 %i.jp, 130
  br i1 %i.jq, label %bb.aq, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit137.thread

bb.aq:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit137
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.0.copyload.i.i.i.i184 = load double, ptr %i.jr, align 8 ; 8 uses
  %i.js = fcmp oeq double %.0.copyload.i.i.i.i184, 0.000000e+00
  %i.jt = bitcast double %.0.copyload.i.i.i.i184 to i64
  %i.ju = icmp slt i64 %i.jt, 0
  %or.cond12.i185 = and i1 %i.js, %i.ju
  br i1 %or.cond12.i185, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189.thread, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189

_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189: ; preds = %bb.aq
  %i.jv = fcmp ult double %.0.copyload.i.i.i.i184, f0xC1E0000000000000
  %i.jw = fcmp ugt double %.0.copyload.i.i.i.i184, f0x41DFFFFFFFC00000
  %or.cond.i186.not595 = or i1 %i.jv, %i.jw
  %16 = tail call double @llvm.trunc.f64(double %.0.copyload.i.i.i.i184)
  %i.jx = fcmp une double %.0.copyload.i.i.i.i184, %16
  %or.cond10.i187.not = or i1 %or.cond.i186.not595, %i.jx
  br i1 %or.cond10.i187.not, label %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189
  %i.jy = fptosi double %.0.copyload.i.i.i.i184 to i32
  %i.jz = load i64, ptr %.0.i, align 8
  %i.ka = add i64 %i.jz, -1
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  store i32 %i.jy, ptr %i.kc, align 4
  %i.kd = load i64, ptr %.0.i, align 8
  %i.ke = add i64 %i.kd, -1
  %i.kf = inttoptr i64 %i.ke to ptr
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store atomic i32 2, ptr %i.kg release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189.thread: ; preds = %bb.aq, %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189
  %i.kh = load i64, ptr %.0.i, align 8
  %i.ki = add i64 %i.kh, -1
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load i64, ptr %i.kk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  store ptr %i.am, ptr %11, align 8
  %i.km = call i64 @_ZN2v88internal13DependentCode20empty_dependent_codeERKNS0_13ReadOnlyRootsE(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  %i.kn = icmp eq i64 %i.kl, %i.km
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br i1 %i.kn, label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit132, label %bb.as

bb.as:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189.thread
  %i.ko = load i64, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.kp = add i64 %i.ko, -1
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i64, ptr %i.kr, align 8
  store i64 %i.ks, ptr %6, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3, i32 512) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit132

_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit132: ; preds = %_ZN2v88internal12_GLOBAL__N_117DoubleFitsInInt32Ed.exit189.thread, %bb.as
  %i.kt = load i64, ptr %.0.i, align 8
  %i.ku = add i64 %i.kt, -1
  %i.kv = inttoptr i64 %i.ku to ptr
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  store double %.0.copyload.i.i.i.i184, ptr %i.kw, align 1
  %i.kx = load i64, ptr %.0.i, align 8
  %i.ky = add i64 %i.kx, -1
  %i.kz = inttoptr i64 %i.ky to ptr
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store atomic i32 3, ptr %i.la release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit137.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit137
  %i.lb = load i64, ptr %.0.i, align 8
  %i.lc = add i64 %i.lb, -1
  %i.ld = inttoptr i64 %i.lc to ptr
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load i64, ptr %i.le, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store ptr %i.am, ptr %10, align 8
  %i.lg = call i64 @_ZN2v88internal13DependentCode20empty_dependent_codeERKNS0_13ReadOnlyRootsE(ptr noundef nonnull align 8 dereferenceable(8) %10) #12
  %i.lh = icmp eq i64 %i.lf, %i.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br i1 %i.lh, label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit130, label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit137.thread
  %i.li = load i64, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.lj = add i64 %i.li, -1
  %i.lk = inttoptr i64 %i.lj to ptr
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load i64, ptr %i.ll, align 8
  store i64 %i.lm, ptr %5, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %3, i32 512) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit130

_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit130: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit137.thread, %bb.at
  %i.ln = load i64, ptr %0, align 8               ; 2 uses
  %i.lo = load i64, ptr %2, align 8               ; 2 uses
  %i.lp = sext i32 %i.b to i64
  %i.lq = add nsw i64 %i.lp, 15
  %i.lr = add i64 %i.lq, %i.ln                    ; 2 uses
  %i.ls = inttoptr i64 %i.lr to ptr
  store atomic volatile i64 %i.lo, ptr %i.ls monotonic, align 8
  call void @_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE(i64 %i.ln, i64 %i.lr, i64 %i.lo, i32 noundef 4)
  %i.lt = load i64, ptr %.0.i, align 8
  %i.lu = add i64 %i.lt, -1
  %i.lv = inttoptr i64 %i.lu to ptr
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store atomic i32 4, ptr %i.lw release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.au:                                            ; preds = %bb.aa
  %i.lx = load i64, ptr %2, align 8               ; 3 uses
  %i.ly = and i64 %i.lx, 1
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.av, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.av:                                            ; preds = %bb.au
  %i.ma = load i64, ptr %.0.i, align 8
  %i.mb = add i64 %i.ma, -1
  %i.mc = inttoptr i64 %i.mb to ptr
  %i.md = lshr i64 %i.lx, 32
  %i.me = trunc nuw i64 %i.md to i32
  %i.mf = sitofp i32 %i.me to double
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  store double %i.mf, ptr %i.mg, align 1
  %i.mh = load i64, ptr %.0.i, align 8
  %i.mi = add i64 %i.mh, -1
  %i.mj = inttoptr i64 %i.mi to ptr
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  store atomic i32 3, ptr %i.mk release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.au
  %i.ml = add nsw i64 %i.lx, -1
  %i.mm = inttoptr i64 %i.ml to ptr               ; 2 uses
  %i.mn = load atomic volatile i64, ptr %i.mm monotonic, align 8
  %i.mo = add i64 %i.mn, 11
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = load atomic volatile i16, ptr %i.mp monotonic, align 2
  %i.mr = icmp eq i16 %i.mq, 130
  %i.ms = load i64, ptr %.0.i, align 8
  %i.mt = add i64 %i.ms, -1
  %i.mu = inttoptr i64 %i.mt to ptr               ; 2 uses
  br i1 %i.mr, label %bb.aw, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.aw:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.0.copyload.i.i.i.i191 = load double, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  store double %.0.copyload.i.i.i.i191, ptr %i.mw, align 1
  %i.mx = load i64, ptr %.0.i, align 8
  %i.my = add i64 %i.mx, -1
  %i.mz = inttoptr i64 %i.my to ptr
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store atomic i32 3, ptr %i.na release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.nc = load i64, ptr %i.nb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  store ptr %i.am, ptr %9, align 8
  %i.nd = call i64 @_ZN2v88internal13DependentCode20empty_dependent_codeERKNS0_13ReadOnlyRootsE(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  %i.ne = icmp eq i64 %i.nc, %i.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br i1 %i.ne, label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.nf = load i64, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ng = add i64 %i.nf, -1
  %i.nh = inttoptr i64 %i.ng to ptr
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load i64, ptr %i.ni, align 8
  store i64 %i.nj, ptr %4, align 8
  call void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %3, i32 512) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.ax
  %i.nk = load i64, ptr %0, align 8               ; 2 uses
  %i.nl = load i64, ptr %2, align 8               ; 2 uses
  %i.nm = sext i32 %i.b to i64
  %i.nn = add nsw i64 %i.nm, 15
  %i.no = add i64 %i.nn, %i.nk                    ; 2 uses
  %i.np = inttoptr i64 %i.no to ptr
  store atomic volatile i64 %i.nl, ptr %i.np monotonic, align 8
  call void @_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE(i64 %i.nk, i64 %i.no, i64 %i.nl, i32 noundef 4)
  %i.nq = load i64, ptr %.0.i, align 8
  %i.nr = add i64 %i.nq, -1
  %i.ns = inttoptr i64 %i.nr to ptr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  store atomic i32 4, ptr %i.nt release, align 4
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit

bb.ay:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15) #14
  unreachable

bb.az:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.15) #14
  unreachable

_ZN2v88internal12WriteBarrier8ForValueINS0_6ObjectEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS4_IT_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.ad, %bb.ab, %_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit145, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit139.thread, %bb.af, %_ZN2v88internal12_GLOBAL__N_131TransitionContextCellToUntaggedENS0_6TaggedINS0_10HeapNumberEEENS0_12DirectHandleINS0_11ContextCellEEE.exit, %bb.aj, %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit130, %bb.ap, %bb.aw, %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit, %bb.av, %_ZN2v88internal12_GLOBAL__N_132NotifyContextCellStateWillChangeENS0_12DirectHandleINS0_11ContextCellEEEPNS0_7IsolateE.exit132, %bb.ar, %bb.u, %bb.t, %_ZN2v88internal2IsINS0_11ContextCellENS0_6ObjectEEEbNS0_12DirectHandleIT0_EE.exit.thread, %bb.o, %bb.n, %bb.j, %bb.h, %bb.g, %bb.c, %bb.w, %bb.z, %bb.y
  ret void
}

declare ptr @_ZN2v88internal7Factory14NewContextCellENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal11ContextCell13set_smi_valueENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 4 dereferenceable(40) %0, i64 %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store atomic volatile i64 %1, ptr %i.a monotonic, align 8
  %i.b = trunc i64 %1 to i1
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12TaggedMemberINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE13Relaxed_StoreEPNS0_16HeapObjectLayoutENS0_6TaggedISC_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
end_hunk_0
