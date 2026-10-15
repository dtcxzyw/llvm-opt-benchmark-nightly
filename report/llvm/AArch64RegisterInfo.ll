Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64RegisterInfo?download=true
inline.NumInlined: 1717
inline.NumDeleted: 808
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixE:bb.a
_ZNK4llvm19MachineRegisterInfo9hasOneDefENS_8RegisterE.exit.thread9.i: ; preds = %.lr.ph.i.i.i.i
  %.old.i = icmp ult i64 %3, 2
  br i1 %.old.i, label %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo9hasOneDefENS_8RegisterE.exit.thread9.i, %_ZNK4llvm19MachineRegisterInfo9hasOneDefENS_8RegisterE.exit.i
  br i1 %.not.i.i.i.i.i.i, label %bb.bl, label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !19, !nonnull !187, !noundef !187
  br label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i

_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i: ; preds = %bb.bl, %bb.bk
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i.i, %bb.bk ], [ %i.jf, %bb.bl ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !480 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 52
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !427
  %i.jk = zext i32 %i.jj to i64
  %i.jl = sub nsw i64 0, %i.jk
  %i.jm = getelementptr inbounds [32 x i8], ptr %.val219, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !635
  %i.jp = and i64 %i.jo, 120
  %.not.i279 = icmp eq i64 %i.jp, 88
  br i1 %.not.i279, label %bb.bm, label %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread

bb.bm:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !428
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 36
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !19 ; 4 uses
  store i32 %i.jt, ptr %8, align 4
  %i.ju = icmp slt i32 %i.jt, 0
  br i1 %i.ju, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.jw = and i32 %i.jt, 2147483647
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !254
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jx
  %.sroa.02.0.copyload.i.i283 = load i32, ptr %i.jz, align 4, !tbaa !61 ; 2 uses
  store i32 %.sroa.02.0.copyload.i.i283, ptr %8, align 4, !tbaa !61
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ka = phi i32 [ %.sroa.02.0.copyload.i.i283, %bb.bn ], [ %i.jt, %bb.bm ]
  %.not483 = icmp eq i32 %i.ka, 0
  br i1 %.not483, label %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread462, label %bb.bp

_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread462: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.kb = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo18getCalleeSavedRegsEv(ptr noundef nonnull align 8 dereferenceable(520) %i.f) #22
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !21 ; 2 uses
  %.not1113.i = icmp eq i16 %i.kc, 0
  br i1 %.not1113.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bp, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i
  %.in.i = phi i16 [ %i.kw, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i ], [ %i.kc, %bb.bp ]
  %.02614.i = phi i32 [ %i.ks, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i ], [ 0, %bb.bp ]
  %i.kd = zext i16 %.in.i to i32                  ; 3 uses
  %i.ke = lshr i32 %i.kd, 3                       ; 2 uses
  %i.kf = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 722), align 2, !tbaa !68
  %i.kg = zext i16 %i.kf to i32
  %.not.i.i280 = icmp samesign ult i32 %i.ke, %i.kg
  br i1 %.not.i.i280, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %.lr.ph.i
  %i.kh = and i32 %i.kd, 7
  %i.ki = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 708), align 4, !tbaa !69
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 704), i64 %i.kj
  %i.kl = zext nneg i32 %i.ke to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !19
  %i.ko = zext i8 %i.kn to i32
  %i.kp = shl nuw nsw i32 1, %i.kh
  %i.kq = and i32 %i.kp, %i.ko
  %.not12.i282 = icmp eq i32 %i.kq, 0
  br i1 %.not12.i282, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.kd, ptr %i.b, align 4, !tbaa !61
  %i.kr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !637 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i: ; preds = %bb.bq, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, %.lr.ph.i
  %i.ks = add i32 %.02614.i, 1                    ; 2 uses
  %i.kt = call noundef ptr @_ZNK4llvm19MachineRegisterInfo18getCalleeSavedRegsEv(ptr noundef nonnull align 8 dereferenceable(520) %i.f) #22
  %i.ku = zext i32 %i.ks to i64
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !21 ; 2 uses
  %.not11.i281 = icmp eq i16 %i.kw, 0
  br i1 %.not11.i281, label %.critedge.i, label %.lr.ph.i, !llvm.loop !630

.critedge.i:                                      ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i, %bb.bp
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %3
  call void @_ZN4llvm15SmallVectorImplItE6appendIPKtvEEvT_S5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %2, ptr noundef %i.kx)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %9, ptr %10, align 8, !tbaa !638
  %i.ky = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.f, ptr %i.ky, align 8, !tbaa !639
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.a, ptr %i.kz, align 8, !tbaa !640
  %.val.i = load ptr, ptr %4, align 8, !tbaa !249
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val27.i = load i64, ptr %i.la, align 8, !tbaa !250
  call fastcc void @"_ZN4llvm11stable_sortIRNS_15SmallVectorImplItEEZL30HandleDestructivePredicateHintNS_8RegisterENS_8ArrayRefItEES3_PKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixEE3$_0EEvOT_T0_"(ptr %.val.i, i64 %.val27.i, ptr %8, ptr %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !495 ; 2 uses
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit, label %bb.br

bb.br:                                            ; preds = %.critedge.i
  %i.le = load ptr, ptr %9, align 8, !tbaa !496
  %i.lf = zext i32 %i.lc to i64                   ; 2 uses
  %i.lg = add nuw nsw i64 %i.lf, 31
  %i.lh = lshr i64 %i.lg, 5
  %i.li = add nuw nsw i64 %i.lh, %i.lf
  %i.lj = shl nuw nsw i64 %i.li, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.le, i64 noundef %i.lj, i64 noundef 4) #22
  br label %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit

_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit: ; preds = %.critedge.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit510

_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread: ; preds = %bb.bi, %bb.bg, %bb.bj, %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit.i.i, %bb.bf, %_ZNK4llvm19MachineRegisterInfo9hasOneDefENS_8RegisterE.exit.i, %_ZNK4llvm19MachineRegisterInfo9hasOneDefENS_8RegisterE.exit.thread9.i, %bb.be, %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  %i.ll = load i8, ptr %i.lk, align 8, !tbaa !407, !range !247, !noundef !187
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread
  %i.ln = getelementptr inbounds nuw i8, ptr %i.d, i64 865
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !394, !range !247, !noundef !187
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZL30HandleDestructivePredicateHintN4llvm8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEEPKNS_10VirtRegMapERKNS_19MachineRegisterInfoERKNS_15TargetInstrInfoERKNS_16AArch64SubtargetEPKNS_13LiveRegMatrixE.exit.thread
  %i.lq = tail call noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(1065) %5, ptr noundef %6, ptr noundef null) #22
  br label %.loopexit510

bb.bu:                                            ; preds = %bb.bs
  %i.lr = load i16, ptr %i.o, align 4, !tbaa !53  ; 2 uses
  switch i16 %i.lr, label %..thread480_crit_edge [
    i16 302, label %bb.bv
    i16 129, label %bb.bv
  ]

..thread480_crit_edge:                            ; preds = %bb.bu
  %.pre579 = zext nneg i32 %1 to i64
  br label %.thread480

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %i.ls = icmp slt i32 %1, 0
  %i.lt = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 2 uses
  %i.lv = zext nneg i32 %1 to i64                 ; 4 uses
  %i.lw = load ptr, ptr %i.lu, align 8
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lv
  %.0.in.i.i.i284 = select i1 %i.ls, ptr %i.lt, ptr %i.lx
  %.0.i.i.i285 = load ptr, ptr %.0.in.i.i.i284, align 8, !tbaa !488 ; 4 uses
  %.not.i.i.i286 = icmp eq ptr %.0.i.i.i285, null
  br i1 %.not.i.i.i286, label %.thread480, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ly = load i32, ptr %.0.i.i.i285, align 8
  %i.lz = and i32 %i.ly, -2130706432
  %or.cond.not.i.i.i = icmp eq i32 %i.lz, 0
  br i1 %or.cond.not.i.i.i, label %.lr.ph552, label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %bb.bw, %bb.bx
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.bx ], [ %.0.i.i.i285, %bb.bw ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !19 ; 4 uses
  %.not.i.i.i.i287 = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i287, label %.thread480, label %bb.bx

bb.bx:                                            ; preds = %.critedge2.i.i.i.i
  %i.ma = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.mb = and i32 %i.ma, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.mb, 0
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph552, label %.critedge2.i.i.i.i, !llvm.loop !4

.lr.ph552:                                        ; preds = %bb.bx, %bb.bw
  %.sroa.0.0.i.i288 = phi ptr [ %.0.i.i.i285, %bb.bw ], [ %storemerge.i.i.i.i, %bb.bx ]
  %i.mc = icmp eq i16 %i.lr, 129
  %. = select i1 %i.mc, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 8576), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 20992) ; 14 uses
  %i.md = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.idx561 = shl nuw nsw i64 %3, 1
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx561
  %.not194537 = icmp eq i64 %3, 0
  %i.mh = getelementptr inbounds nuw i8, ptr %., i64 18 ; 12 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %., i64 4 ; 12 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i, %.lr.ph552
  %.sroa.0365.0548 = phi ptr [ %.sroa.0.0.i.i288, %.lr.ph552 ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0365.0548, i64 8 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !480 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 52 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !427
  %.not191 = icmp eq i32 %i.mn, 538
  br i1 %.not191, label %bb.by, label %.thread476

bb.by:                                            ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 32 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !428 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8
  %i.ms = and i32 %i.mr, 1048320
  %.not192 = icmp eq i32 %i.ms, 0
  br i1 %.not192, label %.thread476, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mt = load i32, ptr %i.mp, align 8
  %i.mu = and i32 %i.mt, 1048320
  %.not193 = icmp eq i32 %i.mu, 0
  br i1 %.not193, label %.thread476, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.md, ptr %11, align 8, !tbaa !249
  store i64 0, ptr %i.me, align 8, !tbaa !250
  store i64 4, ptr %i.mf, align 8, !tbaa !251
  br i1 %.not194537, label %._crit_edge541, label %.lr.ph540.a

._crit_edge541:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit, %bb.ca
  %i.mv = load ptr, ptr %i.mo, align 8, !tbaa !428
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 80
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !19 ; 2 uses
  %i.my = trunc i64 %i.mx to i32
  %i.mz = load i32, ptr %i.mp, align 8
  %i.na = lshr i32 %i.mz, 8
  %i.nb = and i32 %i.na, 4095                     ; 2 uses
  %i.nc = add nsw i32 %i.nb, -44                  ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !19 ; 3 uses
  %i.nf = and i32 %i.ne, 2147483647
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = load ptr, ptr %i.h, align 8, !tbaa !254
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %i.ng ; 2 uses
  %.0.copyload.i.i.i.i.i.i293 = load i64, ptr %i.ni, align 8
  %i.nj = and i64 %.0.copyload.i.i.i.i.i.i293, -5
  %i.nk = inttoptr i64 %i.nj to ptr
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  %i.nm = load i16, ptr %i.nl, align 4, !tbaa !53
  %i.nn = icmp slt i32 %i.ne, 0
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.np = zext nneg i32 %i.ne to i64
  %i.nq = load ptr, ptr %i.lu, align 8
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.np
  %.0.in.i.i.i294 = select i1 %i.nn, ptr %i.no, ptr %i.nr
  %.0.i.i.i295 = load ptr, ptr %.0.in.i.i.i294, align 8, !tbaa !488 ; 4 uses
  %.not.i.i.i296 = icmp eq ptr %.0.i.i.i295, null
  br i1 %.not.i.i.i296, label %"_ZN4llvm7find_ifIRNS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_0EEDaOT_T0_.exit", label %bb.cb

bb.cb:                                            ; preds = %._crit_edge541
  %i.ns = load i32, ptr %.0.i.i.i295, align 8
  %i.nt = and i32 %i.ns, 16777216
  %.not.i.i.i.i297 = icmp eq i32 %i.nt, 0
  br i1 %.not.i.i.i.i297, label %bb.cc, label %.lr.ph.i.i.i.i304

bb.cc:                                            ; preds = %bb.cb
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.i.i.i295, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !19 ; 3 uses
  %.not.i4.i.i.i301 = icmp eq ptr %i.nv, null
  br i1 %.not.i4.i.i.i301, label %"_ZN4llvm7find_ifIRNS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_0EEDaOT_T0_.exit", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nw = load i32, ptr %i.nv, align 8
  %i.nx = and i32 %i.nw, 16777216
  %.not.i.i.i.i.i302 = icmp eq i32 %i.nx, 0
  br i1 %.not.i.i.i.i.i302, label %"_ZN4llvm7find_ifIRNS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_0EEDaOT_T0_.exit", label %.lr.ph.i.i.i.i304

.lr.ph.i.i.i.i304:                                ; preds = %bb.cb, %bb.cd
  %.sroa.0.0.i.i298 = phi ptr [ %.0.i.i.i295, %bb.cb ], [ %i.nv, %bb.cd ] ; 2 uses
  %.val.val.i.i.i.i = load i32, ptr %i.mm, align 4, !tbaa !427
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i298, i64 8
  %.pre578 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !480
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i304
  %i.ny = phi ptr [ %.pre578, %.lr.ph.i.i.i.i304 ], [ %i.on, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %.sroa.0.0.i.i298, %.lr.ph.i.i.i.i304 ], [ %i.oj, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i ]
  %i.nz = getelementptr i8, ptr %i.ny, i64 52
  %.val3.i.i.i.i.i = load i32, ptr %i.nz, align 4, !tbaa !427
  %i.oa = icmp eq i32 %.val3.i.i.i.i.i, %.val.val.i.i.i.i
  br i1 %i.oa, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.preheader"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i": ; preds = %bb.ce
  %i.ob = getelementptr i8, ptr %i.ny, i64 32
  %.val2.i.i.i.i.i = load ptr, ptr %i.ob, align 8, !tbaa !428 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 36
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !19
  %i.oe = and i32 %i.od, 2147483647
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = load ptr, ptr %i.mj, align 8, !tbaa !254
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.of
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.oh, align 4, !tbaa !61 ; 2 uses
  %.not6.i.i.i.i = icmp eq i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not6.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.preheader", label %bb.dl

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i", %bb.ce
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.preheader", %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i
  %.pr3.i.i.i.i.i = phi ptr [ %i.oj, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.preheader" ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.pr3.i.i.i.i.i, i64 24
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !19 ; 5 uses
  %.not.i.i.i.i.i.i305 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i.i305, label %"_ZN4llvm7find_ifIRNS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_0EEDaOT_T0_.exit", label %bb.cf

bb.cf:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i"
  %i.ok = load i32, ptr %i.oj, align 8
  %i.ol = and i32 %i.ok, 16777216
  %.not.i.i.i.i.i.i.i306 = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i.i.i.i.i.i306, label %"_ZN4llvm7find_ifIRNS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_0EEDaOT_T0_.exit", label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i: ; preds = %bb.cf
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !480 ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.ny
  br i1 %i.oo, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i", label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i, !llvm.loop !5

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i
  br label %bb.ce, !llvm.loop !631

"_ZN4llvm7find_ifIRNS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_0EEDaOT_T0_.exit": ; preds = %bb.cf, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i", %bb.cd, %bb.cc, %._crit_edge541
  %i.op = load i64, ptr %i.me, align 8, !tbaa !250
  %.not563 = icmp eq i64 %i.op, 0
  br i1 %.not563, label %.loopexit508, label %.lr.ph546

.lr.ph546:                                        ; preds = %"_ZN4llvm7find_ifIRNS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_0EEDaOT_T0_.exit"
  %i.oq = and i64 %i.mx, 4294967295               ; 4 uses
  %i.or = lshr i64 %i.oq, 2                       ; 3 uses
  %.not490 = icmp eq i64 %i.or, 0
  %.not662 = icmp eq i64 %i.or, 1
  br label %bb.cj

.lr.ph540.a:                                      ; preds = %bb.ca, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit
  %.0188538 = phi ptr [ %i.pl, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit ], [ %2, %bb.ca ] ; 2 uses
  %i.os = load i16, ptr %.0188538, align 2, !tbaa !21 ; 3 uses
  %i.ot = zext i16 %i.os to i32                   ; 2 uses
  %i.ou = lshr i32 %i.ot, 3                       ; 2 uses
  %.val486 = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.ov = zext i16 %.val486 to i32
  %.not.i309 = icmp samesign ult i32 %i.ou, %i.ov
  br i1 %.not.i309, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %.lr.ph540.a
  %i.ow = and i32 %i.ot, 7
  %.val488 = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.ox = zext i32 %.val488 to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %., i64 %i.ox
  %i.oz = zext nneg i32 %i.ou to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !19
  %i.pc = zext i8 %i.pb to i32
  %i.pd = shl nuw nsw i32 1, %i.ow
  %i.pe = and i32 %i.pd, %i.pc
  %.not489 = icmp eq i32 %i.pe, 0
  br i1 %.not489, label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %i.pf = load i64, ptr %i.me, align 8, !tbaa !250 ; 2 uses
  %i.pg = load i64, ptr %i.mf, align 8, !tbaa !251
  %.not.i310 = icmp ult i64 %i.pf, %i.pg
  br i1 %.not.i310, label %bb.ci, label %bb.ch, !prof !252

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %11, i16 noundef zeroext %i.os)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

bb.ci:                                            ; preds = %bb.cg
  %i.ph = load ptr, ptr %11, align 8, !tbaa !249
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %i.pf
  store i16 %i.os, ptr %i.pi, align 1
  %i.pj = load i64, ptr %i.me, align 8, !tbaa !250
  %i.pk = add i64 %i.pj, 1
  store i64 %i.pk, ptr %i.me, align 8, !tbaa !250
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit: ; preds = %.lr.ph540.a, %bb.ci, %bb.ch, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %i.pl = getelementptr inbounds nuw i8, ptr %.0188538, i64 2 ; 2 uses
  %.not194 = icmp eq ptr %i.pl, %i.mg
  br i1 %.not194, label %._crit_edge541, label %.lr.ph540.a

bb.cj:                                            ; preds = %.lr.ph546, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313
  %i.pm = phi i64 [ 0, %.lr.ph546 ], [ %i.za, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313 ]
  %.0186545 = phi i32 [ 0, %.lr.ph546 ], [ %i.yz, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313 ]
  %i.pn = load ptr, ptr %11, align 8, !tbaa !249
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %i.pm
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !21 ; 7 uses
  switch i16 %i.nm, label %.critedge [
    i16 327, label %bb.ck
    i16 133, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj
  %i.pq = load i32, ptr %i.mq, align 8
  %i.pr = lshr i32 %i.pq, 8
  %i.ps = and i32 %i.pr, 4095
  %i.pt = zext i16 %i.pp to i32
  %i.pu = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.pt, i32 noundef %i.ps) #22
  %i.pv = add i32 %i.pu, -268
  %i.pw = urem i32 %i.pv, %i.my
  %.not197 = icmp eq i32 %i.pw, %i.nc
  br i1 %.not197, label %.critedge, label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313

.critedge:                                        ; preds = %bb.cj, %bb.ck
  br i1 %.not490, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.critedge
  %i.px = zext i16 %i.pp to i32
  %i.py = sub nsw i32 %i.px, %i.nc                ; 13 uses
  %i.pz = lshr i32 %i.py, 3                       ; 2 uses
  %i.qa = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.qb = zext i16 %i.qa to i32
  %.not.i.i.i.i.i.i.i.i.peel = icmp samesign ult i32 %i.pz, %i.qb
  br i1 %.not.i.i.i.i.i.i.i.i.peel, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i.peel, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i.peel: ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.qc = and i32 %i.py, 7
  %i.qd = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %., i64 %i.qe
  %i.qg = zext nneg i32 %i.pz to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !19
  %i.qj = zext i8 %i.qi to i32
  %i.qk = shl nuw nsw i32 1, %i.qc
  %i.ql = and i32 %i.qk, %i.qj
  %.not.i.i.i.i.i.i.i311.peel = icmp eq i32 %i.ql, 0
  br i1 %.not.i.i.i.i.i.i.i311.peel, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i.peel"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i.peel": ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i.peel
  %i.qm = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.py) #22
  br i1 %i.qm, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cl

bb.cl:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i.peel"
  %i.qn = add nsw i32 %i.py, 1                    ; 4 uses
  %i.qo = lshr i32 %i.qn, 3                       ; 2 uses
  %i.qp = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.qq = zext i16 %i.qp to i32
  %.not.i.i.i16.i.i.i.i.i.peel = icmp samesign ult i32 %i.qo, %i.qq
  br i1 %.not.i.i.i16.i.i.i.i.i.peel, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i.peel, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i.peel: ; preds = %bb.cl
  %i.qr = and i32 %i.qn, 7
  %i.qs = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %., i64 %i.qt
  %i.qv = zext nneg i32 %i.qo to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !19
  %i.qy = zext i8 %i.qx to i32
  %i.qz = shl nuw nsw i32 1, %i.qr
  %i.ra = and i32 %i.qz, %i.qy
  %.not.i.i18.i.i.i.i.i.peel = icmp eq i32 %i.ra, 0
  br i1 %.not.i.i18.i.i.i.i.i.peel, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cm

bb.cm:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i.peel
  %i.rb = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.qn, i32 noundef 44) #22
  %i.rc = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.py, i32 noundef 44) #22
  %i.rd = add i32 %i.rb, -1
  %i.re = icmp eq i32 %i.rd, %i.rc
  br i1 %i.re, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i.peel", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i.peel": ; preds = %bb.cm
  %i.rf = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.qn) #22
  br i1 %i.rf, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cn

bb.cn:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i.peel"
  %i.rg = add nsw i32 %i.py, 2                    ; 4 uses
  %i.rh = lshr i32 %i.rg, 3                       ; 2 uses
  %i.ri = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.rj = zext i16 %i.ri to i32
  %.not.i.i.i20.i.i.i.i.i.peel = icmp samesign ult i32 %i.rh, %i.rj
  br i1 %.not.i.i.i20.i.i.i.i.i.peel, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i.peel, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i.peel: ; preds = %bb.cn
  %i.rk = and i32 %i.rg, 7
  %i.rl = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %., i64 %i.rm
  %i.ro = zext nneg i32 %i.rh to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.ro
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !19
  %i.rr = zext i8 %i.rq to i32
  %i.rs = shl nuw nsw i32 1, %i.rk
  %i.rt = and i32 %i.rs, %i.rr
  %.not.i.i22.i.i.i.i.i.peel = icmp eq i32 %i.rt, 0
  br i1 %.not.i.i22.i.i.i.i.i.peel, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.co

bb.co:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i.peel
  %i.ru = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.rg, i32 noundef 44) #22
  %i.rv = add nsw i32 %i.py, 1
  %i.rw = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.rv, i32 noundef 44) #22
  %i.rx = add i32 %i.ru, -1
  %i.ry = icmp eq i32 %i.rx, %i.rw
  br i1 %i.ry, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i.peel", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i.peel": ; preds = %bb.co
  %i.rz = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.rg) #22
  br i1 %i.rz, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cp

bb.cp:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i.peel"
  %i.sa = add nsw i32 %i.py, 3                    ; 4 uses
  %i.sb = lshr i32 %i.sa, 3                       ; 2 uses
  %i.sc = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.sd = zext i16 %i.sc to i32
  %.not.i.i.i24.i.i.i.i.i.peel = icmp samesign ult i32 %i.sb, %i.sd
  br i1 %.not.i.i.i24.i.i.i.i.i.peel, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i.peel, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i.peel: ; preds = %bb.cp
  %i.se = and i32 %i.sa, 7
  %i.sf = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %., i64 %i.sg
  %i.si = zext nneg i32 %i.sb to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.si
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !19
  %i.sl = zext i8 %i.sk to i32
  %i.sm = shl nuw nsw i32 1, %i.se
  %i.sn = and i32 %i.sm, %i.sl
  %.not.i.i26.i.i.i.i.i.peel = icmp eq i32 %i.sn, 0
  br i1 %.not.i.i26.i.i.i.i.i.peel, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cq

bb.cq:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i.peel
  %i.so = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.sa, i32 noundef 44) #22
  %i.sp = add nsw i32 %i.py, 2
  %i.sq = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.sp, i32 noundef 44) #22
  %i.sr = add i32 %i.so, -1
  %i.ss = icmp eq i32 %i.sr, %i.sq
  br i1 %i.ss, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i.peel", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i.peel": ; preds = %bb.cq
  %i.st = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.sa) #22
  br i1 %i.st, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cr

bb.cr:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i.peel"
  br i1 %.not662, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cr, %bb.cz
  %.071.i.i.i.i.i.in = phi i64 [ %.071.i.i.i.i.i, %bb.cz ], [ %i.or, %bb.cr ] ; 2 uses
  %.sroa.046.070.i.i.i.i.i = phi i64 [ %i.wd, %bb.cz ], [ 4, %bb.cr ] ; 9 uses
  %.071.i.i.i.i.i = add nsw i64 %.071.i.i.i.i.i.in, -1
  %i.su = trunc i64 %.sroa.046.070.i.i.i.i.i to i32
  %i.sv = add i32 %i.py, %i.su                    ; 5 uses
  %i.sw = lshr i32 %i.sv, 3                       ; 2 uses
  %i.sx = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.sy = zext i16 %i.sx to i32
  %.not.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.sw, %i.sy
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.sz = and i32 %i.sv, 7
  %i.ta = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %., i64 %i.tb
  %i.td = zext nneg i32 %i.sw to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !19
  %i.tg = zext i8 %i.tf to i32
  %i.th = shl nuw nsw i32 1, %i.sz
  %i.ti = and i32 %i.th, %i.tg
  %.not.i.i.i.i.i.i.i311 = icmp eq i32 %i.ti, 0
  br i1 %.not.i.i.i.i.i.i.i311, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cs

bb.cs:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i
  %i.tj = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.sv, i32 noundef 44) #22
  %i.tk = add i32 %i.sv, -1
  %i.tl = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.tk, i32 noundef 44) #22
  %i.tm = add i32 %i.tj, -1
  %i.tn = icmp eq i32 %i.tm, %i.tl
  br i1 %i.tn, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i": ; preds = %bb.cs
  %i.to = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.sv) #22
  br i1 %i.to, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.ct

bb.ct:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i"
  %i.tp = or disjoint i64 %.sroa.046.070.i.i.i.i.i, 1 ; 5 uses
  %i.tq = trunc i64 %i.tp to i32
  %i.tr = add i32 %i.py, %i.tq                    ; 5 uses
  %i.ts = lshr i32 %i.tr, 3                       ; 2 uses
  %i.tt = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.tu = zext i16 %i.tt to i32
  %.not.i.i.i16.i.i.i.i.i = icmp samesign ult i32 %i.ts, %i.tu
  br i1 %.not.i.i.i16.i.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i: ; preds = %bb.ct
  %i.tv = and i32 %i.tr, 7
  %i.tw = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.tx = zext i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %., i64 %i.tx
  %i.tz = zext nneg i32 %i.ts to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !19
  %i.uc = zext i8 %i.ub to i32
  %i.ud = shl nuw nsw i32 1, %i.tv
  %i.ue = and i32 %i.ud, %i.uc
  %.not.i.i18.i.i.i.i.i = icmp eq i32 %i.ue, 0
  br i1 %.not.i.i18.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cu

bb.cu:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i
  %i.uf = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.tr, i32 noundef 44) #22
  %i.ug = add i32 %i.tr, -1
  %i.uh = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.ug, i32 noundef 44) #22
  %i.ui = add i32 %i.uf, -1
  %i.uj = icmp eq i32 %i.ui, %i.uh
  br i1 %i.uj, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i": ; preds = %bb.cu
  %i.uk = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.tr) #22
  br i1 %i.uk, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cv

bb.cv:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i"
  %i.ul = or disjoint i64 %.sroa.046.070.i.i.i.i.i, 2 ; 5 uses
  %i.um = trunc i64 %i.ul to i32
  %i.un = add i32 %i.py, %i.um                    ; 5 uses
  %i.uo = lshr i32 %i.un, 3                       ; 2 uses
  %i.up = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.uq = zext i16 %i.up to i32
  %.not.i.i.i20.i.i.i.i.i = icmp samesign ult i32 %i.uo, %i.uq
  br i1 %.not.i.i.i20.i.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i: ; preds = %bb.cv
  %i.ur = and i32 %i.un, 7
  %i.us = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.ut = zext i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw i8, ptr %., i64 %i.ut
  %i.uv = zext nneg i32 %i.uo to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !19
  %i.uy = zext i8 %i.ux to i32
  %i.uz = shl nuw nsw i32 1, %i.ur
  %i.va = and i32 %i.uz, %i.uy
  %.not.i.i22.i.i.i.i.i = icmp eq i32 %i.va, 0
  br i1 %.not.i.i22.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cw

bb.cw:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i
  %i.vb = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.un, i32 noundef 44) #22
  %i.vc = add i32 %i.un, -1
  %i.vd = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.vc, i32 noundef 44) #22
  %i.ve = add i32 %i.vb, -1
  %i.vf = icmp eq i32 %i.ve, %i.vd
  br i1 %i.vf, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i": ; preds = %bb.cw
  %i.vg = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.un) #22
  br i1 %i.vg, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cx

bb.cx:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i"
  %i.vh = or disjoint i64 %.sroa.046.070.i.i.i.i.i, 3 ; 5 uses
  %i.vi = trunc i64 %i.vh to i32
  %i.vj = add i32 %i.py, %i.vi                    ; 5 uses
  %i.vk = lshr i32 %i.vj, 3                       ; 2 uses
  %i.vl = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.vm = zext i16 %i.vl to i32
  %.not.i.i.i24.i.i.i.i.i = icmp samesign ult i32 %i.vk, %i.vm
  br i1 %.not.i.i.i24.i.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i: ; preds = %bb.cx
  %i.vn = and i32 %i.vj, 7
  %i.vo = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.vp = zext i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %., i64 %i.vp
  %i.vr = zext nneg i32 %i.vk to i64
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.vr
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !19
  %i.vu = zext i8 %i.vt to i32
  %i.vv = shl nuw nsw i32 1, %i.vn
  %i.vw = and i32 %i.vv, %i.vu
  %.not.i.i26.i.i.i.i.i = icmp eq i32 %i.vw, 0
  br i1 %.not.i.i26.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cy

bb.cy:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i
  %i.vx = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.vj, i32 noundef 44) #22
  %i.vy = add i32 %i.vj, -1
  %i.vz = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.vy, i32 noundef 44) #22
  %i.wa = add i32 %i.vx, -1
  %i.wb = icmp eq i32 %i.wa, %i.vz
  br i1 %i.wb, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i": ; preds = %bb.cy
  %i.wc = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.vj) #22
  br i1 %i.wc, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.cz

bb.cz:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i"
  %i.wd = add nuw nsw i64 %.sroa.046.070.i.i.i.i.i, 4 ; 2 uses
  %i.we = icmp sgt i64 %.071.i.i.i.i.i.in, 2
  br i1 %i.we, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !632

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cz, %bb.cr, %.critedge
  %.sroa.046.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.critedge ], [ 4, %bb.cr ], [ %i.wd, %bb.cz ] ; 9 uses
  %i.wf = sub i64 %i.oq, %.sroa.046.0.lcssa.i.i.i.i.i
  switch i64 %i.wf, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit.thread" [
    i64 3, label %bb.da
    i64 2, label %._crit_edge.i.i.i.i.i.._crit_edge._crit_edge.i.i.i.i.i_crit_edge
    i64 1, label %._crit_edge.i.i.i.i.i.._crit_edge._crit_edge77.i.i.i.i.i_crit_edge
  ]

._crit_edge.i.i.i.i.i.._crit_edge._crit_edge.i.i.i.i.i_crit_edge: ; preds = %._crit_edge.i.i.i.i.i
  %.pre580 = zext i16 %i.pp to i32
  %.pre582 = sub nsw i32 %.pre580, %i.nc
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i.._crit_edge._crit_edge77.i.i.i.i.i_crit_edge: ; preds = %._crit_edge.i.i.i.i.i
  %.pre584 = zext i16 %i.pp to i32
  %.pre586 = sub nsw i32 %.pre584, %i.nc
  br label %._crit_edge._crit_edge77.i.i.i.i.i

bb.da:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.wg = trunc i64 %.sroa.046.0.lcssa.i.i.i.i.i to i32 ; 2 uses
  %i.wh = zext i16 %i.pp to i32
  %i.wi = sub nsw i32 %i.wh, %i.nc                ; 2 uses
  %i.wj = add i32 %i.wi, %i.wg                    ; 5 uses
  %i.wk = lshr i32 %i.wj, 3                       ; 2 uses
  %.val492 = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.wl = zext i16 %.val492 to i32
  %.not.i.i.i29.i.i.i.i.i = icmp samesign ult i32 %i.wk, %i.wl
  br i1 %.not.i.i.i29.i.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i30.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i30.i.i.i.i.i: ; preds = %bb.da
  %i.wm = and i32 %i.wj, 7
  %.val494 = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.wn = zext i32 %.val494 to i64
  %i.wo = getelementptr inbounds nuw i8, ptr %., i64 %i.wn
  %i.wp = zext nneg i32 %i.wk to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 %i.wp
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !19
  %i.ws = zext i8 %i.wr to i32
  %i.wt = shl nuw nsw i32 1, %i.wm
  %i.wu = and i32 %i.wt, %i.ws
  %.not.i.i31.i.i.i.i.i = icmp eq i32 %i.wu, 0
  br i1 %.not.i.i31.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.db

bb.db:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i30.i.i.i.i.i
  %i.wv = icmp eq i32 %i.wg, 0
  br i1 %i.wv, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit32.i.i.i.i.i", label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ww = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.wj, i32 noundef 44) #22
  %i.wx = add i32 %i.wj, -1
  %i.wy = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.wx, i32 noundef 44) #22
  %i.wz = add i32 %i.ww, -1
  %i.xa = icmp eq i32 %i.wz, %i.wy
  br i1 %i.xa, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit32.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit32.i.i.i.i.i": ; preds = %bb.dc, %bb.db
  %i.xb = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.wj) #22
  br i1 %i.xb, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.dd

bb.dd:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit32.i.i.i.i.i"
  %i.xc = add i64 %.sroa.046.0.lcssa.i.i.i.i.i, 1
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i.._crit_edge._crit_edge.i.i.i.i.i_crit_edge, %bb.dd
  %.pre-phi583 = phi i32 [ %.pre582, %._crit_edge.i.i.i.i.i.._crit_edge._crit_edge.i.i.i.i.i_crit_edge ], [ %i.wi, %bb.dd ] ; 2 uses
  %.sroa.046.1.i.i.i.i.i = phi i64 [ %.sroa.046.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i.._crit_edge._crit_edge.i.i.i.i.i_crit_edge ], [ %i.xc, %bb.dd ] ; 6 uses
  %i.xd = trunc i64 %.sroa.046.1.i.i.i.i.i to i32 ; 2 uses
  %i.xe = add i32 %.pre-phi583, %i.xd             ; 5 uses
  %i.xf = lshr i32 %i.xe, 3                       ; 2 uses
  %.val496 = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.xg = zext i16 %.val496 to i32
  %.not.i.i.i33.i.i.i.i.i = icmp samesign ult i32 %i.xf, %i.xg
  br i1 %.not.i.i.i33.i.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i34.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i34.i.i.i.i.i: ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.xh = and i32 %i.xe, 7
  %.val498 = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.xi = zext i32 %.val498 to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %., i64 %i.xi
  %i.xk = zext nneg i32 %i.xf to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !19
  %i.xn = zext i8 %i.xm to i32
  %i.xo = shl nuw nsw i32 1, %i.xh
  %i.xp = and i32 %i.xo, %i.xn
  %.not.i.i35.i.i.i.i.i = icmp eq i32 %i.xp, 0
  br i1 %.not.i.i35.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.de

bb.de:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i34.i.i.i.i.i
  %i.xq = icmp eq i32 %i.xd, 0
  br i1 %i.xq, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit36.i.i.i.i.i", label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xr = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.xe, i32 noundef 44) #22
  %i.xs = add i32 %i.xe, -1
  %i.xt = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.xs, i32 noundef 44) #22
  %i.xu = add i32 %i.xr, -1
  %i.xv = icmp eq i32 %i.xu, %i.xt
  br i1 %i.xv, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit36.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit36.i.i.i.i.i": ; preds = %bb.df, %bb.de
  %i.xw = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.xe) #22
  br i1 %i.xw, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.dg

bb.dg:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit36.i.i.i.i.i"
  %i.xx = add i64 %.sroa.046.1.i.i.i.i.i, 1
  br label %._crit_edge._crit_edge77.i.i.i.i.i

._crit_edge._crit_edge77.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.._crit_edge._crit_edge77.i.i.i.i.i_crit_edge, %bb.dg
  %.pre-phi587 = phi i32 [ %.pre586, %._crit_edge.i.i.i.i.i.._crit_edge._crit_edge77.i.i.i.i.i_crit_edge ], [ %.pre-phi583, %bb.dg ]
  %.sroa.046.2.i.i.i.i.i = phi i64 [ %.sroa.046.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i.._crit_edge._crit_edge77.i.i.i.i.i_crit_edge ], [ %i.xx, %bb.dg ] ; 5 uses
  %i.xy = trunc i64 %.sroa.046.2.i.i.i.i.i to i32 ; 2 uses
  %i.xz = add i32 %.pre-phi587, %i.xy             ; 5 uses
  %i.ya = lshr i32 %i.xz, 3                       ; 2 uses
  %.val500 = load i16, ptr %i.mh, align 2, !tbaa !68
  %i.yb = zext i16 %.val500 to i32
  %.not.i.i.i37.i.i.i.i.i = icmp samesign ult i32 %i.ya, %i.yb
  br i1 %.not.i.i.i37.i.i.i.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i38.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i38.i.i.i.i.i: ; preds = %._crit_edge._crit_edge77.i.i.i.i.i
  %i.yc = and i32 %i.xz, 7
  %.val502 = load i32, ptr %i.mi, align 4, !tbaa !69
  %i.yd = zext i32 %.val502 to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %., i64 %i.yd
  %i.yf = zext nneg i32 %i.ya to i64
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !19
  %i.yi = zext i8 %i.yh to i32
  %i.yj = shl nuw nsw i32 1, %i.yc
  %i.yk = and i32 %i.yj, %i.yi
  %.not.i.i39.i.i.i.i.i = icmp eq i32 %i.yk, 0
  br i1 %.not.i.i39.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", label %bb.dh

bb.dh:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i38.i.i.i.i.i
  %i.yl = icmp eq i32 %i.xy, 0
  br i1 %i.yl, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit40.i.i.i.i.i", label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ym = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.xz, i32 noundef 44) #22
  %i.yn = add i32 %i.xz, -1
  %i.yo = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.yn, i32 noundef 44) #22
  %i.yp = add i32 %i.ym, -1
  %i.yq = icmp eq i32 %i.yp, %i.yo
  br i1 %i.yq, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit40.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit40.i.i.i.i.i": ; preds = %bb.di, %bb.dh
  %i.yr = call noundef zeroext i1 @_ZNK4llvm13LiveRegMatrix13isPhysRegUsedENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %7, i32 %i.xz) #22
  %spec.select.i.i.i.i.i = select i1 %i.yr, i64 %.sroa.046.2.i.i.i.i.i, i64 %i.oq
  br label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i, %bb.cs, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i", %bb.ct, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i, %bb.cu, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i", %bb.cv, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i, %bb.cw, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i", %bb.cx, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i, %bb.cy, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i", %.lr.ph.i.i.i.i.i.preheader, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i.peel, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i.peel", %bb.cl, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i.peel, %bb.cm, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i.peel", %bb.cn, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i.peel, %bb.co, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i.peel", %bb.cp, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i.peel, %bb.cq, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i.peel", %bb.da, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i30.i.i.i.i.i, %bb.dc, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit32.i.i.i.i.i", %._crit_edge._crit_edge.i.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i34.i.i.i.i.i, %bb.df, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit36.i.i.i.i.i", %._crit_edge._crit_edge77.i.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i38.i.i.i.i.i, %bb.di, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit40.i.i.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi i64 [ %.sroa.046.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit36.i.i.i.i.i" ], [ %.sroa.046.1.i.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i34.i.i.i.i.i ], [ %.sroa.046.0.lcssa.i.i.i.i.i, %bb.da ], [ %.sroa.046.2.i.i.i.i.i, %bb.di ], [ %spec.select.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit40.i.i.i.i.i" ], [ %.sroa.046.2.i.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i38.i.i.i.i.i ], [ %.sroa.046.0.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit32.i.i.i.i.i" ], [ %.sroa.046.2.i.i.i.i.i, %._crit_edge._crit_edge77.i.i.i.i.i ], [ %.sroa.046.1.i.i.i.i.i, %bb.df ], [ %.sroa.046.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.sroa.046.0.lcssa.i.i.i.i.i, %bb.dc ], [ %.sroa.046.0.lcssa.i.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i30.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ 0, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i.peel ], [ 3, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i.peel" ], [ 0, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i.peel" ], [ 1, %bb.cl ], [ 1, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i.peel ], [ 1, %bb.cm ], [ 1, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i.peel" ], [ 2, %bb.cn ], [ 2, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i.peel ], [ 2, %bb.co ], [ 2, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i.peel" ], [ 3, %bb.cp ], [ 3, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i.peel ], [ 3, %bb.cq ], [ %.sroa.046.070.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit.i.i.i.i.i" ], [ %i.vh, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i25.i.i.i.i.i ], [ %i.vh, %bb.cy ], [ %i.ul, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i21.i.i.i.i.i ], [ %i.ul, %bb.cw ], [ %i.tp, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i17.i.i.i.i.i ], [ %i.tp, %bb.cu ], [ %.sroa.046.070.i.i.i.i.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i.i.i.i.i.i.i ], [ %.sroa.046.070.i.i.i.i.i, %bb.cs ], [ %i.vh, %bb.cx ], [ %i.ul, %bb.cv ], [ %i.tp, %bb.ct ], [ %.sroa.046.070.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.vh, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit27.i.i.i.i.i" ], [ %i.ul, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit23.i.i.i.i.i" ], [ %i.tp, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_2EclINS2_6detail15SafeIntIteratorIjLb0EEEEEbT_.exit19.i.i.i.i.i" ]
  %i.ys = icmp eq i64 %i.oq, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br i1 %i.ys, label %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit.thread", label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313

"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit.thread": ; preds = %._crit_edge.i.i.i.i.i, %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit"
  %i.yt = load i64, ptr %12, align 8, !tbaa !250  ; 2 uses
  %i.yu = load i64, ptr %13, align 8, !tbaa !251
  %.not.i312 = icmp ult i64 %i.yt, %i.yu
  br i1 %.not.i312, label %bb.dk, label %bb.dj, !prof !252

bb.dj:                                            ; preds = %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit.thread"
  call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef zeroext %i.pp)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313

bb.dk:                                            ; preds = %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit.thread"
  %i.yv = load ptr, ptr %4, align 8, !tbaa !249
  %i.yw = getelementptr inbounds nuw [2 x i8], ptr %i.yv, i64 %i.yt
  store i16 %i.pp, ptr %i.yw, align 1
  %i.yx = load i64, ptr %12, align 8, !tbaa !250
  %i.yy = add i64 %i.yx, 1
  store i64 %i.yy, ptr %12, align 8, !tbaa !250
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313: ; preds = %bb.dk, %bb.dj, %"_ZN4llvm6all_ofINS_10iota_rangeIjEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_2EEbOT_T0_.exit", %bb.ck
  %i.yz = add i32 %.0186545, 1                    ; 2 uses
  %i.za = zext i32 %i.yz to i64                   ; 2 uses
  %i.zb = load i64, ptr %i.me, align 8, !tbaa !250
  %i.zc = icmp ugt i64 %i.zb, %i.za
  br i1 %i.zc, label %bb.cj, label %.loopexit508, !llvm.loop !633

bb.dl:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm19AArch64RegisterInfo21getRegAllocationHintsENS2_8RegisterENS2_8ArrayRefItEERNS2_15SmallVectorImplItEERKNS2_15MachineFunctionEPKNS2_10VirtRegMapEPKNS2_13LiveRegMatrixEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i"
  %i.zd = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 32
  %i.ze = load i32, ptr %i.zd, align 8
  %i.zf = and i32 %i.ze, 1048320
  %.not195 = icmp eq i32 %i.zf, 0
  br i1 %.not195, label %.thread.jt0, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.zg = load i32, ptr %.val2.i.i.i.i.i, align 8
  %i.zh = lshr i32 %i.zg, 8
  %i.zi = and i32 %i.zh, 4095                     ; 2 uses
  %.not196 = icmp eq i32 %i.zi, 0
  br i1 %.not196, label %.thread.jt0, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zj = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i.i, i32 noundef 44) #22
  %i.zk = load i64, ptr %i.me, align 8, !tbaa !250
  %.not562 = icmp eq i64 %i.zk, 0
  br i1 %.not562, label %.loopexit508, label %.lr.ph544

.lr.ph544:                                        ; preds = %bb.dn
  %i.zl = sub nsw i32 %i.nb, %i.zi
  %i.zm = add i32 %i.zl, %i.zj
  %i.zn = and i32 %i.zm, 65535
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph544, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit315
  %i.zo = phi i64 [ 0, %.lr.ph544 ], [ %i.aaf, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit315 ] ; 2 uses
  %.0185542 = phi i32 [ 0, %.lr.ph544 ], [ %i.aae, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit315 ]
  %i.zp = load ptr, ptr %11, align 8, !tbaa !249
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.zp, i64 %i.zo
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !21
  %i.zs = zext i16 %i.zr to i32
  %i.zt = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.zs, i32 noundef 44) #22
  %i.zu = icmp eq i32 %i.zt, %i.zn
  br i1 %i.zu, label %bb.dp, label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit315

bb.dp:                                            ; preds = %bb.do
  %i.zv = load ptr, ptr %11, align 8, !tbaa !249
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.zv, i64 %i.zo
  %i.zx = load i16, ptr %i.zw, align 2, !tbaa !21 ; 2 uses
  %i.zy = load i64, ptr %12, align 8, !tbaa !250  ; 2 uses
  %i.zz = load i64, ptr %13, align 8, !tbaa !251
  %.not.i314 = icmp ult i64 %i.zy, %i.zz
  br i1 %.not.i314, label %bb.dr, label %bb.dq, !prof !252

bb.dq:                                            ; preds = %bb.dp
  call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef zeroext %i.zx)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit315

bb.dr:                                            ; preds = %bb.dp
  %i.aaa = load ptr, ptr %4, align 8, !tbaa !249
  %i.aab = getelementptr inbounds nuw [2 x i8], ptr %i.aaa, i64 %i.zy
  store i16 %i.zx, ptr %i.aab, align 1
  %i.aac = load i64, ptr %12, align 8, !tbaa !250
  %i.aad = add i64 %i.aac, 1
  store i64 %i.aad, ptr %12, align 8, !tbaa !250
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit315

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit315: ; preds = %bb.dr, %bb.dq, %bb.do
  %i.aae = add i32 %.0185542, 1                   ; 2 uses
  %i.aaf = zext i32 %i.aae to i64                 ; 2 uses
  %i.aag = load i64, ptr %i.me, align 8, !tbaa !250
  %i.aah = icmp ugt i64 %i.aag, %i.aaf
  br i1 %i.aah, label %bb.do, label %.loopexit508, !llvm.loop !634

.loopexit508:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit315, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit313, %bb.dn, %"_ZN4llvm7find_ifIRNS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_19AArch64RegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixEE3$_0EEDaOT_T0_.exit"
  %i.aai = load i64, ptr %12, align 8, !tbaa !250
  %.not.i316 = icmp eq i64 %i.aai, 0
  br i1 %.not.i316, label %.thread.jt0, label %.thread.jt1

.thread.jt1:                                      ; preds = %.loopexit508
  %i.aaj = call noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(1065) %5, ptr noundef %6, ptr noundef null) #22
  %i.aak = load ptr, ptr %11, align 8, !tbaa !249 ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.md
  br i1 %i.aal, label %bb.du, label %bb.ds

.thread.jt0:                                      ; preds = %bb.dm, %bb.dl, %.loopexit508
  %i.aam = load ptr, ptr %11, align 8, !tbaa !249 ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.md
  br i1 %i.aan, label %bb.dv, label %bb.dt

bb.ds:                                            ; preds = %.thread.jt1
  call void @free(ptr noundef %i.aak) #22
  br label %bb.du

bb.dt:                                            ; preds = %.thread.jt0
  call void @free(ptr noundef %i.aam) #22
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds, %.thread.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.loopexit510

bb.dv:                                            ; preds = %bb.dt, %.thread.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.thread476

.thread476:                                       ; preds = %bb.dv, %bb.by, %bb.bz, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit
  %i.aao = load ptr, ptr %i.mk, align 8, !tbaa !480
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.i.i.backedge, %.thread476
  %.pn.i.i = phi ptr [ %.sroa.0365.0548, %.thread476 ], [ %storemerge.i.i, %.critedge2.i.i.backedge ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !19 ; 5 uses
  %.not.i.i317 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i317, label %.thread480.loopexit, label %bb.dw

bb.dw:                                            ; preds = %.critedge2.i.i
  %i.aap = load i32, ptr %storemerge.i.i, align 8
  %i.aaq = and i32 %i.aap, -2130706432
  %or.cond.not.i.i = icmp eq i32 %i.aaq, 0
  br i1 %or.cond.not.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i, label %.critedge2.i.i.backedge

.critedge2.i.i.backedge:                          ; preds = %bb.dw, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i
  br label %.critedge2.i.i, !llvm.loop !6

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i: ; preds = %bb.dw
  %i.aar = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !480
  %i.aat = icmp eq ptr %i.aas, %i.aao
  br i1 %i.aat, label %.critedge2.i.i.backedge, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EEppEv.exit, !llvm.loop !6

.thread480.loopexit:                              ; preds = %.critedge2.i.i
  %.pre577 = load ptr, ptr %i.h, align 8
  br label %.thread480

.thread480:                                       ; preds = %.critedge2.i.i.i.i, %bb.bv, %..thread480_crit_edge, %.thread480.loopexit
  %.pre-phi = phi i64 [ %.pre579, %..thread480_crit_edge ], [ %i.lv, %.thread480.loopexit ], [ %i.lv, %bb.bv ], [ %i.lv, %.critedge2.i.i.i.i ]
  %i.aau = phi ptr [ %i.ht, %..thread480_crit_edge ], [ %.pre577, %.thread480.loopexit ], [ %i.ht, %bb.bv ], [ %i.ht, %.critedge2.i.i.i.i ]
  %i.aav = icmp slt i32 %1, 0
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aau, i64 %i.j
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.aaz = load ptr, ptr %i.aay, align 8
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %.pre-phi
  %.0.in.i.i.i319 = select i1 %i.aav, ptr %i.aax, ptr %i.aba
  %.0.i.i.i320 = load ptr, ptr %.0.in.i.i.i319, align 8, !tbaa !488 ; 4 uses
  %.not.i.i.i321 = icmp eq ptr %.0.i.i.i320, null
  br i1 %.not.i.i.i321, label %._crit_edge560, label %bb.dx

bb.dx:                                            ; preds = %.thread480
  %i.abb = load i32, ptr %.0.i.i.i320, align 8
  %i.abc = and i32 %i.abb, 16777216
  %.not.i.i.i.i322 = icmp eq i32 %i.abc, 0
  br i1 %.not.i.i.i.i322, label %bb.dy, label %.lr.ph559

bb.dy:                                            ; preds = %bb.dx
  %i.abd = getelementptr inbounds nuw i8, ptr %.0.i.i.i320, i64 24
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !19 ; 3 uses
  %.not.i4.i.i.i326 = icmp eq ptr %i.abe, null
  br i1 %.not.i4.i.i.i326, label %._crit_edge560, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.abf = load i32, ptr %i.abe, align 8
  %i.abg = and i32 %i.abf, 16777216
  %.not.i.i.i.i.i327 = icmp eq i32 %i.abg, 0
  br i1 %.not.i.i.i.i.i327, label %._crit_edge560, label %.lr.ph559

.lr.ph559:                                        ; preds = %bb.dx, %bb.dz
  %.sroa.0.0.i.i323 = phi ptr [ %.0.i.i.i320, %bb.dx ], [ %i.abe, %bb.dz ]
  %i.abh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.idx564 = shl nuw nsw i64 %3, 1
  %i.abi = getelementptr inbounds nuw i8, ptr %2, i64 %.idx564
  %.not201553 = icmp eq i64 %3, 0
  %i.abj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit

._crit_edge560:                                   ; preds = %bb.ej, %bb.ei, %bb.dz, %bb.dy, %.thread480
  %i.abl = call noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo21getRegAllocationHintsENS_8RegisterENS_8ArrayRefItEERNS_15SmallVectorImplItEERKNS_15MachineFunctionEPKNS_10VirtRegMapEPKNS_13LiveRegMatrixE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(1065) %5, ptr noundef %6, ptr noundef null) #22
  br label %.loopexit510

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.loopexit: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i
  br label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit, !llvm.loop !5

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.loopexit, %.lr.ph559
  %.sroa.0342.0558 = phi ptr [ %.sroa.0.0.i.i323, %.lr.ph559 ], [ %i.acw, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.loopexit ] ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.0342.0558, i64 8 ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !480 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 52
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !427
  %.not198 = icmp eq i32 %i.abp, 538
  br i1 %.not198, label %bb.ea, label %.loopexit

bb.ea:                                            ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abn, i64 32
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !428 ; 4 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 32
  %i.abt = load i32, ptr %i.abs, align 8
  %i.abu = lshr i32 %i.abt, 8
  %i.abv = and i32 %i.abu, 4095                   ; 2 uses
  %.not199 = icmp eq i32 %i.abv, 0
  br i1 %.not199, label %.loopexit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abw = load i32, ptr %i.abr, align 8
  %i.abx = and i32 %i.abw, 1048320
  %.not200 = icmp eq i32 %i.abx, 0
  br i1 %.not200, label %.loopexit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abr, i64 36
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !19
  %i.aca = and i32 %i.abz, 2147483647
  %i.acb = zext nneg i32 %i.aca to i64
  %i.acc = load ptr, ptr %i.abh, align 8, !tbaa !254
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %i.acb
  %.sroa.02.0.copyload.i.i332 = load i32, ptr %i.acd, align 4, !tbaa !61 ; 2 uses
  %.not504 = icmp eq i32 %.sroa.02.0.copyload.i.i332, 0
  br i1 %.not504, label %.loopexit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ace = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %.sroa.02.0.copyload.i.i332, i32 noundef %i.abv) #22
  br i1 %.not201553, label %.loopexit, label %.lr.ph556

.lr.ph556:                                        ; preds = %bb.ed
  %i.acf = and i32 %i.ace, 65535
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph556, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit335
  %.0177554 = phi ptr [ %2, %.lr.ph556 ], [ %i.act, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit335 ] ; 2 uses
  %i.acg = load i16, ptr %.0177554, align 2, !tbaa !21 ; 3 uses
  %i.ach = zext i16 %i.acg to i32
  %i.aci = load i32, ptr %i.abr, align 8
  %i.acj = lshr i32 %i.aci, 8
  %i.ack = and i32 %i.acj, 4095
  %i.acl = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.ach, i32 noundef %i.ack) #22
  %i.acm = icmp eq i32 %i.acl, %i.acf
  br i1 %i.acm, label %bb.ef, label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit335

bb.ef:                                            ; preds = %bb.ee
  %i.acn = load i64, ptr %i.abj, align 8, !tbaa !250 ; 2 uses
  %i.aco = load i64, ptr %i.abk, align 8, !tbaa !251
  %.not.i334 = icmp ult i64 %i.acn, %i.aco
  br i1 %.not.i334, label %bb.eh, label %bb.eg, !prof !252

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef zeroext %i.acg)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit335

bb.eh:                                            ; preds = %bb.ef
  %i.acp = load ptr, ptr %4, align 8, !tbaa !249
  %i.acq = getelementptr inbounds nuw [2 x i8], ptr %i.acp, i64 %i.acn
  store i16 %i.acg, ptr %i.acq, align 1
  %i.acr = load i64, ptr %i.abj, align 8, !tbaa !250
  %i.acs = add i64 %i.acr, 1
  store i64 %i.acs, ptr %i.abj, align 8, !tbaa !250
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit335

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit335: ; preds = %bb.eh, %bb.eg, %bb.ee
  %i.act = getelementptr inbounds nuw i8, ptr %.0177554, i64 2 ; 2 uses
  %.not201 = icmp eq ptr %i.act, %i.abi
  br i1 %.not201, label %.loopexit, label %bb.ee

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit335, %bb.ed, %bb.eb, %bb.ea, %bb.ec, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit
  %i.acu = load ptr, ptr %i.abm, align 8, !tbaa !480
  br label %bb.ei

bb.ei:                                            ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i, %.loopexit
  %.pr3.i = phi ptr [ %i.acw, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i ], [ %.sroa.0342.0558, %.loopexit ]
  %i.acv = getelementptr inbounds nuw i8, ptr %.pr3.i, i64 24
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !19 ; 5 uses
  %.not.i.i336 = icmp eq ptr %i.acw, null
  br i1 %.not.i.i336, label %._crit_edge560, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
end_hunk_0
