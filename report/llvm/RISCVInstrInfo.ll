Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVInstrInfo?download=true
inline.NumInlined: 8782
inline.NumDeleted: 2262
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassE:bb.a
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !216  ; 3 uses
  %i.v = tail call i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext %i.j) #27
  %.sroa.0144.0.extract.trunc = trunc i64 %i.v to i32
  %i.w = mul i32 %.sroa.0144.0.extract.trunc, %i.m ; 10 uses
  %i.x = zext i16 %i.u to i32
  %i.y = zext i16 %i.r to i32
  %i.z = icmp ugt i16 %i.u, %i.r
  %i.aa = sub nuw nsw i32 %i.x, %i.y
  %i.ab = icmp ult i32 %i.aa, %i.w
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false      ; 4 uses
  %.not196 = icmp eq i32 %i.w, 0
  br i1 %.not196, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ad = trunc i32 %i.w to i16
  %i.ae = add i16 %i.ad, -1
  %i.af = select i1 %i.ac, i16 %i.ae, i16 0       ; 2 uses
  %.0 = add i16 %i.af, %i.r
  %.067 = add i16 %i.af, %i.u
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ao = select i1 %6, i32 67108864, i32 0       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %.1199 = phi i16 [ %.0, %.lr.ph ], [ %i.je, %bb.al ] ; 6 uses
  %.168198 = phi i16 [ %.067, %.lr.ph ], [ %i.jf, %bb.al ] ; 6 uses
  %.0159197 = phi i32 [ 0, %.lr.ph ], [ %i.jg, %bb.al ] ; 7 uses
  br i1 %i.ac, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.bd = sub i16 %.168198, %.1199                ; 3 uses
  %i.be = add i32 %.0159197, 8
  %i.bf = icmp ule i32 %i.be, %i.w
  %i.bg = icmp ugt i16 %i.bd, 7
  %or.cond.i = and i1 %i.bf, %i.bg
  %i.bh = and i16 %.1199, %.168198
  %i.bi = zext i16 %i.bh to i32                   ; 3 uses
  %i.bj = and i32 %i.bi, 7
  %i.bk = icmp eq i32 %i.bj, 7
  %or.cond32.i = and i1 %or.cond.i, %i.bk
  br i1 %or.cond32.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = add i32 %.0159197, 4
  %i.bm = icmp ule i32 %i.bl, %i.w
  %i.bn = icmp ugt i16 %i.bd, 3
  %or.cond5.i = and i1 %i.bm, %i.bn
  %i.bo = and i32 %i.bi, 3
  %i.bp = icmp eq i32 %i.bo, 3
  %or.cond36.i = and i1 %or.cond5.i, %i.bp
  br i1 %or.cond36.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = add i32 %.0159197, 2
  %i.br = icmp ugt i32 %i.bq, %i.w
  %i.bs = icmp ult i16 %i.bd, 2
  %or.cond8.not108.i = or i1 %i.br, %i.bs
  %i.bt = and i32 %i.bi, 1
  %i.bu = icmp eq i32 %i.bt, 0
  %or.cond38.i = or i1 %or.cond8.not108.i, %i.bu
  br i1 %or.cond38.i, label %bb.f, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit"

bb.f:                                             ; preds = %bb.i, %bb.e
  br label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit"

bb.g:                                             ; preds = %bb.b
  %i.bv = add i32 %.0159197, 8
  %.not.i = icmp ule i32 %i.bv, %i.w
  %i.bw = or i16 %.1199, %.168198                 ; 3 uses
  %i.bx = and i16 %i.bw, 7
  %i.by = icmp eq i16 %i.bx, 0
  %or.cond42.i = and i1 %.not.i, %i.by
  br i1 %or.cond42.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = add i32 %.0159197, 4
  %.not25.i = icmp ule i32 %i.bz, %i.w
  %i.ca = and i16 %i.bw, 3
  %i.cb = icmp eq i16 %i.ca, 0
  %or.cond46.i = and i1 %.not25.i, %i.cb
  br i1 %or.cond46.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = add i32 %.0159197, 2
  %.not26.i = icmp ule i32 %i.cc, %i.w
  %i.cd = and i16 %i.bw, 1
  %i.ce = icmp eq i16 %i.cd, 0
  %or.cond50.i = and i1 %.not26.i, %i.ce
  br i1 %or.cond50.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.f

"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit": ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.f
  %.sroa.0136.0 = phi i32 [ 9108, %bb.i ], [ 9110, %bb.c ], [ 9107, %bb.f ], [ 9109, %bb.d ], [ 9108, %bb.e ], [ 9110, %bb.g ], [ 9109, %bb.h ] ; 2 uses
  %.sroa.11.0 = phi i32 [ 9115, %bb.i ], [ 9117, %bb.c ], [ 9114, %bb.f ], [ 9116, %bb.d ], [ 9115, %bb.e ], [ 9117, %bb.g ], [ 9116, %bb.h ]
  %.sroa.20.1 = phi i32 [ 16531, %bb.i ], [ 16533, %bb.c ], [ 16530, %bb.f ], [ 16532, %bb.d ], [ 16531, %bb.e ], [ 16533, %bb.g ], [ 16532, %bb.h ] ; 13 uses
  %.sroa.33139.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 6976), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9408), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 4416), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7808), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 6976), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9408), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7808), %bb.h ] ; 3 uses
  %.sroa.42.0 = phi i8 [ 1, %bb.i ], [ 3, %bb.c ], [ 0, %bb.f ], [ 2, %bb.d ], [ 1, %bb.e ], [ 3, %bb.g ], [ 2, %bb.h ] ; 2 uses
  %i.cf = call i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext %.sroa.42.0) #27 ; 3 uses
  %i.cg = icmp ne i8 %i.j, %.sroa.42.0
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PreferWholeRegisterMove, i64 120), align 8, !range !48
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, label %bb.j

bb.j:                                             ; preds = %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit"
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !101, !nonnull !49, !align !102 ; 2 uses
  %i.ck = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !76
  %.fr.i = freeze i32 %i.cm                       ; 5 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 200
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(519768) %i.cj) #27, !inline_history !653
  %i.cr = add i32 %.fr.i, -1
  %i.cs = icmp ult i32 %i.cr, 1073741823
  br label %.outer.outer.i

.outer.outer.i:                                   ; preds = %bb.o, %bb.j
  %.sroa.0118.1 = phi ptr [ null, %bb.j ], [ %.sroa.0118.2.ph, %bb.o ]
  %.sroa.059.0.ph.ph.i = phi ptr [ %2, %bb.j ], [ %.sroa.0.1.i.i.i.i, %bb.o ]
  %.042.ph.ph.i = phi i1 [ false, %bb.j ], [ true, %bb.o ] ; 2 uses
  %.040.ph.ph.i = phi i32 [ 0, %bb.j ], [ %.141.i, %bb.o ] ; 2 uses
  br label %.outer.i.outer

.outer.i.outer:                                   ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i, %.outer.outer.i
  %.sroa.0118.2.ph = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i ], [ %.sroa.0118.1, %.outer.outer.i ] ; 15 uses
  %.sroa.059.0.ph.i.ph = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i ], [ %.sroa.059.0.ph.ph.i, %.outer.outer.i ]
  %.044.ph.i.ph = phi i8 [ 1, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i ], [ 0, %.outer.outer.i ]
  br label %.outer.i.outer279

.outer.i.outer279.backedge:                       ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i
  %.044.ph.i.ph281.be = phi i8 [ %.347.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i ], [ %.347.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i ]
  br label %.outer.i.outer279

.outer.i.outer279:                                ; preds = %.outer.i.outer279.backedge, %.outer.i.outer
  %.sroa.059.0.ph.i.ph280 = phi ptr [ %.sroa.059.0.ph.i.ph, %.outer.i.outer ], [ %.sroa.0.1.i.i.i.i, %.outer.i.outer279.backedge ]
  %.044.ph.i.ph281 = phi i8 [ %.044.ph.i.ph, %.outer.i.outer ], [ %.044.ph.i.ph281.be, %.outer.i.outer279.backedge ] ; 3 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %.outer.i.outer279
  %.sroa.059.0.ph.i = phi ptr [ %.sroa.059.0.ph.i.ph280, %.outer.i.outer279 ], [ %.sroa.0.1.i.i.i.i, %.outer.i.backedge ]
  %i.ct = load ptr, ptr %i.ah, align 8, !tbaa !217
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, %.outer.i
  %.sroa.059.0.i = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ], [ %.sroa.059.0.ph.i, %.outer.i ] ; 2 uses
  %.not96.i = icmp eq ptr %.sroa.059.0.i, %i.ct
  br i1 %.not96.i, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.059.0.i, align 8
  %i.cu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.cv = inttoptr i64 %i.cu to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.cv, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 44
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !218
  %i.cz = and i32 %i.cy, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.db, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %i.cv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.da = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !218
  %i.de = and i32 %i.dd, 4
  %.not4.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !2

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %bb.l
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.cv, %bb.l ], [ %i.cv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.db, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ] ; 18 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !219
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !221 ; 2 uses
  %i.dj = and i64 %i.di, 16
  %.not97.i = icmp eq i64 %i.dj, 0
  br i1 %.not97.i, label %.lr.ph.i.i.i, label %bb.k, !llvm.loop !654

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 52
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !74 ; 3 uses
  switch i32 %i.dl, label %.lr.ph.i.i.i.6 [
    i32 10460, label %.critedge
    i32 10461, label %.critedge
    i32 10462, label %.critedge
    i32 10459, label %.critedge
    i32 1434, label %.critedge
    i32 1435, label %.critedge
    i32 1436, label %.critedge
  ]

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i
  %i.dm = add i32 %i.dl, -1
  %spec.select.i.i = icmp ult i32 %i.dm, 2
  br i1 %spec.select.i.i, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, label %bb.s

.critedge:                                        ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.dn = trunc nuw i8 %.044.ph.i.ph281 to i1
  br i1 %i.dn, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.critedge
  br i1 %.042.ph.ph.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !75
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !76 ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = trunc i64 %i.dr to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = lshr i32 %i.ds, 3
  %i.dw = and i32 %i.dv, 7
  %i.dx = shl nuw nsw i32 8, %i.dw
  %.not51.i = icmp eq i8 %i.du, %i.j
  br i1 %.not51.i, label %bb.o, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %.141.i = phi i32 [ %.040.ph.ph.i, %bb.m ], [ %i.dx, %bb.n ]
  %i.dy = icmp eq i32 %i.dl, 10462
  br i1 %i.dy, label %.outer.outer.i, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, !llvm.loop !654

bb.p:                                             ; preds = %.critedge
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !75
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !76 ; 2 uses
  %i.ed = trunc i64 %i.ec to i32                  ; 3 uses
  br i1 %.042.ph.ph.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ee = lshr i32 %i.ed, 3
  %i.ef = and i32 %i.ee, 7
  %i.eg = shl nuw nsw i32 8, %i.ef
  %.not52.i = icmp eq i32 %i.eg, %.040.ph.ph.i
  %i.eh = and i32 %i.ed, 64
  %i.ei = icmp ne i32 %i.eh, 0
  %or.cond.i75 = select i1 %.not52.i, i1 %i.ei, i1 false
  br i1 %or.cond.i75, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread

bb.r:                                             ; preds = %bb.p
  %.old.i = and i32 %i.ed, 64
  %.old86.not.i = icmp eq i32 %.old.i, 0
  br i1 %.old86.not.i, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit

bb.s:                                             ; preds = %.lr.ph.i.i.i.6
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 44
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !218 ; 2 uses
  %i.el = and i32 %i.ek, 12
  %i.em = icmp eq i32 %i.el, 0
  %i.en = and i32 %i.ek, 4
  %i.eo = icmp ne i32 %i.en, 0
  %or.cond.i.i53.i = or i1 %i.em, %i.eo
  br i1 %or.cond.i.i53.i, label %.split.i, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i

.split.i:                                         ; preds = %bb.s
  %i.ep = and i64 %i.di, 128
  %.not98.i = icmp eq i64 %i.ep, 0
  br i1 %.not98.i, label %bb.t, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i: ; preds = %bb.s
  %i.eq = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i, i64 noundef 128, i32 noundef 1) #27
  br i1 %i.eq, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i, %.split.i
  %i.er = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i) #27
  %i.es = load ptr, ptr %16, align 8, !tbaa !219
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 11
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !222
  %i.ev = zext i8 %i.eu to i32
  %i.ew = sub nsw i32 0, %i.ev
  %.not.i74 = icmp eq i32 %i.er, %i.ew
  br i1 %.not.i74, label %.outer.i.backedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i, i32 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #27
  %.not99.i = icmp eq i32 %i.ex, -1
  br i1 %.not99.i, label %bb.v, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !75 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 40
  %i.fb = load i24, ptr %i.fa, align 8
  %i.fc = zext i24 %i.fb to i64
  %i.fd = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.1.i.i.i.i) #27
  %i.fe = zext i32 %i.fd to i64
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.fc) ; 2 uses
  %.not50120.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not50120.i, label %.outer.i.backedge, label %.lr.ph.i

.outer.i.backedge:                                ; preds = %bb.v, %bb.t
  br label %.outer.i, !llvm.loop !654

.lr.ph.i:                                         ; preds = %bb.v
  %.idx.i.le = shl nuw nsw i64 %..i.i.i, 5
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx.i.le ; 2 uses
  br i1 %i.cs, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i
  %.035122.us.i = phi ptr [ %i.fm, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i ], [ %i.ez, %.lr.ph.i ] ; 3 uses
  %.145121.us.i = phi i8 [ %.347.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i ], [ %.044.ph.i.ph281, %.lr.ph.i ] ; 2 uses
  %i.fg = load i32, ptr %.035122.us.i, align 8
  %i.fh = and i32 %i.fg, 16777471
  %or.cond89.us.i = icmp eq i32 %i.fh, 16777216
  br i1 %or.cond89.us.i, label %bb.w, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i

bb.w:                                             ; preds = %.lr.ph.split.us.i
  %i.fi = trunc nuw i8 %.145121.us.i to i1
  br i1 %i.fi, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = getelementptr inbounds nuw i8, ptr %.035122.us.i, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !76
  %i.fl = icmp eq i32 %i.fk, %.fr.i
  br i1 %i.fl, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i: ; preds = %bb.x, %bb.w, %.lr.ph.split.us.i
  %.347.us.i = phi i8 [ 1, %bb.w ], [ %.145121.us.i, %.lr.ph.split.us.i ], [ 0, %bb.x ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.035122.us.i, i64 32 ; 2 uses
  %.not50.us.i = icmp eq ptr %i.fm, %i.ff
  br i1 %.not50.us.i, label %.outer.i.outer279.backedge, label %.lr.ph.split.us.i, !llvm.loop !654

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i
  %.035122.i = phi ptr [ %i.gc, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i ], [ %i.ez, %.lr.ph.i ] ; 4 uses
  %.145121.i = phi i8 [ %.347.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i ], [ %.044.ph.i.ph281, %.lr.ph.i ] ; 2 uses
  %i.fn = load i32, ptr %.035122.i, align 8
  %i.fo = and i32 %i.fn, 16777471
  %or.cond89.i = icmp eq i32 %i.fo, 16777216
  br i1 %or.cond89.i, label %bb.y, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i

bb.y:                                             ; preds = %.lr.ph.split.i
  %i.fp = trunc nuw i8 %.145121.i to i1
  br i1 %i.fp, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %.035122.i, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !76 ; 3 uses
  %i.fs = icmp eq i32 %i.fr, %.fr.i
  br i1 %i.fs, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ft = add i32 %i.fr, -1
  %i.fu = icmp ult i32 %i.ft, 1073741823
  br i1 %i.fu, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i: ; preds = %bb.aa
  %i.fv = call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.cq, i32 %i.fr, i32 %.fr.i) #27
  br i1 %i.fv, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.035122.i, i64 4
  %.pre.pre.i = load i32, ptr %i.fw, align 4, !tbaa !76
  %i.fx = icmp eq i32 %.pre.pre.i, %.fr.i
  br i1 %i.fx, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i: ; preds = %bb.x, %bb.z, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i
  %i.fy = load ptr, ptr %16, align 8, !tbaa !219
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !223
  %i.gb = and i64 %i.ga, 45056
  %or.cond95.i = icmp eq i64 %i.gb, 12288
  br i1 %or.cond95.i, label %.outer.i.outer, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, !llvm.loop !654

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %bb.aa, %bb.y, %.lr.ph.split.i
  %.347.i = phi i8 [ 1, %bb.y ], [ %.145121.i, %.lr.ph.split.i ], [ 0, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i ], [ 0, %bb.aa ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.035122.i, i64 32 ; 2 uses
  %.not50.i = icmp eq ptr %i.gc, %i.ff
  br i1 %.not50.i, label %.outer.i.outer279.backedge, label %.lr.ph.split.i, !llvm.loop !654

_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit: ; preds = %bb.q, %bb.r
  %i.gd = trunc i64 %i.ec to i8
  %i.ge = and i8 %i.gd, 7
  %i.gf = icmp eq i8 %i.j, %i.ge
  br i1 %i.gf, label %bb.ab, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread

bb.ab:                                            ; preds = %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0118.2.ph, i64 52
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !74
  %i.gi = icmp eq i32 %i.gh, %.sroa.0136.0
  %spec.select = select i1 %i.gi, i32 %.sroa.0136.0, i32 %.sroa.11.0
  br label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread

_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread: ; preds = %bb.n, %bb.o, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i, %.lr.ph.i.i.i.6, %bb.u, %.split.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i, %bb.k, %bb.ab, %bb.q, %bb.r, %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit, %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit"
  %.sroa.0118.0 = phi ptr [ %.sroa.0118.2.ph, %bb.q ], [ %.sroa.0118.2.ph, %bb.ab ], [ %.sroa.0118.2.ph, %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit ], [ null, %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit" ], [ %.sroa.0118.2.ph, %bb.r ], [ %.sroa.0118.2.ph, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i ], [ %.sroa.0118.2.ph, %bb.k ], [ %.sroa.0118.2.ph, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i ], [ %.sroa.0118.2.ph, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i ], [ %.sroa.0118.2.ph, %.split.i ], [ %.sroa.0118.2.ph, %bb.u ], [ %.sroa.0118.2.ph, %.lr.ph.i.i.i.6 ], [ %.sroa.0118.2.ph, %bb.o ], [ %.sroa.0118.2.ph, %bb.n ] ; 3 uses
  %.sroa.20.0 = phi i32 [ %.sroa.20.1, %bb.q ], [ %spec.select, %bb.ab ], [ %.sroa.20.1, %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit ], [ %.sroa.20.1, %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit" ], [ %.sroa.20.1, %bb.r ], [ %.sroa.20.1, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i ], [ %.sroa.20.1, %bb.k ], [ %.sroa.20.1, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i ], [ %.sroa.20.1, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i ], [ %.sroa.20.1, %.split.i ], [ %.sroa.20.1, %bb.u ], [ %.sroa.20.1, %.lr.ph.i.i.i.6 ], [ %.sroa.20.1, %bb.o ], [ %.sroa.20.1, %bb.n ] ; 6 uses
  br i1 %i.ac, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread
  %i.gj = call i32 @_ZNK4llvm17RISCVRegisterInfo20findVRegWithEncodingERKNS_15MCRegisterClassEt(ptr noundef nonnull align 8 dereferenceable(316) %i.f, ptr noundef nonnull align 8 dereferenceable(62) %.sroa.33139.0, i16 noundef zeroext %.1199) #27
  br label %bb.ae

bb.ad:                                            ; preds = %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread
  %i.gk = trunc i64 %i.cf to i16                  ; 2 uses
  %i.gl = add i16 %.1199, 1
  %i.gm = sub i16 %i.gl, %i.gk
  %i.gn = call i32 @_ZNK4llvm17RISCVRegisterInfo20findVRegWithEncodingERKNS_15MCRegisterClassEt(ptr noundef nonnull align 8 dereferenceable(316) %i.f, ptr noundef nonnull align 8 dereferenceable(62) %.sroa.33139.0, i16 noundef zeroext %i.gm) #27
end_hunk_0
