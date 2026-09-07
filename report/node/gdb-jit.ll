Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/gdb-jit?download=true
inline.NumInlined: 1377
inline.NumDeleted: 615
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal15GDBJITInterface18DebugAbbrevSection17WriteBodyInternalEPNS1_6WriterE:bb.a
  %i.ou = phi i64 [ %i.ok, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i398 ], [ %.pre.i403, %_ZN2v84base7ReallocEPvm.exit.i.i402 ]
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ou
  store i8 0, ptr %i.ov, align 1
  %i.ow = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ox = add i64 %i.ow, 1                        ; 2 uses
  store i64 %i.ox, ptr %i.f, align 8
  %i.oy = add i64 %i.ow, 2                        ; 2 uses
  %i.oz = load i64, ptr %i.g, align 8             ; 2 uses
  %i.pa = icmp ult i64 %i.oz, %i.oy
  br i1 %i.pa, label %.lr.ph.i.i.i414, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i411

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i411: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit404
  %.pre2.i.i412 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i413

.lr.ph.i.i.i414:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit404, %.lr.ph.i.i.i414
  %i.pb = phi i64 [ %i.pc, %.lr.ph.i.i.i414 ], [ %i.oz, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit404 ]
  %i.pc = shl i64 %i.pb, 1                        ; 4 uses
  %i.pd = icmp ult i64 %i.pc, %i.oy
  br i1 %i.pd, label %.lr.ph.i.i.i414, label %_ZN2v84base7ReallocEPvm.exit.i.i.i415, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i415:            ; preds = %.lr.ph.i.i.i414
  store i64 %i.pc, ptr %i.g, align 8
  %i.pe = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.pf = tail call noundef ptr @realloc(ptr noundef %i.pe, i64 noundef %i.pc) #24 ; 2 uses
  store ptr %i.pf, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i416 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i413

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i413: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i415, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i411
  %i.pg = phi ptr [ %.pre2.i.i412, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i411 ], [ %i.pf, %_ZN2v84base7ReallocEPvm.exit.i.i.i415 ]
  %i.ph = phi i64 [ %i.ox, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i411 ], [ %.pre.i.i416, %_ZN2v84base7ReallocEPvm.exit.i.i.i415 ]
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.ph
  store i8 11, ptr %i.pi, align 1
  %i.pj = load i64, ptr %i.f, align 8             ; 2 uses
  %i.pk = add i64 %i.pj, 1                        ; 2 uses
  store i64 %i.pk, ptr %i.f, align 8
  %i.pl = add i64 %i.pj, 2                        ; 2 uses
  %i.pm = load i64, ptr %i.g, align 8             ; 2 uses
  %i.pn = icmp ult i64 %i.pm, %i.pl
  br i1 %i.pn, label %.lr.ph.i.i.i427, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i424

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i424: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i413
  %.pre2.i.i425 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i426

.lr.ph.i.i.i427:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i413, %.lr.ph.i.i.i427
  %i.po = phi i64 [ %i.pp, %.lr.ph.i.i.i427 ], [ %i.pm, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i413 ]
  %i.pp = shl i64 %i.po, 1                        ; 4 uses
  %i.pq = icmp ult i64 %i.pp, %i.pl
  br i1 %i.pq, label %.lr.ph.i.i.i427, label %_ZN2v84base7ReallocEPvm.exit.i.i.i428, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i428:            ; preds = %.lr.ph.i.i.i427
  store i64 %i.pp, ptr %i.g, align 8
  %i.pr = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ps = tail call noundef ptr @realloc(ptr noundef %i.pr, i64 noundef %i.pp) #24 ; 2 uses
  store ptr %i.ps, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i429 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i426

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i426: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i428, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i424
  %i.pt = phi ptr [ %.pre2.i.i425, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i424 ], [ %i.ps, %_ZN2v84base7ReallocEPvm.exit.i.i.i428 ]
  %i.pu = phi i64 [ %i.pk, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i424 ], [ %.pre.i.i429, %_ZN2v84base7ReallocEPvm.exit.i.i.i428 ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pu
  store i8 11, ptr %i.pv, align 1
  %i.pw = load i64, ptr %i.f, align 8             ; 2 uses
  %i.px = add i64 %i.pw, 1                        ; 2 uses
  store i64 %i.px, ptr %i.f, align 8
  %i.py = add i64 %i.pw, 2                        ; 2 uses
  %i.pz = load i64, ptr %i.g, align 8             ; 2 uses
  %i.qa = icmp ult i64 %i.pz, %i.py
  br i1 %i.qa, label %.lr.ph.i.i.i440, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i437

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i437: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i426
  %.pre2.i.i438 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i439

.lr.ph.i.i.i440:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i426, %.lr.ph.i.i.i440
  %i.qb = phi i64 [ %i.qc, %.lr.ph.i.i.i440 ], [ %i.pz, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i426 ]
  %i.qc = shl i64 %i.qb, 1                        ; 4 uses
  %i.qd = icmp ult i64 %i.qc, %i.py
  br i1 %i.qd, label %.lr.ph.i.i.i440, label %_ZN2v84base7ReallocEPvm.exit.i.i.i441, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i441:            ; preds = %.lr.ph.i.i.i440
  store i64 %i.qc, ptr %i.g, align 8
  %i.qe = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.qf = tail call noundef ptr @realloc(ptr noundef %i.qe, i64 noundef %i.qc) #24 ; 2 uses
  store ptr %i.qf, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i442 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i439

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i439: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i441, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i437
  %i.qg = phi ptr [ %.pre2.i.i438, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i437 ], [ %i.qf, %_ZN2v84base7ReallocEPvm.exit.i.i.i441 ]
  %i.qh = phi i64 [ %i.px, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i437 ], [ %.pre.i.i442, %_ZN2v84base7ReallocEPvm.exit.i.i.i441 ]
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qh
  store i8 3, ptr %i.qi, align 1
  %i.qj = load i64, ptr %i.f, align 8             ; 2 uses
  %i.qk = add i64 %i.qj, 1                        ; 2 uses
  store i64 %i.qk, ptr %i.f, align 8
  %i.ql = add i64 %i.qj, 2                        ; 2 uses
  %i.qm = load i64, ptr %i.g, align 8             ; 2 uses
  %i.qn = icmp ult i64 %i.qm, %i.ql
  br i1 %i.qn, label %.lr.ph.i.i.i453, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i450

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i450: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i439
  %.pre2.i.i451 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i452

.lr.ph.i.i.i453:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i439, %.lr.ph.i.i.i453
  %i.qo = phi i64 [ %i.qp, %.lr.ph.i.i.i453 ], [ %i.qm, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i439 ]
  %i.qp = shl i64 %i.qo, 1                        ; 4 uses
  %i.qq = icmp ult i64 %i.qp, %i.ql
  br i1 %i.qq, label %.lr.ph.i.i.i453, label %_ZN2v84base7ReallocEPvm.exit.i.i.i454, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i454:            ; preds = %.lr.ph.i.i.i453
  store i64 %i.qp, ptr %i.g, align 8
  %i.qr = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.qs = tail call noundef ptr @realloc(ptr noundef %i.qr, i64 noundef %i.qp) #24 ; 2 uses
  store ptr %i.qs, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i455 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i452

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i452: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i454, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i450
  %i.qt = phi ptr [ %.pre2.i.i451, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i450 ], [ %i.qs, %_ZN2v84base7ReallocEPvm.exit.i.i.i454 ]
  %i.qu = phi i64 [ %i.qk, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i450 ], [ %.pre.i.i455, %_ZN2v84base7ReallocEPvm.exit.i.i.i454 ]
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qu
  store i8 8, ptr %i.qv, align 1
  %i.qw = load i64, ptr %i.f, align 8             ; 2 uses
  %i.qx = add i64 %i.qw, 1                        ; 2 uses
  store i64 %i.qx, ptr %i.f, align 8
  %i.qy = add i64 %i.qw, 2                        ; 2 uses
  %i.qz = load i64, ptr %i.g, align 8             ; 2 uses
  %i.ra = icmp ult i64 %i.qz, %i.qy
  br i1 %i.ra, label %.lr.ph.i.i.i466, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i463

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i463: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i452
  %.pre2.i.i464 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i465

.lr.ph.i.i.i466:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i452, %.lr.ph.i.i.i466
  %i.rb = phi i64 [ %i.rc, %.lr.ph.i.i.i466 ], [ %i.qz, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i452 ]
  %i.rc = shl i64 %i.rb, 1                        ; 4 uses
  %i.rd = icmp ult i64 %i.rc, %i.qy
  br i1 %i.rd, label %.lr.ph.i.i.i466, label %_ZN2v84base7ReallocEPvm.exit.i.i.i467, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i467:            ; preds = %.lr.ph.i.i.i466
  store i64 %i.rc, ptr %i.g, align 8
  %i.re = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.rf = tail call noundef ptr @realloc(ptr noundef %i.re, i64 noundef %i.rc) #24 ; 2 uses
  store ptr %i.rf, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i468 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i465

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i465: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i467, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i463
  %i.rg = phi ptr [ %.pre2.i.i464, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i463 ], [ %i.rf, %_ZN2v84base7ReallocEPvm.exit.i.i.i467 ]
  %i.rh = phi i64 [ %i.qx, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i463 ], [ %.pre.i.i468, %_ZN2v84base7ReallocEPvm.exit.i.i.i467 ]
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.rh
  store i8 0, ptr %i.ri, align 1
  %i.rj = load i64, ptr %i.f, align 8             ; 2 uses
  %i.rk = add i64 %i.rj, 1                        ; 2 uses
  store i64 %i.rk, ptr %i.f, align 8
  %i.rl = add i64 %i.rj, 2                        ; 2 uses
  %i.rm = load i64, ptr %i.g, align 8             ; 2 uses
  %i.rn = icmp ult i64 %i.rm, %i.rl
  br i1 %i.rn, label %.lr.ph.i.i.i479, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i476

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i476: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i465
  %.pre2.i.i477 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i478

.lr.ph.i.i.i479:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i465, %.lr.ph.i.i.i479
  %i.ro = phi i64 [ %i.rp, %.lr.ph.i.i.i479 ], [ %i.rm, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i465 ]
  %i.rp = shl i64 %i.ro, 1                        ; 4 uses
  %i.rq = icmp ult i64 %i.rp, %i.rl
  br i1 %i.rq, label %.lr.ph.i.i.i479, label %_ZN2v84base7ReallocEPvm.exit.i.i.i480, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i480:            ; preds = %.lr.ph.i.i.i479
  store i64 %i.rp, ptr %i.g, align 8
  %i.rr = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.rs = tail call noundef ptr @realloc(ptr noundef %i.rr, i64 noundef %i.rp) #24 ; 2 uses
  store ptr %i.rs, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i481 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i478

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i478: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i480, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i476
  %i.rt = phi ptr [ %.pre2.i.i477, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i476 ], [ %i.rs, %_ZN2v84base7ReallocEPvm.exit.i.i.i480 ]
  %i.ru = phi i64 [ %i.rk, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i476 ], [ %.pre.i.i481, %_ZN2v84base7ReallocEPvm.exit.i.i.i480 ]
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.ru
  store i8 0, ptr %i.rv, align 1
  %i.rw = load i64, ptr %i.f, align 8
  %i.rx = add i64 %i.rw, 1
  store i64 %i.rx, ptr %i.f, align 8
  %i.ry = icmp sgt i32 %i.gs, 0
  br i1 %i.ry, label %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482.preheader, label %.preheader518

_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482.preheader: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i478
  %i.rz = add nuw i32 %i.gs, 4                    ; 2 uses
  br label %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482

.preheader518:                                    ; preds = %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i478
  %.063.lcssa = phi i32 [ 4, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i478 ], [ %i.rz, %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482 ] ; 3 uses
  %i.sa = add nuw nsw i32 %.063.lcssa, 1
  tail call void @_ZN2v88internal15GDBJITInterface18DebugAbbrevSection25WriteVariableAbbreviationEPNS1_6WriterEibb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %.063.lcssa, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.sb = add nuw i32 %.063.lcssa, 2              ; 3 uses
  tail call void @_ZN2v88internal15GDBJITInterface18DebugAbbrevSection25WriteVariableAbbreviationEPNS1_6WriterEibb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %i.sa, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.sc = icmp sgt i32 %i.gx, 0
  br i1 %i.sc, label %.lr.ph561.preheader, label %._crit_edge

_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482: ; preds = %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482.preheader, %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482
  %.063555 = phi i32 [ %i.sd, %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482 ], [ 4, %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482.preheader ] ; 2 uses
  %i.sd = add nuw i32 %.063555, 1                 ; 2 uses
  tail call void @_ZN2v88internal15GDBJITInterface18DebugAbbrevSection25WriteVariableAbbreviationEPNS1_6WriterEibb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %.063555, i1 noundef zeroext true, i1 noundef zeroext true)
  %exitcond.not = icmp eq i32 %i.sd, %i.rz
  br i1 %exitcond.not, label %.preheader518, label %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit482, !llvm.loop !55

.lr.ph561.preheader:                              ; preds = %.preheader518
  %i.se = add i32 %i.sb, %i.gx                    ; 2 uses
  br label %.lr.ph561

._crit_edge:                                      ; preds = %.lr.ph561, %.preheader518
  %.2.lcssa = phi i32 [ %i.sb, %.preheader518 ], [ %i.se, %.lr.ph561 ] ; 2 uses
  %i.sf = add nuw nsw i32 %.2.lcssa, 1
  tail call void @_ZN2v88internal15GDBJITInterface18DebugAbbrevSection25WriteVariableAbbreviationEPNS1_6WriterEibb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %.2.lcssa, i1 noundef zeroext true, i1 noundef zeroext false)
  tail call void @_ZN2v88internal15GDBJITInterface18DebugAbbrevSection25WriteVariableAbbreviationEPNS1_6WriterEibb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %i.sf, i1 noundef zeroext true, i1 noundef zeroext false)
  %.pre.i484 = load i64, ptr %i.f, align 8        ; 2 uses
  %i.sg = add i64 %.pre.i484, 1                   ; 2 uses
  %i.sh = load i64, ptr %i.g, align 8             ; 2 uses
  %i.si = icmp ult i64 %i.sh, %i.sg
  br i1 %i.si, label %.lr.ph.i.i.i492, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i489

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i489: ; preds = %._crit_edge
  %.pre2.i.i490 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i491

.lr.ph.i.i.i492:                                  ; preds = %._crit_edge, %.lr.ph.i.i.i492
  %i.sj = phi i64 [ %i.sk, %.lr.ph.i.i.i492 ], [ %i.sh, %._crit_edge ]
  %i.sk = shl i64 %i.sj, 1                        ; 4 uses
  %i.sl = icmp ult i64 %i.sk, %i.sg
  br i1 %i.sl, label %.lr.ph.i.i.i492, label %_ZN2v84base7ReallocEPvm.exit.i.i.i493, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i493:            ; preds = %.lr.ph.i.i.i492
  store i64 %i.sk, ptr %i.g, align 8
  %i.sm = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.sn = tail call noundef ptr @realloc(ptr noundef %i.sm, i64 noundef %i.sk) #24 ; 2 uses
  store ptr %i.sn, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i494 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i491

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i491: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i493, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i489
  %i.so = phi ptr [ %.pre2.i.i490, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i489 ], [ %i.sn, %_ZN2v84base7ReallocEPvm.exit.i.i.i493 ]
  %i.sp = phi i64 [ %.pre.i484, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i489 ], [ %.pre.i.i494, %_ZN2v84base7ReallocEPvm.exit.i.i.i493 ]
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sp
  store i8 0, ptr %i.sq, align 1
  %i.sr = load i64, ptr %i.f, align 8
  %i.ss = add i64 %i.sr, 1                        ; 2 uses
  store i64 %i.ss, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit495, !llvm.loop !8

.lr.ph561:                                        ; preds = %.lr.ph561.preheader, %.lr.ph561
  %.2559 = phi i32 [ %i.st, %.lr.ph561 ], [ %i.sb, %.lr.ph561.preheader ] ; 2 uses
  %i.st = add i32 %.2559, 1                       ; 2 uses
  tail call void @_ZN2v88internal15GDBJITInterface18DebugAbbrevSection25WriteVariableAbbreviationEPNS1_6WriterEibb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %.2559, i1 noundef zeroext false, i1 noundef zeroext false)
  %exitcond602.not = icmp eq i32 %i.st, %i.se
  br i1 %exitcond602.not, label %._crit_edge, label %.lr.ph561, !llvm.loop !56

_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit495: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i491, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i203
  %.pre.i497 = phi i64 [ %i.ss, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i491 ], [ %i.fu, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i203 ] ; 2 uses
  %i.su = add i64 %.pre.i497, 1                   ; 2 uses
  %i.sv = load i64, ptr %i.g, align 8             ; 2 uses
  %i.sw = icmp ult i64 %i.sv, %i.su
  br i1 %i.sw, label %.lr.ph.i.i.i505, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i502

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i502: ; preds = %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit495
  %.pre2.i.i503 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i504

.lr.ph.i.i.i505:                                  ; preds = %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit495, %.lr.ph.i.i.i505
  %i.sx = phi i64 [ %i.sy, %.lr.ph.i.i.i505 ], [ %i.sv, %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit495 ]
  %i.sy = shl i64 %i.sx, 1                        ; 4 uses
  %i.sz = icmp ult i64 %i.sy, %i.su
  br i1 %i.sz, label %.lr.ph.i.i.i505, label %_ZN2v84base7ReallocEPvm.exit.i.i.i506, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i506:            ; preds = %.lr.ph.i.i.i505
  store i64 %i.sy, ptr %i.g, align 8
  %i.ta = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.tb = tail call noundef ptr @realloc(ptr noundef %i.ta, i64 noundef %i.sy) #24 ; 2 uses
  store ptr %i.tb, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i507 = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i504

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i504: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i506, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i502
  %i.tc = phi ptr [ %.pre2.i.i503, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i502 ], [ %i.tb, %_ZN2v84base7ReallocEPvm.exit.i.i.i506 ]
  %i.td = phi i64 [ %.pre.i497, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i502 ], [ %.pre.i.i507, %_ZN2v84base7ReallocEPvm.exit.i.i.i506 ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.td
  store i8 0, ptr %i.te, align 1
  %i.tf = load i64, ptr %i.f, align 8
  %i.tg = add i64 %i.tf, 1
  store i64 %i.tg, ptr %i.f, align 8
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15GDBJITInterface18DebugAbbrevSection25WriteVariableAbbreviationEPNS1_6WriterEibb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 22 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 33 uses
  %.pre.i = load i64, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i, %bb.a
  %i.d = phi i64 [ %.pre.i, %bb.a ], [ %i.t, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i ] ; 2 uses
  %.0.i = phi i64 [ %i.a, %bb.a ], [ %i.g, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i ] ; 2 uses
  %i.e = trunc i64 %.0.i to i8
  %i.f = and i8 %i.e, 127
  %i.g = lshr i64 %.0.i, 7                        ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0                   ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %storemerge.i = or disjoint i8 %masksel.i, %i.f
  %i.h = add i64 %i.d, 1                          ; 2 uses
  %i.i = load i64, ptr %i.c, align 8              ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i.i.i, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i: ; preds = %bb.b
  %.pre2.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ %i.i, %bb.b ]
  %i.l = shl i64 %i.k, 1                          ; 4 uses
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZN2v84base7ReallocEPvm.exit.i.i.i, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  store i64 %i.l, ptr %i.c, align 8
  %i.n = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.o = tail call noundef ptr @realloc(ptr noundef %i.n, i64 noundef %i.l) #24 ; 2 uses
  store ptr %i.o, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i = load i64, ptr %i.b, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i
  %i.p = phi ptr [ %.pre2.i.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i ], [ %i.o, %_ZN2v84base7ReallocEPvm.exit.i.i.i ]
  %i.q = phi i64 [ %i.d, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i ], [ %.pre.i.i, %_ZN2v84base7ReallocEPvm.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 %storemerge.i, ptr %i.r, align 1
  %i.s = load i64, ptr %i.b, align 8              ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.t, ptr %i.b, align 8
  br i1 %.not.i, label %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit, label %bb.b, !llvm.loop !8

_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i
  %i.u = select i1 %4, i8 5, i8 52
  %i.v = add i64 %i.s, 2                          ; 2 uses
  %i.w = load i64, ptr %i.c, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.i.i22, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i19

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i19: ; preds = %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit
  %.pre2.i.i20 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i21

.lr.ph.i.i.i22:                                   ; preds = %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit, %.lr.ph.i.i.i22
  %i.y = phi i64 [ %i.z, %.lr.ph.i.i.i22 ], [ %i.w, %_ZN2v88internal15GDBJITInterface6Writer12WriteULEB128Em.exit ]
  %i.z = shl i64 %i.y, 1                          ; 4 uses
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %.lr.ph.i.i.i22, label %_ZN2v84base7ReallocEPvm.exit.i.i.i23, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i23:             ; preds = %.lr.ph.i.i.i22
  store i64 %i.z, ptr %i.c, align 8
  %i.ab = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ac = tail call noundef ptr @realloc(ptr noundef %i.ab, i64 noundef %i.z) #24 ; 2 uses
  store ptr %i.ac, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i24 = load i64, ptr %i.b, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i21

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i21: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i23, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i19
  %i.ad = phi ptr [ %.pre2.i.i20, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i19 ], [ %i.ac, %_ZN2v84base7ReallocEPvm.exit.i.i.i23 ]
  %i.ae = phi i64 [ %i.t, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i19 ], [ %.pre.i.i24, %_ZN2v84base7ReallocEPvm.exit.i.i.i23 ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.u, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 2 uses
  store i64 %i.ah, ptr %i.b, align 8
  %i.ai = add i64 %i.ag, 2                        ; 2 uses
  %i.aj = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %.lr.ph.i.i, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i21
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i21, %.lr.ph.i.i
  %i.al = phi i64 [ %i.am, %.lr.ph.i.i ], [ %i.aj, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i21 ]
  %i.am = shl i64 %i.al, 1                        ; 4 uses
  %i.an = icmp ult i64 %i.am, %i.ai
  br i1 %i.an, label %.lr.ph.i.i, label %_ZN2v84base7ReallocEPvm.exit.i.i, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i:                 ; preds = %.lr.ph.i.i
  store i64 %i.am, ptr %i.c, align 8
  %i.ao = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ap = tail call noundef ptr @realloc(ptr noundef %i.ao, i64 noundef %i.am) #24 ; 2 uses
  store ptr %i.ap, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i26 = load i64, ptr %i.b, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i, %_ZN2v84base7ReallocEPvm.exit.i.i
  %i.aq = phi ptr [ %.pre2.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i ], [ %i.ap, %_ZN2v84base7ReallocEPvm.exit.i.i ]
  %i.ar = phi i64 [ %i.ah, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i ], [ %.pre.i26, %_ZN2v84base7ReallocEPvm.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  store i8 0, ptr %i.as, align 1
  %i.at = load i64, ptr %i.b, align 8             ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.au, ptr %i.b, align 8
end_hunk_0
