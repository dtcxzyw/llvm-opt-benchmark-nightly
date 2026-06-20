inline.NumInlined: 514
inline.NumDeleted: 215
begin_hunk_0_@_ZN13duckdb_snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  %i.mq = shl i32 %.tr21.i, 8
  %i.mr = or disjoint i32 %i.mq, 254              ; 9 uses
  %i.ms = add i64 %i.mo, -68                      ; 2 uses
  %i.mt = lshr i64 %i.ms, 6
  %i.mu = add nuw nsw i64 %i.mt, 1
  %xtraiter = and i64 %i.mu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !28

.prol.preheader:                                  ; preds = %.lr.ph.i169, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.mw, %.prol.preheader ], [ %i.mo, %.lr.ph.i169 ]
  %.01522.i.prol = phi ptr [ %i.mv, %.prol.preheader ], [ %.8, %.lr.ph.i169 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i169 ]
  store i32 %i.mr, ptr %.01522.i.prol, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.mw = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !32, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i169
  %.023.i.unr = phi i64 [ %i.mo, %.lr.ph.i169 ], [ %i.mw, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.8, %.lr.ph.i169 ], [ %i.mv, %.prol.preheader ]
  %.lcssa419.unr = phi ptr [ poison, %.lr.ph.i169 ], [ %i.mv, %.prol.preheader ]
  %.lcssa418.unr = phi i64 [ poison, %.lr.ph.i169 ], [ %i.mw, %.prol.preheader ]
  %i.mx = icmp ult i64 %i.ms, 448
  br i1 %i.mx, label %._crit_edge.i166, label %.lr.ph.i169.new, !prof !23

.lr.ph.i169.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i169.new
  %.023.i = phi i64 [ %i.ng, %.lr.ph.i169.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.nf, %.lr.ph.i169.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.mr, ptr %.01522.i, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.mr, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.mr, ptr %i.mz, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.mr, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.mr, ptr %i.nb, align 1
  %i.nc = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.mr, ptr %i.nc, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.mr, ptr %i.nd, align 1
  %i.ne = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.mr, ptr %i.ne, align 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.ng = add i64 %.023.i, -512                   ; 3 uses
  %i.nh = icmp ugt i64 %i.ng, 67
  br i1 %i.nh, label %.lr.ph.i169.new, label %._crit_edge.i166, !prof !35, !llvm.loop !36

._crit_edge.i166:                                 ; preds = %.prol.loopexit, %.lr.ph.i169.new, %bb.ah
  %.015.lcssa.i = phi ptr [ %.8, %bb.ah ], [ %.lcssa419.unr, %.prol.loopexit ], [ %i.nf, %.lr.ph.i169.new ] ; 5 uses
  %.0.lcssa.i = phi i64 [ %i.mo, %bb.ah ], [ %.lcssa418.unr, %.prol.loopexit ], [ %i.ng, %.lr.ph.i169.new ] ; 5 uses
  %i.ni = icmp samesign ugt i64 %.0.lcssa.i, 64
  br i1 %i.ni, label %.thread.i167, label %bb.ai

.thread.i167:                                     ; preds = %._crit_edge.i166
  %.tr.i168 = trunc i64 %i.mm to i32              ; 2 uses
  %i.nj = shl i32 %.tr.i168, 8
  %i.nk = or disjoint i32 %i.nj, 238
  store i32 %i.nk, ptr %.015.lcssa.i, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.nm = add nsw i64 %.0.lcssa.i, -60
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i166
  %i.nn = icmp samesign ult i64 %.0.lcssa.i, 12
  br i1 %i.nn, label %._crit_edge26.i, label %bb.ak

._crit_edge26.i:                                  ; preds = %bb.ai
  %.pre.i = trunc i64 %i.mm to i32
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge26.i, %.thread.i167
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i168, %.thread.i167 ]
  %.120.i = phi i64 [ %.0.lcssa.i, %._crit_edge26.i ], [ %i.nm, %.thread.i167 ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.nl, %.thread.i167 ] ; 2 uses
  %i.no = shl nuw nsw i64 %.120.i, 2
  %i.np = shl i64 %i.mm, 8
  %i.nq = add nuw i64 %i.no, %i.np
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = lshr i32 %.pre-phi.i, 3
  %i.nt = and i32 %i.ns, 224
  %i.nu = add nsw i32 %i.nt, -15
  %i.nv = icmp ult i64 %i.mm, 2048                ; 2 uses
  %i.nw = select i1 %i.nv, i32 %i.nu, i32 -2
  %i.nx = add i32 %i.nw, %i.nr
  store i32 %i.nx, ptr %.11619.i, align 1
  %i.ny = select i1 %i.nv, i64 2, i64 3
  %i.nz = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.ny
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.ak:                                            ; preds = %bb.ai
  %i.oa = shl nuw nsw i64 %.0.lcssa.i, 2
  %i.ob = shl i64 %i.mm, 8
  %i.oc = add i64 %i.ob, 4294967294
  %i.od = add i64 %i.oc, %i.oa
  %i.oe = trunc i64 %i.od to i32
  store i32 %i.oe, ptr %.015.lcssa.i, align 1
  %i.of = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit:  ; preds = %bb.ak, %bb.aj, %bb.ag
  %i.og = phi ptr [ %i.lx, %bb.ag ], [ %i.mn, %bb.aj ], [ %i.mn, %bb.ak ] ; 6 uses
  %.11193237 = phi i64 [ %.11193238, %bb.ag ], [ %.11193246, %bb.aj ], [ %.11193246, %bb.ak ] ; 3 uses
  %.9 = phi ptr [ %i.ml, %bb.ag ], [ %i.nz, %bb.aj ], [ %i.of, %bb.ak ] ; 3 uses
  %.not160 = icmp ult ptr %i.og, %i.e
  br i1 %.not160, label %bb.al, label %.thread254, !prof !19

bb.al:                                            ; preds = %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.oh, %i.h
  %i.oj = trunc i64 %i.oi to i16                  ; 2 uses
  %i.ok = add i16 %i.oj, -1
  %i.ol = getelementptr inbounds i8, ptr %i.og, i64 -1
  %.0.copyload.i170 = load i32, ptr %i.ol, align 1
  %i.om = mul i32 %.0.copyload.i170, 506832829
  %i.on = lshr i32 %i.om, 16
  %i.oo = and i32 %i.on, %i.b
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = add i64 %i.op, %i.i
  %i.or = inttoptr i64 %i.oq to ptr
  store i16 %i.ok, ptr %i.or, align 2, !tbaa !20
  %i.os = trunc i64 %.11193237 to i32             ; 2 uses
  %i.ot = mul i32 %i.os, 506832829
  %i.ou = lshr i32 %i.ot, 16
  %i.ov = and i32 %i.ou, %i.b
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = add i64 %i.ow, %i.i
  %i.oy = inttoptr i64 %i.ox to ptr               ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !20
  %i.pa = zext i16 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 %i.pa ; 2 uses
  store i16 %i.oj, ptr %i.oy, align 2, !tbaa !20
  %.0.copyload.i171 = load i32, ptr %i.pb, align 1
  %i.pc = icmp eq i32 %.0.copyload.i171, %i.os
  br i1 %i.pc, label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit, label %bb.am, !llvm.loop !38

bb.am:                                            ; preds = %bb.al
  %i.pd = lshr i64 %.11193237, 8
  %i.pe = trunc i64 %i.pd to i32
  br label %bb.c

.thread254:                                       ; preds = %bb.q, %bb.r, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.a
  %.13 = phi ptr [ %0, %bb.a ], [ %.0118, %bb.r ], [ %i.og, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0118, %bb.q ] ; 3 uses
  %.11 = phi ptr [ %2, %bb.a ], [ %.0117, %bb.r ], [ %.9, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0117, %bb.q ] ; 4 uses
  %i.pf = icmp ult ptr %.13, %i.c
  br i1 %i.pf, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.thread254
  %i.pg = ptrtoint ptr %i.c to i64
  %i.ph = ptrtoint ptr %.13 to i64
  %i.pi = sub i64 %i.pg, %i.ph                    ; 2 uses
  %i.pj = trunc i64 %i.pi to i32                  ; 2 uses
  %i.pk = add nsw i32 %i.pj, -1                   ; 3 uses
  %i.pl = icmp slt i32 %i.pj, 61
  br i1 %i.pl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.tr.i175 = trunc i32 %i.pk to i8
  %i.pm = shl i8 %.tr.i175, 2
  br label %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ap:                                            ; preds = %bb.an
  %i.pn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pk, i1 true)
  %i.po = lshr i32 %i.pn, 3
  %i.pp = xor i32 %i.po, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.pp to i8
  %i.pq = shl nuw nsw i8 %.tr16.i, 2
  %i.pr = or disjoint i8 %i.pq, -16
  %i.ps = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i32 %i.pk, ptr %i.ps, align 1
  %i.pt = zext nneg i32 %i.pp to i64
  %i.pu = getelementptr i8, ptr %i.ps, i64 %i.pt
  br label %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit: ; preds = %bb.ao, %bb.ap
  %.sink.i172 = phi i8 [ %i.pm, %bb.ao ], [ %i.pr, %bb.ap ]
  %.pn.i173 = phi ptr [ %.11, %bb.ao ], [ %i.pu, %bb.ap ]
  store i8 %.sink.i172, ptr %.11, align 1, !tbaa !7
  %.0.i174 = getelementptr i8, ptr %.pn.i173, i64 1 ; 2 uses
  %sext260 = shl i64 %i.pi, 32
  %i.pv = ashr exact i64 %sext260, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i174, ptr readonly align 1 %.13, i64 %i.pv, i1 false)
  %i.pw = getelementptr inbounds i8, ptr %.0.i174, i64 %i.pv
  br label %bb.aq

bb.aq:                                            ; preds = %.thread254, %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.11, %.thread254 ], [ %i.pw, %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN13duckdb_snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address, ret: address, provenance) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 %6) local_unnamed_addr #10 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = add i32 %i.a, -2                         ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 15 uses
  %i.d = icmp ugt i64 %1, 14
  br i1 %i.d, label %bb.b, label %.thread356, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -15 ; 3 uses
  %i.f = ptrtoint ptr %5 to i64                   ; 9 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.h = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 10 uses
  %i.k = trunc i64 %i.i to i32                    ; 5 uses
  %i.l = icmp slt i64 %1, 17
  br i1 %i.l, label %.thread356, label %.lr.ph585.lr.ph, !prof !23

.lr.ph585.lr.ph:                                  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %.lr.ph585

.loopexit.loopexit:                               ; preds = %bb.ac
  %i.n = getelementptr inbounds nuw i8, ptr %i.gd, i64 2 ; 2 uses
  %i.o = icmp ugt ptr %i.n, %i.e
  br i1 %i.o, label %.thread356, label %.lr.ph585, !prof !39

.lr.ph585:                                        ; preds = %.lr.ph585.lr.ph, %.loopexit.loopexit
  %i.p = phi ptr [ %i.m, %.lr.ph585.lr.ph ], [ %i.n, %.loopexit.loopexit ]
  %.0175591 = phi ptr [ %2, %.lr.ph585.lr.ph ], [ %.3, %.loopexit.loopexit ] ; 7 uses
  %.0176589 = phi ptr [ %0, %.lr.ph585.lr.ph ], [ %i.gd, %.loopexit.loopexit ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0176589, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.g
  %i.r = lshr i32 %i.x, 9
  %i.s = add i32 %i.x, 1
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 2 uses
  %i.v = icmp ugt ptr %i.u, %i.e
  br i1 %i.v, label %.thread356, label %bb.d, !prof !24

bb.d:                                             ; preds = %.lr.ph585, %bb.c
  %i.w = phi ptr [ %i.p, %.lr.ph585 ], [ %i.u, %bb.c ] ; 2 uses
  %i.x = phi i32 [ 513, %.lr.ph585 ], [ %i.s, %bb.c ] ; 2 uses
  %.1177584 = phi ptr [ %i.q, %.lr.ph585 ], [ %i.w, %bb.c ] ; 7 uses
  %.0183 = load i64, ptr %.1177584, align 1       ; 2 uses
  %i.y = mul i64 %.0183, 58295818150454627
  %i.z = lshr i64 %i.y, 49
  %7 = trunc nuw nsw i64 %i.z to i32
  %8 = and i32 %i.b, %7
  %9 = zext nneg i32 %8 to i64
  %i.aa = add i64 %9, %i.f
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !20
  %i.ad = zext i16 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = ptrtoint ptr %.1177584 to i64
  %i.ag = sub i64 %i.af, %i.g
  %i.ah = trunc i64 %i.ag to i16                  ; 3 uses
  store i16 %i.ah, ptr %i.ab, align 2, !tbaa !20
  %i.ai = trunc i64 %.0183 to i32                 ; 3 uses
  %.0.copyload.i218 = load i32, ptr %i.ae, align 1
  %i.aj = icmp eq i32 %.0.copyload.i218, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.g, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1177584, i64 4 ; 3 uses
  %.not34.i = icmp ugt ptr %i.am, %i.j
  br i1 %.not34.i, label %.critedge28.preheader.i, label %.lr.ph.i

.critedge28.preheader.loopexit.i:                 ; preds = %bb.f
  %i.an = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.critedge28.preheader.i

.critedge28.preheader.i:                          ; preds = %.critedge28.preheader.loopexit.i, %bb.e
  %.026.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.an, %.critedge28.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.am, %bb.e ], [ %i.av, %.critedge28.preheader.loopexit.i ] ; 3 uses
  %i.ao = icmp ult ptr %.0.lcssa.i, %i.c
  br i1 %i.ao, label %.lr.ph40.preheader.i, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

.lr.ph40.preheader.i:                             ; preds = %.critedge28.preheader.i
  %.0.lcssa50.i = ptrtoint ptr %.0.lcssa.i to i64
  %i.ap = zext i32 %.026.lcssa.i to i64
  %i.aq = add i32 %.026.lcssa.i, %i.k
  %i.ar = trunc i64 %.0.lcssa50.i to i32
  %i.as = sub i32 %i.aq, %i.ar
  br label %.lr.ph40.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.036.i = phi ptr [ %i.av, %bb.f ], [ %i.am, %bb.e ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.036.i, align 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i
  %.0.copyload.i29.i = load i64, ptr %i.at, align 1 ; 2 uses
  %i.au = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i29.i
  br i1 %i.au, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.av, %i.j
  br i1 %.not.i, label %.critedge28.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !40

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aw = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ax = xor i64 %.0.copyload.i29.i, %.0.copyload.i.i
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = lshr i32 %i.az, 3
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

.lr.ph40.i:                                       ; preds = %.critedge28.i, %.lr.ph40.preheader.i
  %indvars.iv48.i = phi i64 [ %i.ap, %.lr.ph40.preheader.i ], [ %indvars.iv.next49.i, %.critedge28.i ] ; 3 uses
  %.139.i = phi ptr [ %.0.lcssa.i, %.lr.ph40.preheader.i ], [ %i.bg, %.critedge28.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv48.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = load i8, ptr %.139.i, align 1, !tbaa !7
  %i.bf = icmp eq i8 %i.bd, %i.be
  br i1 %i.bf, label %.critedge28.i, label %.critedge2.loopexit.split.loop.exit.i

.critedge28.i:                                    ; preds = %.lr.ph40.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.139.i, i64 1 ; 2 uses
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  %exitcond.not.i = icmp eq ptr %i.bg, %i.c
  br i1 %exitcond.not.i, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit, label %.lr.ph40.i, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i:            ; preds = %.lr.ph40.i
  %i.bh = trunc nuw i64 %indvars.iv48.i to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit

_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit: ; preds = %.critedge28.i, %.critedge28.preheader.i, %.critedge.i, %.critedge2.loopexit.split.loop.exit.i
  %.2.i = phi i32 [ %i.bb, %.critedge.i ], [ %.026.lcssa.i, %.critedge28.preheader.i ], [ %i.bh, %.critedge2.loopexit.split.loop.exit.i ], [ %i.as, %.critedge28.i ]
  %i.bi = add i32 %.2.i, 4
  br label %.preheader

bb.g:                                             ; preds = %bb.d
  %i.bj = mul i32 %i.ai, -1640531535
  %i.bk = lshr i32 %i.bj, 17
  %i.bl = and i32 %i.bk, %i.b
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %i.bm, %i.h
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !20
  %i.bq = zext i16 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq
  store i16 %i.ah, ptr %i.bo, align 2, !tbaa !20
  %.0.copyload.i219 = load i32, ptr %i.br, align 1
  %i.bs = icmp eq i32 %.0.copyload.i219, %i.ai
  br i1 %i.bs, label %bb.h, label %bb.c, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1177584, i64 4 ; 3 uses
  %.not34.i220 = icmp ugt ptr %i.bv, %i.j
  br i1 %.not34.i220, label %.critedge28.preheader.i231, label %.lr.ph.i221

.critedge28.preheader.loopexit.i230:              ; preds = %bb.i
  %i.bw = trunc nuw i64 %indvars.iv.next.i228 to i32
  br label %.critedge28.preheader.i231

.critedge28.preheader.i231:                       ; preds = %.critedge28.preheader.loopexit.i230, %bb.h
  %.026.lcssa.i232 = phi i32 [ 0, %bb.h ], [ %i.bw, %.critedge28.preheader.loopexit.i230 ] ; 3 uses
  %.0.lcssa.i233 = phi ptr [ %i.bv, %bb.h ], [ %i.ce, %.critedge28.preheader.loopexit.i230 ] ; 3 uses
  %i.bx = icmp ult ptr %.0.lcssa.i233, %i.c
  br i1 %i.bx, label %.lr.ph40.preheader.i234, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243

.lr.ph40.preheader.i234:                          ; preds = %.critedge28.preheader.i231
  %.0.lcssa50.i235 = ptrtoint ptr %.0.lcssa.i233 to i64
  %i.by = zext i32 %.026.lcssa.i232 to i64
  %i.bz = add i32 %.026.lcssa.i232, %i.k
  %i.ca = trunc i64 %.0.lcssa50.i235 to i32
  %i.cb = sub i32 %i.bz, %i.ca
  br label %.lr.ph40.i236

.lr.ph.i221:                                      ; preds = %bb.h, %bb.i
  %indvars.iv.i222 = phi i64 [ %indvars.iv.next.i228, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.036.i223 = phi ptr [ %i.ce, %bb.i ], [ %i.bv, %bb.h ] ; 2 uses
  %.0.copyload.i.i224 = load i64, ptr %.036.i223, align 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.i222
  %.0.copyload.i29.i225 = load i64, ptr %i.cc, align 1 ; 2 uses
  %i.cd = icmp eq i64 %.0.copyload.i.i224, %.0.copyload.i29.i225
  br i1 %i.cd, label %bb.i, label %.critedge.i226

bb.i:                                             ; preds = %.lr.ph.i221
  %i.ce = getelementptr inbounds nuw i8, ptr %.036.i223, i64 8 ; 3 uses
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i222, 8 ; 2 uses
  %.not.i229 = icmp ugt ptr %i.ce, %i.j
  br i1 %.not.i229, label %.critedge28.preheader.loopexit.i230, label %.lr.ph.i221, !llvm.loop !40

.critedge.i226:                                   ; preds = %.lr.ph.i221
  %i.cf = trunc nuw nsw i64 %indvars.iv.i222 to i32
  %i.cg = xor i64 %.0.copyload.i29.i225, %.0.copyload.i.i224
  %i.ch = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = or disjoint i32 %i.cj, %i.cf
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243

.lr.ph40.i236:                                    ; preds = %.critedge28.i240, %.lr.ph40.preheader.i234
  %indvars.iv48.i237 = phi i64 [ %i.by, %.lr.ph40.preheader.i234 ], [ %indvars.iv.next49.i241, %.critedge28.i240 ] ; 3 uses
  %.139.i238 = phi ptr [ %.0.lcssa.i233, %.lr.ph40.preheader.i234 ], [ %i.cp, %.critedge28.i240 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv48.i237
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7
  %i.cn = load i8, ptr %.139.i238, align 1, !tbaa !7
  %i.co = icmp eq i8 %i.cm, %i.cn
  br i1 %i.co, label %.critedge28.i240, label %.critedge2.loopexit.split.loop.exit.i239

.critedge28.i240:                                 ; preds = %.lr.ph40.i236
  %i.cp = getelementptr inbounds nuw i8, ptr %.139.i238, i64 1 ; 2 uses
  %indvars.iv.next49.i241 = add nuw nsw i64 %indvars.iv48.i237, 1
  %exitcond.not.i242 = icmp eq ptr %i.cp, %i.c
  br i1 %exitcond.not.i242, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243, label %.lr.ph40.i236, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i239:         ; preds = %.lr.ph40.i236
  %i.cq = trunc nuw i64 %indvars.iv48.i237 to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243

_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243: ; preds = %.critedge28.i240, %.critedge28.preheader.i231, %.critedge.i226, %.critedge2.loopexit.split.loop.exit.i239
  %.2.i227 = phi i32 [ %i.ck, %.critedge.i226 ], [ %.026.lcssa.i232, %.critedge28.preheader.i231 ], [ %i.cq, %.critedge2.loopexit.split.loop.exit.i239 ], [ %i.cb, %.critedge28.i240 ]
  %i.cr = add i32 %.2.i227, 4                     ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1177584, i64 1 ; 5 uses
  %.0.copyload.i244 = load i64, ptr %i.cs, align 1
  %i.ct = mul i64 %.0.copyload.i244, 58295818150454627
  %i.cu = lshr i64 %i.ct, 49
  %10 = trunc nuw nsw i64 %i.cu to i32
  %11 = and i32 %i.b, %10
  %12 = zext nneg i32 %11 to i64
  %i.cv = add i64 %12, %i.f
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !20
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy ; 3 uses
  %.not34.i245 = icmp ugt ptr %i.cs, %i.j
  br i1 %.not34.i245, label %.critedge28.preheader.i256, label %.lr.ph.i246

.critedge28.preheader.loopexit.i255:              ; preds = %bb.j
  %i.da = trunc nuw i64 %indvars.iv.next.i253 to i32
  br label %.critedge28.preheader.i256

.critedge28.preheader.i256:                       ; preds = %.critedge28.preheader.loopexit.i255, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243
  %.026.lcssa.i257 = phi i32 [ 0, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243 ], [ %i.da, %.critedge28.preheader.loopexit.i255 ] ; 3 uses
  %.0.lcssa.i258 = phi ptr [ %i.cs, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243 ], [ %i.di, %.critedge28.preheader.loopexit.i255 ] ; 3 uses
  %i.db = icmp ult ptr %.0.lcssa.i258, %i.c
  br i1 %i.db, label %.lr.ph40.preheader.i259, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268

.lr.ph40.preheader.i259:                          ; preds = %.critedge28.preheader.i256
  %.0.lcssa50.i260 = ptrtoint ptr %.0.lcssa.i258 to i64
  %i.dc = zext i32 %.026.lcssa.i257 to i64
  %i.dd = add i32 %.026.lcssa.i257, %i.k
  %i.de = trunc i64 %.0.lcssa50.i260 to i32
  %i.df = sub i32 %i.dd, %i.de
  br label %.lr.ph40.i261

.lr.ph.i246:                                      ; preds = %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243, %bb.j
  %indvars.iv.i247 = phi i64 [ %indvars.iv.next.i253, %bb.j ], [ 0, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243 ] ; 3 uses
  %.036.i248 = phi ptr [ %i.di, %bb.j ], [ %i.cs, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit243 ] ; 2 uses
  %.0.copyload.i.i249 = load i64, ptr %.036.i248, align 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.i247
  %.0.copyload.i29.i250 = load i64, ptr %i.dg, align 1 ; 2 uses
  %i.dh = icmp eq i64 %.0.copyload.i.i249, %.0.copyload.i29.i250
  br i1 %i.dh, label %bb.j, label %.critedge.i251

bb.j:                                             ; preds = %.lr.ph.i246
  %i.di = getelementptr inbounds nuw i8, ptr %.036.i248, i64 8 ; 3 uses
  %indvars.iv.next.i253 = add nuw nsw i64 %indvars.iv.i247, 8 ; 2 uses
  %.not.i254 = icmp ugt ptr %i.di, %i.j
  br i1 %.not.i254, label %.critedge28.preheader.loopexit.i255, label %.lr.ph.i246, !llvm.loop !40

.critedge.i251:                                   ; preds = %.lr.ph.i246
  %i.dj = trunc nuw nsw i64 %indvars.iv.i247 to i32
  %i.dk = xor i64 %.0.copyload.i29.i250, %.0.copyload.i.i249
  %i.dl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dk, i1 true)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = lshr i32 %i.dm, 3
  %i.do = or disjoint i32 %i.dn, %i.dj
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268

.lr.ph40.i261:                                    ; preds = %.critedge28.i265, %.lr.ph40.preheader.i259
  %indvars.iv48.i262 = phi i64 [ %i.dc, %.lr.ph40.preheader.i259 ], [ %indvars.iv.next49.i266, %.critedge28.i265 ] ; 3 uses
  %.139.i263 = phi ptr [ %.0.lcssa.i258, %.lr.ph40.preheader.i259 ], [ %i.dt, %.critedge28.i265 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv48.i262
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !7
  %i.dr = load i8, ptr %.139.i263, align 1, !tbaa !7
  %i.ds = icmp eq i8 %i.dq, %i.dr
  br i1 %i.ds, label %.critedge28.i265, label %.critedge2.loopexit.split.loop.exit.i264

.critedge28.i265:                                 ; preds = %.lr.ph40.i261
  %i.dt = getelementptr inbounds nuw i8, ptr %.139.i263, i64 1 ; 2 uses
  %indvars.iv.next49.i266 = add nuw nsw i64 %indvars.iv48.i262, 1
  %exitcond.not.i267 = icmp eq ptr %i.dt, %i.c
  br i1 %exitcond.not.i267, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268, label %.lr.ph40.i261, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i264:         ; preds = %.lr.ph40.i261
  %i.du = trunc nuw i64 %indvars.iv48.i262 to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268

_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268: ; preds = %.critedge28.i265, %.critedge28.preheader.i256, %.critedge.i251, %.critedge2.loopexit.split.loop.exit.i264
  %.2.i252 = phi i32 [ %i.do, %.critedge.i251 ], [ %.026.lcssa.i257, %.critedge28.preheader.i256 ], [ %i.du, %.critedge2.loopexit.split.loop.exit.i264 ], [ %i.df, %.critedge28.i265 ] ; 2 uses
  %i.dv = sext i32 %.2.i252 to i64
  %i.dw = zext i32 %i.cr to i64
  %i.dx = icmp ugt i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.k, label %.preheader

bb.k:                                             ; preds = %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268
  store i16 %i.ah, ptr %i.cw, align 2, !tbaa !20
  br label %.preheader

.preheader:                                       ; preds = %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit, %bb.k
  %.4205.ph = phi i32 [ %.2.i252, %bb.k ], [ %i.bi, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.cr, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268 ] ; 2 uses
  %.4196.ph = phi ptr [ %i.cz, %bb.k ], [ %i.ak, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.bt, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268 ] ; 3 uses
  %.4180.ph = phi ptr [ %i.cs, %bb.k ], [ %.1177584, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %.1177584, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit268 ] ; 3 uses
  %i.dy = icmp ugt ptr %.4180.ph, %.0176589
  %i.dz = icmp ugt ptr %.4196.ph, %0
  %or.cond404 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond404, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.5181407 = phi ptr [ %i.ea, %bb.l ], [ %.4180.ph, %.preheader ] ; 2 uses
  %.5197406 = phi ptr [ %i.ec, %bb.l ], [ %.4196.ph, %.preheader ] ; 2 uses
  %.5206405 = phi i32 [ %i.ef, %bb.l ], [ %.4205.ph, %.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.5181407, i64 -1 ; 4 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !7
  %i.ec = getelementptr inbounds i8, ptr %.5197406, i64 -1 ; 4 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !7
  %i.ee = icmp eq i8 %i.eb, %i.ed
  br i1 %i.ee, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.ef = add i32 %.5206405, 1                    ; 2 uses
  %i.eg = icmp ugt ptr %i.ea, %.0176589
  %i.eh = icmp ugt ptr %i.ec, %0
  %or.cond = and i1 %i.eg, %i.eh
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !42

.critedge:                                        ; preds = %.lr.ph, %bb.l, %.preheader
  %.5206.lcssa = phi i32 [ %.4205.ph, %.preheader ], [ %i.ef, %bb.l ], [ %.5206405, %.lr.ph ]
  %.5197.lcssa = phi ptr [ %.4196.ph, %.preheader ], [ %i.ec, %bb.l ], [ %.5197406, %.lr.ph ]
  %.5181.lcssa = phi ptr [ %.4180.ph, %.preheader ], [ %i.ea, %bb.l ], [ %.5181407, %.lr.ph ] ; 4 uses
  %i.ei = ptrtoint ptr %.5181.lcssa to i64        ; 2 uses
  %i.ej = sub i64 %i.ei, %i.g
  %i.ek = trunc i64 %i.ej to i16                  ; 2 uses
  %i.el = add i16 %i.ek, 1                        ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.5181.lcssa, i64 1 ; 2 uses
  %.0.copyload.i270 = load i64, ptr %i.em, align 1
  %i.en = mul i64 %.0.copyload.i270, 58295818150454627
  %i.eo = lshr i64 %i.en, 49
  %13 = trunc nuw nsw i64 %i.eo to i32
  %14 = and i32 %i.b, %13
  %15 = zext nneg i32 %14 to i64
  %i.ep = add i64 %15, %i.f
  %i.eq = inttoptr i64 %i.ep to ptr
  store i16 %i.el, ptr %i.eq, align 2, !tbaa !20
  %i.er = add i16 %i.ek, 2
  %i.es = getelementptr inbounds nuw i8, ptr %.5181.lcssa, i64 2
  %.0.copyload.i271 = load i64, ptr %i.es, align 1
  %i.et = mul i64 %.0.copyload.i271, 58295818150454627
  %i.eu = lshr i64 %i.et, 49
  %16 = trunc nuw nsw i64 %i.eu to i32
  %17 = and i32 %i.b, %16
  %18 = zext nneg i32 %17 to i64
  %i.ev = add i64 %18, %i.f
  %i.ew = inttoptr i64 %i.ev to ptr
  store i16 %i.er, ptr %i.ew, align 2, !tbaa !20
  %.0.copyload.i272 = load i32, ptr %i.em, align 1
  %i.ex = mul i32 %.0.copyload.i272, -1640531535
  %i.ey = lshr i32 %i.ex, 17
  %i.ez = and i32 %i.ey, %i.b
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = add i64 %i.fa, %i.h
  %i.fc = inttoptr i64 %i.fb to ptr
  store i16 %i.el, ptr %i.fc, align 2, !tbaa !20
  %i.fd = ptrtoint ptr %.0176589 to i64
  %i.fe = sub i64 %i.ei, %i.fd                    ; 4 uses
  %i.ff = icmp sgt i64 %i.fe, 0
  br i1 %i.ff, label %bb.m, label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.m:                                             ; preds = %.critedge
  %i.fg = trunc i64 %i.fe to i32                  ; 3 uses
  %i.fh = add nsw i32 %i.fg, -1                   ; 4 uses
  %i.fi = icmp slt i32 %i.fg, 17
  br i1 %i.fi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.tr37.i = trunc i32 %i.fh to i8
  %i.fj = shl i8 %.tr37.i, 2
  %i.fk = getelementptr inbounds nuw i8, ptr %.0175591, i64 1 ; 2 uses
  store i8 %i.fj, ptr %.0175591, align 1, !tbaa !7
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fk, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0176589, i64 16, i1 false)
  %sext = shl i64 %i.fe, 32
  %i.fl = ashr exact i64 %sext, 32
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %i.fl
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.o:                                             ; preds = %bb.m
  %i.fn = icmp samesign ult i32 %i.fg, 61
  br i1 %i.fn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.tr.i = trunc nuw nsw i32 %i.fh to i8
  %i.fo = shl nuw i8 %.tr.i, 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fh, i1 true)
  %i.fq = lshr i32 %i.fp, 3
  %i.fr = xor i32 %i.fq, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.fr to i8
  %i.fs = shl nuw nsw i8 %.tr38.i, 2
  %i.ft = or disjoint i8 %i.fs, -16
  %i.fu = getelementptr inbounds nuw i8, ptr %.0175591, i64 1 ; 2 uses
  store i32 %i.fh, ptr %i.fu, align 1
  %i.fv = zext nneg i32 %i.fr to i64
  %i.fw = getelementptr i8, ptr %i.fu, i64 %i.fv
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i = phi i8 [ %i.fo, %bb.p ], [ %i.ft, %bb.q ]
  %.pn.i = phi ptr [ %.0175591, %bb.p ], [ %i.fw, %bb.q ]
  store i8 %.sink.i, ptr %.0175591, align 1, !tbaa !7
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.fx = and i64 %i.fe, 2147483647
  %i.fy = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.fx ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.031.i = phi ptr [ %.032.i, %bb.r ], [ %i.fz, %bb.s ] ; 2 uses
  %.030.i = phi ptr [ %.0176589, %bb.r ], [ %i.ga, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.031.i, ptr noundef nonnull align 1 dereferenceable(16) %.030.i, i64 16, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %.031.i, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.gb = icmp ult ptr %i.fz, %i.fy
  br i1 %i.gb, label %bb.s, label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !25

_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.s, %bb.n, %.critedge
  %.2.ph = phi ptr [ %.0175591, %.critedge ], [ %i.fm, %bb.n ], [ %i.fy, %bb.s ]
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit: ; preds = %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309
  %.6207 = phi i32 [ %.8209, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309 ], [ %.5206.lcssa, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 3 uses
  %.6198 = phi ptr [ %.8200, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309 ], [ %.5197.lcssa, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ]
  %.6182 = phi ptr [ %i.gd, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309 ], [ %.5181.lcssa, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 2 uses
  %.2 = phi ptr [ %.3, %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309 ], [ %.2.ph, %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %i.gc = zext i32 %.6207 to i64                  ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.6182, i64 %i.gc ; 17 uses
  %i.ge = ptrtoint ptr %.6182 to i64
  %i.gf = ptrtoint ptr %.6198 to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 9 uses
  %i.gh = icmp ult i32 %.6207, 12
  br i1 %i.gh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %i.gi = shl nuw nsw i64 %i.gc, 2
  %i.gj = shl i64 %i.gg, 8
  %i.gk = or disjoint i64 %i.gj, %i.gi
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = trunc i64 %i.gg to i32
  %i.gn = lshr i32 %i.gm, 3
  %i.go = and i32 %i.gn, 224
  %i.gp = add nsw i32 %i.go, -15
  %i.gq = icmp ult i64 %i.gg, 2048                ; 2 uses
  %i.gr = select i1 %i.gq, i32 %i.gp, i32 -2
  %i.gs = add i32 %i.gr, %i.gl
  store i32 %i.gs, ptr %.2, align 1
  %i.gt = select i1 %i.gq, i64 2, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.2, i64 %i.gt
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.u:                                             ; preds = %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %i.gv = icmp ugt i32 %.6207, 67
  br i1 %i.gv, label %.lr.ph.i276, label %._crit_edge.i, !prof !31

.lr.ph.i276:                                      ; preds = %bb.u
  %.tr21.i = trunc i64 %i.gg to i32
  %i.gw = shl i32 %.tr21.i, 8
  %i.gx = or disjoint i32 %i.gw, 254              ; 9 uses
  %i.gy = add nsw i64 %i.gc, -68                  ; 2 uses
  %i.gz = lshr i64 %i.gy, 6
  %i.ha = add nuw nsw i64 %i.gz, 1
  %xtraiter = and i64 %i.ha, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !28

.prol.preheader:                                  ; preds = %.lr.ph.i276, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.hc, %.prol.preheader ], [ %i.gc, %.lr.ph.i276 ]
  %.01522.i.prol = phi ptr [ %i.hb, %.prol.preheader ], [ %.2, %.lr.ph.i276 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i276 ]
  store i32 %i.gx, ptr %.01522.i.prol, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.hc = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !32, !llvm.loop !43

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i276
  %.023.i.unr = phi i64 [ %i.gc, %.lr.ph.i276 ], [ %i.hc, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.2, %.lr.ph.i276 ], [ %i.hb, %.prol.preheader ]
  %.lcssa621.unr = phi ptr [ poison, %.lr.ph.i276 ], [ %i.hb, %.prol.preheader ]
  %.lcssa620.unr = phi i64 [ poison, %.lr.ph.i276 ], [ %i.hc, %.prol.preheader ]
  %i.hd = icmp ult i64 %i.gy, 448
  br i1 %i.hd, label %._crit_edge.i, label %.lr.ph.i276.new, !prof !23

.lr.ph.i276.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i276.new
  %.023.i = phi i64 [ %i.hm, %.lr.ph.i276.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.hl, %.lr.ph.i276.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.gx, ptr %.01522.i, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.gx, ptr %i.he, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.gx, ptr %i.hf, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.gx, ptr %i.hg, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.gx, ptr %i.hh, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.gx, ptr %i.hi, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.gx, ptr %i.hj, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.gx, ptr %i.hk, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.hm = add i64 %.023.i, -512                   ; 3 uses
  %i.hn = icmp ugt i64 %i.hm, 67
  br i1 %i.hn, label %.lr.ph.i276.new, label %._crit_edge.i, !prof !35, !llvm.loop !44

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i276.new, %bb.u
  %.015.lcssa.i = phi ptr [ %.2, %bb.u ], [ %.lcssa621.unr, %.prol.loopexit ], [ %i.hl, %.lr.ph.i276.new ] ; 5 uses
  %.0.lcssa.i273 = phi i64 [ %i.gc, %bb.u ], [ %.lcssa620.unr, %.prol.loopexit ], [ %i.hm, %.lr.ph.i276.new ] ; 5 uses
  %i.ho = icmp samesign ugt i64 %.0.lcssa.i273, 64
  br i1 %i.ho, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %._crit_edge.i
  %.tr.i275 = trunc i64 %i.gg to i32              ; 2 uses
  %i.hp = shl i32 %.tr.i275, 8
  %i.hq = or disjoint i32 %i.hp, 238
  store i32 %i.hq, ptr %.015.lcssa.i, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.hs = add nsw i64 %.0.lcssa.i273, -60
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  %i.ht = icmp samesign ult i64 %.0.lcssa.i273, 12
  br i1 %i.ht, label %._crit_edge26.i, label %bb.x

._crit_edge26.i:                                  ; preds = %bb.v
  %.pre.i = trunc i64 %i.gg to i32
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge26.i, %.thread.i
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i275, %.thread.i ]
  %.120.i = phi i64 [ %.0.lcssa.i273, %._crit_edge26.i ], [ %i.hs, %.thread.i ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.hr, %.thread.i ] ; 2 uses
  %i.hu = shl nuw nsw i64 %.120.i, 2
  %i.hv = shl i64 %i.gg, 8
  %i.hw = add nuw i64 %i.hu, %i.hv
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = lshr i32 %.pre-phi.i, 3
  %i.hz = and i32 %i.hy, 224
  %i.ia = add nsw i32 %i.hz, -15
  %i.ib = icmp ult i64 %i.gg, 2048                ; 2 uses
  %i.ic = select i1 %i.ib, i32 %i.ia, i32 -2
  %i.id = add i32 %i.ic, %i.hx
  store i32 %i.id, ptr %.11619.i, align 1
  %i.ie = select i1 %i.ib, i64 2, i64 3
  %i.if = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.ie
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.x:                                             ; preds = %bb.v
  %i.ig = shl nuw nsw i64 %.0.lcssa.i273, 2
  %i.ih = shl i64 %i.gg, 8
  %i.ii = add i64 %i.ih, 4294967294
  %i.ij = add i64 %i.ii, %i.ig
  %i.ik = trunc i64 %i.ij to i32
  store i32 %i.ik, ptr %.015.lcssa.i, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit:  ; preds = %bb.x, %bb.w, %bb.t
  %.3 = phi ptr [ %i.gu, %bb.t ], [ %i.if, %bb.w ], [ %i.il, %bb.x ] ; 4 uses
  %.not = icmp ult ptr %i.gd, %i.e
  br i1 %.not, label %bb.y, label %.thread356, !prof !19

bb.y:                                             ; preds = %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.im = ptrtoint ptr %i.gd to i64
  %i.in = sub i64 %i.im, %i.g                     ; 2 uses
  %i.io = icmp sgt i64 %i.in, 7
  %i.ip = trunc i64 %i.in to i16                  ; 7 uses
  br i1 %i.io, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %i.iq = add i16 %i.ip, -7
  %i.ir = getelementptr inbounds i8, ptr %i.gd, i64 -7
  %.0.copyload.i277 = load i64, ptr %i.ir, align 1
  %i.is = mul i64 %.0.copyload.i277, 58295818150454627
  %i.it = lshr i64 %i.is, 49
  %19 = trunc nuw nsw i64 %i.it to i32
  %20 = and i32 %i.b, %19
  %21 = zext nneg i32 %20 to i64
  %i.iu = add i64 %21, %i.f
  %i.iv = inttoptr i64 %i.iu to ptr
  store i16 %i.iq, ptr %i.iv, align 2, !tbaa !20
  %i.iw = add i16 %i.ip, -4
  %i.ix = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %.0.copyload.i278 = load i64, ptr %i.ix, align 1
  %i.iy = mul i64 %.0.copyload.i278, 58295818150454627
  %i.iz = lshr i64 %i.iy, 49
  %22 = trunc nuw nsw i64 %i.iz to i32
  %23 = and i32 %i.b, %22
  %24 = zext nneg i32 %23 to i64
  %i.ja = add i64 %24, %i.f
  %i.jb = inttoptr i64 %i.ja to ptr
  store i16 %i.iw, ptr %i.jb, align 2, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.z
  %i.jc = add i16 %i.ip, -3
  %i.jd = getelementptr inbounds i8, ptr %i.gd, i64 -3
  %.0.copyload.i279 = load i64, ptr %i.jd, align 1
  %i.je = mul i64 %.0.copyload.i279, 58295818150454627
  %i.jf = lshr i64 %i.je, 49
  %25 = trunc nuw nsw i64 %i.jf to i32
  %26 = and i32 %i.b, %25
  %27 = zext nneg i32 %26 to i64
  %i.jg = add i64 %27, %i.f
  %i.jh = inttoptr i64 %i.jg to ptr
  store i16 %i.jc, ptr %i.jh, align 2, !tbaa !20
  %i.ji = add i16 %i.ip, -2                       ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %i.gd, i64 -2 ; 2 uses
  %.0.copyload.i280 = load i64, ptr %i.jj, align 1
  %i.jk = mul i64 %.0.copyload.i280, 58295818150454627
  %i.jl = lshr i64 %i.jk, 49
  %28 = trunc nuw nsw i64 %i.jl to i32
  %29 = and i32 %i.b, %28
  %30 = zext nneg i32 %29 to i64
  %i.jm = add i64 %30, %i.f
  %i.jn = inttoptr i64 %i.jm to ptr
  store i16 %i.ji, ptr %i.jn, align 2, !tbaa !20
  %.0.copyload.i281 = load i32, ptr %i.jj, align 1
  %i.jo = mul i32 %.0.copyload.i281, -1640531535
  %i.jp = lshr i32 %i.jo, 17
  %i.jq = and i32 %i.jp, %i.b
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = add i64 %i.jr, %i.h
  %i.jt = inttoptr i64 %i.js to ptr
  store i16 %i.ji, ptr %i.jt, align 2, !tbaa !20
  %i.ju = add i16 %i.ip, -1
  %i.jv = getelementptr inbounds i8, ptr %i.gd, i64 -1
  %.0.copyload.i282 = load i32, ptr %i.jv, align 1
  %i.jw = mul i32 %.0.copyload.i282, -1640531535
  %i.jx = lshr i32 %i.jw, 17
  %i.jy = and i32 %i.jx, %i.b
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = add i64 %i.jz, %i.h
  %i.kb = inttoptr i64 %i.ka to ptr
  store i16 %i.ju, ptr %i.kb, align 2, !tbaa !20
  %.0.copyload.i283 = load i64, ptr %i.gd, align 1
  %i.kc = mul i64 %.0.copyload.i283, 58295818150454627
  %i.kd = lshr i64 %i.kc, 49
  %31 = trunc nuw nsw i64 %i.kd to i32
  %32 = and i32 %i.b, %31
  %33 = zext nneg i32 %32 to i64
  %i.ke = add i64 %33, %i.f
  %i.kf = inttoptr i64 %i.ke to ptr               ; 2 uses
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !20
  %i.kh = zext i16 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 %i.kh ; 6 uses
  store i16 %i.ip, ptr %i.kf, align 2, !tbaa !20
  %.0.copyload.i284 = load i32, ptr %i.gd, align 1 ; 2 uses
  %.0.copyload.i285 = load i32, ptr %i.ki, align 1
  %i.kj = icmp eq i32 %.0.copyload.i284, %.0.copyload.i285
  br i1 %i.kj, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 3 uses
  %.not34.i286 = icmp ugt ptr %i.kl, %i.j
  br i1 %.not34.i286, label %.critedge28.preheader.i297, label %.lr.ph.i287

.critedge28.preheader.loopexit.i296:              ; preds = %bb.ab
  %i.km = trunc nuw i64 %indvars.iv.next.i294 to i32
  br label %.critedge28.preheader.i297

.critedge28.preheader.i297:                       ; preds = %.critedge28.preheader.loopexit.i296, %bb.aa
  %.026.lcssa.i298 = phi i32 [ 0, %bb.aa ], [ %i.km, %.critedge28.preheader.loopexit.i296 ] ; 3 uses
  %.0.lcssa.i299 = phi ptr [ %i.kl, %bb.aa ], [ %i.ku, %.critedge28.preheader.loopexit.i296 ] ; 3 uses
  %i.kn = icmp ult ptr %.0.lcssa.i299, %i.c
  br i1 %i.kn, label %.lr.ph40.preheader.i300, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

.lr.ph40.preheader.i300:                          ; preds = %.critedge28.preheader.i297
  %.0.lcssa50.i301 = ptrtoint ptr %.0.lcssa.i299 to i64
  %i.ko = zext i32 %.026.lcssa.i298 to i64
  %i.kp = add i32 %.026.lcssa.i298, %i.k
  %i.kq = trunc i64 %.0.lcssa50.i301 to i32
  %i.kr = sub i32 %i.kp, %i.kq
  br label %.lr.ph40.i302

.lr.ph.i287:                                      ; preds = %bb.aa, %bb.ab
  %indvars.iv.i288 = phi i64 [ %indvars.iv.next.i294, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %.036.i289 = phi ptr [ %i.ku, %bb.ab ], [ %i.kl, %bb.aa ] ; 2 uses
  %.0.copyload.i.i290 = load i64, ptr %.036.i289, align 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 %indvars.iv.i288
  %.0.copyload.i29.i291 = load i64, ptr %i.ks, align 1 ; 2 uses
  %i.kt = icmp eq i64 %.0.copyload.i.i290, %.0.copyload.i29.i291
  br i1 %i.kt, label %bb.ab, label %.critedge.i292

bb.ab:                                            ; preds = %.lr.ph.i287
  %i.ku = getelementptr inbounds nuw i8, ptr %.036.i289, i64 8 ; 3 uses
  %indvars.iv.next.i294 = add nuw nsw i64 %indvars.iv.i288, 8 ; 2 uses
  %.not.i295 = icmp ugt ptr %i.ku, %i.j
  br i1 %.not.i295, label %.critedge28.preheader.loopexit.i296, label %.lr.ph.i287, !llvm.loop !40

.critedge.i292:                                   ; preds = %.lr.ph.i287
  %i.kv = trunc nuw nsw i64 %indvars.iv.i288 to i32
  %i.kw = xor i64 %.0.copyload.i29.i291, %.0.copyload.i.i290
  %i.kx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kw, i1 true)
  %i.ky = trunc nuw nsw i64 %i.kx to i32
  %i.kz = lshr i32 %i.ky, 3
  %i.la = or disjoint i32 %i.kz, %i.kv
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

.lr.ph40.i302:                                    ; preds = %.critedge28.i306, %.lr.ph40.preheader.i300
  %indvars.iv48.i303 = phi i64 [ %i.ko, %.lr.ph40.preheader.i300 ], [ %indvars.iv.next49.i307, %.critedge28.i306 ] ; 3 uses
  %.139.i304 = phi ptr [ %.0.lcssa.i299, %.lr.ph40.preheader.i300 ], [ %i.lf, %.critedge28.i306 ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kk, i64 %indvars.iv48.i303
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !7
  %i.ld = load i8, ptr %.139.i304, align 1, !tbaa !7
  %i.le = icmp eq i8 %i.lc, %i.ld
  br i1 %i.le, label %.critedge28.i306, label %.critedge2.loopexit.split.loop.exit.i305

.critedge28.i306:                                 ; preds = %.lr.ph40.i302
  %i.lf = getelementptr inbounds nuw i8, ptr %.139.i304, i64 1 ; 2 uses
  %indvars.iv.next49.i307 = add nuw nsw i64 %indvars.iv48.i303, 1
  %exitcond.not.i308 = icmp eq ptr %i.lf, %i.c
  br i1 %exitcond.not.i308, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309, label %.lr.ph40.i302, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i305:         ; preds = %.lr.ph40.i302
  %i.lg = trunc nuw i64 %indvars.iv48.i303 to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

bb.ac:                                            ; preds = %._crit_edge
  %i.lh = mul i32 %.0.copyload.i284, -1640531535
  %i.li = lshr i32 %i.lh, 17
  %i.lj = and i32 %i.li, %i.b
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = add i64 %i.lk, %i.h
  %i.lm = inttoptr i64 %i.ll to ptr               ; 2 uses
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !20
  %i.lo = zext i16 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 %i.lo ; 6 uses
  store i16 %i.ip, ptr %i.lm, align 2, !tbaa !20
  %.0.copyload.i311 = load i32, ptr %i.gd, align 1
  %.0.copyload.i312 = load i32, ptr %i.lp, align 1
  %i.lq = icmp eq i32 %.0.copyload.i311, %.0.copyload.i312
  br i1 %i.lq, label %bb.ad, label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 4 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 3 uses
  %.not34.i313 = icmp ugt ptr %i.ls, %i.j
  br i1 %.not34.i313, label %.critedge28.preheader.i324, label %.lr.ph.i314

.critedge28.preheader.loopexit.i323:              ; preds = %bb.ae
  %i.lt = trunc nuw i64 %indvars.iv.next.i321 to i32
  br label %.critedge28.preheader.i324

.critedge28.preheader.i324:                       ; preds = %.critedge28.preheader.loopexit.i323, %bb.ad
  %.026.lcssa.i325 = phi i32 [ 0, %bb.ad ], [ %i.lt, %.critedge28.preheader.loopexit.i323 ] ; 3 uses
  %.0.lcssa.i326 = phi ptr [ %i.ls, %bb.ad ], [ %i.mb, %.critedge28.preheader.loopexit.i323 ] ; 3 uses
  %i.lu = icmp ult ptr %.0.lcssa.i326, %i.c
  br i1 %i.lu, label %.lr.ph40.preheader.i327, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

.lr.ph40.preheader.i327:                          ; preds = %.critedge28.preheader.i324
  %.0.lcssa50.i328 = ptrtoint ptr %.0.lcssa.i326 to i64
  %i.lv = zext i32 %.026.lcssa.i325 to i64
  %i.lw = add i32 %.026.lcssa.i325, %i.k
  %i.lx = trunc i64 %.0.lcssa50.i328 to i32
  %i.ly = sub i32 %i.lw, %i.lx
  br label %.lr.ph40.i329

.lr.ph.i314:                                      ; preds = %bb.ad, %bb.ae
  %indvars.iv.i315 = phi i64 [ %indvars.iv.next.i321, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %.036.i316 = phi ptr [ %i.mb, %bb.ae ], [ %i.ls, %bb.ad ] ; 2 uses
  %.0.copyload.i.i317 = load i64, ptr %.036.i316, align 1 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 %indvars.iv.i315
  %.0.copyload.i29.i318 = load i64, ptr %i.lz, align 1 ; 2 uses
  %i.ma = icmp eq i64 %.0.copyload.i.i317, %.0.copyload.i29.i318
  br i1 %i.ma, label %bb.ae, label %.critedge.i319

bb.ae:                                            ; preds = %.lr.ph.i314
  %i.mb = getelementptr inbounds nuw i8, ptr %.036.i316, i64 8 ; 3 uses
  %indvars.iv.next.i321 = add nuw nsw i64 %indvars.iv.i315, 8 ; 2 uses
  %.not.i322 = icmp ugt ptr %i.mb, %i.j
  br i1 %.not.i322, label %.critedge28.preheader.loopexit.i323, label %.lr.ph.i314, !llvm.loop !40

.critedge.i319:                                   ; preds = %.lr.ph.i314
  %i.mc = trunc nuw nsw i64 %indvars.iv.i315 to i32
  %i.md = xor i64 %.0.copyload.i29.i318, %.0.copyload.i.i317
  %i.me = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.md, i1 true)
  %i.mf = trunc nuw nsw i64 %i.me to i32
  %i.mg = lshr i32 %i.mf, 3
  %i.mh = or disjoint i32 %i.mg, %i.mc
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

.lr.ph40.i329:                                    ; preds = %.critedge28.i333, %.lr.ph40.preheader.i327
  %indvars.iv48.i330 = phi i64 [ %i.lv, %.lr.ph40.preheader.i327 ], [ %indvars.iv.next49.i334, %.critedge28.i333 ] ; 3 uses
  %.139.i331 = phi ptr [ %.0.lcssa.i326, %.lr.ph40.preheader.i327 ], [ %i.mm, %.critedge28.i333 ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lr, i64 %indvars.iv48.i330
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !7
  %i.mk = load i8, ptr %.139.i331, align 1, !tbaa !7
  %i.ml = icmp eq i8 %i.mj, %i.mk
  br i1 %i.ml, label %.critedge28.i333, label %.critedge2.loopexit.split.loop.exit.i332

.critedge28.i333:                                 ; preds = %.lr.ph40.i329
  %i.mm = getelementptr inbounds nuw i8, ptr %.139.i331, i64 1 ; 2 uses
  %indvars.iv.next49.i334 = add nuw nsw i64 %indvars.iv48.i330, 1
  %exitcond.not.i335 = icmp eq ptr %i.mm, %i.c
  br i1 %exitcond.not.i335, label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309, label %.lr.ph40.i329, !llvm.loop !41

.critedge2.loopexit.split.loop.exit.i332:         ; preds = %.lr.ph40.i329
  %i.mn = trunc nuw i64 %indvars.iv48.i330 to i32
  br label %_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309

_ZN13duckdb_snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit309: ; preds = %.critedge28.i333, %.critedge28.i306, %.critedge2.loopexit.split.loop.exit.i332, %.critedge.i319, %.critedge28.preheader.i324, %.critedge2.loopexit.split.loop.exit.i305, %.critedge.i292, %.critedge28.preheader.i297
  %.8209.in = phi i32 [ %i.kr, %.critedge28.i306 ], [ %i.la, %.critedge.i292 ], [ %.026.lcssa.i298, %.critedge28.preheader.i297 ], [ %i.lg, %.critedge2.loopexit.split.loop.exit.i305 ], [ %i.mh, %.critedge.i319 ], [ %.026.lcssa.i325, %.critedge28.preheader.i324 ], [ %i.mn, %.critedge2.loopexit.split.loop.exit.i332 ], [ %i.ly, %.critedge28.i333 ]
  %.8200 = phi ptr [ %i.ki, %.critedge28.i306 ], [ %i.ki, %.critedge.i292 ], [ %i.ki, %.critedge28.preheader.i297 ], [ %i.ki, %.critedge2.loopexit.split.loop.exit.i305 ], [ %i.lp, %.critedge.i319 ], [ %i.lp, %.critedge28.preheader.i324 ], [ %i.lp, %.critedge2.loopexit.split.loop.exit.i332 ], [ %i.lp, %.critedge28.i333 ]
  %.8209 = add i32 %.8209.in, 4
  br label %_ZN13duckdb_snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

.thread356:                                       ; preds = %.loopexit.loopexit, %bb.c, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.b, %bb.a
  %.8 = phi ptr [ %.0176589, %bb.c ], [ %0, %bb.a ], [ %i.gd, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %0, %bb.b ], [ %i.gd, %.loopexit.loopexit ] ; 3 uses
  %.5 = phi ptr [ %.0175591, %bb.c ], [ %2, %bb.a ], [ %.3, %_ZN13duckdb_snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %2, %bb.b ], [ %.3, %.loopexit.loopexit ] ; 4 uses
  %i.mo = icmp ult ptr %.8, %i.c
  br i1 %i.mo, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.thread356
  %i.mp = ptrtoint ptr %i.c to i64
  %i.mq = ptrtoint ptr %.8 to i64
  %i.mr = sub i64 %i.mp, %i.mq                    ; 2 uses
  %i.ms = trunc i64 %i.mr to i32                  ; 2 uses
  %i.mt = add nsw i32 %i.ms, -1                   ; 3 uses
  %i.mu = icmp slt i32 %i.ms, 61
  br i1 %i.mu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.tr.i340 = trunc i32 %i.mt to i8
  %i.mv = shl i8 %.tr.i340, 2
  br label %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ah:                                            ; preds = %bb.af
  %i.mw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mt, i1 true)
  %i.mx = lshr i32 %i.mw, 3
  %i.my = xor i32 %i.mx, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.my to i8
  %i.mz = shl nuw nsw i8 %.tr16.i, 2
  %i.na = or disjoint i8 %i.mz, -16
  %i.nb = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  store i32 %i.mt, ptr %i.nb, align 1
  %i.nc = zext nneg i32 %i.my to i64
  %i.nd = getelementptr i8, ptr %i.nb, i64 %i.nc
  br label %_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN13duckdb_snappyL11EmitLiteralILb0EEEPcS1_PKci.exit: ; preds = %bb.ag, %bb.ah
end_hunk_0
