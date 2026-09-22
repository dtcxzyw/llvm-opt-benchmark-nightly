Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/TypeInference?download=true
inline.NumInlined: 1077
inline.NumDeleted: 530
begin_hunk_0_@_ZN6hermes13TypeInference11runOnModuleEPNS_6ModuleE:bb.a
bb.co:                                            ; preds = %.lr.ph.i83.i.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 16 ; 2 uses
  %i.qh = load i8, ptr %i.qg, align 8, !tbaa !31  ; 2 uses
  %i.qi = add i8 %i.qh, -43
  %i.qj = icmp ult i8 %i.qi, -4
  %.not78151.i.i.i.i = icmp eq ptr %i.qd, null    ; 2 uses
  %.not78.i.i.i.i = select i1 %i.qj, i1 true, i1 %.not78151.i.i.i.i
  br i1 %.not78.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qk = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 0) #8
  %i.ql = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 2) #8
  %.not79.i.i.i.i = icmp eq ptr %i.oe, %i.ql
  br i1 %.not79.i.i.i.i, label %._crit_edge190.i.i.i.i, label %.critedge.i.i43.i.i

._crit_edge190.i.i.i.i:                           ; preds = %bb.cp
  %.pre.i.i49.i.i = load i8, ptr %i.qg, align 8, !tbaa !31
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge190.i.i.i.i, %bb.co
  %i.qm = phi i8 [ %i.qh, %bb.co ], [ %.pre.i.i49.i.i, %._crit_edge190.i.i.i.i ]
  %.169.i.i.i.i = phi ptr [ null, %bb.co ], [ %i.qk, %._crit_edge190.i.i.i.i ]
  %i.qn = add i8 %i.qm, -39
  %i.qo = icmp ult i8 %i.qn, -4
  %.not80.i.i.i.i = select i1 %i.qo, i1 true, i1 %.not78151.i.i.i.i
  br i1 %.not80.i.i.i.i, label %thread-pre-split.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qp = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 0) #8
  %i.qq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 2) #8
  %.not81.i.i.i.i = icmp eq ptr %i.oe, %i.qq
  br i1 %.not81.i.i.i.i, label %thread-pre-split.i.i.i.i, label %.critedge.i.i43.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.cr, %bb.cq
  %.472.ph.i.i.i.i = phi ptr [ %i.qp, %bb.cr ], [ %.169.i.i.i.i, %bb.cq ]
  %.pr.i.i.i.i = load i8, ptr %i.of, align 8, !tbaa !31
  br label %bb.cs

bb.cs:                                            ; preds = %thread-pre-split.i.i.i.i, %.lr.ph.i83.i.i.i
  %i.qr = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.qe, %.lr.ph.i83.i.i.i ]
  %.472.i.i.i.i = phi ptr [ %.472.ph.i.i.i.i, %thread-pre-split.i.i.i.i ], [ null, %.lr.ph.i83.i.i.i ] ; 2 uses
  %i.qs = icmp eq i8 %i.qr, 54
  br i1 %i.qs, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qu = load i8, ptr %i.qt, align 8, !tbaa !31
  %i.qv = add i8 %i.qu, -39
  %i.qw = icmp ult i8 %i.qv, -4
  %.not82153.i.i.i.i = icmp eq ptr %i.qd, null
  %.not82.i.i.i.i = select i1 %i.qw, i1 true, i1 %.not82153.i.i.i.i
  br i1 %.not82.i.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qx = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.qd, i32 noundef 0) #8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %.674.i.i.i.i = phi ptr [ %.472.i.i.i.i, %bb.cs ], [ %i.qx, %bb.cu ], [ %.472.i.i.i.i, %bb.ct ] ; 2 uses
  %i.qy = trunc nuw i8 %.151173.i.i.i.i to i1
  br i1 %i.qy, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.qz = getelementptr inbounds nuw i8, ptr %.674.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i110.i.i.i.i = load i32, ptr %i.qz, align 2
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %.sroa.7.0.insert.ext135.i.i.i.i = zext i16 %.sroa.7.1168.i.i.i.i to i32
  %.sroa.7.0.insert.shift136.i.i.i.i = shl nuw i32 %.sroa.7.0.insert.ext135.i.i.i.i, 16
  %.sroa.0131.0.insert.ext132.i.i.i.i = zext i16 %.sroa.0131.1170.i.i.i.i to i32
  %.sroa.0131.0.insert.insert134.i.i.i.i = or disjoint i32 %.sroa.7.0.insert.shift136.i.i.i.i, %.sroa.0131.0.insert.ext132.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.674.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i111.i.i.i.i = load i32, ptr %i.ra, align 2
  %i.rb = or i32 %.sroa.0.0.copyload.i111.i.i.i.i, %.sroa.0131.0.insert.insert134.i.i.i.i
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %storemerge.i84.i.i.i = phi i32 [ %i.rb, %bb.cx ], [ %.sroa.0.0.copyload.i110.i.i.i.i, %bb.cw ] ; 2 uses
  %.sroa.0131.0.extract.trunc.i.i.i.i = trunc i32 %storemerge.i84.i.i.i to i16
  %.sroa.7.0.extract.shift.i85.i.i.i = lshr i32 %storemerge.i84.i.i.i, 16
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i85.i.i.i to i16
  br label %.critedge.i.i43.i.i

.critedge.i.i43.i.i:                              ; preds = %bb.cy, %bb.cr, %bb.cp
  %.sroa.7.2.i.i.i.i = phi i16 [ %.sroa.7.0.extract.trunc.i.i.i.i, %bb.cy ], [ %.sroa.7.1168.i.i.i.i, %bb.cr ], [ %.sroa.7.1168.i.i.i.i, %bb.cp ] ; 2 uses
  %.sroa.0131.2.i.i.i.i = phi i16 [ %.sroa.0131.0.extract.trunc.i.i.i.i, %bb.cy ], [ %.sroa.0131.1170.i.i.i.i, %bb.cr ], [ %.sroa.0131.1170.i.i.i.i, %bb.cp ] ; 2 uses
  %.353.i.i.i.i = phi i8 [ 0, %bb.cy ], [ %.151173.i.i.i.i, %bb.cr ], [ %.151173.i.i.i.i, %bb.cp ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0118.0172.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i.i44.i.i = icmp eq ptr %i.rc, %.pn12.i.i102.i.i.i.i
  br i1 %.not5.i3.i.i.i.i44.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i45.i.i

.lr.ph.i4.i.i.i.i45.i.i:                          ; preds = %.critedge.i.i43.i.i, %.critedge2.i6.i.i.i.i47.i.i
  %.sroa.0118.1.i.i.i.i = phi ptr [ %i.re, %.critedge2.i6.i.i.i.i47.i.i ], [ %i.rc, %.critedge.i.i43.i.i ] ; 3 uses
  %i.rd = load ptr, ptr %.sroa.0118.1.i.i.i.i, align 8, !tbaa !41
  %magicptr.i5.i.i.i.i46.i.i = ptrtoint ptr %i.rd to i64
  switch i64 %magicptr.i5.i.i.i.i46.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i47.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i47.i.i
  ]

.critedge2.i6.i.i.i.i47.i.i:                      ; preds = %.lr.ph.i4.i.i.i.i45.i.i, %.lr.ph.i4.i.i.i.i45.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.0118.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i48.i.i = icmp eq ptr %i.re, %.pn12.i.i102.i.i.i.i
  br i1 %.not.i7.i.i.i.i48.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, label %.lr.ph.i4.i.i.i.i45.i.i, !llvm.loop !69

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i47.i.i, %.lr.ph.i4.i.i.i.i45.i.i, %.critedge.i.i43.i.i
  %.sroa.0118.2.i.i.i.i = phi ptr [ %i.rc, %.critedge.i.i43.i.i ], [ %i.re, %.critedge2.i6.i.i.i.i47.i.i ], [ %.sroa.0118.1.i.i.i.i, %.lr.ph.i4.i.i.i.i45.i.i ] ; 2 uses
  %.not150.i.i.i.i = icmp eq ptr %.sroa.0118.2.i.i.i.i, %i.qc
  br i1 %.not150.i.i.i.i, label %._crit_edge.i86.i.i.i, label %.lr.ph.i83.i.i.i

._crit_edge.i86.i.i.i:                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i
  %.sroa.7.1.lcssa.i.i.i.i = phi i16 [ %.sroa.7.0178.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.sroa.7.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.0131.1.lcssa.i.i.i.i = phi i16 [ %.sroa.0131.0179.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.sroa.0131.2.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %.151.lcssa.i.i.i.i = phi i8 [ %.050181.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit105.i.i.i.i ], [ %.353.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i.i.i ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0127.0180.i.i.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i112.i.i.i.i = icmp eq ptr %i.rf, %.pn12.i.i.i.i42.i.i
  br i1 %.not5.i3.i.i112.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i, label %.lr.ph.i4.i.i113.i.i.i.i

.lr.ph.i4.i.i113.i.i.i.i:                         ; preds = %._crit_edge.i86.i.i.i, %.critedge2.i6.i.i115.i.i.i.i
  %.sroa.0127.1.i.i.i.i = phi ptr [ %i.rh, %.critedge2.i6.i.i115.i.i.i.i ], [ %i.rf, %._crit_edge.i86.i.i.i ] ; 3 uses
  %i.rg = load ptr, ptr %.sroa.0127.1.i.i.i.i, align 8, !tbaa !41
  %magicptr.i5.i.i114.i.i.i.i = ptrtoint ptr %i.rg to i64
  switch i64 %magicptr.i5.i.i114.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i [
    i64 -8, label %.critedge2.i6.i.i115.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i115.i.i.i.i
  ]

.critedge2.i6.i.i115.i.i.i.i:                     ; preds = %.lr.ph.i4.i.i113.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.0127.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i116.i.i.i.i = icmp eq ptr %i.rh, %.pn12.i.i.i.i42.i.i
  br i1 %.not.i7.i.i116.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i, label %.lr.ph.i4.i.i113.i.i.i.i, !llvm.loop !69

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i: ; preds = %.critedge2.i6.i.i115.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i, %._crit_edge.i86.i.i.i
  %.sroa.0127.2.i.i.i.i = phi ptr [ %i.rf, %._crit_edge.i86.i.i.i ], [ %i.rh, %.critedge2.i6.i.i115.i.i.i.i ], [ %.sroa.0127.1.i.i.i.i, %.lr.ph.i4.i.i113.i.i.i.i ] ; 2 uses
  %.not.i87.i.i.i = icmp eq ptr %.sroa.0127.2.i.i.i.i, %i.nh
  br i1 %.not.i87.i.i.i, label %.thread149.i.i.i.i, label %.lr.ph182.i.i.i.i

.thread149.i.i.i.i:                               ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit117.i.i.i.i
  %i.ri = trunc nuw i8 %.151.lcssa.i.i.i.i to i1
  %i.rj = zext i16 %.sroa.0131.1.lcssa.i.i.i.i to i32 ; 3 uses
  %i.rk = zext i16 %.sroa.7.1.lcssa.i.i.i.i to i32
  %i.rl = shl nuw i32 %i.rk, 16
  %i.rm = or disjoint i32 %i.rl, %i.rj
  br i1 %i.ri, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %.thread149.i.i.i.i
  %i.rn = and i32 %.sroa.0.0.copyload.i.i32.i.i, 65535 ; 2 uses
  %.not.i.i88.i.i.i = icmp ne i32 %i.rn, %i.rj
  %i.ro = xor i32 %i.rn, -1
  %i.rp = and i32 %i.rj, %i.ro
  %.not3.i.i89.i.i.i = icmp eq i32 %i.rp, 0
  %i.rq = and i1 %.not.i.i88.i.i.i, %.not3.i.i89.i.i.i
  br i1 %i.rq, label %bb.da, label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i

bb.da:                                            ; preds = %bb.cz
  store i32 %i.rm, ptr %i.ee, align 2
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i74.i.i.i, %bb.ch, %.lr.ph182.i.i.i.i, %.lr.ph.i.i.i84.i.i.i.i, %.critedge.i.i.i.i.i, %bb.da, %bb.cz, %.thread149.i.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i.i.i, %bb.bz
  %.sroa.0.0.copyload.i92.i.i.i = load i32, ptr %i.ee, align 2
  %.sroa.095.0.extract.trunc.i.i.i = trunc i32 %.sroa.0.0.copyload.i92.i.i.i to i16
  %i.rr = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.rs = icmp ne i16 %.sroa.095.0.extract.trunc.i.i.i, %i.rr
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

bb.db:                                            ; preds = %.lr.ph.i.i
  %i.rt = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.098.0117.i.i, i32 noundef 0) #8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  %.sroa.0.0.copyload.i.i93.i.i.i = load i32, ptr %i.ru, align 2
  %i.rv = and i32 %.sroa.0.0.copyload.i.i93.i.i.i, -458754 ; 2 uses
  store i32 %i.rv, ptr %i.ee, align 2
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.rv to i16
  %i.rw = trunc i32 %.sroa.0.0.copyload.i.i32.i.i to i16
  %i.rx = icmp ne i16 %.sroa.0.0.extract.trunc.i.i.i, %i.rw
  br label %_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i

_ZN12_GLOBAL__N_117TypeInferenceImpl9inferTypeEPN6hermes11InstructionE.exit.i.i: ; preds = %bb.db, %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i, %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i, %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i, %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i, %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i, %_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i, %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i, %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i, %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i, %.lr.ph.i.i
  %.0.i33.i.i = phi i1 [ %i.rx, %bb.db ], [ %i.fz, %_ZL15inferBinaryInstPN6hermes18BinaryOperatorInstE.exit.i.i.i ], [ %i.gl, %_ZL14inferUnaryInstPN6hermes17UnaryOperatorInstE.exit.i.i.i ], [ %i.hm, %_ZL16inferPhiInstInstPN6hermes7PhiInstE.exit.i.i.i ], [ %i.ik, %_ZL15inferMemoryTypePN6hermes5ValueE.exit97.i.i ], [ %i.it, %_ZL18inferLoadStackInstPN6hermes13LoadStackInstE.exit.i.i.i ], [ %i.jc, %_ZL18inferLoadFrameInstPN6hermes13LoadFrameInstE.exit.i.i.i ], [ %i.lg, %_ZN12_GLOBAL__N_117TypeInferenceImpl13inferCallInstEPN6hermes8CallInstE.exit.i.i.i ], [ %i.lp, %_ZL15inferReturnInstPN6hermes10ReturnInstE.exit.i.i.i ], [ %i.rs, %_ZN12_GLOBAL__N_117TypeInferenceImpl21inferLoadPropertyInstEPN6hermes16LoadPropertyInstE.exit.i.i.i ], [ false, %.lr.ph.i.i ]
  %i.ry = zext i1 %.0.i33.i.i to i8
  %i.rz = or i8 %.1116.i.i, %i.ry                 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.098.0117.i.i, i64 8
  %.sroa.098.0.i.i = load ptr, ptr %i.sa, align 8, !tbaa !74 ; 2 uses
  %.not106.i.i = icmp eq ptr %.sroa.098.0.i.i, %i.eb
  br i1 %.not106.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dc:                                            ; preds = %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %i.sb = load ptr, ptr %i.de, align 8, !tbaa !149 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 152
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !123 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 160
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !122 ; 2 uses
  %i.sg = zext i32 %i.sf to i64
  %.idx.i.i = shl nuw nsw i64 %i.sg, 3
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx.i.i
  %.not131.i.i = icmp eq i32 %i.sf, 0
  br i1 %.not131.i.i, label %.loopexit.i.i, label %.lr.ph135.i.i

.lr.ph135.i.i:                                    ; preds = %bb.dc, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i
  %.027133.i.i = phi ptr [ %i.ti, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %i.sd, %bb.dc ] ; 2 uses
  %.2132.i.i = phi i8 [ %7, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ]
  %i.si = load ptr, ptr %.027133.i.i, align 8, !tbaa !150 ; 2 uses
  %i.sj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.si) #8 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !123 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !122 ; 2 uses
  %i.sn = zext i32 %i.sm to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.sn, 3
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 %.idx.i.i.i.i
  %.not50.i.i.i.i = icmp eq i32 %i.sm, 0
  br i1 %.not50.i.i.i.i, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i, label %.lr.ph.i.i62.i.i

.lr.ph.i.i62.i.i:                                 ; preds = %.lr.ph135.i.i, %.thread.i.i63.i.i
  %.054.i.i.i.i = phi i1 [ %.242.i.i.i.i, %.thread.i.i63.i.i ], [ true, %.lr.ph135.i.i ] ; 4 uses
  %.02253.i.i.i.i = phi ptr [ %i.sv, %.thread.i.i63.i.i ], [ %i.sk, %.lr.ph135.i.i ] ; 2 uses
  %.sroa.0.052.i.i.i.i = phi i16 [ %.sroa.0.141.i.i.i.i, %.thread.i.i63.i.i ], [ 1023, %.lr.ph135.i.i ] ; 4 uses
  %.sroa.6.051.i.i.i.i = phi i16 [ %.sroa.6.140.i.i.i.i, %.thread.i.i63.i.i ], [ 7, %.lr.ph135.i.i ] ; 4 uses
  %i.sp = load ptr, ptr %.02253.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load i8, ptr %i.sq, align 8, !tbaa !31
  switch i8 %i.sr, label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i [
    i8 51, label %bb.dd
    i8 50, label %bb.dd
    i8 49, label %.thread.i.i63.i.i
    i8 22, label %.thread.i.i63.i.i
  ]

bb.dd:                                            ; preds = %.lr.ph.i.i62.i.i, %.lr.ph.i.i62.i.i
  %i.ss = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.sp, i32 noundef 0) #8 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.ss, null
  br i1 %.not27.i.i.i.i, label %.thread.i.i63.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 2
  %.sroa.0.0.copyload.i.i.i67.i.i = load i32, ptr %i.st, align 2 ; 2 uses
  br i1 %.054.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.sroa.6.0.insert.ext.i.i.i.i = zext i16 %.sroa.6.051.i.i.i.i to i32
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw i32 %.sroa.6.0.insert.ext.i.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %.sroa.0.052.i.i.i.i to i32
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %i.su = or i32 %.sroa.0.0.copyload.i.i.i67.i.i, %.sroa.0.0.insert.insert.i.i.i.i
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %storemerge.i.i68.i.i = phi i32 [ %i.su, %bb.df ], [ %.sroa.0.0.copyload.i.i.i67.i.i, %bb.de ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i69.i.i = trunc i32 %storemerge.i.i68.i.i to i16
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i32 %storemerge.i.i68.i.i, 16
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i.i.i to i16
  br label %.thread.i.i63.i.i

.thread.i.i63.i.i:                                ; preds = %bb.dg, %bb.dd, %.lr.ph.i.i62.i.i, %.lr.ph.i.i62.i.i
  %.242.i.i.i.i = phi i1 [ false, %bb.dg ], [ %.054.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.054.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.054.i.i.i.i, %bb.dd ]
  %.sroa.0.141.i.i.i.i = phi i16 [ %.sroa.0.0.extract.trunc.i.i69.i.i, %bb.dg ], [ %.sroa.0.052.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.0.052.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.0.052.i.i.i.i, %bb.dd ] ; 2 uses
  %.sroa.6.140.i.i.i.i = phi i16 [ %.sroa.6.0.extract.trunc.i.i.i.i, %bb.dg ], [ %.sroa.6.051.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.6.051.i.i.i.i, %.lr.ph.i.i62.i.i ], [ %.sroa.6.051.i.i.i.i, %bb.dd ] ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.02253.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i64.i.i = icmp eq ptr %i.sv, %i.so
  br i1 %.not.i.i64.i.i, label %bb.dh, label %.lr.ph.i.i62.i.i

bb.dh:                                            ; preds = %.thread.i.i63.i.i
  %i.sw = zext i16 %.sroa.6.140.i.i.i.i to i32
  %i.sx = shl nuw i32 %i.sw, 16
  %i.sy = zext i16 %.sroa.0.141.i.i.i.i to i32
  %i.sz = or disjoint i32 %i.sx, %i.sy
  br label %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i

_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i: ; preds = %.lr.ph.i.i62.i.i, %bb.dh, %.lr.ph135.i.i
  %.not.lcssa.i.i.i.i = phi i32 [ 459775, %.lr.ph135.i.i ], [ %i.sz, %bb.dh ], [ 459775, %.lr.ph.i.i62.i.i ] ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.si, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i.i65.i.i = load i32, ptr %i.ta, align 2
  %i.tb = and i32 %.not.lcssa.i.i.i.i, 65535      ; 2 uses
  %i.tc = and i32 %.sroa.0.0.copyload.i.i65.i.i, 65535 ; 2 uses
  %.not.i5.i.i.i = icmp ne i32 %i.tc, %i.tb
  %i.td = xor i32 %i.tc, -1
  %i.te = and i32 %i.tb, %i.td
  %.not3.i.i66.i.i = icmp eq i32 %i.te, 0
  %i.tf = and i1 %.not.i5.i.i.i, %.not3.i.i66.i.i ; 2 uses
  br i1 %i.tf, label %bb.di, label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

bb.di:                                            ; preds = %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  store i32 %.not.lcssa.i.i.i.i, ptr %i.ta, align 2
  br label %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i

_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i:    ; preds = %bb.di, %_ZL23inferMemoryLocationTypePN6hermes5ValueE.exit.i.i.i
  %i.tg = zext i1 %i.tf to i8
  %i.th = or i8 %.2132.i.i, %i.tg
  %6 = icmp ne i8 %i.th, 0
  %7 = zext i1 %6 to i8                           ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.027133.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ti, %i.sh
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph135.i.i

.loopexit.i.i:                                    ; preds = %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i, %bb.dc, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i
  %.3.i.i = phi i8 [ %.0.i31.i.i, %_ZL23inferFunctionReturnTypePN6hermes8FunctionE.exit.i.i ], [ %.0.i31.i.i, %bb.dc ], [ %7, %_ZL15inferMemoryTypePN6hermes5ValueE.exit.i.i ] ; 2 uses
  %i.tj = trunc nuw i8 %.3.i.i to i1
  %i.tk = zext i1 %.0.in.i.i to i8
  %i.tl = or i8 %.3.i.i, %i.tk
  %i.tm = icmp ne i8 %i.tl, 0                     ; 2 uses
  br i1 %i.tj, label %bb.r, label %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, !llvm.loop !71

_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i: ; preds = %.loopexit.i.i
  %i.tn = or i1 %.021.i, %i.tm                    ; 2 uses
  call void @_ZN6hermes17CallGraphProviderD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i, i64 8
  %.sroa.07.0.i = load ptr, ptr %i.to, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.0.i, %i.b
  br i1 %.not.i, label %_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit, label %bb.b

_ZN12_GLOBAL__N_117TypeInferenceImpl11runOnModuleEPN6hermes6ModuleE.exit: ; preds = %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i, %bb.a
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %i.tn, %_ZN12_GLOBAL__N_117TypeInferenceImpl13runOnFunctionEPN6hermes8FunctionE.exit.i ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes19createTypeInferenceEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes13TypeInferenceESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #9, !noalias !153 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !158, !noalias !153
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str, ptr %i.c, align 8, !tbaa !159, !noalias !153
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 13, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !160, !noalias !153
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes13TypeInferenceE, i64 16), ptr %i.a, align 8, !tbaa !162, !noalias !153
  store ptr %i.a, ptr %0, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes13TypeInferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes17CallGraphProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %.pre1.i = load ptr, ptr %i.a, align 8, !tbaa !60 ; 3 uses
  br i1 %i.d, label %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.c to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %.011.i.i = phi ptr [ %i.j, %bb.c ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.011.i.i, align 8, !tbaa !41
  %magicptr.i.i = ptrtoint ptr %i.g to i64
  switch i64 %magicptr.i.i, label %bb.b [
    i64 -8, label %bb.c
    i64 -16, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  tail call void @_ZdlPv(ptr noundef %i.i) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !166

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i
  %i.k = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_8DenseSetIS4_NS_12DenseMapInfoIS4_EEEES7_NS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S7_SB_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %bb.a ]
  tail call void @_ZdlPv(ptr noundef %i.k) #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %.pre1.i1 = load ptr, ptr %i.l, align 8, !tbaa !51 ; 3 uses
  br i1 %i.o, label %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i2

.lr.ph.preheader.i.i2:                            ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit
  %i.p = zext i32 %i.n to i64
  %.idx.i.i3 = shl nuw nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %.pre1.i1, i64 %.idx.i.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %bb.e, %.lr.ph.preheader.i.i2
  %.011.i.i5 = phi ptr [ %i.u, %bb.e ], [ %.pre1.i1, %.lr.ph.preheader.i.i2 ] ; 3 uses
  %i.r = load ptr, ptr %.011.i.i5, align 8, !tbaa !54
  %magicptr.i.i6 = ptrtoint ptr %i.r to i64
  switch i64 %magicptr.i.i6, label %bb.d [
    i64 -8, label %bb.e
    i64 -16, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57
  tail call void @_ZdlPv(ptr noundef %i.t) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i4, %.lr.ph.i.i4
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i5, i64 32 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.u, %i.q
  br i1 %.not.i.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i4, !llvm.loop !167

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.e
  %.pre.i8 = load ptr, ptr %i.l, align 8, !tbaa !51
  br label %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.v = phi ptr [ %.pre.i8, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS2_11InstructionENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i1, %_ZN4llvh8DenseMapIPN6hermes11InstructionENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEES6_NS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.v) #8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %.pre1.i9 = load ptr, ptr %i.w, align 8, !tbaa !10 ; 3 uses
  br i1 %i.z, label %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i10

.lr.ph.preheader.i.i10:                           ; preds = %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.aa = zext i32 %i.y to i64
  %.idx.i.i11 = shl nuw nsw i64 %i.aa, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre1.i9, i64 %.idx.i.i11
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %bb.g, %.lr.ph.preheader.i.i10
  %.011.i.i13 = phi ptr [ %i.af, %bb.g ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 3 uses
  %i.ac = load ptr, ptr %.011.i.i13, align 8, !tbaa !13
  %magicptr.i.i14 = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr.i.i14, label %bb.f [
    i64 -8, label %bb.g
    i64 -16, label %bb.g
  ]

bb.f:                                             ; preds = %.lr.ph.i.i12
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.i.i13, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  tail call void @_ZdlPv(ptr noundef %i.ae) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i12, %.lr.ph.i.i12
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i13, i64 32 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.af, %i.ab
  br i1 %.not.i.i15, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i12, !llvm.loop !168

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i: ; preds = %bb.g
  %.pre.i16 = load ptr, ptr %i.w, align 8, !tbaa !10
  br label %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i
  %i.ag = phi ptr [ %.pre.i16, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS2_8CallInstENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i9, %_ZN4llvh8DenseMapIPN6hermes16LoadPropertyInstENS_8DenseSetIPNS1_11InstructionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.ag) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %.pre1.i17 = load ptr, ptr %0, align 8, !tbaa !44 ; 3 uses
  br i1 %i.aj, label %_ZN4llvh8DenseMapIPN6hermes8CallInstENS_8DenseSetIPNS1_8FunctionENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph.preheader.i.i18

.lr.ph.preheader.i.i18:                           ; preds = %_ZN4llvh8DenseMapIPN6hermes8FunctionENS_8DenseSetIPNS1_8CallInstENS_12DenseMapInfoIS6_EEEENS7_IS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  %i.ak = zext i32 %i.ai to i64
  %.idx.i.i19 = shl nuw nsw i64 %i.ak, 5
  %i.al = getelementptr inbounds nuw i8, ptr %.pre1.i17, i64 %.idx.i.i19
  br label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.i, %.lr.ph.preheader.i.i18
  %.011.i.i21 = phi ptr [ %i.ap, %bb.i ], [ %.pre1.i17, %.lr.ph.preheader.i.i18 ] ; 3 uses
  %i.am = load ptr, ptr %.011.i.i21, align 8, !tbaa !30
  %magicptr.i.i22 = ptrtoint ptr %i.am to i64
  switch i64 %magicptr.i.i22, label %bb.h [
    i64 -8, label %bb.i
    i64 -16, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph.i.i20
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i.i21, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  tail call void @_ZdlPv(ptr noundef %i.ao) #8
  br label %bb.i
end_hunk_0
