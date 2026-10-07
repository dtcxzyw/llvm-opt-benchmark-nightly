Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/gdb-jit?download=true
inline.NumInlined: 1377
inline.NumDeleted: 615
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2v88internal15GDBJITInterface17UnwindInfoSection20WriteFDEStateOnEntryEPNS1_6WriterE:bb.a
  %i.dn = phi i64 [ %i.dd, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i73 ], [ %.pre.i78, %_ZN2v84base7ReallocEPvm.exit.i.i77 ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  store i8 1, ptr %i.do, align 1
  %i.dp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.dq = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dq, ptr %i.a, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = add i64 %i.dp, 9                        ; 2 uses
  %i.dw = load i64, ptr %i.d, align 8             ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph.i.i83, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i80

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i80: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit79
  %.pre2.i82 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit

.lr.ph.i.i83:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit79, %.lr.ph.i.i83
  %i.dy = phi i64 [ %i.dz, %.lr.ph.i.i83 ], [ %i.dw, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit79 ]
  %i.dz = shl i64 %i.dy, 1                        ; 4 uses
  %i.ea = icmp ult i64 %i.dz, %i.dv
  br i1 %i.ea, label %.lr.ph.i.i83, label %_ZN2v84base7ReallocEPvm.exit.i.i84, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i84:               ; preds = %.lr.ph.i.i83
  store i64 %i.dz, ptr %i.d, align 8
  %i.eb = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ec = tail call noundef ptr @realloc(ptr noundef %i.eb, i64 noundef %i.dz) #24 ; 2 uses
  store ptr %i.ec, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i85 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i80, %_ZN2v84base7ReallocEPvm.exit.i.i84
  %i.ed = phi ptr [ %.pre2.i82, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i80 ], [ %i.ec, %_ZN2v84base7ReallocEPvm.exit.i.i84 ]
  %i.ee = phi i64 [ %i.dq, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i80 ], [ %.pre.i85, %_ZN2v84base7ReallocEPvm.exit.i.i84 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i64 %i.du, ptr %i.ef, align 1
  %i.eg = load i64, ptr %i.a, align 8
  %i.eh = add i64 %i.eg, 8
  store i64 %i.eh, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal15GDBJITInterface17UnwindInfoSection25WriteFDEStateAfterRBPPushEPNS1_6WriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 22 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 14 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %.lr.ph.i.i, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.g = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.e, %bb.a ]
  %i.h = shl i64 %i.g, 1                          ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.lr.ph.i.i, label %_ZN2v84base7ReallocEPvm.exit.i.i, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i:                 ; preds = %.lr.ph.i.i
  store i64 %i.h, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr @realloc(ptr noundef %i.k, i64 noundef %i.h) #24 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %.pre.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i, %_ZN2v84base7ReallocEPvm.exit.i.i
  %i.m = phi ptr [ %.pre2.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i ], [ %i.l, %_ZN2v84base7ReallocEPvm.exit.i.i ]
  %i.n = phi i64 [ %i.b, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i ], [ %.pre.i, %_ZN2v84base7ReallocEPvm.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 14, ptr %i.o, align 1
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 2 uses
  store i64 %i.q, ptr %i.a, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 18 uses
  %i.r = add i64 %i.p, 2                          ; 2 uses
  %i.s = load i64, ptr %i.d, align 8              ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  br i1 %i.t, label %.lr.ph.i.i.i, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit
  %.pre2.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit, %.lr.ph.i.i.i
  %i.u = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %i.s, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit ]
  %i.v = shl i64 %i.u, 1                          ; 4 uses
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN2v84base7ReallocEPvm.exit.i.i.i, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  store i64 %i.v, ptr %i.d, align 8
  %i.x = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.y = tail call noundef ptr @realloc(ptr noundef %i.x, i64 noundef %i.v) #24 ; 2 uses
  store ptr %i.y, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i
  %i.z = phi ptr [ %.pre2.i.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i ], [ %i.y, %_ZN2v84base7ReallocEPvm.exit.i.i.i ]
  %i.aa = phi i64 [ %i.q, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i ], [ %.pre.i.i, %_ZN2v84base7ReallocEPvm.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 0, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = add i64 %i.ac, 2                        ; 2 uses
  %i.af = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph.i.i12, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i9

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i9: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i
  %.pre2.i11 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit15

.lr.ph.i.i12:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i, %.lr.ph.i.i12
  %i.ah = phi i64 [ %i.ai, %.lr.ph.i.i12 ], [ %i.af, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i ]
  %i.ai = shl i64 %i.ah, 1                        ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ae
  br i1 %i.aj, label %.lr.ph.i.i12, label %_ZN2v84base7ReallocEPvm.exit.i.i13, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i13:               ; preds = %.lr.ph.i.i12
  store i64 %i.ai, ptr %i.d, align 8
  %i.ak = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.al = tail call noundef ptr @realloc(ptr noundef %i.ak, i64 noundef %i.ai) #24 ; 2 uses
  store ptr %i.al, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i14 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit15

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit15: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i9, %_ZN2v84base7ReallocEPvm.exit.i.i13
  %i.am = phi ptr [ %.pre2.i11, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i9 ], [ %i.al, %_ZN2v84base7ReallocEPvm.exit.i.i13 ]
  %i.an = phi i64 [ %i.ad, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i9 ], [ %.pre.i14, %_ZN2v84base7ReallocEPvm.exit.i.i13 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 5, ptr %i.ao, align 1
  %i.ap = load i64, ptr %i.a, align 8             ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.aq, ptr %i.a, align 8
  %i.ar = add i64 %i.ap, 2                        ; 2 uses
  %i.as = load i64, ptr %i.d, align 8             ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  br i1 %i.at, label %.lr.ph.i.i.i25, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i22

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i22: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit15
  %.pre2.i.i23 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i24

.lr.ph.i.i.i25:                                   ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit15, %.lr.ph.i.i.i25
  %i.au = phi i64 [ %i.av, %.lr.ph.i.i.i25 ], [ %i.as, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit15 ]
  %i.av = shl i64 %i.au, 1                        ; 4 uses
  %i.aw = icmp ult i64 %i.av, %i.ar
  br i1 %i.aw, label %.lr.ph.i.i.i25, label %_ZN2v84base7ReallocEPvm.exit.i.i.i26, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i26:             ; preds = %.lr.ph.i.i.i25
  store i64 %i.av, ptr %i.d, align 8
  %i.ax = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ay = tail call noundef ptr @realloc(ptr noundef %i.ax, i64 noundef %i.av) #24 ; 2 uses
  store ptr %i.ay, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i27 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i24

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i24: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i26, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i22
  %i.az = phi ptr [ %.pre2.i.i23, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i22 ], [ %i.ay, %_ZN2v84base7ReallocEPvm.exit.i.i.i26 ]
  %i.ba = phi i64 [ %i.aq, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i22 ], [ %.pre.i.i27, %_ZN2v84base7ReallocEPvm.exit.i.i.i26 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 6, ptr %i.bb, align 1
  %i.bc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.a, align 8
  %i.be = add i64 %i.bc, 2                        ; 2 uses
  %i.bf = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  br i1 %i.bg, label %.lr.ph.i.i.i34, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i32

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i32: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i24
  %.pre2.i.i33 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i

.lr.ph.i.i.i34:                                   ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i24, %.lr.ph.i.i.i34
  %i.bh = phi i64 [ %i.bi, %.lr.ph.i.i.i34 ], [ %i.bf, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i24 ]
  %i.bi = shl i64 %i.bh, 1                        ; 4 uses
  %i.bj = icmp ult i64 %i.bi, %i.be
  br i1 %i.bj, label %.lr.ph.i.i.i34, label %_ZN2v84base7ReallocEPvm.exit.i.i.i35, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i35:             ; preds = %.lr.ph.i.i.i34
  store i64 %i.bi, ptr %i.d, align 8
  %i.bk = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.bl = tail call noundef ptr @realloc(ptr noundef %i.bk, i64 noundef %i.bi) #24 ; 2 uses
  store ptr %i.bl, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i36 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i

_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i35, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i32
  %i.bm = phi ptr [ %.pre2.i.i33, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i32 ], [ %i.bl, %_ZN2v84base7ReallocEPvm.exit.i.i.i35 ]
  %i.bn = phi i64 [ %i.bd, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i32 ], [ %.pre.i.i36, %_ZN2v84base7ReallocEPvm.exit.i.i.i35 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 0, ptr %i.bo, align 1
  %i.bp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  store i64 %i.bq, ptr %i.a, align 8
  %i.br = add i64 %i.bp, 2                        ; 2 uses
  %i.bs = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph.i.i40, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i37

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i37: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i
  %.pre2.i39 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit43

.lr.ph.i.i40:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i, %.lr.ph.i.i40
  %i.bu = phi i64 [ %i.bv, %.lr.ph.i.i40 ], [ %i.bs, %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i ]
  %i.bv = shl i64 %i.bu, 1                        ; 4 uses
  %i.bw = icmp ult i64 %i.bv, %i.br
  br i1 %i.bw, label %.lr.ph.i.i40, label %_ZN2v84base7ReallocEPvm.exit.i.i41, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i41:               ; preds = %.lr.ph.i.i40
  store i64 %i.bv, ptr %i.d, align 8
  %i.bx = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.by = tail call noundef ptr @realloc(ptr noundef %i.bx, i64 noundef %i.bv) #24 ; 2 uses
  store ptr %i.by, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i42 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit43

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit43: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i37, %_ZN2v84base7ReallocEPvm.exit.i.i41
  %i.bz = phi ptr [ %.pre2.i39, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i37 ], [ %i.by, %_ZN2v84base7ReallocEPvm.exit.i.i41 ]
  %i.ca = phi i64 [ %i.bq, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i37 ], [ %.pre.i42, %_ZN2v84base7ReallocEPvm.exit.i.i41 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 1, ptr %i.cb, align 1
  %i.cc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 2 uses
  store i64 %i.cd, ptr %i.a, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = add i64 %i.cc, 9                        ; 2 uses
  %i.cj = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  br i1 %i.ck, label %.lr.ph.i.i47, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i44

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i44: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit43
  %.pre2.i46 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit

.lr.ph.i.i47:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit43, %.lr.ph.i.i47
  %i.cl = phi i64 [ %i.cm, %.lr.ph.i.i47 ], [ %i.cj, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit43 ]
  %i.cm = shl i64 %i.cl, 1                        ; 4 uses
  %i.cn = icmp ult i64 %i.cm, %i.ci
  br i1 %i.cn, label %.lr.ph.i.i47, label %_ZN2v84base7ReallocEPvm.exit.i.i48, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i48:               ; preds = %.lr.ph.i.i47
  store i64 %i.cm, ptr %i.d, align 8
  %i.co = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.cp = tail call noundef ptr @realloc(ptr noundef %i.co, i64 noundef %i.cm) #24 ; 2 uses
  store ptr %i.cp, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i49 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i44, %_ZN2v84base7ReallocEPvm.exit.i.i48
  %i.cq = phi ptr [ %.pre2.i46, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i44 ], [ %i.cp, %_ZN2v84base7ReallocEPvm.exit.i.i48 ]
  %i.cr = phi i64 [ %i.cd, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i44 ], [ %.pre.i49, %_ZN2v84base7ReallocEPvm.exit.i.i48 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  store i64 %i.ch, ptr %i.cs, align 1
  %i.ct = load i64, ptr %i.a, align 8
  %i.cu = add i64 %i.ct, 8
  store i64 %i.cu, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal15GDBJITInterface17UnwindInfoSection24WriteFDEStateAfterRBPSetEPNS1_6WriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %.lr.ph.i.i, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.g = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.e, %bb.a ]
  %i.h = shl i64 %i.g, 1                          ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.lr.ph.i.i, label %_ZN2v84base7ReallocEPvm.exit.i.i, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i:                 ; preds = %.lr.ph.i.i
  store i64 %i.h, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr @realloc(ptr noundef %i.k, i64 noundef %i.h) #24 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %.pre.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i, %_ZN2v84base7ReallocEPvm.exit.i.i
  %i.m = phi ptr [ %.pre2.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i ], [ %i.l, %_ZN2v84base7ReallocEPvm.exit.i.i ]
  %i.n = phi i64 [ %i.b, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i ], [ %.pre.i, %_ZN2v84base7ReallocEPvm.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 12, ptr %i.o, align 1
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 2 uses
  store i64 %i.q, ptr %i.a, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  %i.r = add i64 %i.p, 2                          ; 2 uses
  %i.s = load i64, ptr %i.d, align 8              ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  br i1 %i.t, label %.lr.ph.i.i.i, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit
  %.pre2.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit, %.lr.ph.i.i.i
  %i.u = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %i.s, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit ]
  %i.v = shl i64 %i.u, 1                          ; 4 uses
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN2v84base7ReallocEPvm.exit.i.i.i, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  store i64 %i.v, ptr %i.d, align 8
  %i.x = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.y = tail call noundef ptr @realloc(ptr noundef %i.x, i64 noundef %i.v) #24 ; 2 uses
  store ptr %i.y, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i
  %i.z = phi ptr [ %.pre2.i.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i ], [ %i.y, %_ZN2v84base7ReallocEPvm.exit.i.i.i ]
  %i.aa = phi i64 [ %i.q, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i ], [ %.pre.i.i, %_ZN2v84base7ReallocEPvm.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 6, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = add i64 %i.ac, 2                        ; 2 uses
  %i.af = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph.i.i.i16, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i
  %.pre2.i.i14 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i15

.lr.ph.i.i.i16:                                   ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i, %.lr.ph.i.i.i16
  %i.ah = phi i64 [ %i.ai, %.lr.ph.i.i.i16 ], [ %i.af, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i ]
  %i.ai = shl i64 %i.ah, 1                        ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ae
  br i1 %i.aj, label %.lr.ph.i.i.i16, label %_ZN2v84base7ReallocEPvm.exit.i.i.i17, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i17:             ; preds = %.lr.ph.i.i.i16
  store i64 %i.ai, ptr %i.d, align 8
  %i.ak = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.al = tail call noundef ptr @realloc(ptr noundef %i.ak, i64 noundef %i.ai) #24 ; 2 uses
  store ptr %i.al, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i18 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i15

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i15: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i17, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13
  %i.am = phi ptr [ %.pre2.i.i14, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13 ], [ %i.al, %_ZN2v84base7ReallocEPvm.exit.i.i.i17 ]
  %i.an = phi i64 [ %i.ad, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13 ], [ %.pre.i.i18, %_ZN2v84base7ReallocEPvm.exit.i.i.i17 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 0, ptr %i.ao, align 1
  %i.ap = load i64, ptr %i.a, align 8             ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.aq, ptr %i.a, align 8
  %i.ar = add i64 %i.ap, 2                        ; 2 uses
  %i.as = load i64, ptr %i.d, align 8             ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  br i1 %i.at, label %.lr.ph.i.i23, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i20

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i20: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i15
  %.pre2.i22 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit26

.lr.ph.i.i23:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i15, %.lr.ph.i.i23
  %i.au = phi i64 [ %i.av, %.lr.ph.i.i23 ], [ %i.as, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i15 ]
  %i.av = shl i64 %i.au, 1                        ; 4 uses
  %i.aw = icmp ult i64 %i.av, %i.ar
  br i1 %i.aw, label %.lr.ph.i.i23, label %_ZN2v84base7ReallocEPvm.exit.i.i24, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i24:               ; preds = %.lr.ph.i.i23
  store i64 %i.av, ptr %i.d, align 8
  %i.ax = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ay = tail call noundef ptr @realloc(ptr noundef %i.ax, i64 noundef %i.av) #24 ; 2 uses
  store ptr %i.ay, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i25 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit26
end_hunk_0
begin_hunk_1_@_ZN2v88internal15GDBJITInterface17UnwindInfoSection24WriteFDEStateAfterRBPSetEPNS1_6WriterE:bb.a
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i27, %_ZN2v84base7ReallocEPvm.exit.i.i31
  %i.bq = phi ptr [ %.pre2.i29, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i27 ], [ %i.bp, %_ZN2v84base7ReallocEPvm.exit.i.i31 ]
  %i.br = phi i64 [ %i.bd, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i27 ], [ %.pre.i32, %_ZN2v84base7ReallocEPvm.exit.i.i31 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  store i64 %i.bh, ptr %i.bs, align 1
  %i.bt = load i64, ptr %i.a, align 8
  %i.bu = add i64 %i.bt, 8
  store i64 %i.bu, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN2v88internal15GDBJITInterface17UnwindInfoSection24WriteFDEStateAfterRBPPopEPNS1_6WriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 25 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 16 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %.lr.ph.i.i, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.g = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.e, %bb.a ]
  %i.h = shl i64 %i.g, 1                          ; 4 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.lr.ph.i.i, label %_ZN2v84base7ReallocEPvm.exit.i.i, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i:                 ; preds = %.lr.ph.i.i
  store i64 %i.h, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr @realloc(ptr noundef %i.k, i64 noundef %i.h) #24 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  %.pre.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i, %_ZN2v84base7ReallocEPvm.exit.i.i
  %i.m = phi ptr [ %.pre2.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i ], [ %i.l, %_ZN2v84base7ReallocEPvm.exit.i.i ]
  %i.n = phi i64 [ %i.b, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i ], [ %.pre.i, %_ZN2v84base7ReallocEPvm.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 18, ptr %i.o, align 1
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 2 uses
  store i64 %i.q, ptr %i.a, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 21 uses
  %i.r = add i64 %i.p, 2                          ; 2 uses
  %i.s = load i64, ptr %i.d, align 8              ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  br i1 %i.t, label %.lr.ph.i.i.i, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit
  %.pre2.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit, %.lr.ph.i.i.i
  %i.u = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ %i.s, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit ]
  %i.v = shl i64 %i.u, 1                          ; 4 uses
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN2v84base7ReallocEPvm.exit.i.i.i, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  store i64 %i.v, ptr %i.d, align 8
  %i.x = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.y = tail call noundef ptr @realloc(ptr noundef %i.x, i64 noundef %i.v) #24 ; 2 uses
  store ptr %i.y, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i
  %i.z = phi ptr [ %.pre2.i.i, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i ], [ %i.y, %_ZN2v84base7ReallocEPvm.exit.i.i.i ]
  %i.aa = phi i64 [ %i.q, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i ], [ %.pre.i.i, %_ZN2v84base7ReallocEPvm.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 7, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = add i64 %i.ac, 2                        ; 2 uses
  %i.af = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph.i.i.i15, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i
  %.pre2.i.i14 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i

.lr.ph.i.i.i15:                                   ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i, %.lr.ph.i.i.i15
  %i.ah = phi i64 [ %i.ai, %.lr.ph.i.i.i15 ], [ %i.af, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i ]
  %i.ai = shl i64 %i.ah, 1                        ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ae
  br i1 %i.aj, label %.lr.ph.i.i.i15, label %_ZN2v84base7ReallocEPvm.exit.i.i.i16, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i16:             ; preds = %.lr.ph.i.i.i15
  store i64 %i.ai, ptr %i.d, align 8
  %i.ak = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.al = tail call noundef ptr @realloc(ptr noundef %i.ak, i64 noundef %i.ai) #24 ; 2 uses
  store ptr %i.al, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i17 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i

_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i16, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13
  %i.am = phi ptr [ %.pre2.i.i14, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13 ], [ %i.al, %_ZN2v84base7ReallocEPvm.exit.i.i.i16 ]
  %i.an = phi i64 [ %i.ad, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i13 ], [ %.pre.i.i17, %_ZN2v84base7ReallocEPvm.exit.i.i.i16 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 120, ptr %i.ao, align 1
  %i.ap = load i64, ptr %i.a, align 8             ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.aq, ptr %i.a, align 8
  %i.ar = add i64 %i.ap, 2                        ; 2 uses
  %i.as = load i64, ptr %i.d, align 8             ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  br i1 %i.at, label %.lr.ph.i.i21, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i18

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i18: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i
  %.pre2.i20 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit24

.lr.ph.i.i21:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i, %.lr.ph.i.i21
  %i.au = phi i64 [ %i.av, %.lr.ph.i.i21 ], [ %i.as, %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i ]
  %i.av = shl i64 %i.au, 1                        ; 4 uses
  %i.aw = icmp ult i64 %i.av, %i.ar
  br i1 %i.aw, label %.lr.ph.i.i21, label %_ZN2v84base7ReallocEPvm.exit.i.i22, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i22:               ; preds = %.lr.ph.i.i21
  store i64 %i.av, ptr %i.d, align 8
  %i.ax = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.ay = tail call noundef ptr @realloc(ptr noundef %i.ax, i64 noundef %i.av) #24 ; 2 uses
  store ptr %i.ay, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i23 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit24

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit24: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i18, %_ZN2v84base7ReallocEPvm.exit.i.i22
  %i.az = phi ptr [ %.pre2.i20, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i18 ], [ %i.ay, %_ZN2v84base7ReallocEPvm.exit.i.i22 ]
  %i.ba = phi i64 [ %i.aq, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i18 ], [ %.pre.i23, %_ZN2v84base7ReallocEPvm.exit.i.i22 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 5, ptr %i.bb, align 1
  %i.bc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 2 uses
  store i64 %i.bd, ptr %i.a, align 8
  %i.be = add i64 %i.bc, 2                        ; 2 uses
  %i.bf = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  br i1 %i.bg, label %.lr.ph.i.i.i34, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i31

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i31: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit24
  %.pre2.i.i32 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i33

.lr.ph.i.i.i34:                                   ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit24, %.lr.ph.i.i.i34
  %i.bh = phi i64 [ %i.bi, %.lr.ph.i.i.i34 ], [ %i.bf, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit24 ]
  %i.bi = shl i64 %i.bh, 1                        ; 4 uses
  %i.bj = icmp ult i64 %i.bi, %i.be
  br i1 %i.bj, label %.lr.ph.i.i.i34, label %_ZN2v84base7ReallocEPvm.exit.i.i.i35, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i35:             ; preds = %.lr.ph.i.i.i34
  store i64 %i.bi, ptr %i.d, align 8
  %i.bk = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.bl = tail call noundef ptr @realloc(ptr noundef %i.bk, i64 noundef %i.bi) #24 ; 2 uses
  store ptr %i.bl, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i36 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i33

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i33: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i35, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i31
  %i.bm = phi ptr [ %.pre2.i.i32, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i31 ], [ %i.bl, %_ZN2v84base7ReallocEPvm.exit.i.i.i35 ]
  %i.bn = phi i64 [ %i.bd, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i31 ], [ %.pre.i.i36, %_ZN2v84base7ReallocEPvm.exit.i.i.i35 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 6, ptr %i.bo, align 1
  %i.bp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  store i64 %i.bq, ptr %i.a, align 8
  %i.br = add i64 %i.bp, 2                        ; 2 uses
  %i.bs = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph.i.i.i47, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i44

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i44: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i33
  %.pre2.i.i45 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i46

.lr.ph.i.i.i47:                                   ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i33, %.lr.ph.i.i.i47
  %i.bu = phi i64 [ %i.bv, %.lr.ph.i.i.i47 ], [ %i.bs, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit.i33 ]
  %i.bv = shl i64 %i.bu, 1                        ; 4 uses
  %i.bw = icmp ult i64 %i.bv, %i.br
  br i1 %i.bw, label %.lr.ph.i.i.i47, label %_ZN2v84base7ReallocEPvm.exit.i.i.i48, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i.i48:             ; preds = %.lr.ph.i.i.i47
  store i64 %i.bv, ptr %i.d, align 8
  %i.bx = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.by = tail call noundef ptr @realloc(ptr noundef %i.bx, i64 noundef %i.bv) #24 ; 2 uses
  store ptr %i.by, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i.i49 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i46

_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i46: ; preds = %_ZN2v84base7ReallocEPvm.exit.i.i.i48, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i44
  %i.bz = phi ptr [ %.pre2.i.i45, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i44 ], [ %i.by, %_ZN2v84base7ReallocEPvm.exit.i.i.i48 ]
  %i.ca = phi i64 [ %i.bq, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i.i44 ], [ %.pre.i.i49, %_ZN2v84base7ReallocEPvm.exit.i.i.i48 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 0, ptr %i.cb, align 1
  %i.cc = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cd = add i64 %i.cc, 1                        ; 2 uses
  store i64 %i.cd, ptr %i.a, align 8
  %i.ce = add i64 %i.cc, 2                        ; 2 uses
  %i.cf = load i64, ptr %i.d, align 8             ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  br i1 %i.cg, label %.lr.ph.i.i54, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i51

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i51: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i46
  %.pre2.i53 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit57

.lr.ph.i.i54:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i46, %.lr.ph.i.i54
  %i.ch = phi i64 [ %i.ci, %.lr.ph.i.i54 ], [ %i.cf, %_ZN2v88internal15GDBJITInterface6Writer5WriteIaEEvRKT_.exit.i46 ]
  %i.ci = shl i64 %i.ch, 1                        ; 4 uses
  %i.cj = icmp ult i64 %i.ci, %i.ce
  br i1 %i.cj, label %.lr.ph.i.i54, label %_ZN2v84base7ReallocEPvm.exit.i.i55, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i55:               ; preds = %.lr.ph.i.i54
  store i64 %i.ci, ptr %i.d, align 8
  %i.ck = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.cl = tail call noundef ptr @realloc(ptr noundef %i.ck, i64 noundef %i.ci) #24 ; 2 uses
  store ptr %i.cl, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i56 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit57

_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit57: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i51, %_ZN2v84base7ReallocEPvm.exit.i.i55
  %i.cm = phi ptr [ %.pre2.i53, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i51 ], [ %i.cl, %_ZN2v84base7ReallocEPvm.exit.i.i55 ]
  %i.cn = phi i64 [ %i.cd, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i51 ], [ %.pre.i56, %_ZN2v84base7ReallocEPvm.exit.i.i55 ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  store i8 1, ptr %i.co, align 1
  %i.cp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cq = add i64 %i.cp, 1                        ; 2 uses
  store i64 %i.cq, ptr %i.a, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = add i64 %i.cp, 9                        ; 2 uses
  %i.cy = load i64, ptr %i.d, align 8             ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  br i1 %i.cz, label %.lr.ph.i.i61, label %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i58

._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i58: ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit57
  %.pre2.i60 = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit

.lr.ph.i.i61:                                     ; preds = %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit57, %.lr.ph.i.i61
  %i.da = phi i64 [ %i.db, %.lr.ph.i.i61 ], [ %i.cy, %_ZN2v88internal15GDBJITInterface6Writer5WriteIhEEvRKT_.exit57 ]
  %i.db = shl i64 %i.da, 1                        ; 4 uses
  %i.dc = icmp ult i64 %i.db, %i.cx
  br i1 %i.dc, label %.lr.ph.i.i61, label %_ZN2v84base7ReallocEPvm.exit.i.i62, !llvm.loop !0

_ZN2v84base7ReallocEPvm.exit.i.i62:               ; preds = %.lr.ph.i.i61
  store i64 %i.db, ptr %i.d, align 8
  %i.dd = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %i.de = tail call noundef ptr @realloc(ptr noundef %i.dd, i64 noundef %i.db) #24 ; 2 uses
  store ptr %i.de, ptr %.phi.trans.insert.i.i, align 8
  %.pre.i63 = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit

_ZN2v88internal15GDBJITInterface6Writer5WriteImEEvRKT_.exit: ; preds = %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i58, %_ZN2v84base7ReallocEPvm.exit.i.i62
  %i.df = phi ptr [ %.pre2.i60, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i58 ], [ %i.de, %_ZN2v84base7ReallocEPvm.exit.i.i62 ]
  %i.dg = phi i64 [ %i.cq, %._ZN2v88internal15GDBJITInterface6Writer6EnsureEm.exit_crit_edge.i58 ], [ %.pre.i63, %_ZN2v84base7ReallocEPvm.exit.i.i62 ]
  %i.dh = add i64 %i.cw, %i.cu
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store i64 %i.dh, ptr %i.di, align 1
  %i.dj = load i64, ptr %i.a, align 8
  %i.dk = add i64 %i.dj, 8
  store i64 %i.dk, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal15GDBJITInterface17UnwindInfoSection17WriteBodyInternalEPNS1_6WriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal15GDBJITInterface17UnwindInfoSection8WriteCIEEPNS1_6WriterE(ptr nonnull align 8 poison, ptr noundef %1)
  tail call void @_ZN2v88internal15GDBJITInterface17UnwindInfoSection8WriteFDEEPNS1_6WriterEi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %i.a)
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden void @__jit_debug_register_code() local_unnamed_addr #4 {
bb.a:
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @__gdb_print_v8_object(i64 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.v8::internal::StdoutStream", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 313
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #25
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.h = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #25 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  call void @_ZN2v88internal5PrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EERSo(i64 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #25 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #25, !inline_history !18
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #25, !inline_history !18
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #25, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

declare void @_ZN2v88internal5PrintILNS0_23HeapObjectReferenceTypeE1EmEEvNS0_10TaggedImplIXT_ET0_EERSo(i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #25
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #25
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15GDBJITInterface12EventHandlerEPKNS_12JitCodeEventE(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.v8::base::AddressRegion", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.v8::internal::GDBJITInterface::ELFSymbol", align 8 ; 8 uses
  %3 = alloca %"class.v8::internal::GDBJITInterface::ELFSymbol", align 8 ; 9 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.v8::internal::Zone", align 8 ; 16 uses
  %5 = alloca %"class.v8::internal::GDBJITInterface::ELF", align 8 ; 13 uses
  %6 = alloca %"class.v8::internal::GDBJITInterface::Writer", align 8 ; 7 uses
  %7 = alloca %"class.std::optional.469", align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::GDBJITInterface::CodeDescription", align 8 ; 16 uses
  %9 = alloca %"class.std::function", align 8     ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1809), align 1, !range !19, !noundef !20
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.cj

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %.off = add i32 %i.l, -1
  %switch = icmp ult i32 %.off, 2
end_hunk_1
