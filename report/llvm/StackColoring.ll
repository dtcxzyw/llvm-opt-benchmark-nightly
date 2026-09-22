Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StackColoring?download=true
inline.NumInlined: 3198
inline.NumDeleted: 1762
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN12_GLOBAL__N_113StackColoring3runERN4llvm15MachineFunctionEb:bb.a
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %.sroa.speculated.i.i.i, ptr %i.m, align 4, !tbaa !195
  %i.ah = mul nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i, 296
  %i.ai = add nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  %i.am = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.al, i64 noundef 8) #22 ; 2 uses
  %i.an = load i32, ptr %i.m, align 4, !tbaa !195 ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 296
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 2 uses
  store ptr %i.am, ptr %i.i, align 8, !tbaa !197
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !196
  store i32 0, ptr %i.j, align 8, !tbaa !194
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = add nuw nsw i64 %i.ao, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 0, i64 %i.au, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv.exit

bb.i:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i = load ptr, ptr %i.av, align 8, !tbaa !196
  %.val.i = load i32, ptr %i.m, align 4, !tbaa !195
  %i.aw = zext i32 %.val.i to i64
  %i.ax = add nuw nsw i64 %i.aw, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %.val3.i, i8 0, i64 %i.az, i1 false)
  store i32 0, ptr %i.j, align 8, !tbaa !194
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.g, %bb.h, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 8 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 15 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not4.i.i, label %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE5clearEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv.exit
  %i.bi = zext i32 %i.bh to i64
  %.idx.i = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %i.bj, %.lr.ph.i.preheader.i ]
  %i.bk = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  tail call void @_ZNSt10unique_ptrIN4llvm12LiveIntervalESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #22
  %.not.i.i105 = icmp eq ptr %i.bf, %i.bk
  br i1 %.not.i.i105, label %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE5clearEv.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E5clearEv.exit
  store i32 0, ptr %i.bg, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i106 = icmp eq i32 %i.bo, 0
  br i1 %.not4.i.i106, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE5clearEv.exit, label %.lr.ph.i.preheader.i107

.lr.ph.i.preheader.i107:                          ; preds = %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE5clearEv.exit
  %i.bp = zext i32 %i.bo to i64
  %.idx.i108 = mul nuw nsw i64 %i.bp, 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx.i108
  br label %.lr.ph.i.i109

.lr.ph.i.i109:                                    ; preds = %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i, %.lr.ph.i.preheader.i107
  %.05.i.i110 = phi ptr [ %i.br, %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i ], [ %i.bq, %.lr.ph.i.preheader.i107 ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.05.i.i110, i64 -48 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.05.i.i110, i64 -32
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i109
  tail call void @free(ptr noundef %i.bs) #22
  br label %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i109
  %.not.i.i111 = icmp eq ptr %i.bm, %i.br
  br i1 %.not.i.i111, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE5clearEv.exit, label %.lr.ph.i.i109, !llvm.loop !1

_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE5clearEv.exit: ; preds = %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i, %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE5clearEv.exit
  store i32 0, ptr %i.bn, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !35 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !42 ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %.idx.i.i = shl nuw nsw i64 %i.ca, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i.i112

.lr.ph.i.i112:                                    ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE5clearEv.exit, %.lr.ph.i.i112
  %.011.i.i = phi ptr [ %i.cf, %.lr.ph.i.i112 ], [ %i.bx, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE5clearEv.exit ] ; 3 uses
  %i.cc = load ptr, ptr %.011.i.i, align 8, !tbaa !200
  %i.cd = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !201
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cc, i64 noundef %i.ce, i64 noundef 16) #22
  %i.cf = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.cf, %i.cb
  br i1 %.not.i.i113, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i.i112

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i: ; preds = %.lr.ph.i.i112, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE5clearEv.exit
  store i32 0, ptr %i.by, align 8, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !42 ; 3 uses
  %.not.i1.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i1.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE5ResetEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !35 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36 ; 2 uses
  store ptr %i.ck, ptr %i.bv, align 8, !tbaa !202
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = add i64 %i.cl, 4097
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !203
  %i.co = zext i32 %i.ci to i64
  %.idx.i114 = shl nuw nsw i64 %i.co, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i114
  %.not6.i.i = icmp eq i32 %i.ci, 1
  br i1 %.not6.i.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i, label %.lr.ph.i2.preheader.i

.lr.ph.i2.preheader.i:                            ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.i2.preheader.i
  %.07.i.i = phi ptr [ %i.da, %.lr.ph.i2.i ], [ %i.cq, %.lr.ph.i2.preheader.i ] ; 3 uses
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !35
  %i.cs = ptrtoint ptr %.07.i.i to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %sum.shift.i.i = lshr i64 %i.cu, 10
  %i.cv = trunc i64 %sum.shift.i.i to i32
  %i.cw = and i32 %i.cv, 33554431
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 30)
  %.sroa.speculated.i.i.i115 = zext nneg i32 %i.cx to i64
  %i.cy = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i115
  %i.cz = load ptr, ptr %.07.i.i, align 8, !tbaa !36
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cz, i64 noundef %i.cy, i64 noundef 16) #22
  %i.da = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.da, %i.cp
  br i1 %.not.i3.i, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i, label %.lr.ph.i2.i, !llvm.loop !2

_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i: ; preds = %.lr.ph.i2.i, %bb.k
  store i32 1, ptr %i.ch, align 8, !tbaa !42
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE5ResetEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE5ResetEv.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i
  %i.db = load ptr, ptr %0, align 8, !tbaa !193   ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !521
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !206
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 40
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !224
  %i.dn = sub i32 %i.dk, %i.dm                    ; 38 uses
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %bb.nm, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE5ResetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.do = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store ptr %i.do, ptr %24, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 2 uses
  store i32 8, ptr %i.dq, align 4, !tbaa !43
  %i.dr = zext i32 %i.dn to i64                   ; 22 uses
  %i.ds = icmp ugt i32 %i.dn, 8                   ; 2 uses
  br i1 %i.ds, label %bb.m, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %i.do, i64 noundef %i.dr, i64 noundef 4) #22
  br label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit:      ; preds = %bb.l, %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !43
  %i.dv = icmp ugt i32 %i.dn, %i.du
  br i1 %i.dv, label %bb.n, label %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE7reserveEm.exit

bb.n:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dx = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull %i.dw, i64 noundef %i.dr, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #22 ; 7 uses
  %i.dy = load ptr, ptr %i.be, align 8, !tbaa !35 ; 8 uses
  %i.dz = load i32, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ea, 3          ; 3 uses
  %i.eb = getelementptr i8, ptr %i.dy, i64 %.idx.i.i.i ; 3 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.n
  %i.ec = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.ed = lshr exact i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ec, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1492, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dx, i64 %.idx.i.i.i
  %bound0 = icmp ult ptr %i.dx, %i.eb
  %bound1 = icmp ult ptr %i.dy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1492, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ee, 4611686018427387900     ; 3 uses
  %i.ef = shl i64 %n.vec, 3                       ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.dy, i64 %i.ef
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ei = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dx, i64 %i.ei ; 2 uses
  %next.gep1235 = getelementptr i8, ptr %i.dy, i64 %i.ei ; 4 uses
  %i.ej = getelementptr i8, ptr %next.gep1235, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1235, align 8, !tbaa !226, !alias.scope !522
  %wide.load1236 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !226, !alias.scope !522
  %i.ek = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !226, !alias.scope !523, !noalias !522
  store <2 x i64> %wide.load1236, ptr %i.ek, align 8, !tbaa !226, !alias.scope !523, !noalias !522
  %i.el = getelementptr i8, ptr %next.gep1235, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1235, align 8, !tbaa !226, !alias.scope !522
  store <2 x ptr> splat (ptr null), ptr %i.el, align 8, !tbaa !226, !alias.scope !522
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ee, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader1492

.lr.ph.i.i.i.i.i.i.i.i.preheader1492:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dx, %vector.memcheck ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eg, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dy, %vector.memcheck ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader1492, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader1492 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader1492 ] ; 3 uses
  %i.en = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, align 8, !tbaa !226
  store i64 %i.en, ptr %.09.i.i.i.i.i.i.i.i, align 8, !tbaa !226
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, align 8, !tbaa !226
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eo, %i.eb
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !318

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i ], [ %i.eb, %.lr.ph.i.i.i.i.preheader ]
  %i.eq = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8 ; 3 uses
  call void @_ZNSt10unique_ptrIN4llvm12LiveIntervalESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eq) #22
  %.not.i.i.i.i116 = icmp eq ptr %i.dy, %i.eq
  br i1 %.not.i.i.i.i116, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.be, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit.i.i, %bb.n
  %i.er = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit.i.i ], [ %i.dy, %bb.n ] ; 2 uses
  %i.es = load i64, ptr %i.e, align 8, !tbaa !41
  %i.et = icmp eq ptr %i.er, %i.dw
  br i1 %i.et, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE4growEm.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i.i
  call void @free(ptr noundef %i.er) #22
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE4growEm.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE4growEm.exit.i: ; preds = %bb.o, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.i.i
  store ptr %i.dx, ptr %i.be, align 8, !tbaa !35
  %i.eu = trunc i64 %i.es to i32
  store i32 %i.eu, ptr %i.dt, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE7reserveEm.exit

_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE7reserveEm.exit: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE4growEm.exit.i
  %i.ev = load i32, ptr %i.bn, align 8, !tbaa !42 ; 3 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = icmp eq i32 %i.dn, %i.ev
  br i1 %i.ex, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE6resizeEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE7reserveEm.exit
  %i.ey = icmp ult i32 %i.dn, %i.ev
  br i1 %i.ey, label %.lr.ph.i.preheader.i.i.i, label %bb.r

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.p
  %i.ez = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %i.fa = getelementptr inbounds nuw [48 x i8], ptr %i.ez, i64 %i.dr
  %i.fb = getelementptr inbounds nuw [48 x i8], ptr %i.ez, i64 %i.ew
  br label %.lr.ph.i.i.i.i120

.lr.ph.i.i.i.i120:                                ; preds = %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i121 = phi ptr [ %i.fc, %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i.i.i ], [ %i.fb, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.05.i.i.i.i121, i64 -48 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !35 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.05.i.i.i.i121, i64 -32
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i120
  call void @free(ptr noundef %i.fd) #22
  br label %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i120
  %.not.i.i.i.i122 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not.i.i.i.i122, label %.sink.split.i.i, label %.lr.ph.i.i.i.i120, !llvm.loop !1

bb.r:                                             ; preds = %bb.p
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !43
  %i.fi = icmp ugt i32 %i.dn, %i.fh
  br i1 %i.fi, label %bb.s, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE7reserveEm.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_9SlotIndexELj4EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 noundef %i.dr)
  %.pre.i.i119 = load i32, ptr %i.bn, align 8, !tbaa !42
  %.pre13.i.i = zext i32 %.pre.i.i119 to i64
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE7reserveEm.exit.i.i: ; preds = %bb.s, %bb.r
  %.pre-phi.i.i = phi i64 [ %i.ew, %bb.r ], [ %.pre13.i.i, %bb.s ] ; 2 uses
  %i.fj = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %i.fk = getelementptr inbounds nuw [48 x i8], ptr %i.fj, i64 %i.dr
  %.not11.i.i = icmp samesign eq i64 %.pre-phi.i.i, %i.dr
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE7reserveEm.exit.i.i
  %i.fl = getelementptr inbounds nuw [48 x i8], ptr %i.fj, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %.lr.ph.i.i117, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.fp, %.lr.ph.i.i117 ], [ %i.fl, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16
  store ptr %i.fm, ptr %.012.i.i, align 8, !tbaa !35
  %i.fn = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  store i32 0, ptr %i.fn, align 8, !tbaa !42
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 12
  store i32 4, ptr %i.fo, align 4, !tbaa !43
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 48 ; 2 uses
  %.not.i.i118 = icmp eq ptr %i.fp, %i.fk
  br i1 %.not.i.i118, label %.sink.split.i.i, label %.lr.ph.i.i117, !llvm.loop !319

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i117, %_ZN4llvm11SmallVectorINS_9SlotIndexELj4EED2Ev.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE7reserveEm.exit.i.i
  store i32 %i.dn, ptr %i.bn, align 8, !tbaa !42
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE6resizeEm.exit

_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_9SlotIndexELj4EEEE6resizeEm.exit: ; preds = %_ZN4llvm15SmallVectorImplISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EEE7reserveEm.exit, %.sink.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 8 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 3 uses
  store i32 0, ptr %i.fs, align 8, !tbaa !42
  store i32 %i.dn, ptr %i.fr, align 8, !tbaa !88
  %i.ft = add i32 %i.dn, 63                       ; 2 uses
  %i.fu = lshr i32 %i.ft, 6                       ; 17 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 10 uses
  %i.fw = icmp eq i32 %i.fu, 0                    ; 3 uses
  br i1 %i.fw, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i, label %bb.t

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113StackColoring3runERN4llvm15MachineFunctionEb:bb.a
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %i.ajf ; 2 uses
  %i.ajm = load i64, ptr %i.ajl, align 8, !tbaa !41
  %i.ajn = or i64 %i.ajm, %i.ajd
  store i64 %i.ajn, ptr %i.ajl, align 8, !tbaa !41
  %i.ajo = getelementptr inbounds nuw i8, ptr %.0367.i, i64 4 ; 2 uses
  %.not126.i = icmp eq ptr %i.ajo, %i.aix
  br i1 %.not126.i, label %_ZN12_GLOBAL__N_113StackColoring20isLifetimeStartOrEndERKN4llvm12MachineInstrERNS1_11SmallVectorIiLj4EEERb.exit.thread.i, label %bb.dj

_ZN12_GLOBAL__N_113StackColoring20isLifetimeStartOrEndERKN4llvm12MachineInstrERNS1_11SmallVectorIiLj4EEERb.exit.thread.i: ; preds = %bb.dl, %bb.di, %bb.dh, %._crit_edge.i.i, %bb.cz, %bb.cy, %_ZN12_GLOBAL__N_113StackColoring13applyFirstUseEi.exit.i.i, %bb.ct, %bb.cs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0288.0372.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i280.i = load i64, ptr %.sroa.0288.0372.i, align 8
  %i.ajp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i280.i, 4
  %.not.i.i.i281.i = icmp eq i64 %i.ajp, 0
  br i1 %.not.i.i.i281.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_113StackColoring20isLifetimeStartOrEndERKN4llvm12MachineInstrERNS1_11SmallVectorIiLj4EEERb.exit.thread.i
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.0288.0372.i, i64 44
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !548
  %i.ajs = and i32 %i.ajr, 8
  %.not34.i.i.i283.i = icmp eq i32 %i.ajs, 0
  br i1 %.not34.i.i.i283.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i284.i = phi ptr [ %i.aju, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0288.0372.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i284.i, i64 8
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !531 ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 44
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !548
  %i.ajx = and i32 %i.ajw, 8
  %.not3.i.i.i285.i = icmp eq i32 %i.ajx, 0
  br i1 %.not3.i.i.i285.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !346

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZN12_GLOBAL__N_113StackColoring20isLifetimeStartOrEndERKN4llvm12MachineInstrERNS1_11SmallVectorIiLj4EEERb.exit.thread.i
  %.sroa.0.1.i.i.i282.i = phi ptr [ %.sroa.0288.0372.i, %_ZN12_GLOBAL__N_113StackColoring20isLifetimeStartOrEndERKN4llvm12MachineInstrERNS1_11SmallVectorIiLj4EEERb.exit.thread.i ], [ %.sroa.0288.0372.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.aju, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.ajy = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i282.i, i64 8
  %.sroa.0288.0.i = load ptr, ptr %i.ajy, align 8, !tbaa !531 ; 2 uses
  %.not321.i = icmp eq ptr %.sroa.0288.0.i, %i.afl
  br i1 %.not321.i, label %._crit_edge374.i, label %.lr.ph373.i

.loopexit.i:                                      ; preds = %_ZN4llvm11SmallVectorIiLj4EED2Ev.exit.i, %_ZN4llvm9BitVector3setEv.exit.i, %_ZN4llvm14iterator_rangeINS_11df_iteratorIPNS_15MachineFunctionENS_23df_iterator_default_setIPNS_17MachineBasicBlockELj8EEELb0ENS_11GraphTraitsIS3_EEEEED2Ev.exit.i
  %i.ajz = load ptr, ptr %18, align 8, !tbaa !35  ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %i.hy
  br i1 %i.aka, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %.loopexit.i
  call void @free(ptr noundef %i.ajz) #22
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i:          ; preds = %bb.dm, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.akb = load ptr, ptr %17, align 8, !tbaa !35  ; 2 uses
  %i.akc = icmp eq ptr %i.akb, %i.hm
  br i1 %i.akc, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit286.i, label %bb.dn

bb.dn:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i
  call void @free(ptr noundef %i.akb) #22
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit286.i

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit286.i:       ; preds = %bb.dn, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.akd = load i32, ptr %i.ju, align 4, !tbaa !251 ; 2 uses
  %i.ake = icmp eq i32 %i.akd, 0
  br i1 %i.ake, label %_ZN12_GLOBAL__N_113StackColoring14collectMarkersEj.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit286.i
  %i.akf = load ptr, ptr %16, align 8, !tbaa !249
  %i.akg = load ptr, ptr %i.jt, align 8, !tbaa !250
  %i.akh = zext i32 %i.akd to i64
  %i.aki = add nuw nsw i64 %i.akh, 31
  %i.akj = lshr i64 %i.aki, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.akg, i64 %indvars.iv.i.i.i
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !230 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.akl, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.akm = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.do

bb.do:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.akl, %.lr.ph.i.i.i ], [ %i.akw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.akn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ako = or disjoint i32 %i.akn, %i.akm
  %i.akp = zext i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [80 x i8], ptr %i.akf, i64 %i.akp ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !35 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akq, i64 24
  %i.aku = icmp eq ptr %i.aks, %i.akt
  br i1 %i.aku, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @free(ptr noundef %i.aks) #22
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.dp, %bb.do
  %i.akv = add i32 %.0.i3.i.i.i, -1
  %i.akw = and i32 %i.akv, %.0.i3.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.akw, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.do, !llvm.loop !4

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i287.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.akj
  br i1 %.not.i.i.i287.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !5

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.ju, align 4, !tbaa !251 ; 2 uses
  %i.akx = icmp eq i32 %.pr.i.i, 0
  br i1 %i.akx, label %_ZN12_GLOBAL__N_113StackColoring14collectMarkersEj.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i
  %i.aky = load ptr, ptr %16, align 8, !tbaa !249
  %i.akz = zext i32 %.pr.i.i to i64               ; 2 uses
  %i.ala = mul nuw nsw i64 %i.akz, 80
  %i.alb = add nuw nsw i64 %i.akz, 31
  %i.alc = lshr i64 %i.alb, 3
  %i.ald = and i64 %i.alc, 1073741820
  %i.ale = add nuw nsw i64 %i.ald, %i.ala
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aky, i64 noundef %i.ale, i64 noundef 8) #22
  br label %_ZN12_GLOBAL__N_113StackColoring14collectMarkersEj.exit

_ZN12_GLOBAL__N_113StackColoring14collectMarkersEj.exit: ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit286.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_9BitVectorENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.alf = load ptr, ptr %0, align 8, !tbaa !193  ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !521
  %i.alj = load ptr, ptr %i.alg, align 8, !tbaa !206 ; 6 uses
  %i.alk = ptrtoint ptr %i.ali to i64
  %i.all = ptrtoint ptr %i.alj to i64
  %i.alm = sub i64 %i.alk, %i.all
  %i.aln = sdiv exact i64 %i.alm, 40
  %i.alo = trunc i64 %i.aln to i32
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alf, i64 32
  %i.alq = load i32, ptr %i.alp, align 8, !tbaa !224 ; 6 uses
  %i.alr = sub i32 %i.alo, %i.alq                 ; 3 uses
  %i.als = icmp sgt i32 %i.alr, 0
  br i1 %i.als, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %_ZN12_GLOBAL__N_113StackColoring14collectMarkersEj.exit
  %wide.trip.count = zext nneg i32 %i.alr to i64  ; 2 uses
  %xtraiter1496 = and i64 %wide.trip.count, 3     ; 3 uses
  %i.alt = icmp ult i32 %i.alr, 4
  br i1 %i.alt, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod1497.not = icmp eq i64 %xtraiter1496, 0
  br i1 %lcmp.mod1497.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.082540.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.anm, %._crit_edge.unr-lcssa ]
  %lcmp.mod1499 = icmp ne i64 %xtraiter1496, 0
  call void @llvm.assume(i1 %lcmp.mod1499)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.082540.epil = phi i64 [ %.082540.epil.init, %.lr.ph.epil.preheader ], [ %i.ama, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.alu = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.alv = add i32 %i.alq, %i.alu
  %i.alw = zext i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw [40 x i8], ptr %i.alj, i64 %i.alw
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !265
  %i.ama = add nsw i64 %i.alz, %.082540.epil      ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1496
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !347

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa1474 = phi i64 [ %i.anm, %._crit_edge.unr-lcssa ], [ %i.ama, %.lr.ph.epil ]
  %i.amb = icmp slt i64 %.lcssa1474, 16
  %i.amc = icmp ult i32 %.0114.i, 2
  %or.cond = select i1 %i.amc, i1 true, i1 %i.amb
  %i.amd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableColoring, i64 120), align 8, !range !31
  %i.ame = trunc nuw i8 %i.amd to i1
  %or.cond3 = or i1 %2, %i.ame
  %or.cond405 = select i1 %or.cond, i1 true, i1 %or.cond3
  br i1 %or.cond405, label %._crit_edge.thread, label %.lr.ph542

.lr.ph542:                                        ; preds = %._crit_edge
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.amh = ptrtoint ptr %25 to i64
  br label %bb.he

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.082540 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.anm, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ami = trunc nuw nsw i64 %indvars.iv to i32
  %i.amj = add i32 %i.alq, %i.ami
  %i.amk = zext i32 %i.amj to i64
  %i.aml = getelementptr inbounds nuw [40 x i8], ptr %i.alj, i64 %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  %i.amn = load i64, ptr %i.amm, align 8, !tbaa !265
  %i.amo = add nsw i64 %i.amn, %.082540
  %i.amp = trunc i64 %indvars.iv to i32
  %i.amq = or disjoint i32 %i.amp, 1
  %i.amr = add i32 %i.alq, %i.amq
  %i.ams = zext i32 %i.amr to i64
  %i.amt = getelementptr inbounds nuw [40 x i8], ptr %i.alj, i64 %i.ams
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  %i.amv = load i64, ptr %i.amu, align 8, !tbaa !265
  %i.amw = add nsw i64 %i.amv, %i.amo
  %i.amx = trunc i64 %indvars.iv to i32
  %i.amy = or disjoint i32 %i.amx, 2
  %i.amz = add i32 %i.alq, %i.amy
  %i.ana = zext i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [40 x i8], ptr %i.alj, i64 %i.ana
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 8
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !265
  %i.ane = add nsw i64 %i.and, %i.amw
  %i.anf = trunc i64 %indvars.iv to i32
  %i.ang = or disjoint i32 %i.anf, 3
  %i.anh = add i32 %i.alq, %i.ang
  %i.ani = zext i32 %i.anh to i64
  %i.anj = getelementptr inbounds nuw [40 x i8], ptr %i.alj, i64 %i.ani
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %i.anl = load i64, ptr %i.ank, align 8, !tbaa !265
  %i.anm = add nsw i64 %i.anl, %i.ane             ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !348

._crit_edge.thread:                               ; preds = %_ZN12_GLOBAL__N_113StackColoring14collectMarkersEj.exit, %._crit_edge
  %i.ann = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.ano = load i32, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %i.anp = zext i32 %i.ano to i64
  %.idx.i136 = shl nuw nsw i64 %i.anp, 3
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 %.idx.i136
  %.not10.i = icmp ne i32 %i.ano, 0               ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i138, label %_ZN12_GLOBAL__N_113StackColoring16removeAllMarkersEv.exit

.lr.ph.i138:                                      ; preds = %._crit_edge.thread, %.lr.ph.i138
  %.0911.i = phi ptr [ %i.ant, %.lr.ph.i138 ], [ %i.ann, %._crit_edge.thread ] ; 2 uses
  %i.anr = load ptr, ptr %.0911.i, align 8, !tbaa !552
  %i.ans = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.anr) #22 ; 0 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.0911.i, i64 8 ; 2 uses
  %.not.i139 = icmp eq ptr %i.ant, %i.anq
  br i1 %.not.i139, label %_ZN12_GLOBAL__N_113StackColoring16removeAllMarkersEv.exit, label %.lr.ph.i138

_ZN12_GLOBAL__N_113StackColoring16removeAllMarkersEv.exit: ; preds = %.lr.ph.i138, %._crit_edge.thread
  store i32 0, ptr %i.bd, align 8, !tbaa !42
  br label %bb.nk

._crit_edge543:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.anu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.anu, ptr %14, align 8, !tbaa !35
  %i.anv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  store i32 0, ptr %i.anv, align 8, !tbaa !42
  %i.anw = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 6, ptr %i.anw, align 4, !tbaa !43
  %i.anx = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 6 uses
  store i32 0, ptr %i.anx, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.any = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.any, ptr %15, align 8, !tbaa !35
  %i.anz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  store i32 0, ptr %i.anz, align 8, !tbaa !42
  %i.aoa = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  store i32 6, ptr %i.aoa, align 4, !tbaa !43
  %i.aob = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 5 uses
  store i32 0, ptr %i.aob, align 8, !tbaa !88
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  br label %bb.dr

.loopexit.i160:                                   ; preds = %_ZN4llvm9BitVectoroRERKS0_.exit138.i
  br i1 %.3.i, label %bb.dr, label %.critedge.i, !llvm.loop !349

bb.dr:                                            ; preds = %.loopexit.i160, %._crit_edge543
  %.026171.i = phi i32 [ 0, %._crit_edge543 ], [ %i.aoe, %.loopexit.i160 ]
  %i.aoe = add i32 %.026171.i, 1                  ; 2 uses
  %i.aof = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 2 uses
  %i.aog = load i32, ptr %i.bb, align 8, !tbaa !42 ; 2 uses
  %i.aoh = zext i32 %i.aog to i64
  %.idx.i140 = shl nuw nsw i64 %i.aoh, 3
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aof, i64 %.idx.i140
  %.not166.i = icmp eq i32 %i.aog, 0
  br i1 %.not166.i, label %.critedge.i, label %.lr.ph170.i

.lr.ph170.i:                                      ; preds = %bb.dr, %_ZN4llvm9BitVectoroRERKS0_.exit138.i
  %.024168.i = phi ptr [ %i.bhd, %_ZN4llvm9BitVectoroRERKS0_.exit138.i ], [ %i.aof, %bb.dr ] ; 2 uses
  %.1167.i = phi i1 [ %.3.i, %_ZN4llvm9BitVectoroRERKS0_.exit138.i ], [ false, %bb.dr ] ; 2 uses
  %i.aoj = load ptr, ptr %.024168.i, align 8, !tbaa !245 ; 4 uses
  %i.aok = load ptr, ptr %i.i, align 8, !tbaa !197, !noalias !553 ; 2 uses
  %i.aol = load ptr, ptr %i.aoc, align 8, !tbaa !196, !noalias !553 ; 2 uses
  %i.aom = load i32, ptr %i.aod, align 4, !tbaa !195, !noalias !553 ; 3 uses
  %i.aon = icmp eq i32 %i.aom, 0
  br i1 %i.aon, label %.loopexit.i.i.i141, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph170.i
  %i.aoo = add i32 %i.aom, -1                     ; 2 uses
  %i.aop = ptrtoint ptr %i.aoj to i64
  %i.aoq = mul i64 %i.aop, -4658895280553007687   ; 2 uses
  %i.aor = lshr i64 %i.aoq, 31
  %i.aos = xor i64 %i.aor, %i.aoq
  %i.aot = trunc i64 %i.aos to i32
  %i.aou = and i32 %i.aoo, %i.aot                 ; 3 uses
  %i.aov = zext i32 %i.aou to i64                 ; 2 uses
  %i.aow = lshr i64 %i.aov, 5
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.aow
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !230, !noalias !554
  %i.aoz = and i32 %i.aou, 31
  %i.apa = lshr i32 %i.aoy, %i.aoz
  %i.apb = trunc i32 %i.apa to i1
  br i1 %i.apb, label %.lr.ph.i.i.i.i.i177, label %.loopexit.i.i.i141, !prof !252

.lr.ph.i.i.i.i.i177:                              ; preds = %bb.ds, %bb.dt
  %i.apc = phi i64 [ %i.api, %bb.dt ], [ %i.aov, %bb.ds ]
  %.03.i.i.i.i.i = phi i32 [ %i.aph, %bb.dt ], [ %i.aou, %bb.ds ]
  %i.apd = getelementptr inbounds nuw [296 x i8], ptr %i.aok, i64 %i.apc ; 2 uses
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !245, !noalias !554
  %i.apf = icmp eq ptr %i.aoj, %i.ape
  br i1 %i.apf, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.i, label %bb.dt, !prof !246

bb.dt:                                            ; preds = %.lr.ph.i.i.i.i.i177
  %i.apg = add nuw i32 %.03.i.i.i.i.i, 1
  %i.aph = and i32 %i.apg, %i.aoo                 ; 3 uses
  %i.api = zext i32 %i.aph to i64                 ; 2 uses
  %i.apj = lshr i64 %i.api, 5
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.aol, i64 %i.apj
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !230, !noalias !554
  %i.apm = and i32 %i.aph, 31
  %i.apn = lshr i32 %i.apl, %i.apm
  %i.apo = trunc i32 %i.apn to i1
  br i1 %i.apo, label %.lr.ph.i.i.i.i.i177, label %.loopexit.i.i.i141, !prof !253

.loopexit.i.i.i141:                               ; preds = %bb.dt, %bb.ds, %.lr.ph170.i
  %i.app = zext i32 %i.aom to i64
  %i.apq = getelementptr inbounds nuw [296 x i8], ptr %i.aok, i64 %i.app
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEN12_GLOBAL__N_113StackColoring17BlockLifetimeInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findES4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i177, %.loopexit.i.i.i141
  %.lcssa.sink.i.i.i142 = phi ptr [ %i.apq, %.loopexit.i.i.i141 ], [ %i.apd, %.lr.ph.i.i.i.i.i177 ] ; 15 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i142, i64 8
  store i32 0, ptr %i.anx, align 8, !tbaa !88
  store i32 0, ptr %i.anv, align 8, !tbaa !42
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aoj, i64 64
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !35 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aoj, i64 72
  %i.apv = load i32, ptr %i.apu, align 8, !tbaa !42 ; 2 uses
  %i.apw = zext i32 %i.apv to i64
  %.idx172.i = shl nuw nsw i64 %i.apw, 3
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apt, i64 %.idx172.i
  %.not27164.i = icmp eq i32 %i.apv, 0
  br i1 %.not27164.i, label %_ZN4llvm9BitVectoraSERKS0_.exit.i, label %.lr.ph.i143

._crit_edge.i145:                                 ; preds = %_ZN4llvm9BitVectoroRERKS0_.exit70.i
  %.pre.i146 = load i32, ptr %i.anz, align 8, !tbaa !42 ; 4 uses
  %i.apy = zext i32 %.pre.i.i68183.i to i64       ; 5 uses
  %i.apz = zext i32 %.pre.i146 to i64             ; 2 uses
  %.not.i.i.i.i147 = icmp ult i32 %.pre.i146, %.pre.i.i68183.i
  br i1 %.not.i.i.i.i147, label %bb.dy, label %bb.du

bb.du:                                            ; preds = %._crit_edge.i145
  %.not29.i.i.i.i = icmp eq i32 %.pre.i.i68183.i, 0
  br i1 %.not29.i.i.i.i, label %_ZN4llvm9BitVectoraSERKS0_.exit.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aqa = load ptr, ptr %14, align 8, !tbaa !35  ; 2 uses
  %i.aqb = load ptr, ptr %15, align 8, !tbaa !35  ; 2 uses
  %.not31.i.i.i.i = icmp eq i32 %.pre.i.i68183.i, 1
  br i1 %.not31.i.i.i.i, label %bb.dx, label %bb.dw, !prof !229

bb.dw:                                            ; preds = %bb.dv
  %.idx.i.i.i.i148 = shl nuw nsw i64 %i.apy, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aqb, ptr align 8 %i.aqa, i64 %.idx.i.i.i.i148, i1 false)
  br label %_ZN4llvm9BitVectoraSERKS0_.exit.i

bb.dx:                                            ; preds = %bb.dv
  %i.aqc = load i64, ptr %i.aqa, align 8, !tbaa !41
  store i64 %i.aqc, ptr %i.aqb, align 8, !tbaa !41
  br label %_ZN4llvm9BitVectoraSERKS0_.exit.i

bb.dy:                                            ; preds = %._crit_edge.i145
  %i.aqd = load i32, ptr %i.aoa, align 4, !tbaa !43
  %i.aqe = icmp ult i32 %i.aqd, %.pre.i.i68183.i
  br i1 %i.aqe, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_113StackColoring3runERN4llvm15MachineFunctionEb:bb.a
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 44
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !548
  %i.buo = and i32 %i.bun, 8
  %.not3.i.i.i.i224 = icmp eq i32 %i.buo, 0
  br i1 %.not3.i.i.i.i224, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i214, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i222, !llvm.loop !346

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i214: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i222, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i220, %_ZN4llvm11SmallVectorIiLj4EED2Ev.exit.i212
  %.sroa.0.1.i.i.i.i215 = phi ptr [ %.sroa.086.0118.i, %_ZN4llvm11SmallVectorIiLj4EED2Ev.exit.i212 ], [ %.sroa.086.0118.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i220 ], [ %i.bul, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i222 ]
  %i.bup = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i215, i64 8
  %.sroa.086.0.i = load ptr, ptr %i.bup, align 8, !tbaa !531 ; 2 uses
  %.not99.i = icmp eq ptr %.sroa.086.0.i, %i.bma
  br i1 %.not99.i, label %.preheader.i216, label %.lr.ph121.i

bb.ha:                                            ; preds = %bb.hd
  %i.buq = getelementptr inbounds nuw i8, ptr %.sroa.089.0125.i, i64 8
  %.sroa.089.0.i = load ptr, ptr %i.buq, align 8, !tbaa !267 ; 2 uses
  %.not98.i = icmp eq ptr %.sroa.089.0.i, %i.bhr
  br i1 %.not98.i, label %._crit_edge128.i, label %bb.fs

bb.hb:                                            ; preds = %bb.hd, %.preheader.i216
  %i.bur = phi ptr [ %.pre146.i, %.preheader.i216 ], [ %i.bvi, %bb.hd ] ; 2 uses
  %indvars.iv.i217 = phi i64 [ 0, %.preheader.i216 ], [ %indvars.iv.next.i218, %bb.hd ] ; 3 uses
  %i.bus = getelementptr inbounds nuw [8 x i8], ptr %i.bur, i64 %indvars.iv.i217
  %.0.copyload.i.i.i.i83.i = load i64, ptr %i.bus, align 8 ; 2 uses
  %i.but = icmp ugt i64 %.0.copyload.i.i.i.i83.i, 7
  br i1 %i.but, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.buu = load ptr, ptr %i.bhs, align 8, !tbaa !87
  %i.buv = load i32, ptr %i.bnq, align 8, !tbaa !617
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buu, i64 128
  %i.bux = zext i32 %i.buv to i64
  %i.buy = load ptr, ptr %i.buw, align 8, !tbaa !35
  %i.buz = getelementptr inbounds nuw [16 x i8], ptr %i.buy, i64 %i.bux
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 8
  %.sroa.0.0.copyload.i84.i = load i64, ptr %i.bva, align 8, !tbaa !255
  %i.bvb = load ptr, ptr %i.be, align 8, !tbaa !35
  %i.bvc = getelementptr inbounds nuw [8 x i8], ptr %i.bvb, i64 %indvars.iv.i217
  %i.bvd = load ptr, ptr %i.bvc, align 8, !tbaa !226 ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 64
  %i.bvf = load ptr, ptr %i.bve, align 8, !tbaa !35
  %i.bvg = load ptr, ptr %i.bvf, align 8, !tbaa !626
  store i64 %.0.copyload.i.i.i.i83.i, ptr %13, align 8, !tbaa !255
  store i64 %.sroa.0.0.copyload.i84.i, ptr %i.bhy, align 8, !tbaa !255
  store ptr %i.bvg, ptr %i.bhz, align 8, !tbaa !631
  %i.bvh = call noundef ptr @_ZN4llvm9LiveRange10addSegmentENS0_7SegmentE(ptr noundef nonnull align 8 dereferenceable(104) %i.bvd, ptr noundef nonnull byval(%"struct.llvm::LiveRange::Segment") align 8 %13) #22 ; 0 uses
  %.pre145.i = load ptr, ptr %9, align 8, !tbaa !35
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.bvi = phi ptr [ %i.bur, %bb.hb ], [ %.pre145.i, %bb.hc ] ; 3 uses
  %indvars.iv.next.i218 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i219 = icmp eq i64 %indvars.iv.next.i218, %i.dr
  br i1 %exitcond.not.i219, label %bb.ha, label %bb.hb, !llvm.loop !414

_ZN12_GLOBAL__N_113StackColoring22calculateLiveIntervalsEj.exit: ; preds = %_ZN4llvm11SmallVectorIbLj16EED2Ev.exit.thread.i, %_ZN4llvm11SmallVectorIbLj16EED2Ev.exit.i, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.bvj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL25ProtectFromEscapedAllocas, i64 120), align 8, !tbaa !262, !range !31, !noundef !32
  %i.bvk = trunc nuw i8 %i.bvj to i1
  br i1 %i.bvk, label %bb.hn, label %.lr.ph545

bb.he:                                            ; preds = %.lr.ph542, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.0100541 = phi i32 [ 0, %.lr.ph542 ], [ %i.bxs, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.bvl = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #24 ; 12 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 16
  store ptr %i.bvm, ptr %i.bvl, align 8, !tbaa !35
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvl, i64 8
  store i32 0, ptr %i.bvn, align 8, !tbaa !42
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvl, i64 12
  store i32 2, ptr %i.bvo, align 4, !tbaa !43
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvl, i64 64 ; 3 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvl, i64 80
  store ptr %i.bvq, ptr %i.bvp, align 8, !tbaa !35
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvl, i64 72 ; 5 uses
  store i32 0, ptr %i.bvr, align 8, !tbaa !42
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvl, i64 76 ; 2 uses
  store i32 2, ptr %i.bvs, align 4, !tbaa !43
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvl, i64 96
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvl, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bvt, i8 0, i64 16, i1 false)
  store i32 %.0100541, ptr %i.bvu, align 8, !tbaa !230
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvl, i64 116
  store float 0.000000e+00, ptr %i.bvv, align 4, !tbaa !653
  store ptr %i.bvl, ptr %25, align 8, !tbaa !226
  %i.bvw = load ptr, ptr %i.amf, align 8, !tbaa !87
  %i.bvx = getelementptr inbounds nuw i8, ptr %i.bvw, i64 88
  %i.bvy = load ptr, ptr %i.bvx, align 8, !tbaa !267
  %i.bvz = ptrtoint ptr %i.bvy to i64
  %i.bwa = and i64 %i.bvz, -7
  %i.bwb = load ptr, ptr %i.bv, align 8, !tbaa !202
  %i.bwc = ptrtoint ptr %i.bwb to i64
  %i.bwd = add i64 %i.bwc, 15
  %i.bwe = and i64 %i.bwd, -16                    ; 2 uses
  %i.bwf = add i64 %i.bwe, 16                     ; 2 uses
  %i.bwg = load i64, ptr %i.amg, align 8, !tbaa !203
  %i.bwh = icmp ult i64 %i.bwf, %i.bwg
  br i1 %i.bwh, label %bb.hf, label %bb.hg, !prof !246

bb.hf:                                            ; preds = %bb.he
  %i.bwi = inttoptr i64 %i.bwf to ptr
  store ptr %i.bwi, ptr %i.bv, align 8, !tbaa !202
  %i.bwj = inttoptr i64 %i.bwe to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

bb.hg:                                            ; preds = %bb.he
  %i.bwk = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, i64 noundef 16, i64 noundef 16, i8 4)
  %.pre = load i32, ptr %i.bvr, align 8, !tbaa !42
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i: ; preds = %bb.hg, %bb.hf
  %i.bwl = phi i32 [ 0, %bb.hf ], [ %.pre, %bb.hg ]
  %.0.i.i.i.i = phi ptr [ %i.bwj, %bb.hf ], [ %i.bwk, %bb.hg ] ; 4 uses
  store i32 %i.bwl, ptr %.0.i.i.i.i, align 8, !tbaa !655
  %i.bwm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i64 %i.bwa, ptr %i.bwm, align 8, !tbaa !255
  %i.bwn = load i32, ptr %i.bvr, align 8, !tbaa !42 ; 2 uses
  %i.bwo = load i32, ptr %i.bvs, align 4, !tbaa !43
  %.not.i.i253 = icmp ult i32 %i.bwn, %i.bwo
  br i1 %.not.i.i253, label %bb.hi, label %bb.hh, !prof !246

bb.hh:                                            ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VNInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bvp, ptr noundef nonnull %.0.i.i.i.i)
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

bb.hi:                                            ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit.i
  %i.bwp = zext i32 %i.bwn to i64
  %i.bwq = load ptr, ptr %i.bvp, align 8, !tbaa !35
  %i.bwr = getelementptr inbounds nuw [8 x i8], ptr %i.bwq, i64 %i.bwp
  store ptr %.0.i.i.i.i, ptr %i.bwr, align 1
  %i.bws = load i32, ptr %i.bvr, align 8, !tbaa !42
  %i.bwt = add i32 %i.bws, 1
  store i32 %i.bwt, ptr %i.bvr, align 8, !tbaa !42
  br label %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit

_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit: ; preds = %bb.hh, %bb.hi
  %i.bwu = load i32, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.bwv = zext i32 %i.bwu to i64                 ; 2 uses
  %i.bww = add nuw nsw i64 %i.bwv, 1              ; 2 uses
  %i.bwx = load i32, ptr %i.dt, align 4, !tbaa !43
  %.not.i.i.not.i = icmp ult i32 %i.bwu, %i.bwx
  %.pre3.i = load ptr, ptr %i.be, align 8, !tbaa !35 ; 4 uses
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit, label %bb.hj, !prof !246

bb.hj:                                            ; preds = %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit
  %i.bwy = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i, i64 %i.bwv
  %i.bwz = icmp uge ptr %25, %.pre3.i
  %i.bxa = icmp ult ptr %25, %i.bwy
  %spec.select.i.i.i.i.i = and i1 %i.bwz, %i.bxa
  br i1 %spec.select.i.i.i.i.i, label %bb.hk, label %.critedge.i.i.i, !prof !229

bb.hk:                                            ; preds = %bb.hj
  %i.bxb = ptrtoint ptr %.pre3.i to i64
  %i.bxc = sub i64 %i.amh, %i.bxb
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 noundef %i.bww)
  %i.bxd = load ptr, ptr %i.be, align 8, !tbaa !35 ; 2 uses
  %i.bxe = getelementptr inbounds i8, ptr %i.bxd, i64 %i.bxc
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

.critedge.i.i.i:                                  ; preds = %bb.hj
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 noundef %i.bww)
  %.pre.i254 = load ptr, ptr %i.be, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit: ; preds = %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit, %bb.hk, %.critedge.i.i.i
  %i.bxf = phi ptr [ %.pre3.i, %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit ], [ %i.bxd, %bb.hk ], [ %.pre.i254, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %25, %_ZN4llvm9LiveRange12getNextValueENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE.exit ], [ %i.bxe, %bb.hk ], [ %25, %.critedge.i.i.i ] ; 2 uses
  %i.bxg = load i32, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.bxh = zext i32 %i.bxg to i64
  %i.bxi = getelementptr inbounds nuw [8 x i8], ptr %i.bxf, i64 %i.bxh
  %i.bxj = load i64, ptr %.016.i.i.i, align 8, !tbaa !226
  store i64 %i.bxj, ptr %i.bxi, align 8, !tbaa !226
  store ptr null, ptr %.016.i.i.i, align 8, !tbaa !226
  %i.bxk = add i32 %i.bxg, 1
  store i32 %i.bxk, ptr %i.bg, align 8, !tbaa !42
  %i.bxl = load i32, ptr %i.dp, align 8, !tbaa !42 ; 2 uses
  %i.bxm = load i32, ptr %i.dq, align 4, !tbaa !43
  %.not.i255 = icmp ult i32 %i.bxl, %i.bxm
  br i1 %.not.i255, label %bb.hm, label %bb.hl, !prof !246

bb.hl:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %24, i32 noundef %.0100541)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.hm:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12LiveIntervalESt14default_deleteIS2_EELb0EE9push_backEOS5_.exit
  %i.bxn = zext i32 %i.bxl to i64
  %i.bxo = load ptr, ptr %24, align 8, !tbaa !35
  %i.bxp = getelementptr inbounds nuw [4 x i8], ptr %i.bxo, i64 %i.bxn
  store i32 %.0100541, ptr %i.bxp, align 1
  %i.bxq = load i32, ptr %i.dp, align 8, !tbaa !42
  %i.bxr = add i32 %i.bxq, 1
  store i32 %i.bxr, ptr %i.dp, align 8, !tbaa !42
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.hl, %bb.hm
  call void @_ZNSt10unique_ptrIN4llvm12LiveIntervalESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.bxs = add nuw i32 %.0100541, 1               ; 2 uses
  %exitcond714.not = icmp eq i32 %i.bxs, %i.dn
  br i1 %exitcond714.not, label %._crit_edge543, label %bb.he, !llvm.loop !415

bb.hn:                                            ; preds = %_ZN12_GLOBAL__N_113StackColoring22calculateLiveIntervalsEj.exit
  %i.bxt = load ptr, ptr %i.f, align 8, !tbaa !519 ; 2 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxt, i64 304
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxt, i64 296 ; 2 uses
  %.sroa.039.059.i = load ptr, ptr %i.bxu, align 8, !tbaa !267 ; 2 uses
  %.not4560.i = icmp eq ptr %.sroa.039.059.i, %i.bxv
  br i1 %.not4560.i, label %.lr.ph545, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %bb.hn
  %i.bxw = getelementptr inbounds nuw i8, ptr %0, i64 1128
  br label %bb.ho

bb.ho:                                            ; preds = %._crit_edge.i261, %.lr.ph63.i
  %.sroa.039.061.i = phi ptr [ %.sroa.039.059.i, %.lr.ph63.i ], [ %.sroa.039.0.i, %._crit_edge.i261 ] ; 3 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %.sroa.039.061.i, i64 56
  %i.bxy = getelementptr inbounds nuw i8, ptr %.sroa.039.061.i, i64 48 ; 2 uses
  %.sroa.036.055.i = load ptr, ptr %i.bxx, align 8, !tbaa !531 ; 2 uses
  %.not4656.i = icmp eq ptr %.sroa.036.055.i, %i.bxy
  br i1 %.not4656.i, label %._crit_edge.i261, label %.lr.ph58.i

._crit_edge.i261:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i259, %bb.ho
  %i.bxz = getelementptr inbounds nuw i8, ptr %.sroa.039.061.i, i64 8
  %.sroa.039.0.i = load ptr, ptr %i.bxz, align 8, !tbaa !267 ; 2 uses
  %.not45.i = icmp eq ptr %.sroa.039.0.i, %i.bxv
  br i1 %.not45.i, label %.lr.ph545, label %bb.ho

.lr.ph58.i:                                       ; preds = %bb.ho, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i259
  %.sroa.036.057.i = phi ptr [ %.sroa.036.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i259 ], [ %.sroa.036.055.i, %bb.ho ] ; 21 uses
  %i.bya = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 52 ; 2 uses
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !546 ; 2 uses
  switch i32 %i.byb, label %bb.hp [
    i32 24, label %.loopexit.i256
    i32 23, label %.loopexit.i256
    i32 18, label %.loopexit.i256
    i32 17, label %.loopexit.i256
    i32 16, label %.loopexit.i256
    i32 15, label %.loopexit.i256
    i32 14, label %.loopexit.i256
  ]

bb.hp:                                            ; preds = %.lr.ph58.i
  %i.byc = add i32 %i.byb, -1                     ; 2 uses
  %spec.select.i.i.i = icmp ult i32 %i.byc, 2
  br i1 %spec.select.i.i.i, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.byd = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 32
  %i.bye = load ptr, ptr %i.byd, align 8, !tbaa !547
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bye, i64 48
  %i.byg = load i64, ptr %i.byf, align 8, !tbaa !255
  %i.byh = and i64 %i.byg, 8
  %.not.not.i.i = icmp eq i64 %i.byh, 0
  br i1 %.not.not.i.i, label %bb.hr, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.byi = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 44 ; 2 uses
  %i.byj = load i32, ptr %i.byi, align 4, !tbaa !548 ; 2 uses
  %i.byk = and i32 %i.byj, 12
  %i.byl = icmp eq i32 %i.byk, 0
  %i.bym = and i32 %i.byj, 4
  %i.byn = icmp ne i32 %i.bym, 0
  %or.cond.i.i.i267 = or i1 %i.byl, %i.byn
  br i1 %or.cond.i.i.i267, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.hr
  %i.byo = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.036.057.i, i64 noundef 524288, i32 noundef 1) #22
  br i1 %i.byo, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i, label %.split._crit_edge.i

.split._crit_edge.i:                              ; preds = %.split.i
  %.pre.i268 = load i32, ptr %i.bya, align 4, !tbaa !546
  %.pre69.i = add i32 %.pre.i268, -1
  br label %bb.hs

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i: ; preds = %bb.hr
  %i.byp = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 16
  %i.byq = load ptr, ptr %i.byp, align 8, !tbaa !656
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 16
  %i.bys = load i64, ptr %i.byr, align 8, !tbaa !659
  %i.byt = and i64 %i.bys, 524288
  %.not47.i = icmp eq i64 %i.byt, 0
  br i1 %.not47.i, label %bb.hs, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i

bb.hs:                                            ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i, %.split._crit_edge.i
  %.pre-phi.i269 = phi i32 [ %.pre69.i, %.split._crit_edge.i ], [ %i.byc, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i ]
  %spec.select.i.i30.i = icmp ult i32 %.pre-phi.i269, 2
  br i1 %spec.select.i.i30.i, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.byu = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 32
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !547
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byv, i64 48
  %i.byx = load i64, ptr %i.byw, align 8, !tbaa !255
  %i.byy = and i64 %i.byx, 16
  %.not.not.i33.i = icmp eq i64 %i.byy, 0
  br i1 %.not.not.i33.i, label %bb.hu, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.byz = load i32, ptr %i.byi, align 4, !tbaa !548 ; 2 uses
  %i.bza = and i32 %i.byz, 12
  %i.bzb = icmp eq i32 %i.bza, 0
  %i.bzc = and i32 %i.byz, 4
  %i.bzd = icmp ne i32 %i.bzc, 0
  %or.cond.i.i31.i = or i1 %i.bzb, %i.bzd
  br i1 %or.cond.i.i31.i, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, label %.split44.i

.split44.i:                                       ; preds = %bb.hu
  %i.bze = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.036.057.i, i64 noundef 1048576, i32 noundef 1) #22
  br i1 %i.bze, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i, label %.loopexit.i256

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i: ; preds = %bb.hu
  %i.bzf = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 16
  %i.bzg = load ptr, ptr %i.bzf, align 8, !tbaa !656
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bzg, i64 16
  %i.bzi = load i64, ptr %i.bzh, align 8, !tbaa !659
  %i.bzj = and i64 %i.bzi, 1048576
  %.not48.i = icmp eq i64 %i.bzj, 0
  br i1 %.not48.i, label %.loopexit.i256, label %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i

_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i: ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, %.split44.i, %bb.ht, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.i, %.split.i, %bb.hq
  %i.bzk = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 32
  %i.bzl = load ptr, ptr %i.bzk, align 8, !tbaa !547 ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 40
  %i.bzn = load i24, ptr %i.bzm, align 8          ; 2 uses
  %i.bzo = zext i24 %i.bzn to i64
  %.idx.i270 = shl nuw nsw i64 %i.bzo, 5
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzl, i64 %.idx.i270
  %.not53.i = icmp eq i24 %i.bzn, 0
  br i1 %.not53.i, label %.loopexit.i256, label %.lr.ph.i271

.lr.ph.i271:                                      ; preds = %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i
  %i.bzq = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 44
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ic, %.lr.ph.i271
  %.054.i = phi ptr [ %i.bzl, %.lr.ph.i271 ], [ %i.ccr, %bb.ic ] ; 3 uses
  %i.bzr = load i32, ptr %.054.i, align 8
  %i.bzs = and i32 %i.bzr, 255
  %i.bzt = icmp eq i32 %i.bzs, 5
  br i1 %i.bzt, label %bb.hw, label %bb.ic

bb.hw:                                            ; preds = %bb.hv
  %i.bzu = getelementptr inbounds nuw i8, ptr %.054.i, i64 16
  %i.bzv = load i32, ptr %i.bzu, align 8, !tbaa !255 ; 2 uses
  %i.bzw = icmp slt i32 %i.bzv, 0
  br i1 %i.bzw, label %bb.ic, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.bzx = zext nneg i32 %i.bzv to i64
  %i.bzy = load ptr, ptr %i.be, align 8, !tbaa !35
  %i.bzz = getelementptr inbounds nuw [8 x i8], ptr %i.bzy, i64 %i.bzx
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !226 ; 4 uses
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 8 ; 3 uses
  %i.cac = load i32, ptr %i.cab, align 8, !tbaa !42
  %.not.i.i.i273 = icmp eq i32 %i.cac, 0
  br i1 %.not.i.i.i273, label %bb.ic, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.cad = load ptr, ptr %i.bxw, align 8, !tbaa !87 ; 3 uses
  %i.cae = load i32, ptr %i.bzq, align 4, !tbaa !548 ; 2 uses
  %i.caf = and i32 %i.cae, 4
  %.not2.i.i.i274 = icmp eq i32 %i.caf, 0
  br i1 %.not2.i.i.i274, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i278, label %.lr.ph.i.i.i275

.lr.ph.i.i.i275:                                  ; preds = %bb.hy, %.lr.ph.i.i.i275
  %.sroa.0.03.i.i.i276 = phi ptr [ %i.cah, %.lr.ph.i.i.i275 ], [ %.sroa.036.057.i, %bb.hy ]
  %.0.copyload.i.i.i.i.i.i.i.i.i277 = load i64, ptr %.sroa.0.03.i.i.i276, align 8
  %i.cag = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i277, -8
  %i.cah = inttoptr i64 %i.cag to ptr             ; 3 uses
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 44
  %i.caj = load i32, ptr %i.cai, align 4, !tbaa !548
  %i.cak = and i32 %i.caj, 4
  %.not.i.i34.i = icmp eq i32 %i.cak, 0
  br i1 %.not.i.i34.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i278, label %.lr.ph.i.i.i275, !llvm.loop !403

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i278: ; preds = %.lr.ph.i.i.i275, %bb.hy
  %.sroa.0.0.lcssa.i.i.i279 = phi ptr [ %.sroa.036.057.i, %bb.hy ], [ %i.cah, %.lr.ph.i.i.i275 ] ; 3 uses
  %i.cal = and i32 %i.cae, 8
  %.not3.i.i.i280 = icmp eq i32 %i.cal, 0
  br i1 %.not3.i.i.i280, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i284, label %.lr.ph.i11.i.i281

.lr.ph.i11.i.i281:                                ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i278, %.lr.ph.i11.i.i281
  %.sroa.0.04.i.i.i282 = phi ptr [ %i.can, %.lr.ph.i11.i.i281 ], [ %.sroa.036.057.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i278 ]
  %i.cam = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i282, i64 8
  %i.can = load ptr, ptr %i.cam, align 8, !tbaa !531 ; 3 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 44
  %i.cap = load i32, ptr %i.cao, align 4, !tbaa !548
  %i.caq = and i32 %i.cap, 8
  %.not.i12.i.i283 = icmp eq i32 %i.caq, 0
  br i1 %.not.i12.i.i283, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i284, label %.lr.ph.i11.i.i281, !llvm.loop !404

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i284: ; preds = %.lr.ph.i11.i.i281, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i278
  %.sroa.0.0.lcssa.i13.i.i285 = phi ptr [ %.sroa.036.057.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i278 ], [ %i.can, %.lr.ph.i11.i.i281 ]
  %i.car = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i13.i.i285, i64 8
  %i.cas = load ptr, ptr %i.car, align 8, !tbaa !531 ; 3 uses
  %.not8.i.i.i286 = icmp eq ptr %.sroa.0.0.lcssa.i.i.i279, %i.cas
  br i1 %.not8.i.i.i286, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i291, label %.lr.ph.i14.i.i287

.lr.ph.i14.i.i287:                                ; preds = %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i284, %.critedge2.i.i.i289
  %.sroa.03.09.i.i.i288 = phi ptr [ %i.caw, %.critedge2.i.i.i289 ], [ %.sroa.0.0.lcssa.i.i.i279, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i284 ] ; 3 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i288, i64 52
  %i.cau = load i32, ptr %i.cat, align 4, !tbaa !546
  switch i32 %i.cau, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i291 [
    i32 25, label %.critedge2.i.i.i289
    i32 18, label %.critedge2.i.i.i289
    i32 17, label %.critedge2.i.i.i289
    i32 16, label %.critedge2.i.i.i289
    i32 15, label %.critedge2.i.i.i289
    i32 14, label %.critedge2.i.i.i289
  ]

.critedge2.i.i.i289:                              ; preds = %.lr.ph.i14.i.i287, %.lr.ph.i14.i.i287, %.lr.ph.i14.i.i287, %.lr.ph.i14.i.i287, %.lr.ph.i14.i.i287, %.lr.ph.i14.i.i287
  %i.cav = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i288, i64 8
  %i.caw = load ptr, ptr %i.cav, align 8, !tbaa !531 ; 2 uses
  %.not.i15.i.i290 = icmp eq ptr %i.caw, %i.cas
  br i1 %.not.i15.i.i290, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i291, label %.lr.ph.i14.i.i287, !llvm.loop !405

_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i291: ; preds = %.critedge2.i.i.i289, %.lr.ph.i14.i.i287, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i284
  %i.cax = phi ptr [ %.sroa.0.0.lcssa.i.i.i279, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i284 ], [ %.sroa.03.09.i.i.i288, %.lr.ph.i14.i.i287 ], [ %i.cas, %.critedge2.i.i.i289 ] ; 2 uses
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cad, i64 104
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !620, !noalias !660 ; 2 uses
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cad, i64 112
  %i.cbb = load ptr, ptr %i.cba, align 8, !tbaa !622, !noalias !660 ; 2 uses
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cad, i64 124
  %i.cbd = load i32, ptr %i.cbc, align 4, !tbaa !623, !noalias !660 ; 3 uses
  %i.cbe = icmp eq i32 %i.cbd, 0
  br i1 %i.cbe, label %.loopexit.i.i.i.i292, label %bb.hz

bb.hz:                                            ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i291
  %i.cbf = add i32 %i.cbd, -1                     ; 2 uses
  %i.cbg = ptrtoint ptr %i.cax to i64
  %i.cbh = mul i64 %i.cbg, -4658895280553007687   ; 2 uses
  %i.cbi = lshr i64 %i.cbh, 31
  %i.cbj = xor i64 %i.cbi, %i.cbh
  %i.cbk = trunc i64 %i.cbj to i32
  %i.cbl = and i32 %i.cbf, %i.cbk                 ; 3 uses
  %i.cbm = zext i32 %i.cbl to i64                 ; 2 uses
  %i.cbn = lshr i64 %i.cbm, 5
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %i.cbb, i64 %i.cbn
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !230, !noalias !661
  %i.cbq = and i32 %i.cbl, 31
  %i.cbr = lshr i32 %i.cbp, %i.cbq
  %i.cbs = trunc i32 %i.cbr to i1
  br i1 %i.cbs, label %.lr.ph.i.i.i.i.i295, label %.loopexit.i.i.i.i292, !prof !252

.lr.ph.i.i.i.i.i295:                              ; preds = %bb.hz, %bb.ia
  %i.cbt = phi i64 [ %i.cbz, %bb.ia ], [ %i.cbm, %bb.hz ] ; 2 uses
  %.017.i.i.i.i.i296 = phi i32 [ %i.cby, %bb.ia ], [ %i.cbl, %bb.hz ]
  %i.cbu = getelementptr inbounds nuw [16 x i8], ptr %i.caz, i64 %i.cbt
  %i.cbv = load ptr, ptr %i.cbu, align 8, !tbaa !552, !noalias !661
  %i.cbw = icmp eq ptr %i.cax, %i.cbv
  br i1 %i.cbw, label %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit.i293, label %bb.ia, !prof !246

bb.ia:                                            ; preds = %.lr.ph.i.i.i.i.i295
  %i.cbx = add nuw i32 %.017.i.i.i.i.i296, 1
  %i.cby = and i32 %i.cbx, %i.cbf                 ; 3 uses
  %i.cbz = zext i32 %i.cby to i64                 ; 2 uses
  %i.cca = lshr i64 %i.cbz, 5
  %i.ccb = getelementptr inbounds nuw [4 x i8], ptr %i.cbb, i64 %i.cca
  %i.ccc = load i32, ptr %i.ccb, align 4, !tbaa !230, !noalias !661
  %i.ccd = and i32 %i.cby, 31
  %i.cce = lshr i32 %i.ccc, %i.ccd
  %i.ccf = trunc i32 %i.cce to i1
  br i1 %i.ccf, label %.lr.ph.i.i.i.i.i295, label %.loopexit.i.i.i.i292, !prof !253

.loopexit.i.i.i.i292:                             ; preds = %bb.ia, %bb.hz, %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i291
  %i.ccg = zext i32 %i.cbd to i64
  br label %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit.i293

_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit.i293: ; preds = %.lr.ph.i.i.i.i.i295, %.loopexit.i.i.i.i292
  %i.cch = phi i64 [ %i.ccg, %.loopexit.i.i.i.i292 ], [ %i.cbt, %.lr.ph.i.i.i.i.i295 ]
  %i.cci = getelementptr inbounds nuw [16 x i8], ptr %i.caz, i64 %i.cch
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cci, i64 8
  %.sroa.010.0.copyload.i.i294 = load i64, ptr %i.ccj, align 8, !tbaa !255
  %i.cck = call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %i.caa, i64 %.sroa.010.0.copyload.i.i294) #22
  %i.ccl = load ptr, ptr %i.caa, align 8, !tbaa !35
  %i.ccm = load i32, ptr %i.cab, align 8, !tbaa !42
  %i.ccn = zext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds nuw [24 x i8], ptr %i.ccl, i64 %i.ccn
  %i.ccp = icmp eq ptr %i.cck, %i.cco
  br i1 %i.ccp, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit.i293
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.caa, i64 72
  store i32 0, ptr %i.ccq, align 8, !tbaa !42
  store i32 0, ptr %i.cab, align 8, !tbaa !42
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %_ZNK4llvm11SlotIndexes19getInstructionIndexERKNS_12MachineInstrEb.exit.i293, %bb.hx, %bb.hw, %bb.hv
  %i.ccr = getelementptr inbounds nuw i8, ptr %.054.i, i64 32 ; 2 uses
  %.not.i272 = icmp eq ptr %i.ccr, %i.bzp
  br i1 %.not.i272, label %.loopexit.i256, label %bb.hv

.loopexit.i256:                                   ; preds = %bb.ic, %_ZNK4llvm12MachineInstr7mayLoadENS0_9QueryTypeE.exit.thread.i, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, %.split44.i, %.lr.ph58.i, %.lr.ph58.i, %.lr.ph58.i, %.lr.ph58.i, %.lr.ph58.i, %.lr.ph58.i, %.lr.ph58.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.057.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i257 = load i64, ptr %.sroa.036.057.i, align 8
  %i.ccs = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i257, 4
  %.not.i.i.i.i258 = icmp eq i64 %i.ccs, 0
  br i1 %.not.i.i.i.i258, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i262, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i259

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i262: ; preds = %.loopexit.i256
  %i.cct = getelementptr inbounds nuw i8, ptr %.sroa.036.057.i, i64 44
  %i.ccu = load i32, ptr %i.cct, align 4, !tbaa !548
  %i.ccv = and i32 %i.ccu, 8
  %.not34.i.i.i.i263 = icmp eq i32 %i.ccv, 0
  br i1 %.not34.i.i.i.i263, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i259, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i264

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i264: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i262, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i264
  %.sroa.0.05.i.i.i.i265 = phi ptr [ %i.ccx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i264 ], [ %.sroa.036.057.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i262 ]
  %i.ccw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i265, i64 8
  %i.ccx = load ptr, ptr %i.ccw, align 8, !tbaa !531 ; 3 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 44
  %i.ccz = load i32, ptr %i.ccy, align 4, !tbaa !548
  %i.cda = and i32 %i.ccz, 8
  %.not3.i.i.i.i266 = icmp eq i32 %i.cda, 0
  br i1 %.not3.i.i.i.i266, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i259, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i264, !llvm.loop !340

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i259: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i264, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i262, %.loopexit.i256
  %.sroa.0.1.i.i.i.i260 = phi ptr [ %.sroa.036.057.i, %.loopexit.i256 ], [ %.sroa.036.057.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i262 ], [ %i.ccx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i264 ]
  %i.cdb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i260, i64 8
  %.sroa.036.0.i = load ptr, ptr %i.cdb, align 8, !tbaa !531 ; 2 uses
  %.not46.i = icmp eq ptr %.sroa.036.0.i, %i.bxy
  br i1 %.not46.i, label %._crit_edge.i261, label %.lr.ph58.i

.lr.ph545:                                        ; preds = %._crit_edge.i261, %_ZN12_GLOBAL__N_113StackColoring22calculateLiveIntervalsEj.exit, %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.cdc = load ptr, ptr %24, align 8, !tbaa !35  ; 9 uses
  %i.cdd = load ptr, ptr %i.be, align 8, !tbaa !35 ; 3 uses
  %xtraiter1515 = and i64 %i.dr, 1
  %i.cde = icmp eq i32 %i.dn, 1
  br i1 %i.cde, label %.epil.preheader, label %.lr.ph545.new

.lr.ph545.new:                                    ; preds = %.lr.ph545
  %unroll_iter1519 = and i64 %i.dr, 4294967294
  br label %bb.ij

._crit_edge546.unr-lcssa:                         ; preds = %bb.in
  %lcmp.mod1517.not = icmp eq i64 %xtraiter1515, 0
  br i1 %lcmp.mod1517.not, label %._crit_edge546, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge546.unr-lcssa, %.lr.ph545
  %indvars.iv715.epil.init = phi i64 [ 0, %.lr.ph545 ], [ %indvars.iv.next716.1, %._crit_edge546.unr-lcssa ]
  %lcmp.mod1518 = trunc i32 %i.dn to i1
  call void @llvm.assume(i1 %lcmp.mod1518)
  %i.cdf = getelementptr inbounds nuw [4 x i8], ptr %i.cdc, i64 %indvars.iv715.epil.init ; 2 uses
  %i.cdg = load i32, ptr %i.cdf, align 4, !tbaa !230
  %i.cdh = sext i32 %i.cdg to i64
  %i.cdi = getelementptr inbounds nuw [8 x i8], ptr %i.cdd, i64 %i.cdh
  %i.cdj = load ptr, ptr %i.cdi, align 8, !tbaa !226
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 8
  %i.cdl = load i32, ptr %i.cdk, align 8, !tbaa !42
  %.not.i.i300.epil = icmp eq i32 %i.cdl, 0
  br i1 %.not.i.i300.epil, label %bb.id, label %._crit_edge546

bb.id:                                            ; preds = %.epil.preheader
  store i32 -1, ptr %i.cdf, align 4, !tbaa !230
  br label %._crit_edge546

._crit_edge546:                                   ; preds = %.epil.preheader, %bb.id, %._crit_edge546.unr-lcssa
  %.val104 = load i32, ptr %i.dp, align 8, !tbaa !42 ; 2 uses
  %i.cdm = zext i32 %.val104 to i64               ; 2 uses
  %.idx.i297 = shl nuw nsw i64 %i.cdm, 2          ; 2 uses
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdc, i64 %.idx.i297 ; 4 uses
  %i.cdo = icmp eq i32 %.val104, 0
  br i1 %i.cdo, label %"_ZN4llvm11stable_sortIRNS_11SmallVectorIiLj8EEEZN12_GLOBAL__N_113StackColoring3runERNS_15MachineFunctionEbE3$_0EEvOT_T0_.exit", label %bb.ie

bb.ie:                                            ; preds = %._crit_edge546
  %i.cdp = add nuw nsw i64 %i.cdm, 1
  %i.cdq = lshr i64 %i.cdp, 1                     ; 6 uses
  br label %.lr.ph.i.i.i.i.i298

.lr.ph.i.i.i.i.i298:                              ; preds = %select.unfold.i.i.i.i.i, %bb.ie
  %.010.i.i.i.i.i = phi i64 [ %i.cdv, %select.unfold.i.i.i.i.i ], [ %i.cdq, %bb.ie ] ; 6 uses
  %i.cdr = shl nuw nsw i64 %.010.i.i.i.i.i, 2
  %i.cds = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.cdr, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 6 uses
  %.not.i.i.i.i.i299 = icmp eq ptr %i.cds, null
  br i1 %.not.i.i.i.i.i299, label %select.unfold.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i298
  %i.cdt = icmp eq i64 %.010.i.i.i.i.i, 1
  %i.cdu = add nuw nsw i64 %.010.i.i.i.i.i, 1
  %i.cdv = lshr i64 %i.cdu, 1
  br i1 %i.cdt, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread.i, label %.lr.ph.i.i.i.i.i298, !llvm.loop !424

_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i298
  %i.cdw = icmp eq i64 %i.cdq, %.010.i.i.i.i.i
  br i1 %i.cdw, label %bb.if, label %bb.ih, !prof !246

_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread.i: ; preds = %select.unfold.i.i.i.i.i
  %i.cdx = icmp eq i64 %i.cdq, 0
  br i1 %i.cdx, label %bb.if, label %bb.ig, !prof !246

bb.if:                                            ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread.i, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.i
  %.sroa.4.0.i.i7.i = phi i64 [ 0, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread.i ], [ %i.cdq, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.i ]
  %.idx1.i = shl nuw nsw i64 %i.cdq, 2            ; 2 uses
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cdc, i64 %.idx1.i ; 3 uses
  call fastcc void @"_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StackColoring3runERN4llvm15MachineFunctionEbE3$_0EEEvT_SB_T0_T1_"(ptr noundef %i.cdc, ptr noundef %i.cdy, ptr noundef %i.cds, ptr nonnull %0)
  call fastcc void @"_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StackColoring3runERN4llvm15MachineFunctionEbE3$_0EEEvT_SB_T0_T1_"(ptr noundef %i.cdy, ptr noundef nonnull %i.cdn, ptr noundef %i.cds, ptr nonnull %0)
  %gepdiff.i = sub nsw i64 %.idx.i297, %.idx1.i
  %i.cdz = ashr exact i64 %gepdiff.i, 2
  %i.cea = ptrtoint ptr %0 to i64
  call fastcc void @"_ZSt16__merge_adaptiveIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StackColoring3runERN4llvm15MachineFunctionEbE3$_0EEEvT_SB_SB_T0_SC_T1_T2_"(ptr noundef %i.cdc, ptr noundef %i.cdy, ptr noundef nonnull %i.cdn, i64 noundef %i.cdq, i64 noundef %i.cdz, ptr noundef %i.cds, i64 %i.cea)
  br label %bb.ii

bb.ig:                                            ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread.i
  call fastcc void @"_ZSt21__inplace_stable_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StackColoring3runERN4llvm15MachineFunctionEbE3$_0EEEvT_SB_T0_"(ptr noundef %i.cdc, ptr noundef nonnull %i.cdn, ptr nonnull %0)
  br label %bb.ii

bb.ih:                                            ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.i
  call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113StackColoring3runERN4llvm15MachineFunctionEbE3$_0EEEvT_SB_T0_T1_T2_"(ptr noundef %i.cdc, ptr noundef nonnull %i.cdn, ptr noundef nonnull %i.cds, i64 noundef %.010.i.i.i.i.i, ptr nonnull %0)
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %bb.if
  %.sroa.4.0.i.i5.i = phi i64 [ %.010.i.i.i.i.i, %bb.ih ], [ 0, %bb.ig ], [ %.sroa.4.0.i.i7.i, %bb.if ]
  %i.ceb = shl nuw nsw i64 %.sroa.4.0.i.i5.i, 2
  call void @_ZdlPvm(ptr noundef %i.cds, i64 noundef %i.ceb) #22
  br label %"_ZN4llvm11stable_sortIRNS_11SmallVectorIiLj8EEEZN12_GLOBAL__N_113StackColoring3runERNS_15MachineFunctionEbE3$_0EEvOT_T0_.exit"

"_ZN4llvm11stable_sortIRNS_11SmallVectorIiLj8EEEZN12_GLOBAL__N_113StackColoring3runERNS_15MachineFunctionEbE3$_0EEvOT_T0_.exit": ; preds = %._crit_edge546, %bb.ii
  %i.cec = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %i.ced = load i32, ptr %i.bn, align 8, !tbaa !42 ; 2 uses
  %i.cee = zext i32 %i.ced to i64
  %.idx = mul nuw nsw i64 %i.cee, 48
  %i.cef = getelementptr inbounds nuw i8, ptr %i.cec, i64 %.idx
  %.not102547 = icmp eq i32 %i.ced, 0
  br i1 %.not102547, label %.preheader418.us.preheader, label %.lr.ph549

bb.ij:                                            ; preds = %bb.in, %.lr.ph545.new
  %indvars.iv715 = phi i64 [ 0, %.lr.ph545.new ], [ %indvars.iv.next716.1, %bb.in ] ; 3 uses
  %niter1520 = phi i64 [ 0, %.lr.ph545.new ], [ %niter1520.next.1, %bb.in ]
  %i.ceg = getelementptr inbounds nuw [4 x i8], ptr %i.cdc, i64 %indvars.iv715 ; 2 uses
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !230
  %i.cei = sext i32 %i.ceh to i64
  %i.cej = getelementptr inbounds nuw [8 x i8], ptr %i.cdd, i64 %i.cei
  %i.cek = load ptr, ptr %i.cej, align 8, !tbaa !226
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cek, i64 8
  %i.cem = load i32, ptr %i.cel, align 8, !tbaa !42
  %.not.i.i300 = icmp eq i32 %i.cem, 0
  br i1 %.not.i.i300, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  store i32 -1, ptr %i.ceg, align 4, !tbaa !230
  br label %bb.il

bb.il:                                            ; preds = %bb.ij, %bb.ik
  %i.cen = getelementptr inbounds nuw [4 x i8], ptr %i.cdc, i64 %indvars.iv715
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 4 ; 2 uses
  %i.cep = load i32, ptr %i.ceo, align 4, !tbaa !230
  %i.ceq = sext i32 %i.cep to i64
  %i.cer = getelementptr inbounds nuw [8 x i8], ptr %i.cdd, i64 %i.ceq
  %i.ces = load ptr, ptr %i.cer, align 8, !tbaa !226
  %i.cet = getelementptr inbounds nuw i8, ptr %i.ces, i64 8
  %i.ceu = load i32, ptr %i.cet, align 8, !tbaa !42
  %.not.i.i300.1 = icmp eq i32 %i.ceu, 0
  br i1 %.not.i.i300.1, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  store i32 -1, ptr %i.ceo, align 4, !tbaa !230
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %indvars.iv.next716.1 = add nuw nsw i64 %indvars.iv715, 2 ; 2 uses
  %niter1520.next.1 = add i64 %niter1520, 2       ; 2 uses
  %niter1520.ncmp.1 = icmp eq i64 %niter1520.next.1, %unroll_iter1519
  br i1 %niter1520.ncmp.1, label %._crit_edge546.unr-lcssa, label %bb.ij, !llvm.loop !425

.preheader418.us.preheader:                       ; preds = %_ZN4llvm4sortIRNS_11SmallVectorINS_9SlotIndexELj4EEEEEvOT_.exit, %"_ZN4llvm11stable_sortIRNS_11SmallVectorIiLj8EEEZN12_GLOBAL__N_113StackColoring3runERNS_15MachineFunctionEbE3$_0EEvOT_T0_.exit"
  %i.cev = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 10 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 13 uses
  %i.cex = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 11 uses
  %wide.trip.count731 = zext i32 %i.dn to i64
  br label %.preheader418.us

.preheader418.us:                                 ; preds = %.loopexit.us, %.preheader418.us.preheader
  %indvars.iv728 = phi i64 [ %indvars.iv.next729.mux, %.loopexit.us ], [ 0, %.preheader418.us.preheader ] ; 3 uses
  %indvars.iv723 = phi i64 [ %indvars.iv.next724.mux, %.loopexit.us ], [ 1, %.preheader418.us.preheader ] ; 2 uses
  %.181561.us = phi i1 [ %.6.us.mux, %.loopexit.us ], [ false, %.preheader418.us.preheader ] ; 2 uses
  %i.cey = load ptr, ptr %24, align 8, !tbaa !35
  %i.cez = getelementptr inbounds nuw [4 x i8], ptr %i.cey, i64 %indvars.iv728
  %i.cfa = load i32, ptr %i.cez, align 4, !tbaa !230
  %i.cfb = icmp ne i32 %i.cfa, -1
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 3 uses
  %i.cfc = icmp samesign ult i64 %indvars.iv.next729, %i.dr
  %or.cond589 = select i1 %i.cfb, i1 %i.cfc, i1 false
  br i1 %or.cond589, label %.lr.ph555.us, label %.loopexit.us

.lr.ph555.us:                                     ; preds = %.preheader418.us, %bb.ka
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %bb.ka ], [ %indvars.iv723, %.preheader418.us ] ; 3 uses
  %.2553.us = phi i1 [ %.5.us, %bb.ka ], [ %.181561.us, %.preheader418.us ] ; 4 uses
  %i.cfd = load ptr, ptr %24, align 8, !tbaa !35  ; 2 uses
  %i.cfe = getelementptr inbounds nuw [4 x i8], ptr %i.cfd, i64 %indvars.iv725
  %i.cff = load i32, ptr %i.cfe, align 4, !tbaa !230 ; 10 uses
  %i.cfg = icmp eq i32 %i.cff, -1
  br i1 %i.cfg, label %bb.ka, label %bb.io

bb.io:                                            ; preds = %.lr.ph555.us
  %i.cfh = getelementptr inbounds nuw [4 x i8], ptr %i.cfd, i64 %indvars.iv728
  %i.cfi = load i32, ptr %i.cfh, align 4, !tbaa !230 ; 5 uses
  %i.cfj = load ptr, ptr %0, align 8, !tbaa !193  ; 2 uses
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cfj, i64 8
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfj, i64 32
  %i.cfm = load i32, ptr %i.cfl, align 8, !tbaa !224 ; 2 uses
  %i.cfn = add i32 %i.cfm, %i.cfi
  %i.cfo = zext i32 %i.cfn to i64
  %i.cfp = load ptr, ptr %i.cfk, align 8, !tbaa !206 ; 2 uses
  %i.cfq = getelementptr inbounds nuw [40 x i8], ptr %i.cfp, i64 %i.cfo
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfq, i64 21
  %i.cfs = load i8, ptr %i.cfr, align 1, !tbaa !662
  %i.cft = add i32 %i.cfm, %i.cff
  %i.cfu = zext i32 %i.cft to i64
  %i.cfv = getelementptr inbounds nuw [40 x i8], ptr %i.cfp, i64 %i.cfu
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfv, i64 21
  %i.cfx = load i8, ptr %i.cfw, align 1, !tbaa !662
  %.not103.us = icmp eq i8 %i.cfs, %i.cfx
  br i1 %.not103.us, label %bb.ip, label %bb.ka

bb.ip:                                            ; preds = %bb.io
  %i.cfy = sext i32 %i.cfi to i64                 ; 2 uses
  %i.cfz = load ptr, ptr %i.be, align 8, !tbaa !35 ; 2 uses
  %i.cga = getelementptr inbounds nuw [8 x i8], ptr %i.cfz, i64 %i.cfy
  %i.cgb = load ptr, ptr %i.cga, align 8, !tbaa !226 ; 3 uses
  %i.cgc = sext i32 %i.cff to i64                 ; 2 uses
  %i.cgd = getelementptr inbounds nuw [8 x i8], ptr %i.cfz, i64 %i.cgc
  %i.cge = load ptr, ptr %i.cgd, align 8, !tbaa !226 ; 2 uses
  %i.cgf = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 2 uses
  %i.cgg = getelementptr inbounds nuw [48 x i8], ptr %i.cgf, i64 %i.cfy ; 7 uses
  %i.cgh = getelementptr inbounds nuw [48 x i8], ptr %i.cgf, i64 %i.cgc ; 3 uses
  %i.cgi = load ptr, ptr %i.cgh, align 8, !tbaa !35
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgh, i64 8 ; 2 uses
  %i.cgk = load i32, ptr %i.cgj, align 8, !tbaa !42
  %i.cgl = zext i32 %i.cgk to i64
  %i.cgm = call noundef zeroext i1 @_ZNK4llvm9LiveRange15isLiveAtIndexesENS_8ArrayRefINS_9SlotIndexEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.cgb, ptr %i.cgi, i64 %i.cgl) #22
  br i1 %i.cgm, label %bb.ka, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.cgn = load ptr, ptr %i.cgg, align 8, !tbaa !35
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgg, i64 8 ; 5 uses
  %i.cgp = load i32, ptr %i.cgo, align 8, !tbaa !42
  %i.cgq = zext i32 %i.cgp to i64
  %i.cgr = call noundef zeroext i1 @_ZNK4llvm9LiveRange15isLiveAtIndexesENS_8ArrayRefINS_9SlotIndexEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.cge, ptr %i.cgn, i64 %i.cgq) #22
  br i1 %i.cgr, label %bb.ka, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgb, i64 64
  %i.cgt = load ptr, ptr %i.cgs, align 8, !tbaa !35
  %i.cgu = load ptr, ptr %i.cgt, align 8, !tbaa !626
  call void @_ZN4llvm9LiveRange22MergeSegmentsInAsValueERKS0_PNS_6VNInfoE(ptr noundef nonnull align 8 dereferenceable(104) %i.cgb, ptr noundef nonnull align 8 dereferenceable(104) %i.cge, ptr noundef %i.cgu) #22
  %i.cgv = load i32, ptr %i.cgo, align 8, !tbaa !42 ; 5 uses
  %i.cgw = zext i32 %i.cgv to i64                 ; 2 uses
  %i.cgx = load ptr, ptr %i.cgh, align 8, !tbaa !35
  %i.cgy = load i32, ptr %i.cgj, align 8, !tbaa !42 ; 3 uses
  %i.cgz = zext i32 %i.cgy to i64                 ; 2 uses
  %.idx.us = shl nuw nsw i64 %i.cgz, 3
  %i.cha = add nuw nsw i64 %i.cgz, %i.cgw         ; 2 uses
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cgg, i64 12
  %i.chc = load i32, ptr %i.chb, align 4, !tbaa !43
  %i.chd = zext i32 %i.chc to i64
  %i.che = icmp samesign ugt i64 %i.cha, %i.chd
  br i1 %i.che, label %bb.is, label %_ZN4llvm15SmallVectorImplINS_9SlotIndexEE7reserveEm.exit.i.us

bb.is:                                            ; preds = %bb.ir
  %i.chf = getelementptr inbounds nuw i8, ptr %i.cgg, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cgg, ptr noundef nonnull %i.chf, i64 noundef %i.cha, i64 noundef 8) #22
  %.pre8.pre.i.us = load i32, ptr %i.cgo, align 8, !tbaa !42
  br label %_ZN4llvm15SmallVectorImplINS_9SlotIndexEE7reserveEm.exit.i.us

_ZN4llvm15SmallVectorImplINS_9SlotIndexEE7reserveEm.exit.i.us: ; preds = %bb.is, %bb.ir
  %.pre8.i.us = phi i32 [ %i.cgv, %bb.ir ], [ %.pre8.pre.i.us, %bb.is ] ; 2 uses
  %.not.i.i301.us = icmp eq i32 %i.cgy, 0
  br i1 %.not.i.i301.us, label %_ZN4llvm15SmallVectorImplINS_9SlotIndexEE6appendIPS1_vEEvT_S5_.exit.us, label %bb.it

bb.it:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_9SlotIndexEE7reserveEm.exit.i.us
  %i.chg = load ptr, ptr %i.cgg, align 8, !tbaa !35
  %i.chh = zext i32 %.pre8.i.us to i64
  %i.chi = getelementptr inbounds nuw [8 x i8], ptr %i.chg, i64 %i.chh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.chi, ptr align 8 %i.cgx, i64 %.idx.us, i1 false)
  %.pre.i302.us = load i32, ptr %i.cgo, align 8, !tbaa !42
  br label %_ZN4llvm15SmallVectorImplINS_9SlotIndexEE6appendIPS1_vEEvT_S5_.exit.us

_ZN4llvm15SmallVectorImplINS_9SlotIndexEE6appendIPS1_vEEvT_S5_.exit.us: ; preds = %bb.it, %_ZN4llvm15SmallVectorImplINS_9SlotIndexEE7reserveEm.exit.i.us
  %i.chj = phi i32 [ %.pre8.i.us, %_ZN4llvm15SmallVectorImplINS_9SlotIndexEE7reserveEm.exit.i.us ], [ %.pre.i302.us, %bb.it ]
  %i.chk = add i32 %i.chj, %i.cgy                 ; 2 uses
  store i32 %i.chk, ptr %i.cgo, align 8, !tbaa !42
  %i.chl = load ptr, ptr %i.cgg, align 8, !tbaa !35 ; 10 uses
  %sext.us = shl nuw i64 %i.cgw, 32
  %i.chm = ashr exact i64 %sext.us, 29            ; 6 uses
  %i.chn = getelementptr inbounds i8, ptr %i.chl, i64 %i.chm ; 6 uses
  %i.cho = zext i32 %i.chk to i64
  %.idx407.us = shl nuw nsw i64 %i.cho, 3         ; 3 uses
  %i.chp = getelementptr inbounds nuw i8, ptr %i.chl, i64 %.idx407.us ; 4 uses
  %i.chq = icmp eq i32 %i.cgv, 0
  %i.chr = icmp eq i64 %i.chm, %.idx407.us
  %or.cond.i364.us = or i1 %i.chq, %i.chr
  br i1 %or.cond.i364.us, label %_ZSt15__inplace_mergeIPN4llvm9SlotIndexEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_.exit.us, label %bb.iu

bb.iu:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_9SlotIndexEE6appendIPS1_vEEvT_S5_.exit.us
  %i.chs = sext i32 %i.cgv to i64                 ; 4 uses
  %gepdiff.us = sub nsw i64 %.idx407.us, %i.chm   ; 5 uses
  %i.cht = ashr exact i64 %gepdiff.us, 3          ; 4 uses
  %.sroa.speculated.i.us = call i64 @llvm.smin.i64(i64 %i.cht, i64 %i.chs) ; 3 uses
  %i.chu = icmp sgt i64 %.sroa.speculated.i.us, 0
  br i1 %i.chu, label %.lr.ph.i.i.i365.us, label %_ZNSt17_Temporary_bufferIPN4llvm9SlotIndexES1_EC2ES2_l.exit.i.us

.lr.ph.i.i.i365.us:                               ; preds = %bb.iu, %select.unfold.i.i.i.us
  %.010.i.i.i.us = phi i64 [ %i.chz, %select.unfold.i.i.i.us ], [ %.sroa.speculated.i.us, %bb.iu ] ; 5 uses
  %i.chv = shl nuw nsw i64 %.010.i.i.i.us, 3      ; 3 uses
  %i.chw = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.chv, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #26 ; 8 uses
  %.not.i.i.i366.us = icmp eq ptr %i.chw, null
  br i1 %.not.i.i.i366.us, label %select.unfold.i.i.i.us, label %bb.iv

select.unfold.i.i.i.us:                           ; preds = %.lr.ph.i.i.i365.us
  %i.chx = icmp eq i64 %.010.i.i.i.us, 1
  %i.chy = add nuw nsw i64 %.010.i.i.i.us, 1
  %i.chz = lshr i64 %i.chy, 1
  br i1 %i.chx, label %_ZNSt17_Temporary_bufferIPN4llvm9SlotIndexES1_EC2ES2_l.exit.i.us, label %.lr.ph.i.i.i365.us, !llvm.loop !426

bb.iv:                                            ; preds = %.lr.ph.i.i.i365.us
  %i.cia = getelementptr inbounds nuw i8, ptr %i.chw, i64 %i.chv
  %i.cib = load i64, ptr %i.chl, align 8, !tbaa !255 ; 2 uses
  store i64 %i.cib, ptr %i.chw, align 8, !tbaa !255
  %.not19.i.i.i.i.us = icmp eq i64 %.010.i.i.i.us, 1
  br i1 %.not19.i.i.i.i.us, label %_ZSt29__uninitialized_construct_bufIPN4llvm9SlotIndexES2_EvT_S3_T0_.exit.i.i.us, label %.lr.ph.i.i.preheader.i.i.us

.lr.ph.i.i.preheader.i.i.us:                      ; preds = %bb.iv
  %.01518.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.chw, i64 8 ; 2 uses
  %load_initial = load i64, ptr %i.chw, align 8   ; 9 uses
  %i.cic = add nsw i64 %i.chv, -16                ; 2 uses
  %i.cid = lshr exact i64 %i.cic, 3
  %i.cie = add nuw nsw i64 %i.cid, 1
  %xtraiter1521 = and i64 %i.cie, 7               ; 2 uses
  %lcmp.mod1522.not = icmp eq i64 %xtraiter1521, 0
  br i1 %lcmp.mod1522.not, label %.lr.ph.i.i.i.i367.us.prol.loopexit, label %.lr.ph.i.i.i.i367.us.prol

.lr.ph.i.i.i.i367.us.prol:                        ; preds = %.lr.ph.i.i.preheader.i.i.us, %.lr.ph.i.i.i.i367.us.prol
  %.01521.i.i.i.i.us.prol = phi ptr [ %.015.i.i.i.i.us.prol, %.lr.ph.i.i.i.i367.us.prol ], [ %.01518.i.i.i.i.us, %.lr.ph.i.i.preheader.i.i.us ] ; 2 uses
  %.020.i.i.i.i368.us.prol = phi ptr [ %i.cif, %.lr.ph.i.i.i.i367.us.prol ], [ %i.chw, %.lr.ph.i.i.preheader.i.i.us ]
  %prol.iter1523 = phi i64 [ %prol.iter1523.next, %.lr.ph.i.i.i.i367.us.prol ], [ 0, %.lr.ph.i.i.preheader.i.i.us ]
  store i64 %load_initial, ptr %.01521.i.i.i.i.us.prol, align 8, !tbaa !255
  %i.cif = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i368.us.prol, i64 8 ; 3 uses
  %.015.i.i.i.i.us.prol = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us.prol, i64 8 ; 2 uses
  %prol.iter1523.next = add i64 %prol.iter1523, 1 ; 2 uses
  %prol.iter1523.cmp.not = icmp eq i64 %prol.iter1523.next, %xtraiter1521
  br i1 %prol.iter1523.cmp.not, label %.lr.ph.i.i.i.i367.us.prol.loopexit, label %.lr.ph.i.i.i.i367.us.prol, !llvm.loop !427

.lr.ph.i.i.i.i367.us.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i367.us.prol, %.lr.ph.i.i.preheader.i.i.us
  %.lcssa1428.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.us ], [ %i.cif, %.lr.ph.i.i.i.i367.us.prol ]
  %.01521.i.i.i.i.us.unr = phi ptr [ %.01518.i.i.i.i.us, %.lr.ph.i.i.preheader.i.i.us ], [ %.015.i.i.i.i.us.prol, %.lr.ph.i.i.i.i367.us.prol ]
  %.020.i.i.i.i368.us.unr = phi ptr [ %i.chw, %.lr.ph.i.i.preheader.i.i.us ], [ %i.cif, %.lr.ph.i.i.i.i367.us.prol ]
  %i.cig = icmp ult i64 %i.cic, 56
  br i1 %i.cig, label %._crit_edge.loopexit.i.i.i.i.us, label %.lr.ph.i.i.i.i367.us

.lr.ph.i.i.i.i367.us:                             ; preds = %.lr.ph.i.i.i.i367.us.prol.loopexit, %.lr.ph.i.i.i.i367.us
  %.01521.i.i.i.i.us = phi ptr [ %.015.i.i.i.i.us.7, %.lr.ph.i.i.i.i367.us ], [ %.01521.i.i.i.i.us.unr, %.lr.ph.i.i.i.i367.us.prol.loopexit ] ; 9 uses
  %.020.i.i.i.i368.us = phi ptr [ %i.cih, %.lr.ph.i.i.i.i367.us ], [ %.020.i.i.i.i368.us.unr, %.lr.ph.i.i.i.i367.us.prol.loopexit ]
  store i64 %load_initial, ptr %.01521.i.i.i.i.us, align 8, !tbaa !255
  %.015.i.i.i.i.us = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us, i64 8
  store i64 %load_initial, ptr %.015.i.i.i.i.us, align 8, !tbaa !255
  %.015.i.i.i.i.us.1 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us, i64 16
  store i64 %load_initial, ptr %.015.i.i.i.i.us.1, align 8, !tbaa !255
  %.015.i.i.i.i.us.2 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us, i64 24
  store i64 %load_initial, ptr %.015.i.i.i.i.us.2, align 8, !tbaa !255
  %.015.i.i.i.i.us.3 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us, i64 32
  store i64 %load_initial, ptr %.015.i.i.i.i.us.3, align 8, !tbaa !255
  %.015.i.i.i.i.us.4 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us, i64 40
  store i64 %load_initial, ptr %.015.i.i.i.i.us.4, align 8, !tbaa !255
  %.015.i.i.i.i.us.5 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us, i64 48
  store i64 %load_initial, ptr %.015.i.i.i.i.us.5, align 8, !tbaa !255
  %.015.i.i.i.i.us.6 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us, i64 56
  store i64 %load_initial, ptr %.015.i.i.i.i.us.6, align 8, !tbaa !255
  %i.cih = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i368.us, i64 64 ; 2 uses
  %.015.i.i.i.i.us.7 = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i.us, i64 64 ; 2 uses
end_hunk_2
