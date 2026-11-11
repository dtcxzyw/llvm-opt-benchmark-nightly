Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/miniflann?download=true
inline.NumInlined: 9150
inline.NumDeleted: 2944
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN7cvflann11KMeansIndexINS_10HammingLUTEE19chooseCentersRandomEiPiiS3_Ri:bb.a
  br i1 %.not, label %.preheader.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.ak, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit, label %_ZN7cvflann12UniqueRandom4nextEv.exit.us.lr.ph

_ZN7cvflann12UniqueRandom4nextEv.exit.us.lr.ph:   ; preds = %.preheader.split.us.preheader
  %i.al = sext i32 %i.ai to i64
  br label %_ZN7cvflann12UniqueRandom4nextEv.exit.us

_ZN7cvflann12UniqueRandom4nextEv.exit.us:         ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.us.lr.ph, %.preheader.split.us.backedge
  %indvars.iv5287 = phi i64 [ %i.al, %_ZN7cvflann12UniqueRandom4nextEv.exit.us.lr.ph ], [ %indvars.iv.next53, %.preheader.split.us.backedge ] ; 2 uses
  %indvars.iv.next53 = add nsw i64 %indvars.iv5287, 1 ; 3 uses
  %i.am = trunc nsw i64 %indvars.iv.next53 to i32 ; 2 uses
  store i32 %i.am, ptr %i.ab, align 4, !tbaa !327
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv5287
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread.loopexit, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.us
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !129 ; 2 uses
  store i32 %i.as, ptr %i.aj, align 4, !tbaa !129
  %i.at = sext i32 %i.as to i64
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !222 ; 2 uses
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !223 ; 2 uses
  %i.aw = mul i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 3 uses
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !328 ; 5 uses
  %.not.i27.us = icmp eq i64 %i.ay, 0
  br i1 %.not.i27.us, label %.preheader.split.us.backedge, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.us
  %xtraiter = and i64 %i.ay, 1
  %i.az = icmp eq i64 %i.ay, 1
  %unroll_iter = and i64 %i.ay, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod102 = trunc i64 %i.ay to i1
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ] ; 2 uses
  %.138.us = phi i1 [ %spec.select, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us ], [ false, %.lr.ph.i.preheader.us.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %i.av, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bd ; 3 uses
  br i1 %i.az, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.011.i.us = phi i64 [ %i.ca, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ] ; 4 uses
  %.0910.i.us = phi i32 [ %i.bz, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.011.i.us
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.011.i.us
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !128
  %i.bj = xor i8 %i.bi, %i.bg
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !128
  %.fr.us = freeze i8 %i.bm
  %i.bn = zext i8 %.fr.us to i32
  %i.bo = add i32 %.0910.i.us, %i.bn
  %i.bp = or disjoint i64 %.011.i.us, 1           ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !128
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !128
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !128
  %.fr.us.1 = freeze i8 %i.bx
  %i.by = zext i8 %.fr.us.1 to i32
  %i.bz = add i32 %i.bo, %i.by                    ; 3 uses
  %i.ca = add nuw i64 %.011.i.us, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa: ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa, %.lr.ph.i.preheader.us
  %.011.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us ], [ %i.ca, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa ] ; 2 uses
  %.0910.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.us ], [ %i.bz, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.011.i.us.epil.init
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !128
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 %.011.i.us.epil.init
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !128
  %i.cf = xor i8 %i.ce, %i.cc
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !128
  %.fr.us.epil = freeze i8 %i.ci
  %i.cj = zext i8 %.fr.us.epil to i32
  %i.ck = add i32 %.0910.i.us.epil.init, %i.cj
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us:   ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa = phi i32 [ %i.bz, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa ], [ %i.ck, %.lr.ph.i.us.epil.preheader ]
  %i.cl = icmp eq i32 %.lcssa, 0
  %spec.select = select i1 %i.cl, i1 true, i1 %.138.us ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv55
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %.lr.ph.i.preheader.us, !llvm.loop !1078

..loopexit_crit_edge.us:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us
  br i1 %spec.select, label %.preheader.split.us.backedge, label %.critedge

.preheader.split.us.backedge:                     ; preds = %.lr.ph.us, %..loopexit_crit_edge.us
  %i.cm = icmp eq i64 %indvars.iv.next53, %sext
  br i1 %i.cm, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit, label %_ZN7cvflann12UniqueRandom4nextEv.exit.us

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.ak, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread, label %_ZN7cvflann12UniqueRandom4nextEv.exit

_ZN7cvflann12UniqueRandom4nextEv.exit:            ; preds = %.preheader.split
  %i.cn = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.cn, ptr %i.ab, align 4, !tbaa !327
  %i.co = sext i32 %i.ai to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !129 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread, label %.loopexit

.loopexit:                                        ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !129
  store i32 %i.cu, ptr %i.aj, align 4, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %..loopexit_crit_edge.us, %.loopexit
  %i.cv = phi i32 [ %i.cn, %.loopexit ], [ %i.am, %..loopexit_crit_edge.us ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread, label %.preheader, !llvm.loop !1079

_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread.loopexit: ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.us
  %i.cw = trunc nuw nsw i64 %indvars.iv55 to i32
  br label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread

_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread: ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread.loopexit
  %.02537.ph = phi i32 [ %i.cw, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread.loopexit ], [ 0, %_ZN7cvflann12UniqueRandom4nextEv.exit ]
  store i32 %.02537.ph, ptr %5, align 4, !tbaa !129
  br label %bb.f

_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit: ; preds = %.preheader.split.us.preheader, %.preheader.split.us.backedge
  %i.cx = trunc nuw nsw i64 %indvars.iv55 to i32
  br label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread

_ZN7cvflann12UniqueRandom4nextEv.exit.thread:     ; preds = %.critedge, %.preheader.split, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit, %_ZN7cvflann12UniqueRandomC2Ei.exit
  %.02537 = phi i32 [ %i.cx, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit ], [ 0, %_ZN7cvflann12UniqueRandomC2Ei.exit ], [ 0, %.preheader.split ], [ %1, %.critedge ]
  store i32 %.02537, ptr %5, align 4, !tbaa !129
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZN7cvflann12UniqueRandomD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !323
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %.pre to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.dc) #30
  br label %_ZN7cvflann12UniqueRandomD2Ev.exit

_ZN7cvflann12UniqueRandomD2Ev.exit:               ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_10HammingLUTEE21chooseCentersGonzalesEiPiiS3_Ri(ptr noundef nonnull align 8 dereferenceable(212) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #4 comdat align 2 {
bb.a:
  %i.a = sitofp i32 %3 to double
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !330  ; 2 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = mul nuw i64 %i.d, 4164903690
  %i.f = lshr i64 %i.c, 32
  %i.g = add nuw i64 %i.e, %i.f                   ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !330
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 2147483647
  %i.j = uitofp nneg i32 %i.i to double
  %i.k = fmul nnan double %i.j, f0x3E00000000000000
  %i.l = fmul double %i.k, %i.a
  %i.m = fptosi double %i.l to i32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !129  ; 2 uses
  store i32 %i.p, ptr %4, align 4, !tbaa !129
  %i.q = icmp sgt i32 %1, 1
  %i.r = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge

.preheader.lr.ph.split.us:                        ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = sext i32 %i.p to i64
  %10 = load ptr, ptr %8, align 8, !tbaa !222     ; 4 uses
  %11 = load i64, ptr %7, align 8, !tbaa !223     ; 4 uses
  %12 = mul i64 %11, %9
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 %12 ; 6 uses
  %14 = load i64, ptr %6, align 8, !tbaa !328
  %.fr = freeze i64 %14                           ; 11 uses
  %.not.i.us = icmp eq i64 %.fr, 0
  %wide.trip.count121 = zext nneg i32 %1 to i64
  br i1 %.not.i.us, label %._crit_edge, label %.preheader.lr.ph.split.us.a

.preheader.lr.ph.split.us.a:                      ; preds = %.preheader.lr.ph.split.us
  %wide.trip.count = zext nneg i32 %3 to i64
  %wide.trip.count116 = zext nneg i32 %3 to i64
  %i.s = add i64 %.fr, -1                         ; 3 uses
  %xtraiter = and i64 %.fr, 1
  %i.t = icmp eq i64 %i.s, 0
  %unroll_iter = and i64 %.fr, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod146 = trunc i64 %.fr to i1
  %xtraiter147 = and i64 %.fr, 1
  %i.u = icmp eq i64 %i.s, 0
  %unroll_iter151 = and i64 %.fr, -2
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  %lcmp.mod150 = trunc i64 %.fr to i1
  %xtraiter153 = and i64 %.fr, 1
  %i.v = icmp eq i64 %i.s, 0
  %unroll_iter157 = and i64 %.fr, -2
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod156 = trunc i64 %.fr to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.b, %.preheader.lr.ph.split.us.a
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %bb.b ], [ 1, %.preheader.lr.ph.split.us.a ] ; 5 uses
  %i.w = icmp samesign ugt i64 %indvars.iv118, 1
  br i1 %i.w, label %.lr.ph61.split.us.us, label %.lr.ph.i.preheader.us84

.lr.ph.i.preheader.us84:                          ; preds = %.preheader.us, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ], [ 0, %.preheader.us ] ; 3 uses
  %.03959.us86 = phi i32 [ %spec.select45.us95, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ], [ 0, %.preheader.us ] ; 2 uses
  %.04158.us87 = phi i32 [ %spec.select.us94, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ], [ -1, %.preheader.us ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %11, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 %i.aa ; 3 uses
  br i1 %i.t, label %.lr.ph.i.us88.epil.preheader, label %.lr.ph.i.us88

.lr.ph.i.us88:                                    ; preds = %.lr.ph.i.preheader.us84, %.lr.ph.i.us88
  %.011.i.us89 = phi i64 [ %i.ax, %.lr.ph.i.us88 ], [ 0, %.lr.ph.i.preheader.us84 ] ; 4 uses
  %.0910.i.us90 = phi i32 [ %i.aw, %.lr.ph.i.us88 ], [ 0, %.lr.ph.i.preheader.us84 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us88 ], [ 0, %.lr.ph.i.preheader.us84 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 %.011.i.us89
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.011.i.us89
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !128
  %i.ag = xor i8 %i.af, %i.ad
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !128
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %.0910.i.us90, %i.ak
  %i.am = or disjoint i64 %.011.i.us89, 1         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !128
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.am
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !128
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !128
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.al, %i.av            ; 3 uses
  %i.ax = add nuw i64 %.011.i.us89, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa, label %.lr.ph.i.us88, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa: ; preds = %.lr.ph.i.us88
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92, label %.lr.ph.i.us88.epil.preheader

.lr.ph.i.us88.epil.preheader:                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa, %.lr.ph.i.preheader.us84
  %.011.i.us89.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us84 ], [ %i.ax, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa ] ; 2 uses
  %.0910.i.us90.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.us84 ], [ %i.aw, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 %.011.i.us89.epil.init
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !128
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.011.i.us89.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !128
  %i.bc = xor i8 %i.bb, %i.az
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !128
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nuw nsw i32 %.0910.i.us90.epil.init, %i.bg
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa, %.lr.ph.i.us88.epil.preheader
  %.lcssa = phi i32 [ %i.aw, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa ], [ %i.bh, %.lr.ph.i.us88.epil.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %.lcssa, %.03959.us86
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.us94 = select i1 %i.bi, i32 %i.bj, i32 %.04158.us87 ; 2 uses
  %spec.select45.us95 = tail call i32 @llvm.smax.i32(i32 %.lcssa, i32 %.03959.us86)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge62.us, label %.lr.ph.i.preheader.us84, !llvm.loop !1080

.lr.ph61.split.us.us:                             ; preds = %.preheader.us, %._crit_edge.us.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 3 uses
  %.03959.us.us = phi i32 [ %spec.select45.us.us, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 2 uses
  %.04158.us.us = phi i32 [ %spec.select.us.us, %._crit_edge.us.us ], [ -1, %.preheader.us ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv113
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !129
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %11, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 %i.bn ; 6 uses
  br i1 %i.u, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph61.split.us.us, %.lr.ph.i.us.us
  %.011.i.us.us = phi i64 [ %i.ck, %.lr.ph.i.us.us ], [ 0, %.lr.ph61.split.us.us ] ; 4 uses
  %.0910.i.us.us = phi i32 [ %i.cj, %.lr.ph.i.us.us ], [ 0, %.lr.ph61.split.us.us ]
  %niter152 = phi i64 [ %niter152.next.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph61.split.us.us ]
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 %.011.i.us.us
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i.us.us
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !128
  %i.bt = xor i8 %i.bs, %i.bq
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !128
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %.0910.i.us.us, %i.bx
  %i.bz = or disjoint i64 %.011.i.us.us, 1        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !128
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !128
  %i.ce = xor i8 %i.cd, %i.cb
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !128
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.by, %i.ci            ; 3 uses
  %i.ck = add nuw i64 %.011.i.us.us, 2            ; 2 uses
  %niter152.next.1 = add nuw i64 %niter152, 2     ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !14

.lr.ph.i48.preheader.us.us.preheader.unr-lcssa:   ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod148.not, label %.lr.ph.i48.preheader.us.us.preheader, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, %.lr.ph61.split.us.us
  %.011.i.us.us.epil.init = phi i64 [ 0, %.lr.ph61.split.us.us ], [ %i.ck, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ] ; 2 uses
  %.0910.i.us.us.epil.init = phi i32 [ 0, %.lr.ph61.split.us.us ], [ %i.cj, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 %.011.i.us.us.epil.init
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !128
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i.us.us.epil.init
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !128
  %i.cp = xor i8 %i.co, %i.cm
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !128
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %.0910.i.us.us.epil.init, %i.ct
  br label %.lr.ph.i48.preheader.us.us.preheader

.lr.ph.i48.preheader.us.us.preheader:             ; preds = %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa141 = phi i32 [ %i.cj, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ], [ %i.cu, %.lr.ph.i.us.us.epil.preheader ]
  br label %.lr.ph.i48.preheader.us.us

.lr.ph.i48.preheader.us.us:                       ; preds = %.lr.ph.i48.preheader.us.us.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ], [ 1, %.lr.ph.i48.preheader.us.us.preheader ] ; 2 uses
  %.03656.us66.us = phi i32 [ %spec.select46.us67.us, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ], [ %.lcssa141, %.lr.ph.i48.preheader.us.us.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv108
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %11, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 %i.cy ; 3 uses
  br i1 %i.v, label %.lr.ph.i48.us.us.epil.preheader, label %.lr.ph.i48.us.us

.lr.ph.i48.us.us:                                 ; preds = %.lr.ph.i48.preheader.us.us, %.lr.ph.i48.us.us
  %.011.i49.us.us = phi i64 [ %i.dv, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ] ; 4 uses
  %.0910.i50.us.us = phi i32 [ %i.du, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ]
  %niter158 = phi i64 [ %niter158.next.1, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.011.i49.us.us
  %i.db = load i8, ptr %i.da, align 1, !tbaa !128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i49.us.us
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !128
  %i.de = xor i8 %i.dd, %i.db
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !128
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nuw nsw i32 %.0910.i50.us.us, %i.di
  %i.dk = or disjoint i64 %.011.i49.us.us, 1      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !128
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.dk
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !128
  %i.dp = xor i8 %i.do, %i.dm
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !128
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dj, %i.dt            ; 3 uses
  %i.dv = add nuw i64 %.011.i49.us.us, 2          ; 2 uses
  %niter158.next.1 = add nuw i64 %niter158, 2     ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, label %.lr.ph.i48.us.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i48.us.us
  br i1 %lcmp.mod154.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us, label %.lr.ph.i48.us.us.epil.preheader

.lr.ph.i48.us.us.epil.preheader:                  ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, %.lr.ph.i48.preheader.us.us
  %.011.i49.us.us.epil.init = phi i64 [ 0, %.lr.ph.i48.preheader.us.us ], [ %i.dv, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.0910.i50.us.us.epil.init = phi i32 [ 0, %.lr.ph.i48.preheader.us.us ], [ %i.du, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.011.i49.us.us.epil.init
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !128
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i49.us.us.epil.init
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !128
  %i.ea = xor i8 %i.dz, %i.dx
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !128
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add nuw nsw i32 %.0910.i50.us.us.epil.init, %i.ee
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, %.lr.ph.i48.us.us.epil.preheader
  %.lcssa142 = phi i32 [ %i.du, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ], [ %i.ef, %.lr.ph.i48.us.us.epil.preheader ]
  %spec.select46.us67.us = tail call i32 @llvm.smin.i32(i32 %.lcssa142, i32 %.03656.us66.us) ; 3 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %indvars.iv118
  br i1 %exitcond112.not, label %._crit_edge.us.us, label %.lr.ph.i48.preheader.us.us, !llvm.loop !1081

._crit_edge.us.us:                                ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us
  %i.eg = icmp sgt i32 %spec.select46.us67.us, %.03959.us.us
  %i.eh = trunc nuw nsw i64 %indvars.iv113 to i32
  %spec.select.us.us = select i1 %i.eg, i32 %i.eh, i32 %.04158.us.us ; 2 uses
  %spec.select45.us.us = tail call i32 @llvm.smax.i32(i32 %spec.select46.us67.us, i32 %.03959.us.us)
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge62.us, label %.lr.ph61.split.us.us, !llvm.loop !1080

._crit_edge62.us:                                 ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92, %._crit_edge.us.us
  %.us-phi70.us = phi i32 [ %spec.select.us.us, %._crit_edge.us.us ], [ %spec.select.us94, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ] ; 2 uses
  %.not.us = icmp eq i32 %.us-phi70.us, -1
  br i1 %.not.us, label %._crit_edge.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge62.us
  %i.ei = sext i32 %.us-phi70.us to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !129
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv118
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !129
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.preheader.us, !llvm.loop !1082

._crit_edge.loopexit.split.loop.exit:             ; preds = %._crit_edge62.us
  %i.em = trunc nuw nsw i64 %indvars.iv118 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %.preheader.lr.ph.split.us, %bb.a
  %.043.lcssa = phi i32 [ 1, %bb.a ], [ 1, %.preheader.lr.ph.split.us ], [ %i.em, %._crit_edge.loopexit.split.loop.exit ], [ %1, %bb.b ]
  store i32 %.043.lcssa, ptr %5, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_10HammingLUTEE21chooseCentersKMeansppEiPiiS3_Ri(ptr noundef nonnull align 8 dereferenceable(212) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #4 comdat align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 9 uses
  %i.b = icmp slt i32 %3, 0
  %i.c = shl nuw nsw i64 %i.a, 2                  ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #32 ; 13 uses
  %i.f = sitofp i32 %3 to double
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !330  ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw i64 %i.i, 4164903690
  %i.k = lshr i64 %i.h, 32
  %i.l = add nuw i64 %i.j, %i.k                   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !330
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 2147483647
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fmul nnan double %i.o, f0x3E00000000000000
  %i.q = fmul double %i.p, %i.f
  %i.r = fptosi double %i.q to i32
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !129  ; 2 uses
  store i32 %i.u, ptr %4, align 4, !tbaa !129
  %i.v = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.v, label %.lr.ph, label %.preheader107

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !223  ; 2 uses
  %i.aa = sext i32 %i.u to i64
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !328 ; 5 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %xtraiter = and i64 %i.ae, 1
  %i.af = icmp eq i64 %i.ae, 1
  %unroll_iter = and i64 %i.ae, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod214 = trunc i64 %i.ae to i1
  br label %.lr.ph.i.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader: ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.c, i1 false), !tbaa !129
  br label %.preheader107

.preheader107:                                    ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, %bb.a
  %.073.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader ], [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ]
  %i.ag = icmp sgt i32 %1, 1
  br i1 %i.ag, label %.preheader.lr.ph, label %._crit_edge133

.preheader.lr.ph:                                 ; preds = %.preheader107
  %i.ah = add i32 %3, -1                          ; 2 uses
  %i.ai = icmp sgt i32 %3, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %wide.trip.count176 = zext nneg i32 %1 to i64
  %wide.trip.count151 = zext nneg i32 %i.ah to i64
  %xtraiter221 = and i64 %i.a, 3                  ; 3 uses
  %i.am = icmp ult i32 %3, 4
  %unroll_iter225 = and i64 %i.a, 2147483644
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  %lcmp.mod224 = icmp ne i64 %xtraiter221, 0
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.a, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 3 uses
  %.073111 = phi double [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0.000000e+00, %.lr.ph.i.preheader.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.z, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aq ; 3 uses
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bn, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.0910.i = phi i32 [ %i.bm, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.011.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !128
  %i.aw = xor i8 %i.av, %i.at
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !128
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %.0910.i, %i.ba
  %i.bc = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !128
  %i.bh = xor i8 %i.bg, %i.be
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !128
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bb, %i.bl            ; 3 uses
  %i.bn = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bn, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0910.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bm, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.011.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !128
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !128
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %.0910.i.epil.init, %i.bw
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa211 = phi i32 [ %i.bm, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ], [ %i.bx, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.bz = mul nuw nsw i32 %.lcssa211, %.lcssa211  ; 2 uses
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !129
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = fadd double %.073111, %i.ca             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %.preheader107, label %.lr.ph.i.preheader, !llvm.loop !1083

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge130
  %indvars.iv173 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next174, %._crit_edge130 ] ; 3 uses
  %.1132 = phi double [ %.073.lcssa, %.preheader.lr.ph ], [ %.075.lcssa184, %._crit_edge130 ]
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !330 ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = mul nuw i64 %i.ce, 4164903690
  %i.cg = lshr i64 %i.cd, 32
  %i.ch = add nuw i64 %i.cf, %i.cg                ; 2 uses
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !330
  br i1 %i.ai, label %.lr.ph114.preheader, label %._crit_edge

.lr.ph114.preheader:                              ; preds = %.preheader
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 2147483647
  %i.ck = uitofp nneg i32 %i.cj to double
  %i.cl = fmul nnan double %i.ck, f0x3E00000000000000
  %i.cm = tail call noundef double @llvm.fmuladd.f64(double %.1132, double %i.cl, double 0.000000e+00)
  br label %.lr.ph114

.lr.ph129.loopexit.unr-lcssa:                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us
  br i1 %lcmp.mod222.not, label %.lr.ph129, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader: ; preds = %.lr.ph129.loopexit.unr-lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader
  %indvars.iv158.epil.init = phi i64 [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader ], [ %indvars.iv.next159.3, %.lr.ph129.loopexit.unr-lcssa ]
  %.075118.us.epil.init = phi double [ 0.000000e+00, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader ], [ %i.es, %.lr.ph129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader
  %indvars.iv158.epil = phi i64 [ %indvars.iv.next159.epil, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %indvars.iv158.epil.init, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ] ; 2 uses
  %.075118.us.epil = phi double [ %i.cq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %.075118.us.epil.init, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv158.epil
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !129
  %.sroa.speculated104.us.epil = tail call i32 @llvm.smin.i32(i32 %i.co, i32 0)
  %i.cp = sitofp i32 %.sroa.speculated104.us.epil to double
  %i.cq = fadd double %.075118.us.epil, %i.cp     ; 2 uses
  %indvars.iv.next159.epil = add nuw nsw i64 %indvars.iv158.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter221
  br i1 %epil.iter.cmp.not, label %.lr.ph129, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil, !llvm.loop !1084

.lr.ph129:                                        ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit, %.lr.ph129.loopexit.unr-lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil
  %.075.lcssa185 = phi double [ %i.cq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %i.es, %.lr.ph129.loopexit.unr-lcssa ], [ %i.gi, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv173
  store i32 %i.du, ptr %i.cr, align 4, !tbaa !129
  %i.cs = sext i32 %.084.lcssa to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cs
end_hunk_0
begin_hunk_1_@_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE19chooseCentersRandomEiPiiS3_Ri:bb.a
  br i1 %.not, label %.preheader.split, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.ak, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit, label %_ZN7cvflann12UniqueRandom4nextEv.exit.us.lr.ph

_ZN7cvflann12UniqueRandom4nextEv.exit.us.lr.ph:   ; preds = %.preheader.split.us.preheader
  %i.al = sext i32 %i.ai to i64
  br label %_ZN7cvflann12UniqueRandom4nextEv.exit.us

_ZN7cvflann12UniqueRandom4nextEv.exit.us:         ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.us.lr.ph, %.preheader.split.us.backedge
  %indvars.iv5287 = phi i64 [ %i.al, %_ZN7cvflann12UniqueRandom4nextEv.exit.us.lr.ph ], [ %indvars.iv.next53, %.preheader.split.us.backedge ] ; 2 uses
  %indvars.iv.next53 = add nsw i64 %indvars.iv5287, 1 ; 3 uses
  %i.am = trunc nsw i64 %indvars.iv.next53 to i32 ; 2 uses
  store i32 %i.am, ptr %i.ab, align 4, !tbaa !327
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv5287
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread.loopexit, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.us
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !129 ; 2 uses
  store i32 %i.as, ptr %i.aj, align 4, !tbaa !129
  %i.at = sext i32 %i.as to i64
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !222 ; 2 uses
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !223 ; 2 uses
  %i.aw = mul i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 3 uses
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !398 ; 5 uses
  %.not.i27.us = icmp eq i64 %i.ay, 0
  br i1 %.not.i27.us, label %.preheader.split.us.backedge, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.us
  %xtraiter = and i64 %i.ay, 1
  %i.az = icmp eq i64 %i.ay, 1
  %unroll_iter = and i64 %i.ay, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod102 = trunc i64 %i.ay to i1
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us ], [ 0, %.lr.ph.i.preheader.us.preheader ] ; 2 uses
  %.138.us = phi i1 [ %spec.select, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us ], [ false, %.lr.ph.i.preheader.us.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %i.av, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bd ; 3 uses
  br i1 %i.az, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.011.i.us = phi i64 [ %i.ca, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ] ; 4 uses
  %.0910.i.us = phi i32 [ %i.bz, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.011.i.us
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.011.i.us
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !128
  %i.bj = xor i8 %i.bi, %i.bg
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !128
  %.fr.us = freeze i8 %i.bm
  %i.bn = zext i8 %.fr.us to i32
  %i.bo = add i32 %.0910.i.us, %i.bn
  %i.bp = or disjoint i64 %.011.i.us, 1           ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !128
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !128
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !128
  %.fr.us.1 = freeze i8 %i.bx
  %i.by = zext i8 %.fr.us.1 to i32
  %i.bz = add i32 %i.bo, %i.by                    ; 3 uses
  %i.ca = add nuw i64 %.011.i.us, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa: ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa, %.lr.ph.i.preheader.us
  %.011.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us ], [ %i.ca, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa ] ; 2 uses
  %.0910.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.us ], [ %i.bz, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.011.i.us.epil.init
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !128
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 %.011.i.us.epil.init
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !128
  %i.cf = xor i8 %i.ce, %i.cc
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !128
  %.fr.us.epil = freeze i8 %i.ci
  %i.cj = zext i8 %.fr.us.epil to i32
  %i.ck = add i32 %.0910.i.us.epil.init, %i.cj
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us:   ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa = phi i32 [ %i.bz, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.unr-lcssa ], [ %i.ck, %.lr.ph.i.us.epil.preheader ]
  %i.cl = icmp eq i32 %.lcssa, 0
  %spec.select = select i1 %i.cl, i1 true, i1 %.138.us ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv55
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %.lr.ph.i.preheader.us, !llvm.loop !1205

..loopexit_crit_edge.us:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us
  br i1 %spec.select, label %.preheader.split.us.backedge, label %.critedge

.preheader.split.us.backedge:                     ; preds = %.lr.ph.us, %..loopexit_crit_edge.us
  %i.cm = icmp eq i64 %indvars.iv.next53, %sext
  br i1 %i.cm, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit, label %_ZN7cvflann12UniqueRandom4nextEv.exit.us

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.ak, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread, label %_ZN7cvflann12UniqueRandom4nextEv.exit

_ZN7cvflann12UniqueRandom4nextEv.exit:            ; preds = %.preheader.split
  %i.cn = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.cn, ptr %i.ab, align 4, !tbaa !327
  %i.co = sext i32 %i.ai to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !129 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread, label %.loopexit

.loopexit:                                        ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !129
  store i32 %i.cu, ptr %i.aj, align 4, !tbaa !129
  br label %.critedge

.critedge:                                        ; preds = %..loopexit_crit_edge.us, %.loopexit
  %i.cv = phi i32 [ %i.cn, %.loopexit ], [ %i.am, %..loopexit_crit_edge.us ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread, label %.preheader, !llvm.loop !1206

_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread.loopexit: ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.us
  %i.cw = trunc nuw nsw i64 %indvars.iv55 to i32
  br label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread

_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread: ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread.loopexit
  %.02537.ph = phi i32 [ %i.cw, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread.loopexit ], [ 0, %_ZN7cvflann12UniqueRandom4nextEv.exit ]
  store i32 %.02537.ph, ptr %5, align 4, !tbaa !129
  br label %bb.f

_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit: ; preds = %.preheader.split.us.preheader, %.preheader.split.us.backedge
  %i.cx = trunc nuw nsw i64 %indvars.iv55 to i32
  br label %_ZN7cvflann12UniqueRandom4nextEv.exit.thread

_ZN7cvflann12UniqueRandom4nextEv.exit.thread:     ; preds = %.critedge, %.preheader.split, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit, %_ZN7cvflann12UniqueRandomC2Ei.exit
  %.02537 = phi i32 [ %i.cx, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.loopexit ], [ 0, %_ZN7cvflann12UniqueRandomC2Ei.exit ], [ 0, %.preheader.split ], [ %1, %.critedge ]
  store i32 %.02537, ptr %5, align 4, !tbaa !129
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZN7cvflann12UniqueRandomD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.thread.thread, %_ZN7cvflann12UniqueRandom4nextEv.exit.thread
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !323
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %.pre to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.dc) #30
  br label %_ZN7cvflann12UniqueRandomD2Ev.exit

_ZN7cvflann12UniqueRandomD2Ev.exit:               ; preds = %_ZN7cvflann12UniqueRandom4nextEv.exit.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE21chooseCentersGonzalesEiPiiS3_Ri(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #4 comdat align 2 {
bb.a:
  %i.a = sitofp i32 %3 to double
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !330  ; 2 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = mul nuw i64 %i.d, 4164903690
  %i.f = lshr i64 %i.c, 32
  %i.g = add nuw i64 %i.e, %i.f                   ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !330
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 2147483647
  %i.j = uitofp nneg i32 %i.i to double
  %i.k = fmul nnan double %i.j, f0x3E00000000000000
  %i.l = fmul double %i.k, %i.a
  %i.m = fptosi double %i.l to i32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !129  ; 2 uses
  store i32 %i.p, ptr %4, align 4, !tbaa !129
  %i.q = icmp sgt i32 %1, 1
  %i.r = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge

.preheader.lr.ph.split.us:                        ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = sext i32 %i.p to i64
  %10 = load ptr, ptr %8, align 8, !tbaa !222     ; 4 uses
  %11 = load i64, ptr %7, align 8, !tbaa !223     ; 4 uses
  %12 = mul i64 %11, %9
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 %12 ; 6 uses
  %14 = load i64, ptr %6, align 8, !tbaa !398
  %.fr = freeze i64 %14                           ; 11 uses
  %.not.i.us = icmp eq i64 %.fr, 0
  %wide.trip.count121 = zext nneg i32 %1 to i64
  br i1 %.not.i.us, label %._crit_edge, label %.preheader.lr.ph.split.us.a

.preheader.lr.ph.split.us.a:                      ; preds = %.preheader.lr.ph.split.us
  %wide.trip.count = zext nneg i32 %3 to i64
  %wide.trip.count116 = zext nneg i32 %3 to i64
  %i.s = add i64 %.fr, -1                         ; 3 uses
  %xtraiter = and i64 %.fr, 1
  %i.t = icmp eq i64 %i.s, 0
  %unroll_iter = and i64 %.fr, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod146 = trunc i64 %.fr to i1
  %xtraiter147 = and i64 %.fr, 1
  %i.u = icmp eq i64 %i.s, 0
  %unroll_iter151 = and i64 %.fr, -2
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  %lcmp.mod150 = trunc i64 %.fr to i1
  %xtraiter153 = and i64 %.fr, 1
  %i.v = icmp eq i64 %i.s, 0
  %unroll_iter157 = and i64 %.fr, -2
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod156 = trunc i64 %.fr to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.b, %.preheader.lr.ph.split.us.a
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %bb.b ], [ 1, %.preheader.lr.ph.split.us.a ] ; 5 uses
  %i.w = icmp samesign ugt i64 %indvars.iv118, 1
  br i1 %i.w, label %.lr.ph61.split.us.us, label %.lr.ph.i.preheader.us84

.lr.ph.i.preheader.us84:                          ; preds = %.preheader.us, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ], [ 0, %.preheader.us ] ; 3 uses
  %.03959.us86 = phi i32 [ %spec.select45.us95, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ], [ 0, %.preheader.us ] ; 2 uses
  %.04158.us87 = phi i32 [ %spec.select.us94, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ], [ -1, %.preheader.us ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %11, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 %i.aa ; 3 uses
  br i1 %i.t, label %.lr.ph.i.us88.epil.preheader, label %.lr.ph.i.us88

.lr.ph.i.us88:                                    ; preds = %.lr.ph.i.preheader.us84, %.lr.ph.i.us88
  %.011.i.us89 = phi i64 [ %i.ax, %.lr.ph.i.us88 ], [ 0, %.lr.ph.i.preheader.us84 ] ; 4 uses
  %.0910.i.us90 = phi i32 [ %i.aw, %.lr.ph.i.us88 ], [ 0, %.lr.ph.i.preheader.us84 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us88 ], [ 0, %.lr.ph.i.preheader.us84 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 %.011.i.us89
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.011.i.us89
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !128
  %i.ag = xor i8 %i.af, %i.ad
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !128
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %.0910.i.us90, %i.ak
  %i.am = or disjoint i64 %.011.i.us89, 1         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !128
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.am
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !128
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !128
  %i.av = zext i8 %i.au to i32
  %i.aw = add nuw nsw i32 %i.al, %i.av            ; 3 uses
  %i.ax = add nuw i64 %.011.i.us89, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa, label %.lr.ph.i.us88, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa: ; preds = %.lr.ph.i.us88
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92, label %.lr.ph.i.us88.epil.preheader

.lr.ph.i.us88.epil.preheader:                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa, %.lr.ph.i.preheader.us84
  %.011.i.us89.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.us84 ], [ %i.ax, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa ] ; 2 uses
  %.0910.i.us90.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.us84 ], [ %i.aw, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 %.011.i.us89.epil.init
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !128
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.011.i.us89.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !128
  %i.bc = xor i8 %i.bb, %i.az
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !128
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nuw nsw i32 %.0910.i.us90.epil.init, %i.bg
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa, %.lr.ph.i.us88.epil.preheader
  %.lcssa = phi i32 [ %i.aw, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92.unr-lcssa ], [ %i.bh, %.lr.ph.i.us88.epil.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %.lcssa, %.03959.us86
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select.us94 = select i1 %i.bi, i32 %i.bj, i32 %.04158.us87 ; 2 uses
  %spec.select45.us95 = tail call i32 @llvm.smax.i32(i32 %.lcssa, i32 %.03959.us86)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge62.us, label %.lr.ph.i.preheader.us84, !llvm.loop !1207

.lr.ph61.split.us.us:                             ; preds = %.preheader.us, %._crit_edge.us.us
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 3 uses
  %.03959.us.us = phi i32 [ %spec.select45.us.us, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 2 uses
  %.04158.us.us = phi i32 [ %spec.select.us.us, %._crit_edge.us.us ], [ -1, %.preheader.us ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv113
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !129
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %11, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 %i.bn ; 6 uses
  br i1 %i.u, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph61.split.us.us, %.lr.ph.i.us.us
  %.011.i.us.us = phi i64 [ %i.ck, %.lr.ph.i.us.us ], [ 0, %.lr.ph61.split.us.us ] ; 4 uses
  %.0910.i.us.us = phi i32 [ %i.cj, %.lr.ph.i.us.us ], [ 0, %.lr.ph61.split.us.us ]
  %niter152 = phi i64 [ %niter152.next.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph61.split.us.us ]
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 %.011.i.us.us
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i.us.us
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !128
  %i.bt = xor i8 %i.bs, %i.bq
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !128
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %.0910.i.us.us, %i.bx
  %i.bz = or disjoint i64 %.011.i.us.us, 1        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !128
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !128
  %i.ce = xor i8 %i.cd, %i.cb
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !128
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.by, %i.ci            ; 3 uses
  %i.ck = add nuw i64 %.011.i.us.us, 2            ; 2 uses
  %niter152.next.1 = add nuw i64 %niter152, 2     ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !14

.lr.ph.i48.preheader.us.us.preheader.unr-lcssa:   ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod148.not, label %.lr.ph.i48.preheader.us.us.preheader, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, %.lr.ph61.split.us.us
  %.011.i.us.us.epil.init = phi i64 [ 0, %.lr.ph61.split.us.us ], [ %i.ck, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ] ; 2 uses
  %.0910.i.us.us.epil.init = phi i32 [ 0, %.lr.ph61.split.us.us ], [ %i.cj, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 %.011.i.us.us.epil.init
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !128
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i.us.us.epil.init
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !128
  %i.cp = xor i8 %i.co, %i.cm
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !128
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %.0910.i.us.us.epil.init, %i.ct
  br label %.lr.ph.i48.preheader.us.us.preheader

.lr.ph.i48.preheader.us.us.preheader:             ; preds = %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa141 = phi i32 [ %i.cj, %.lr.ph.i48.preheader.us.us.preheader.unr-lcssa ], [ %i.cu, %.lr.ph.i.us.us.epil.preheader ]
  br label %.lr.ph.i48.preheader.us.us

.lr.ph.i48.preheader.us.us:                       ; preds = %.lr.ph.i48.preheader.us.us.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ], [ 1, %.lr.ph.i48.preheader.us.us.preheader ] ; 2 uses
  %.03656.us66.us = phi i32 [ %spec.select46.us67.us, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us ], [ %.lcssa141, %.lr.ph.i48.preheader.us.us.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv108
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !129
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %11, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 %i.cy ; 3 uses
  br i1 %i.v, label %.lr.ph.i48.us.us.epil.preheader, label %.lr.ph.i48.us.us

.lr.ph.i48.us.us:                                 ; preds = %.lr.ph.i48.preheader.us.us, %.lr.ph.i48.us.us
  %.011.i49.us.us = phi i64 [ %i.dv, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ] ; 4 uses
  %.0910.i50.us.us = phi i32 [ %i.du, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ]
  %niter158 = phi i64 [ %niter158.next.1, %.lr.ph.i48.us.us ], [ 0, %.lr.ph.i48.preheader.us.us ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.011.i49.us.us
  %i.db = load i8, ptr %i.da, align 1, !tbaa !128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i49.us.us
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !128
  %i.de = xor i8 %i.dd, %i.db
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !128
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nuw nsw i32 %.0910.i50.us.us, %i.di
  %i.dk = or disjoint i64 %.011.i49.us.us, 1      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !128
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.dk
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !128
  %i.dp = xor i8 %i.do, %i.dm
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !128
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dj, %i.dt            ; 3 uses
  %i.dv = add nuw i64 %.011.i49.us.us, 2          ; 2 uses
  %niter158.next.1 = add nuw i64 %niter158, 2     ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, label %.lr.ph.i48.us.us, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i48.us.us
  br i1 %lcmp.mod154.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us, label %.lr.ph.i48.us.us.epil.preheader

.lr.ph.i48.us.us.epil.preheader:                  ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, %.lr.ph.i48.preheader.us.us
  %.011.i49.us.us.epil.init = phi i64 [ 0, %.lr.ph.i48.preheader.us.us ], [ %i.dv, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.0910.i50.us.us.epil.init = phi i32 [ 0, %.lr.ph.i48.preheader.us.us ], [ %i.du, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.011.i49.us.us.epil.init
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !128
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.011.i49.us.us.epil.init
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !128
  %i.ea = xor i8 %i.dz, %i.dx
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !128
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add nuw nsw i32 %.0910.i50.us.us.epil.init, %i.ee
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa, %.lr.ph.i48.us.us.epil.preheader
  %.lcssa142 = phi i32 [ %i.du, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us.unr-lcssa ], [ %i.ef, %.lr.ph.i48.us.us.epil.preheader ]
  %spec.select46.us67.us = tail call i32 @llvm.smin.i32(i32 %.lcssa142, i32 %.03656.us66.us) ; 3 uses
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %indvars.iv118
  br i1 %exitcond112.not, label %._crit_edge.us.us, label %.lr.ph.i48.preheader.us.us, !llvm.loop !1208

._crit_edge.us.us:                                ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit53.loopexit.us.us
  %i.eg = icmp sgt i32 %spec.select46.us67.us, %.03959.us.us
  %i.eh = trunc nuw nsw i64 %indvars.iv113 to i32
  %spec.select.us.us = select i1 %i.eg, i32 %i.eh, i32 %.04158.us.us ; 2 uses
  %spec.select45.us.us = tail call i32 @llvm.smax.i32(i32 %spec.select46.us67.us, i32 %.03959.us.us)
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge62.us, label %.lr.ph61.split.us.us, !llvm.loop !1207

._crit_edge62.us:                                 ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92, %._crit_edge.us.us
  %.us-phi70.us = phi i32 [ %spec.select.us.us, %._crit_edge.us.us ], [ %spec.select.us94, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.us92 ] ; 2 uses
  %.not.us = icmp eq i32 %.us-phi70.us, -1
  br i1 %.not.us, label %._crit_edge.loopexit.split.loop.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge62.us
  %i.ei = sext i32 %.us-phi70.us to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !129
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv118
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !129
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.preheader.us, !llvm.loop !1209

._crit_edge.loopexit.split.loop.exit:             ; preds = %._crit_edge62.us
  %i.em = trunc nuw nsw i64 %indvars.iv118 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit, %.preheader.lr.ph.split.us, %bb.a
  %.043.lcssa = phi i32 [ 1, %bb.a ], [ 1, %.preheader.lr.ph.split.us ], [ %i.em, %._crit_edge.loopexit.split.loop.exit ], [ %1, %bb.b ]
  store i32 %.043.lcssa, ptr %5, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann27HierarchicalClusteringIndexINS_10HammingLUTEE21chooseCentersKMeansppEiPiiS3_Ri(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #4 comdat align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 9 uses
  %i.b = icmp slt i32 %3, 0
  %i.c = shl nuw nsw i64 %i.a, 2                  ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #32 ; 13 uses
  %i.f = sitofp i32 %3 to double
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !330  ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw i64 %i.i, 4164903690
  %i.k = lshr i64 %i.h, 32
  %i.l = add nuw i64 %i.j, %i.k                   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !330
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 2147483647
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fmul nnan double %i.o, f0x3E00000000000000
  %i.q = fmul double %i.p, %i.f
  %i.r = fptosi double %i.q to i32
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !129  ; 2 uses
  store i32 %i.u, ptr %4, align 4, !tbaa !129
  %i.v = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.v, label %.lr.ph, label %.preheader107

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !223  ; 2 uses
  %i.aa = sext i32 %i.u to i64
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !398 ; 5 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph
  %xtraiter = and i64 %i.ae, 1
  %i.af = icmp eq i64 %i.ae, 1
  %unroll_iter = and i64 %i.ae, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod218 = trunc i64 %i.ae to i1
  br label %.lr.ph.i.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader: ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.c, i1 false), !tbaa !129
  br label %.preheader107

.preheader107:                                    ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader, %bb.a
  %.073.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.us.preheader ], [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ]
  %i.ag = icmp sgt i32 %1, 1
  br i1 %i.ag, label %.preheader.lr.ph, label %._crit_edge133

.preheader.lr.ph:                                 ; preds = %.preheader107
  %i.ah = add i32 %3, -1                          ; 2 uses
  %i.ai = icmp sgt i32 %3, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.trip.count176 = zext nneg i32 %1 to i64
  %wide.trip.count151 = zext nneg i32 %i.ah to i64
  %xtraiter225 = and i64 %i.a, 3                  ; 3 uses
  %i.am = icmp ult i32 %3, 4
  %unroll_iter229 = and i64 %i.a, 2147483644
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %lcmp.mod228 = icmp ne i64 %xtraiter225, 0
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %i.a, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br label %.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 3 uses
  %.073111 = phi double [ %i.cb, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit ], [ 0.000000e+00, %.lr.ph.i.preheader.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.z, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aq ; 3 uses
  br i1 %i.af, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bn, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.0910.i = phi i32 [ %i.bm, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.011.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !128
  %i.aw = xor i8 %i.av, %i.at
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !128
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nuw nsw i32 %.0910.i, %i.ba
  %i.bc = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !128
  %i.bh = xor i8 %i.bg, %i.be
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !128
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bb, %i.bl            ; 3 uses
  %i.bn = add nuw i64 %.011.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bn, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0910.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bm, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.011.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.011.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !128
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZZNK7cvflann10HammingLUTclIPhEEiPKhT_mE13popCountTable, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !128
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %.0910.i.epil.init, %i.bw
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa215 = phi i32 [ %i.bm, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit.loopexit.unr-lcssa ], [ %i.bx, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.bz = mul nuw nsw i32 %.lcssa215, %.lcssa215  ; 2 uses
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !129
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = fadd double %.073111, %i.ca             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %.preheader107, label %.lr.ph.i.preheader, !llvm.loop !1210

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge130
  %indvars.iv173 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next174, %._crit_edge130 ] ; 3 uses
  %.1132 = phi double [ %.073.lcssa, %.preheader.lr.ph ], [ %.075.lcssa187, %._crit_edge130 ]
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !330 ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = mul nuw i64 %i.ce, 4164903690
  %i.cg = lshr i64 %i.cd, 32
  %i.ch = add nuw i64 %i.cf, %i.cg                ; 2 uses
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !330
  br i1 %i.ai, label %.lr.ph114.preheader, label %._crit_edge

.lr.ph114.preheader:                              ; preds = %.preheader
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 2147483647
  %i.ck = uitofp nneg i32 %i.cj to double
  %i.cl = fmul nnan double %i.ck, f0x3E00000000000000
  %i.cm = tail call noundef double @llvm.fmuladd.f64(double %.1132, double %i.cl, double 0.000000e+00)
  br label %.lr.ph114

.lr.ph129.loopexit.unr-lcssa:                     ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us
  br i1 %lcmp.mod226.not, label %.lr.ph129, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader: ; preds = %.lr.ph129.loopexit.unr-lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader
  %indvars.iv158.epil.init = phi i64 [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader ], [ %indvars.iv.next159.3, %.lr.ph129.loopexit.unr-lcssa ]
  %.075118.us.epil.init = phi double [ 0.000000e+00, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.preheader ], [ %i.er, %.lr.ph129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod228)
  br label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil

_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil: ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader
  %indvars.iv158.epil = phi i64 [ %indvars.iv.next159.epil, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %indvars.iv158.epil.init, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ] ; 2 uses
  %.075118.us.epil = phi double [ %i.cq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %.075118.us.epil.init, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ 0, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv158.epil
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !129
  %.sroa.speculated104.us.epil = tail call i32 @llvm.smin.i32(i32 %i.co, i32 0)
  %i.cp = sitofp i32 %.sroa.speculated104.us.epil to double
  %i.cq = fadd double %.075118.us.epil, %i.cp     ; 2 uses
  %indvars.iv.next159.epil = add nuw nsw i64 %indvars.iv158.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter225
  br i1 %epil.iter.cmp.not, label %.lr.ph129, label %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil, !llvm.loop !1211

.lr.ph129:                                        ; preds = %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit, %.lr.ph129.loopexit.unr-lcssa, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil
  %.075.lcssa188 = phi double [ %i.cq, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.us.epil ], [ %i.er, %.lr.ph129.loopexit.unr-lcssa ], [ %i.gh, %_ZNK7cvflann10HammingLUTclIPhEEiPKhT_m.exit93.loopexit ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv173
  store i32 %i.dt, ptr %i.cr, align 4, !tbaa !129
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dr
  %i.ct = load ptr, ptr %i.aj, align 8, !tbaa !222 ; 2 uses
end_hunk_1
