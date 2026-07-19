inline.NumInlined: 1504
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti:bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !42
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b, !prof !45

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i.i29 = load i64, ptr %i.d, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pr = load ptr, ptr %4, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit, label %bb.d, !prof !250

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit: ; preds = %.thread, %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i33 = phi i64 [ %.sroa.0.0.copyload.i.i29, %.thread ], [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ] ; 2 uses
  %.sroa.516.0.extract.trunc34.in = lshr i64 %.sroa.0.0.copyload.i.i33, 32
  %.sroa.516.0.extract.trunc34 = trunc nuw i64 %.sroa.516.0.extract.trunc34.in to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.f = icmp sgt i32 %1, 0
  %i.g = icmp sgt i32 %3, 0
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.i = trunc i64 %.sroa.0.0.copyload.i.i33 to i1
  br i1 %i.i, label %.lr.ph41.split.us, label %.lr.ph41.split

.lr.ph41.split.us:                                ; preds = %.lr.ph41, %.critedge.us
  %.040.us = phi i32 [ %i.s, %.critedge.us ], [ %1, %.lr.ph41 ]
  %.02439.us = phi i32 [ %.125.us, %.critedge.us ], [ 0, %.lr.ph41 ]
  %i.j = add nsw i32 %.040.us, -1                 ; 2 uses
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !251
  %.125.us = add i32 %.02439.us, %.sroa.516.0.extract.trunc34 ; 2 uses
  %.not35.us = icmp eq i32 %i.j, 0
  br i1 %.not35.us, label %._crit_edge, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph41.split.us, %bb.e
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %bb.e ], [ %i.k, %.lr.ph41.split.us ] ; 3 uses
  %i.n = getelementptr [2 x i8], ptr %2, i64 %indvars.iv45
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !251
  %i.q = icmp eq i16 %i.m, %i.p
  br i1 %i.q, label %bb.e, label %.critedge.us

bb.e:                                             ; preds = %.lr.ph.us
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1 ; 2 uses
  %i.r = and i64 %indvars.iv.next46, 4294967295
  %.not.us = icmp eq i64 %i.r, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.us, !llvm.loop !253

.critedge.us:                                     ; preds = %.lr.ph.us
  %i.s = trunc nuw i64 %indvars.iv45 to i32       ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = icmp slt i32 %.125.us, %3
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph41.split.us, label %._crit_edge, !llvm.loop !254

.lr.ph41.split:                                   ; preds = %.lr.ph41
  %i.w = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86, !nonnull !97, !noundef !97 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !89, !range !96, !noundef !97
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = select i1 %i.af, ptr %i.ah, ptr null, !prof !45
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ac
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit

bb.f:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !42
  %.not.i.i26 = icmp eq ptr %i.al, null
  br i1 %.not.i.i26, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit27, label %bb.g, !prof !45

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit27

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit27: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.ak

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit:     ; preds = %.lr.ph41.split, %.critedge
  %.040 = phi i32 [ %1, %.lr.ph41.split ], [ %i.bb, %.critedge ]
  %.02439 = phi i32 [ 0, %.lr.ph41.split ], [ %.125, %.critedge ]
  %i.am = add nsw i32 %.040, -1                   ; 2 uses
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !251 ; 2 uses
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.av = sub nsw i32 %i.at, %i.au
  %.125 = add i32 %i.av, %.02439                  ; 2 uses
  %.not35 = icmp eq i32 %i.am, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.an, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit ] ; 3 uses
  %i.aw = getelementptr [2 x i8], ptr %2, i64 %indvars.iv
  %i.ax = getelementptr i8, ptr %i.aw, i64 -2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !251
  %i.az = icmp eq i16 %i.ap, %i.ay
  br i1 %i.az, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ba = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !253

.critedge:                                        ; preds = %.lr.ph
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = icmp slt i32 %.125, %3
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, label %._crit_edge, !llvm.loop !254

._crit_edge:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, %.critedge, %bb.h, %.lr.ph41.split.us, %.critedge.us, %bb.e, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %.0.lcssa = phi i32 [ %1, %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit ], [ 0, %bb.h ], [ 0, %bb.e ], [ %i.s, %.critedge.us ], [ 0, %.lr.ph41.split.us ], [ 0, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit ], [ %i.bb, %.critedge ]
  %i.bf = sub nsw i32 %1, %.0.lcssa
  ret i32 %i.bf
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i64 %3, -9223372036854775801
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute16ExecBatchBuilder14CollectBitsImpILb0EEEvPKhlPhliPKt(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute16ExecBatchBuilder14CollectBitsImpILb1EEEvPKhlPhliPKt(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute16ExecBatchBuilder14CollectBitsImpILb0EEEvPKhlPhliPKt(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = srem i64 %3, 8
  %i.b = trunc nsw i64 %i.a to i32                ; 3 uses
  %notmask = shl nsw i32 -1, %i.b
  %i.c = sdiv i64 %3, 8
  %i.d = getelementptr i8, ptr %2, i64 %i.c       ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %i.f = trunc i32 %notmask to i8
  %i.g = xor i8 %i.f, -1
  %i.h = and i8 %i.e, %i.g
  store i8 %i.h, ptr %i.d, align 1, !tbaa !16
  %i.i = icmp sgt i32 %4, 7
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = lshr i32 %4, 3
  %i.k = sub nsw i32 8, %i.b
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = srem i32 %4, 8                           ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph67.preheader, label %.loopexit

.lr.ph67.preheader:                               ; preds = %._crit_edge
  %i.n = sub nsw i32 %4, %i.l
  %i.o = sext i32 %i.n to i64
  %i.p = sext i32 %4 to i64
  br label %.lr.ph67

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 %.idx ; 8 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !251
  %i.s = zext i16 %i.r to i64
  %i.t = add nsw i64 %1, %i.s                     ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %i.x = trunc i64 %i.t to i8
  %i.y = and i8 %i.x, 7
  %i.z = lshr i8 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !251
  %i.ac = zext i16 %i.ab to i64
  %i.ad = add nsw i64 %1, %i.ac                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = trunc i64 %i.ad to i8
  %i.ai = and i8 %i.ah, 7
  %i.aj = lshr i8 %i.ag, %i.ai
  %i.ak = trunc i8 %i.aj to i1
  %i.al = select i1 %i.ak, i32 2, i32 0
  %i.am = and i8 %i.z, 1
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !251
  %i.ar = zext i16 %i.aq to i64
  %i.as = add nsw i64 %1, %i.ar                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = trunc i64 %i.as to i8
  %i.ax = and i8 %i.aw, 7
  %i.ay = lshr i8 %i.av, %i.ax
  %i.az = trunc i8 %i.ay to i1
  %i.ba = select i1 %i.az, i32 4, i32 0
  %i.bb = or disjoint i32 %i.ao, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !251
  %i.be = zext i16 %i.bd to i64
  %i.bf = add nsw i64 %1, %i.be                   ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = trunc i64 %i.bf to i8
  %i.bk = and i8 %i.bj, 7
  %i.bl = lshr i8 %i.bi, %i.bk
  %i.bm = trunc i8 %i.bl to i1
  %i.bn = select i1 %i.bm, i32 8, i32 0
  %i.bo = or disjoint i32 %i.bb, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !251
  %i.br = zext i16 %i.bq to i64
  %i.bs = add nsw i64 %1, %i.br                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = trunc i64 %i.bs to i8
  %i.bx = and i8 %i.bw, 7
  %i.by = lshr i8 %i.bv, %i.bx
  %i.bz = trunc i8 %i.by to i1
  %i.ca = select i1 %i.bz, i32 16, i32 0
  %i.cb = or disjoint i32 %i.bo, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !251
  %i.ce = zext i16 %i.cd to i64
  %i.cf = add nsw i64 %1, %i.ce                   ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = trunc i64 %i.cf to i8
  %i.ck = and i8 %i.cj, 7
  %i.cl = lshr i8 %i.ci, %i.ck
  %i.cm = trunc i8 %i.cl to i1
  %i.cn = select i1 %i.cm, i32 32, i32 0
  %i.co = or disjoint i32 %i.cb, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !251
  %i.cr = zext i16 %i.cq to i64
  %i.cs = add nsw i64 %1, %i.cr                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16
  %i.cw = trunc i64 %i.cs to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = lshr i8 %i.cv, %i.cx
  %i.cz = trunc i8 %i.cy to i1
  %i.da = select i1 %i.cz, i32 64, i32 0
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !251
  %i.dd = zext i16 %i.dc to i64
  %i.de = add nsw i64 %1, %i.dd                   ; 2 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.di = trunc i64 %i.de to i8
  %i.dj = and i8 %i.di, 7
  %i.dk = lshr i8 %i.dh, %i.dj
  %i.dl = trunc i8 %i.dk to i1
  %i.dm = select i1 %i.dl, i32 128, i32 0
  %.masked = or i32 %i.co, %i.da
  %i.dn = or i32 %.masked, %i.dm                  ; 2 uses
  %i.do = shl nuw nsw i32 %i.dn, %i.b
  %i.dp = getelementptr i8, ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !16
  %i.dr = trunc i32 %i.do to i8
  %i.ds = or i8 %i.dq, %i.dr
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !16
  %i.dt = lshr i32 %i.dn, %i.k
  %i.du = trunc nuw nsw i32 %i.dt to i8
  %i.dv = getelementptr i8, ptr %i.dp, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !255

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %indvars.iv70 = phi i64 [ %i.o, %.lr.ph67.preheader ], [ %indvars.iv.next71, %.lr.ph67 ] ; 3 uses
  %i.dw = add nsw i64 %3, %indvars.iv70           ; 2 uses
  %i.dx = getelementptr inbounds [2 x i8], ptr %5, i64 %indvars.iv70
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !251
  %i.dz = zext i16 %i.dy to i64
  %i.ea = add nsw i64 %1, %i.dz                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !16
  %i.ee = trunc i64 %i.ea to i8
  %i.ef = and i8 %i.ee, 7
  %i.eg = lshr i8 %i.ed, %i.ef
  %i.eh = and i8 %i.eg, 1
  %.neg.i = sub nsw i8 0, %i.eh
  %i.ei = sdiv i64 %i.dw, 8
  %i.ej = getelementptr inbounds i8, ptr %2, i64 %i.ei ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16  ; 2 uses
  %i.el = xor i8 %i.ek, %.neg.i
  %i.em = srem i64 %i.dw, 8
  %i.en = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ep = and i8 %i.el, %i.eo
  %i.eq = xor i8 %i.ep, %i.ek
  store i8 %i.eq, ptr %i.ej, align 1, !tbaa !16
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next71, %i.p
  br i1 %i.er, label %.lr.ph67, label %.loopexit, !llvm.loop !256

.loopexit:                                        ; preds = %.lr.ph67, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute16ExecBatchBuilder14CollectBitsImpILb1EEEvPKhlPhliPKt(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %4, 7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = lshr i32 %4, 3
  %i.c = sdiv i64 %3, 8
  %i.d = getelementptr i8, ptr %2, i64 %i.c
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = srem i32 %4, 8                           ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph57.preheader, label %.loopexit

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %i.g = sub nsw i32 %4, %i.e
  %i.h = sext i32 %i.g to i64
  %i.i = sext i32 %4 to i64
  br label %.lr.ph57

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %.idx ; 8 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !251
  %i.l = zext i16 %i.k to i64
  %i.m = add nsw i64 %1, %i.l                     ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = trunc i64 %i.m to i8
  %i.r = and i8 %i.q, 7
  %i.s = lshr i8 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !251
  %i.v = zext i16 %i.u to i64
  %i.w = add nsw i64 %1, %i.v                     ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = trunc i64 %i.w to i8
  %i.ab = and i8 %i.aa, 7
  %i.ac = lshr i8 %i.z, %i.ab
  %i.ad = shl i8 %i.ac, 1
  %i.ae = and i8 %i.ad, 2
  %i.af = and i8 %i.s, 1
  %i.ag = or disjoint i8 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !251
  %i.aj = zext i16 %i.ai to i64
  %i.ak = add nsw i64 %1, %i.aj                   ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = trunc i64 %i.ak to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = lshr i8 %i.an, %i.ap
  %i.ar = shl i8 %i.aq, 2
  %i.as = and i8 %i.ar, 4
  %i.at = or disjoint i8 %i.ag, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.av = load i16, ptr %i.au, align 2, !tbaa !251
  %i.aw = zext i16 %i.av to i64
  %i.ax = add nsw i64 %1, %i.aw                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = trunc i64 %i.ax to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = lshr i8 %i.ba, %i.bc
  %i.be = shl i8 %i.bd, 3
  %i.bf = and i8 %i.be, 8
  %i.bg = or disjoint i8 %i.at, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !251
  %i.bj = zext i16 %i.bi to i64
  %i.bk = add nsw i64 %1, %i.bj                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = trunc i64 %i.bk to i8
  %i.bp = and i8 %i.bo, 7
  %i.bq = lshr i8 %i.bn, %i.bp
  %i.br = shl i8 %i.bq, 4
  %i.bs = and i8 %i.br, 16
  %i.bt = or disjoint i8 %i.bg, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !251
  %i.bw = zext i16 %i.bv to i64
  %i.bx = add nsw i64 %1, %i.bw                   ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16
  %i.cb = trunc i64 %i.bx to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = lshr i8 %i.ca, %i.cc
  %i.ce = shl i8 %i.cd, 5
  %i.cf = and i8 %i.ce, 32
  %i.cg = or disjoint i8 %i.bt, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !251
  %i.cj = zext i16 %i.ci to i64
  %i.ck = add nsw i64 %1, %i.cj                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = trunc i64 %i.ck to i8
  %i.cp = and i8 %i.co, 7
  %i.cq = lshr i8 %i.cn, %i.cp
  %i.cr = shl i8 %i.cq, 6
  %i.cs = and i8 %i.cr, 64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !251
  %i.cv = zext i16 %i.cu to i64
  %i.cw = add nsw i64 %1, %i.cv                   ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16
  %i.da = trunc i64 %i.cw to i8
  %i.db = and i8 %i.da, 7
  %i.dc = lshr i8 %i.cz, %i.db
  %i.dd = shl i8 %i.dc, 7
  %i.de = or i8 %i.cg, %i.cs
  %i.df = or i8 %i.de, %i.dd
  %i.dg = getelementptr i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !257

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %indvars.iv60 = phi i64 [ %i.h, %.lr.ph57.preheader ], [ %indvars.iv.next61, %.lr.ph57 ] ; 3 uses
  %i.dh = add nsw i64 %3, %indvars.iv60           ; 2 uses
  %i.di = getelementptr inbounds [2 x i8], ptr %5, i64 %indvars.iv60
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !251
  %i.dk = zext i16 %i.dj to i64
  %i.dl = add nsw i64 %1, %i.dk                   ; 2 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = trunc i64 %i.dl to i8
  %i.dq = and i8 %i.dp, 7
  %i.dr = lshr i8 %i.do, %i.dq
  %i.ds = and i8 %i.dr, 1
  %.neg.i = sub nsw i8 0, %i.ds
  %i.dt = sdiv i64 %i.dh, 8
  %i.du = getelementptr inbounds i8, ptr %2, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !16  ; 2 uses
  %i.dw = xor i8 %i.dv, %.neg.i
  %i.dx = srem i64 %i.dh, 8
  %i.dy = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16
  %i.ea = and i8 %i.dw, %i.dz
  %i.eb = xor i8 %i.ea, %i.dv
  store i8 %i.eb, ptr %i.du, align 1, !tbaa !16
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.ec = icmp slt i64 %indvars.iv.next61, %i.i
  br i1 %i.ec, label %.lr.ph57, label %.loopexit, !llvm.loop !258

.loopexit:                                        ; preds = %.lr.ph57, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %7 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %10 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %11 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %12 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %13 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %14 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %18 = alloca %class.anon.86, align 8            ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !140  ; 35 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, %3                     ; 2 uses
  %i.j = icmp eq i32 %i.h, 0                      ; 2 uses
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit108

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.k = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute18ResizableArrayData4InitERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %5, i32 noundef 15)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.l = load ptr, ptr %15, align 8, !tbaa !42, !noalias !261 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !42, !alias.scope !261
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit108, label %.critedge

_ZN5arrow6StatusD2Ev.exit108:                     ; preds = %bb.a, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN5arrow7compute18ResizableArrayData24ResizeFixedLengthBuffersEi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.n = load ptr, ptr %16, align 8, !tbaa !42, !noalias !264 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !42, !alias.scope !264
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit110, label %.critedge

_ZN5arrow6StatusD2Ev.exit110:                     ; preds = %_ZN5arrow6StatusD2Ev.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.p = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.q = load ptr, ptr %17, align 8, !tbaa !42
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.b, !prof !45

end_hunk_0
begin_hunk_1_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 32 ; 3 uses
  %i.lf = getelementptr i8, ptr %2, i64 72
  %.val.val.val.i201 = load ptr, ptr %i.lf, align 8, !tbaa !161
  %i.lg = getelementptr inbounds nuw i8, ptr %.val.val.val.i201, i64 16 ; 3 uses
  %i.lh = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count54.i202 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter496 = and i64 %wide.trip.count54.i202, 1
  %i.li = icmp eq i32 %3, 1
  br i1 %i.li, label %.epil.preheader495, label %.lr.ph48.i198.new

.lr.ph48.i198.new:                                ; preds = %.lr.ph48.i198
  %unroll_iter499 = and i64 %wide.trip.count54.i202, 2147483646
  br label %bb.av

bb.aq:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i182
  %i.lj = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !85 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !86
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8            ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !86 ; 3 uses
  %.not.i.i37.i185 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i37.i185, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !66
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 9
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !89, !range !96, !noundef !97
  %i.lw = trunc nuw i8 %i.lv to i1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = select i1 %i.lw, ptr %i.ly, ptr null, !prof !45
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.lt
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i187 = phi ptr [ %i.ma, %bb.ar ], [ null, %bb.aq ] ; 3 uses
  %i.mb = icmp sgt i32 %3, 0
  br i1 %i.mb, label %.lr.ph.i188, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.lr.ph.i188:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i186
  %i.mc = getelementptr i8, ptr %2, i64 72
  %.val34.val.val.i191 = load ptr, ptr %i.mc, align 8, !tbaa !161
  %i.md = getelementptr inbounds nuw i8, ptr %.val34.val.val.i191, i64 16 ; 3 uses
  %i.me = sext i32 %i.h to i64                    ; 3 uses
  %wide.trip.count.i192 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter490 = and i64 %wide.trip.count.i192, 1
  %i.mf = icmp eq i32 %3, 1
  br i1 %i.mf, label %.epil.preheader489, label %.lr.ph.i188.new

.lr.ph.i188.new:                                  ; preds = %.lr.ph.i188
  %unroll_iter493 = and i64 %wide.trip.count.i192, 2147483646
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  %i.mg = landingpad { ptr, i32 }
          cleanup
  %i.mh = load ptr, ptr %11, align 8, !tbaa !42
  %.not.i.i38.i177 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i38.i177, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178, label %bb.at, !prof !45

bb.at:                                            ; preds = %bb.as
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit39.i178: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume

bb.au:                                            ; preds = %bb.au, %.lr.ph.i188.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i188.new ], [ %indvars.iv.next.i195.1, %bb.au ] ; 4 uses
  %niter494 = phi i64 [ 0, %.lr.ph.i188.new ], [ %niter494.next.1, %bb.au ]
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i193
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !251
  %i.mk = zext i16 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i8, ptr %i.lp, i64 %i.mn
  %.val36.i194 = load i64, ptr %i.mo, align 8, !tbaa !18
  %i.mp = load ptr, ptr %i.md, align 8
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %indvars.iv.i193
  %i.mr = getelementptr [8 x i8], ptr %i.mq, i64 %i.me
  store i64 %.val36.i194, ptr %i.mr, align 8, !tbaa !18
  %indvars.iv.next.i195 = or disjoint i64 %indvars.iv.i193, 1 ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i195
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !251
  %i.mu = zext i16 %i.mt to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i187, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !3
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.lp, i64 %i.mx
  %.val36.i194.1 = load i64, ptr %i.my, align 8, !tbaa !18
  %i.mz = load ptr, ptr %i.md, align 8
  %i.na = getelementptr [8 x i8], ptr %i.mz, i64 %indvars.iv.next.i195
  %i.nb = getelementptr [8 x i8], ptr %i.na, i64 %i.me
  store i64 %.val36.i194.1, ptr %i.nb, align 8, !tbaa !18
  %indvars.iv.next.i195.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter494.next.1 = add i64 %niter494, 2         ; 2 uses
  %niter494.ncmp.1 = icmp eq i64 %niter494.next.1, %unroll_iter493
  br i1 %niter494.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit473.unr-lcssa, label %bb.au, !llvm.loop !273

bb.av:                                            ; preds = %bb.av, %.lr.ph48.i198.new
  %indvars.iv51.i203 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %indvars.iv.next52.i205.1, %bb.av ] ; 4 uses
  %niter500 = phi i64 [ 0, %.lr.ph48.i198.new ], [ %niter500.next.1, %bb.av ]
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv51.i203
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !251
  %i.ne = load ptr, ptr %i.ld, align 8
  %i.nf = load i64, ptr %i.le, align 8, !tbaa !66
  %i.ng = zext i16 %i.nd to i64
  %i.nh = add nsw i64 %i.nf, %i.ng
  %i.ni = mul nsw i64 %i.nh, %.sroa.520.0.extract.shift44.i184
  %i.nj = getelementptr inbounds i8, ptr %i.ne, i64 %i.ni
  %.val33.i204 = load i64, ptr %i.nj, align 8, !tbaa !18
  %i.nk = load ptr, ptr %i.lg, align 8
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %indvars.iv51.i203
  %i.nm = getelementptr [8 x i8], ptr %i.nl, i64 %i.lh
  store i64 %.val33.i204, ptr %i.nm, align 8, !tbaa !18
  %indvars.iv.next52.i205 = or disjoint i64 %indvars.iv51.i203, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next52.i205
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !251
  %i.np = load ptr, ptr %i.ld, align 8
  %i.nq = load i64, ptr %i.le, align 8, !tbaa !66
  %i.nr = zext i16 %i.no to i64
  %i.ns = add nsw i64 %i.nq, %i.nr
  %i.nt = mul nsw i64 %i.ns, %.sroa.520.0.extract.shift44.i184
  %i.nu = getelementptr inbounds i8, ptr %i.np, i64 %i.nt
  %.val33.i204.1 = load i64, ptr %i.nu, align 8, !tbaa !18
  %i.nv = load ptr, ptr %i.lg, align 8
  %i.nw = getelementptr [8 x i8], ptr %i.nv, i64 %indvars.iv.next52.i205
  %i.nx = getelementptr [8 x i8], ptr %i.nw, i64 %i.lh
  store i64 %.val33.i204.1, ptr %i.nx, align 8, !tbaa !18
  %indvars.iv.next52.i205.1 = add nuw nsw i64 %indvars.iv51.i203, 2 ; 2 uses
  %niter500.next.1 = add i64 %niter500, 2         ; 2 uses
  %niter500.ncmp.1 = icmp eq i64 %niter500.next.1, %unroll_iter499
  br i1 %niter500.ncmp.1, label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit472.unr-lcssa, label %bb.av, !llvm.loop !274

bb.aw:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ny = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 3 uses
  %i.nz = sub nsw i32 %3, %i.ny                   ; 6 uses
  store i32 %i.nz, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.oa = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.oa)
  %i.ob = load ptr, ptr %10, align 8, !tbaa !42
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %.thread.i227, label %bb.ax, !prof !45

.thread.i227:                                     ; preds = %bb.aw
  %i.od = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i45.i = load i64, ptr %i.od, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %.pr.i209 = load ptr, ptr %10, align 8, !tbaa !42
  %i.oe = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.0.0.copyload.i.i.i210 = load i64, ptr %i.oe, align 8 ; 2 uses
  %.not.i.i.i211 = icmp eq ptr %.pr.i209, null
  br i1 %.not.i.i.i211, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212, label %bb.az, !prof !250

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212: ; preds = %bb.az, %bb.ay, %.thread.i227
  %.sroa.0.0.copyload.i.i49.i = phi i64 [ %.sroa.0.0.copyload.i.i45.i, %.thread.i227 ], [ %.sroa.0.0.copyload.i.i.i210, %bb.ay ], [ %.sroa.0.0.copyload.i.i.i210, %bb.az ] ; 3 uses
  %.sroa.520.0.extract.shift50.i = lshr i64 %.sroa.0.0.copyload.i.i49.i, 32 ; 3 uses
  %.sroa.520.0.extract.trunc51.i = trunc nuw i64 %.sroa.520.0.extract.shift50.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.of = trunc i64 %.sroa.0.0.copyload.i.i49.i to i1
  br i1 %i.of, label %.preheader.i223, label %bb.ba

.preheader.i223:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.og = icmp sgt i32 %i.nz, 0
  br i1 %i.og, label %.lr.ph55.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph55.i:                                       ; preds = %.preheader.i223
  %i.oh = ashr i64 %.sroa.0.0.copyload.i.i49.i, 32 ; 4 uses
  %i.oi = add nsw i64 %i.oh, -1
  %i.oj = sdiv i64 %i.oi, 8                       ; 3 uses
  %i.ok = icmp eq i64 %.sroa.520.0.extract.shift50.i, 0
  %.not1.i38.i = icmp slt i32 %.sroa.520.0.extract.trunc51.i, -6
  %or.cond2.i39.i = or i1 %i.ok, %.not1.i38.i
  br i1 %or.cond2.i39.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.preheader.i

.lr.ph.split.i40.preheader.preheader.i:           ; preds = %.lr.ph55.i
  %wide.trip.count61.i = zext nneg i32 %i.nz to i64
  %i.ol = getelementptr i8, ptr %2, i64 72
  %i.om = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %i.on = call i64 @llvm.smax.i64(i64 %i.oj, i64 0)
  %i.oo = add nuw nsw i64 %i.on, 1                ; 2 uses
  %min.iters.check448 = icmp slt i64 %i.oh, 89
  %i.op = and i64 %i.om, 4294967295
  %i.oq = icmp eq i64 %i.op, 4294967295
  %or.cond = select i1 %min.iters.check448, i1 true, i1 %i.oq
  %n.vec451 = and i64 %i.oo, 9223372036854775804  ; 3 uses
  %cmp.n458 = icmp eq i64 %i.oo, %n.vec451
  br label %.lr.ph.split.i40.preheader.i

bb.ba:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i212
  %i.or = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !85 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !86
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8            ; 2 uses
  %i.oy = ptrtoaddr ptr %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !86 ; 3 uses
  %.not.i.i35.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i35.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pb = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !66
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 9
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !89, !range !96, !noundef !97
  %i.pf = trunc nuw i8 %i.pe to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = select i1 %i.pf, ptr %i.ph, ptr null, !prof !45
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pc
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i214 = phi ptr [ %i.pj, %bb.bb ], [ null, %bb.ba ]
  %i.pk = icmp sgt i32 %i.nz, 0
  br i1 %i.pk, label %.lr.ph.preheader.i215, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"

.lr.ph.preheader.i215:                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %wide.trip.count.i216 = zext nneg i32 %i.nz to i64
  %i.pl = getelementptr i8, ptr %2, i64 72
  br label %.lr.ph.i217

bb.bc:                                            ; preds = %bb.ax
  %i.pm = landingpad { ptr, i32 }
          cleanup
  %i.pn = load ptr, ptr %10, align 8, !tbaa !42
  %.not.i.i36.i = icmp eq ptr %i.pn, null
  br i1 %.not.i.i36.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i, label %bb.bd, !prof !45

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %common.resume

.lr.ph.i217:                                      ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %.lr.ph.preheader.i215
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.preheader.i215 ], [ %indvars.iv.next.i221, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i" ] ; 3 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i218
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !251
  %i.pq = zext i16 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i214, i64 %i.pq ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3  ; 3 uses
  %i.pt = sext i32 %i.ps to i64                   ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.ox, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !3  ; 2 uses
  %i.px = sub nsw i32 %i.pw, %i.ps                ; 3 uses
  %.val33.val.val.i = load ptr, ptr %i.pl, align 8, !tbaa !161
  %i.py = getelementptr inbounds nuw i8, ptr %.val33.val.val.i, i64 16
  %i.pz = load ptr, ptr %i.py, align 8            ; 2 uses
  %i.qa = ptrtoaddr ptr %i.pz to i64
  %i.qb = sext i32 %i.px to i64                   ; 2 uses
  %i.qc = trunc i64 %indvars.iv.i218 to i32
  %i.qd = add i32 %i.h, %i.qc
  %i.qe = sext i32 %i.qd to i64
  %i.qf = mul nsw i64 %i.qe, %i.qb                ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.pz, i64 %i.qf ; 2 uses
  %i.qh = add nsw i64 %i.qb, -1
  %i.qi = sdiv i64 %i.qh, 8                       ; 3 uses
  %i.qj = icmp eq i32 %i.pw, %i.ps
  %.not1.i.i = icmp slt i32 %i.px, -6
  %or.cond2.i.i = or i1 %i.qj, %.not1.i.i
  br i1 %or.cond2.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i217
  %i.qk = call i64 @llvm.smax.i64(i64 %i.qi, i64 0)
  %i.ql = add nuw nsw i64 %i.qk, 1                ; 2 uses
  %min.iters.check430 = icmp slt i32 %i.px, 137
  br i1 %min.iters.check430, label %.lr.ph.split.i.i.preheader464, label %vector.scevcheck425

vector.scevcheck425:                              ; preds = %.lr.ph.split.i.i.preheader
  %i.qm = call i64 @llvm.smax.i64(i64 %i.qi, i64 0)
  %i.qn = and i64 %i.qm, 4294967295
  %i.qo = icmp eq i64 %i.qn, 4294967295
  br i1 %i.qo, label %.lr.ph.split.i.i.preheader464, label %vector.memcheck427

vector.memcheck427:                               ; preds = %vector.scevcheck425
  %i.qp = add i64 %i.qf, %i.qa
  %i.qq = add i64 %i.oy, %i.pt
  %i.qr = sub i64 %i.qq, %i.qp
  %diff.check428 = icmp ugt i64 %i.qr, -32
  br i1 %diff.check428, label %.lr.ph.split.i.i.preheader464, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck427
  %n.vec433 = and i64 %i.ql, 9223372036854775804  ; 3 uses
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph431
  %index435 = phi i64 [ 0, %vector.ph431 ], [ %index.next438, %vector.body434 ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %index435 ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %index435 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %wide.load436 = load <2 x i64>, ptr %i.qt, align 8
  %wide.load437 = load <2 x i64>, ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <2 x i64> %wide.load436, ptr %i.qs, align 1
  store <2 x i64> %wide.load437, ptr %i.qv, align 1
  %index.next438 = add nuw i64 %index435, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.qw, label %middle.block439, label %vector.body434, !llvm.loop !275

middle.block439:                                  ; preds = %vector.body434
  %cmp.n440 = icmp eq i64 %i.ql, %n.vec433
  br i1 %cmp.n440, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i.preheader464

.lr.ph.split.i.i.preheader464:                    ; preds = %vector.memcheck427, %vector.scevcheck425, %.lr.ph.split.i.i.preheader, %middle.block439
  %.ph465 = phi i64 [ 0, %vector.memcheck427 ], [ 0, %vector.scevcheck425 ], [ 0, %.lr.ph.split.i.i.preheader ], [ %n.vec433, %middle.block439 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader464, %.lr.ph.split.i.i
  %i.qx = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %.ph465, %.lr.ph.split.i.i.preheader464 ] ; 3 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.qx
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.qx
  %.0.copyload.i.i.i = load i64, ptr %i.qz, align 8
  store i64 %.0.copyload.i.i.i, ptr %i.qy, align 1
  %indvars.iv.next.i.i = add i64 %i.qx, 1         ; 2 uses
  %19 = and i64 %indvars.iv.next.i.i, 4294967295
  %.not.i.i220 = icmp slt i64 %i.qi, %19
  br i1 %.not.i.i220, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", label %.lr.ph.split.i.i, !llvm.loop !278

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i, %middle.block439, %.lr.ph.i217
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i218, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i216
  br i1 %exitcond.not.i222, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.i217, !llvm.loop !279

.lr.ph.split.i40.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", %.lr.ph.split.i40.preheader.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph.split.i40.preheader.preheader.i ], [ %indvars.iv.next59.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i" ] ; 4 uses
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv58.i
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !251
  %i.rc = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 40
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !85
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !86
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8            ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !66
  %i.rl = zext i16 %i.rb to i64
  %i.rm = add nsw i64 %i.rk, %i.rl
  %i.rn = mul nsw i64 %i.rm, %.sroa.520.0.extract.shift50.i ; 2 uses
  %i.ro = getelementptr inbounds i8, ptr %i.ri, i64 %i.rn ; 2 uses
  %.val.val.val.i226 = load ptr, ptr %i.ol, align 8, !tbaa !161
  %i.rp = getelementptr inbounds nuw i8, ptr %.val.val.val.i226, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %i.rr = trunc nuw nsw i64 %indvars.iv58.i to i32
  %i.rs = add nsw i32 %i.h, %i.rr
  %i.rt = sext i32 %i.rs to i64
  %i.ru = mul nsw i64 %i.oh, %i.rt
  %i.rv = getelementptr inbounds i8, ptr %i.rq, i64 %i.ru ; 2 uses
  br i1 %or.cond, label %.lr.ph.split.i40.i.preheader, label %vector.memcheck445

vector.memcheck445:                               ; preds = %.lr.ph.split.i40.preheader.i
  %i.rw = ptrtoaddr ptr %i.rq to i64
  %i.rx = ptrtoaddr ptr %i.ri to i64
  %i.ry = trunc i64 %indvars.iv58.i to i32
  %i.rz = add i32 %i.h, %i.ry
  %i.sa = sext i32 %i.rz to i64
  %i.sb = mul nsw i64 %i.oh, %i.sa
  %i.sc = add i64 %i.sb, %i.rw
  %i.sd = add i64 %i.rn, %i.rx
  %i.se = sub i64 %i.sd, %i.sc
  %diff.check446 = icmp ugt i64 %i.se, -32
  br i1 %diff.check446, label %.lr.ph.split.i40.i.preheader, label %vector.body452

vector.body452:                                   ; preds = %vector.memcheck445, %vector.body452
  %index453 = phi i64 [ %index.next456, %vector.body452 ], [ 0, %vector.memcheck445 ] ; 3 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %index453 ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %index453 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %wide.load454.a = load <2 x i64>, ptr %i.sg, align 8
  %wide.load455 = load <2 x i64>, ptr %i.sh, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store <2 x i64> %wide.load454.a, ptr %i.sf, align 1
  store <2 x i64> %wide.load455, ptr %i.si, align 1
  %index.next456 = add nuw i64 %index453, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next456, %n.vec451
  br i1 %i.sj, label %middle.block457, label %vector.body452, !llvm.loop !280

middle.block457:                                  ; preds = %vector.body452
  br i1 %cmp.n458, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", label %.lr.ph.split.i40.i.preheader

.lr.ph.split.i40.i.preheader:                     ; preds = %vector.memcheck445, %.lr.ph.split.i40.preheader.i, %middle.block457
  %.ph = phi i64 [ 0, %vector.memcheck445 ], [ 0, %.lr.ph.split.i40.preheader.i ], [ %n.vec451, %middle.block457 ]
  br label %.lr.ph.split.i40.i

.lr.ph.split.i40.i:                               ; preds = %.lr.ph.split.i40.i.preheader, %.lr.ph.split.i40.i
  %i.sk = phi i64 [ %indvars.iv.next.i43.i, %.lr.ph.split.i40.i ], [ %.ph, %.lr.ph.split.i40.i.preheader ] ; 3 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.sk
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %i.sk
  %.0.copyload.i.i42.i = load i64, ptr %i.sm, align 8
  store i64 %.0.copyload.i.i42.i, ptr %i.sl, align 1
  %indvars.iv.next.i43.i = add i64 %i.sk, 1       ; 2 uses
  %20 = and i64 %indvars.iv.next.i43.i, 4294967295
  %.not.i43.i = icmp slt i64 %i.oj, %20
  br i1 %.not.i43.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", label %.lr.ph.split.i40.i, !llvm.loop !281

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i": ; preds = %.lr.ph.split.i40.i, %middle.block457
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit", label %.lr.ph.split.i40.preheader.i, !llvm.loop !282

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_4clEiPKhi.exit44.loopexit.i", %.preheader.i223, %.lr.ph55.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i213
  %i.sn = icmp sgt i32 %i.ny, 0
  br i1 %i.sn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  %i.so = sext i32 %i.nz to i64
  %i.sp = getelementptr inbounds [2 x i8], ptr %4, i64 %i.so
  store ptr %i.a, ptr %18, align 8, !tbaa !283
  %i.sq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.b, ptr %i.sq, align 8, !tbaa !286
  %i.sr = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.sr, align 8, !tbaa !286
  call fastcc void @"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_5EEvS7_iSB_T_"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ny, ptr noundef %i.sp, ptr noundef nonnull byval(%class.anon.86) align 8 %18)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_4EEvS7_iSB_T_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

bb.bg:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !161 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 9
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !89, !range !96, !noundef !97
  %i.sw = trunc nuw i8 %i.sv to i1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sy = load i8, ptr %i.sx, align 8, !range !96
  %i.sz = trunc nuw i8 %i.sy to i1
  %i.ta = select i1 %i.sw, i1 %i.sz, i1 false, !prof !45
  %i.tb = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.tc = load ptr, ptr %i.tb, align 8            ; 12 uses
  %i.td = select i1 %i.ta, ptr %i.tc, ptr null, !prof !45 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br i1 %i.j, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.te = sext i32 %i.h to i64
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !3
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.th = phi i32 [ %i.tg, %bb.bh ], [ 0, %bb.bg ] ; 5 uses
  store i32 %i.th, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ti = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.ti)
  %i.tj = load ptr, ptr %9, align 8, !tbaa !42
  %i.tk = icmp eq ptr %i.tj, null
  br i1 %i.tk, label %.thread.i247, label %bb.bj, !prof !45

.thread.i247:                                     ; preds = %bb.bi
  %i.tl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.tl, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.pr.i230 = load ptr, ptr %9, align 8, !tbaa !42
  %i.tm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.0.0.copyload.i.i.i231 = load i64, ptr %i.tm, align 8 ; 2 uses
  %.not.i.i.i232 = icmp eq ptr %.pr.i230, null
  br i1 %.not.i.i.i232, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233, label %bb.bl, !prof !250

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233: ; preds = %bb.bl, %bb.bk, %.thread.i247
  %.sroa.0.0.copyload.i.i42.i = phi i64 [ %.sroa.0.0.copyload.i.i38.i, %.thread.i247 ], [ %.sroa.0.0.copyload.i.i.i231, %bb.bk ], [ %.sroa.0.0.copyload.i.i.i231, %bb.bl ] ; 2 uses
  %.sroa.520.0.extract.trunc43.in.i = lshr i64 %.sroa.0.0.copyload.i.i42.i, 32
  %.sroa.520.0.extract.trunc43.i = trunc nuw i64 %.sroa.520.0.extract.trunc43.in.i to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.tn = trunc i64 %.sroa.0.0.copyload.i.i42.i to i1
  br i1 %i.tn, label %.preheader.i244, label %bb.bm

.preheader.i244:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.to = icmp sgt i32 %3, 0
  br i1 %i.to, label %.lr.ph47.i.preheader, label %.critedge101

.lr.ph47.i.preheader:                             ; preds = %.preheader.i244
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph47.i.preheader480, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47.i.preheader
  %n.vec = and i32 %3, 2147483640                 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.520.0.extract.trunc43.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tp = add nsw i32 %i.h, %index
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.tr, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.ts, align 4, !tbaa !3
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.tt = icmp eq i32 %index.next, %n.vec
  br i1 %i.tt, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader, label %.lr.ph47.i.preheader480

.lr.ph47.i.preheader480:                          ; preds = %.lr.ph47.i.preheader, %middle.block
  %.03146.i.ph = phi i32 [ 0, %.lr.ph47.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph47.i

bb.bm:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i233
  %i.tu = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 40
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !85
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !86 ; 3 uses
  %.not.i.i35.i234 = icmp eq ptr %i.ty, null
  br i1 %.not.i.i35.i234, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !66
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 9
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !89, !range !96, !noundef !97
  %i.ud = trunc nuw i8 %i.uc to i1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = select i1 %i.ud, ptr %i.uf, ptr null, !prof !45
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.ua
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i236 = phi ptr [ %i.uh, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.ui = icmp sgt i32 %3, 0
  br i1 %i.ui, label %.lr.ph.i237, label %.critedge101

.lr.ph.i237:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235
  %wide.trip.count.i239 = zext nneg i32 %3 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i239, 1
  %i.uj = icmp eq i32 %3, 1
  br i1 %i.uj, label %.epil.preheader, label %.lr.ph.i237.new

.lr.ph.i237.new:                                  ; preds = %.lr.ph.i237
  %unroll_iter = and i64 %wide.trip.count.i239, 2147483646
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj
  %i.uk = landingpad { ptr, i32 }
          cleanup
  %i.ul = load ptr, ptr %9, align 8, !tbaa !42
  %.not.i.i36.i228 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i36.i228, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229, label %bb.bp, !prof !45

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit37.i229: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.i237.new
  %indvars.iv.i240 = phi i64 [ 0, %.lr.ph.i237.new ], [ %indvars.iv.next.i242.1, %bb.bq ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i237.new ], [ %niter.next.1, %bb.bq ]
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i240
  %i.un = load i16, ptr %i.um, align 2, !tbaa !251
  %i.uo = zext i16 %i.un to i64
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.uo ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !3
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !3
  %i.ut = sub nsw i32 %i.us, %i.uq
  %i.uu = trunc nuw nsw i64 %indvars.iv.i240 to i32
  %i.uv = add nsw i32 %i.h, %i.uu
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.uw
  store i32 %i.ut, ptr %i.ux, align 4, !tbaa !3
  %indvars.iv.next.i242 = or disjoint i64 %indvars.iv.i240, 1 ; 2 uses
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i242
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !251
  %i.va = zext i16 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i236, i64 %i.va ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !3
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !3
  %i.vf = sub nsw i32 %i.ve, %i.vc
  %i.vg = trunc nuw nsw i64 %indvars.iv.next.i242 to i32
  %i.vh = add nsw i32 %i.h, %i.vg
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.vi
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolE:bb.a
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.vy
  store i32 %i.vv, ptr %i.vz, align 4, !tbaa !3
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.epil.preheader, %.lr.ph.preheader.loopexit481.unr-lcssa, %.lr.ph47.i, %middle.block
  %xtraiter483 = and i32 %3, 1
  %i.wa = icmp eq i32 %3, 1
  br i1 %i.wa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter487 = and i32 %3, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.br, %.lr.ph.preheader.new
  %i.wb = phi i32 [ %i.th, %.lr.ph.preheader.new ], [ %i.wq, %bb.br ] ; 2 uses
  %.091328 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.wr, %bb.br ] ; 4 uses
  %niter488 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter488.next.1, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wc = add nsw i32 %i.h, %.091328
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.wd ; 2 uses
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !3  ; 2 uses
  store i32 %i.wf, ptr %i.e, align 4, !tbaa !3
  store i32 %i.wb, ptr %i.we, align 4, !tbaa !3
  %i.wg = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.wb, i32 %i.wf) ; 2 uses
  %i.wh = extractvalue { i32, i1 } %i.wg, 1
  br i1 %i.wh, label %.loopexit, label %.lr.ph.1, !prof !62

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.wi = extractvalue { i32, i1 } %i.wg, 0       ; 3 uses
  store i32 %i.wi, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wj = or disjoint i32 %.091328, 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wk = add nsw i32 %i.h, %i.wj
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.wl ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !3  ; 2 uses
  store i32 %i.wn, ptr %i.e, align 4, !tbaa !3
  store i32 %i.wi, ptr %i.wm, align 4, !tbaa !3
  %i.wo = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.wi, i32 %i.wn) ; 2 uses
  %i.wp = extractvalue { i32, i1 } %i.wo, 1
  br i1 %i.wp, label %.loopexit, label %bb.br, !prof !62

bb.br:                                            ; preds = %.lr.ph.1
  %i.wq = extractvalue { i32, i1 } %i.wo, 0       ; 4 uses
  store i32 %i.wq, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.wr = add nuw nsw i32 %.091328, 2             ; 2 uses
  %niter488.next.1 = add i32 %niter488, 2         ; 2 uses
  %niter488.ncmp.1 = icmp eq i32 %niter488.next.1, %unroll_iter487
  br i1 %niter488.ncmp.1, label %.critedge101.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !291

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.epil.preheader
  %.091328.lcssa = phi i32 [ %.091328.epil.init, %.lr.ph.epil.preheader ], [ %.091328, %.lr.ph ], [ %i.wj, %.lr.ph.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.ws = add nuw i32 %.091328.lcssa, 1
  %i.wt = add i32 %i.ws, %i.h
  store i32 %i.wt, ptr %i.f, align 4, !tbaa !3
  call void @_ZN5arrow6Status8FromArgsIJRA54_KciRA23_S2_RiRA26_S2_S7_RA7_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(54) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(23) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge103

.critedge101.loopexit.unr-lcssa:                  ; preds = %bb.br
  %lcmp.mod484.not = icmp eq i32 %xtraiter483, 0
  br i1 %lcmp.mod484.not, label %.critedge101, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge101.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %i.th, %.lr.ph.preheader ], [ %i.wq, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %.091328.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.wr, %.critedge101.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod486 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.wu = add nsw i32 %i.h, %.091328.epil.init
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.wv ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !3  ; 2 uses
  store i32 %i.wx, ptr %i.e, align 4, !tbaa !3
  store i32 %.epil.init, ptr %i.ww, align 4, !tbaa !3
  %i.wy = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.epil.init, i32 %i.wx) ; 2 uses
  %i.wz = extractvalue { i32, i1 } %i.wy, 1
  br i1 %i.wz, label %.loopexit, label %.critedge101.loopexit.epilog-lcssa, !prof !62

.critedge101.loopexit.epilog-lcssa:               ; preds = %.lr.ph.epil.preheader
  %i.xa = extractvalue { i32, i1 } %i.wy, 0       ; 2 uses
  store i32 %i.xa, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge101

.critedge101:                                     ; preds = %.critedge101.loopexit.epilog-lcssa, %.critedge101.loopexit.unr-lcssa, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235, %.preheader.i244
  %i.xb = phi i32 [ %i.th, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i235 ], [ %i.th, %.preheader.i244 ], [ %i.wq, %.critedge101.loopexit.unr-lcssa ], [ %i.xa, %.critedge101.loopexit.epilog-lcssa ]
  %i.xc = sext i32 %i.i to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.xc
  store i32 %i.xb, ptr %i.xd, align 4, !tbaa !3
  %i.xe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.xf = load i8, ptr %i.xe, align 8, !tbaa !172, !range !96, !noalias !292, !noundef !97
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %_ZN5arrow6StatusD2Ev.exit252, label %bb.bs

bb.bs:                                            ; preds = %.critedge101
  %i.xh = load ptr, ptr %i.ss, align 8, !tbaa !161, !noalias !292
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !noalias !292
  %i.xk = load i32, ptr %i.g, align 8, !tbaa !140, !noalias !292
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.xl
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !3, !noalias !292
  %i.xo = sext i32 %i.xn to i64                   ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !156, !noalias !292 ; 2 uses
  %i.xr = icmp slt i64 %i.xq, %i.xo
  br i1 %i.xr, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit252

.preheader.i248:                                  ; preds = %bb.bs, %.preheader.i248
  %.012.i = phi i64 [ %i.xt, %.preheader.i248 ], [ %i.xq, %bb.bs ] ; 4 uses
  %i.xs = icmp slt i64 %.012.i, %i.xo
  %i.xt = shl nsw i64 %.012.i, 1
  br i1 %i.xs, label %.preheader.i248, label %_ZN5arrow6StatusD2Ev.exit.i, !llvm.loop !233

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.preheader.i248
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !292
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !161, !noalias !292 ; 2 uses
  %i.xw = add nsw i64 %.012.i, 64
  %i.xx = load ptr, ptr %i.xv, align 8, !tbaa !40, !noalias !295
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  %i.xz = load ptr, ptr %i.xy, align 8, !noalias !295
  call void %i.xz(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.xv, i64 noundef %i.xw, i1 noundef zeroext true), !noalias !292, !inline_history !298
  %i.ya = load ptr, ptr %8, align 8, !tbaa !42, !noalias !299 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !292
  %i.yb = icmp eq ptr %i.ya, null
  br i1 %i.yb, label %_ZN5arrow6StatusD2Ev.exit17.i, label %_ZN5arrow6StatusD2Ev.exit250

_ZN5arrow6StatusD2Ev.exit17.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store i64 %.012.i, ptr %i.xp, align 8, !tbaa !156, !noalias !292
  br label %_ZN5arrow6StatusD2Ev.exit252

_ZN5arrow6StatusD2Ev.exit250:                     ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.ya, ptr %0, align 8, !tbaa !42, !alias.scope !302
  br label %.critedge103

_ZN5arrow6StatusD2Ev.exit252:                     ; preds = %_ZN5arrow6StatusD2Ev.exit17.i, %bb.bs, %.critedge101
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !305
  %i.yc = call noundef i32 @_ZN5arrow7compute16ExecBatchBuilder13NumRowsToSkipERKSt10shared_ptrINS_9ArrayDataEEiPKti(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %3, ptr noundef %4, i32 noundef 8) ; 5 uses
  %i.yd = sub nsw i32 %3, %i.yc                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ye = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ye)
  %i.yf = load ptr, ptr %7, align 8, !tbaa !42
  %i.yg = icmp eq ptr %i.yf, null
  br i1 %i.yg, label %.thread.i268, label %bb.bt, !prof !45

.thread.i268:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit252
  %i.yh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i42.i269 = load i64, ptr %i.yh, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit252
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %.pr.i253 = load ptr, ptr %7, align 8, !tbaa !42
  %i.yi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i254 = load i64, ptr %i.yi, align 8 ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.pr.i253, null
  br i1 %.not.i.i.i255, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256, label %bb.bv, !prof !250

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256: ; preds = %bb.bv, %bb.bu, %.thread.i268
  %.sroa.0.0.copyload.i.i46.i = phi i64 [ %.sroa.0.0.copyload.i.i42.i269, %.thread.i268 ], [ %.sroa.0.0.copyload.i.i.i254, %bb.bu ], [ %.sroa.0.0.copyload.i.i.i254, %bb.bv ] ; 3 uses
  %.sroa.520.0.extract.shift47.i = lshr i64 %.sroa.0.0.copyload.i.i46.i, 32 ; 3 uses
  %.sroa.520.0.extract.trunc48.i = trunc nuw i64 %.sroa.520.0.extract.shift47.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.yj = trunc i64 %.sroa.0.0.copyload.i.i46.i to i1
  br i1 %i.yj, label %.preheader.i267, label %bb.bw

.preheader.i267:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yk = icmp sgt i32 %i.yd, 0
  br i1 %i.yk, label %.lr.ph52.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph52.i:                                       ; preds = %.preheader.i267
  %i.yl = ashr i64 %.sroa.0.0.copyload.i.i46.i, 32 ; 2 uses
  %i.ym = add nsw i64 %i.yl, -1
  %i.yn = sdiv i64 %i.ym, 8                       ; 3 uses
  %i.yo = icmp eq i64 %.sroa.520.0.extract.shift47.i, 0
  %.not10.i35.i = icmp slt i32 %.sroa.520.0.extract.trunc48.i, -6
  %or.cond11.i36.i = or i1 %i.yo, %.not10.i35.i
  br i1 %or.cond11.i36.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.preheader.i

.lr.ph.split.i37.preheader.preheader.i:           ; preds = %.lr.ph52.i
  %wide.trip.count58.i = zext nneg i32 %i.yd to i64
  %i.yp = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.yq = call i64 @llvm.smax.i64(i64 %i.yn, i64 0)
  %i.yr = call i64 @llvm.smax.i64(i64 %i.yn, i64 0)
  %i.ys = add nuw nsw i64 %i.yr, 1                ; 2 uses
  %min.iters.check412 = icmp slt i64 %i.yl, 89
  %i.yt = and i64 %i.yq, 4294967295
  %i.yu = icmp eq i64 %i.yt, 4294967295
  %or.cond463 = select i1 %min.iters.check412, i1 true, i1 %i.yu
  %n.vec415 = and i64 %i.ys, 9223372036854775804  ; 3 uses
  %cmp.n422 = icmp eq i64 %i.ys, %n.vec415
  br label %.lr.ph.split.i37.preheader.i

bb.bw:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i256
  %i.yv = load ptr, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 40
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !85 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 32
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !86
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %i.zb = load ptr, ptr %i.za, align 8            ; 2 uses
  %i.zc = ptrtoaddr ptr %i.zb to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !86 ; 3 uses
  %.not.i.i32.i = icmp eq ptr %i.ze, null
  br i1 %.not.i.i32.i, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yv, i64 32
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !66
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 9
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !89, !range !96, !noundef !97
  %i.zj = trunc nuw i8 %i.zi to i1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8
  %i.zm = select i1 %i.zj, ptr %i.zl, ptr null, !prof !45
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.zm, i64 %i.zg
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i258 = phi ptr [ %i.zn, %bb.bx ], [ null, %bb.bw ]
  %i.zo = icmp sgt i32 %i.yd, 0
  br i1 %i.zo, label %.lr.ph.i259, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"

.lr.ph.i259:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %wide.trip.count.i260 = zext nneg i32 %i.yd to i64
  %i.zp = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.ca

bb.by:                                            ; preds = %bb.bt
  %i.zq = landingpad { ptr, i32 }
          cleanup
  %i.zr = load ptr, ptr %7, align 8, !tbaa !42
  %.not.i.i33.i = icmp eq ptr %i.zr, null
  br i1 %.not.i.i33.i, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i, label %bb.bz, !prof !45

bb.bz:                                            ; preds = %bb.by
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

bb.ca:                                            ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %.lr.ph.i259
  %indvars.iv.i261 = phi i64 [ 0, %.lr.ph.i259 ], [ %indvars.iv.next.i265, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i" ] ; 3 uses
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i261
  %i.zt = load i16, ptr %i.zs, align 2, !tbaa !251
  %i.zu = zext i16 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i258, i64 %i.zu ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !3  ; 3 uses
  %i.zx = sext i32 %i.zw to i64                   ; 2 uses
  %i.zy = getelementptr inbounds i8, ptr %i.zb, i64 %i.zx ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !3 ; 2 uses
  %i.aab = sub nsw i32 %i.aaa, %i.zw              ; 3 uses
  %i.aac = load ptr, ptr %i.zp, align 8, !tbaa !161
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8          ; 2 uses
  %i.aaf = ptrtoaddr ptr %i.aae to i64
  %i.aag = trunc nuw nsw i64 %indvars.iv.i261 to i32
  %i.aah = add nsw i32 %i.h, %i.aag
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !3
  %i.aal = sext i32 %i.aak to i64                 ; 2 uses
  %i.aam = getelementptr inbounds i8, ptr %i.aae, i64 %i.aal ; 2 uses
  %i.aan = sext i32 %i.aab to i64
  %i.aao = add nsw i64 %i.aan, -1
  %i.aap = sdiv i64 %i.aao, 8                     ; 3 uses
  %i.aaq = icmp eq i32 %i.aaa, %i.zw
  %.not10.i.i = icmp slt i32 %i.aab, -6
  %or.cond11.i.i = or i1 %i.aaq, %.not10.i.i
  br i1 %or.cond11.i.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader

.lr.ph.split.i.i262.preheader:                    ; preds = %bb.ca
  %i.aar = call i64 @llvm.smax.i64(i64 %i.aap, i64 0)
  %i.aas = add nuw nsw i64 %i.aar, 1              ; 2 uses
  %min.iters.check395 = icmp slt i32 %i.aab, 137
  br i1 %min.iters.check395, label %.lr.ph.split.i.i262.preheader476, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.i.i262.preheader
  %i.aat = call i64 @llvm.smax.i64(i64 %i.aap, i64 0)
  %i.aau = and i64 %i.aat, 4294967295
  %i.aav = icmp eq i64 %i.aau, 4294967295
  br i1 %i.aav, label %.lr.ph.split.i.i262.preheader476, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aaw = add i64 %i.aaf, %i.aal
  %i.aax = add i64 %i.zc, %i.zx
  %i.aay = sub i64 %i.aax, %i.aaw
  %diff.check = icmp ugt i64 %i.aay, -32
  br i1 %diff.check, label %.lr.ph.split.i.i262.preheader476, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck
  %n.vec398 = and i64 %i.aas, 9223372036854775804 ; 3 uses
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph396
  %index400 = phi i64 [ 0, %vector.ph396 ], [ %index.next402, %vector.body399 ] ; 3 uses
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %index400 ; 2 uses
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.zy, i64 %index400 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %wide.load = load <2 x i64>, ptr %i.aba, align 8
  %wide.load401 = load <2 x i64>, ptr %i.abb, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  store <2 x i64> %wide.load, ptr %i.aaz, align 1
  store <2 x i64> %wide.load401, ptr %i.abc, align 1
  %index.next402 = add nuw i64 %index400, 4       ; 2 uses
  %i.abd = icmp eq i64 %index.next402, %n.vec398
  br i1 %i.abd, label %middle.block403, label %vector.body399, !llvm.loop !307

middle.block403:                                  ; preds = %vector.body399
  %cmp.n404 = icmp eq i64 %i.aas, %n.vec398
  br i1 %cmp.n404, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262.preheader476

.lr.ph.split.i.i262.preheader476:                 ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.i.i262.preheader, %middle.block403
  %.ph477 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.i.i262.preheader ], [ %n.vec398, %middle.block403 ]
  br label %.lr.ph.split.i.i262

.lr.ph.split.i.i262:                              ; preds = %.lr.ph.split.i.i262.preheader476, %.lr.ph.split.i.i262
  %i.abe = phi i64 [ %indvars.iv.next.i.i265, %.lr.ph.split.i.i262 ], [ %.ph477, %.lr.ph.split.i.i262.preheader476 ] ; 3 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %i.abe
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.zy, i64 %i.abe
  %.0.copyload.i.i.i263 = load i64, ptr %i.abg, align 8
  store i64 %.0.copyload.i.i.i263, ptr %i.abf, align 1
  %indvars.iv.next.i.i265 = add i64 %i.abe, 1     ; 2 uses
  %21 = and i64 %indvars.iv.next.i.i265, 4294967295
  %.not.i.i264 = icmp slt i64 %i.aap, %21
  br i1 %.not.i.i264, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", label %.lr.ph.split.i.i262, !llvm.loop !308

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i": ; preds = %.lr.ph.split.i.i262, %middle.block403, %bb.ca
  %indvars.iv.next.i265 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.not.i266 = icmp eq i64 %indvars.iv.next.i265, %wide.trip.count.i260
  br i1 %exitcond.not.i266, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %bb.ca, !llvm.loop !309

.lr.ph.split.i37.preheader.i:                     ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", %.lr.ph.split.i37.preheader.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph.split.i37.preheader.preheader.i ], [ %indvars.iv.next56.i, %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i" ] ; 3 uses
  %i.abh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv55.i
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !251
  %i.abj = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 40
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !85
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !86
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  %i.abp = load ptr, ptr %i.abo, align 8          ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abj, i64 32
  %i.abr = load i64, ptr %i.abq, align 8, !tbaa !66
  %i.abs = zext i16 %i.abi to i64
  %i.abt = add nsw i64 %i.abr, %i.abs
  %i.abu = mul nsw i64 %i.abt, %.sroa.520.0.extract.shift47.i ; 2 uses
  %i.abv = getelementptr inbounds i8, ptr %i.abp, i64 %i.abu ; 2 uses
  %i.abw = load ptr, ptr %i.yp, align 8, !tbaa !161
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  %i.aby = load ptr, ptr %i.abx, align 8          ; 2 uses
  %i.abz = trunc nuw nsw i64 %indvars.iv55.i to i32
  %i.aca = add nsw i32 %i.h, %i.abz
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.acb
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !3
  %i.ace = sext i32 %i.acd to i64                 ; 2 uses
  %i.acf = getelementptr inbounds i8, ptr %i.aby, i64 %i.ace ; 2 uses
  br i1 %or.cond463, label %.lr.ph.split.i37.i.preheader, label %vector.memcheck409

vector.memcheck409:                               ; preds = %.lr.ph.split.i37.preheader.i
  %i.acg = ptrtoaddr ptr %i.aby to i64
  %i.ach = ptrtoaddr ptr %i.abp to i64
  %i.aci = add i64 %i.acg, %i.ace
  %i.acj = add i64 %i.abu, %i.ach
  %i.ack = sub i64 %i.acj, %i.aci
  %diff.check410 = icmp ugt i64 %i.ack, -32
  br i1 %diff.check410, label %.lr.ph.split.i37.i.preheader, label %vector.body416

vector.body416:                                   ; preds = %vector.memcheck409, %vector.body416
  %index417 = phi i64 [ %index.next420, %vector.body416 ], [ 0, %vector.memcheck409 ] ; 3 uses
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %index417 ; 2 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %index417 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %wide.load418 = load <2 x i64>, ptr %i.acm, align 8
  %wide.load419 = load <2 x i64>, ptr %i.acn, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  store <2 x i64> %wide.load418, ptr %i.acl, align 1
  store <2 x i64> %wide.load419, ptr %i.aco, align 1
  %index.next420 = add nuw i64 %index417, 4       ; 2 uses
  %i.acp = icmp eq i64 %index.next420, %n.vec415
  br i1 %i.acp, label %middle.block421, label %vector.body416, !llvm.loop !310

middle.block421:                                  ; preds = %vector.body416
  br i1 %cmp.n422, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", label %.lr.ph.split.i37.i.preheader

.lr.ph.split.i37.i.preheader:                     ; preds = %vector.memcheck409, %.lr.ph.split.i37.preheader.i, %middle.block421
  %.ph475 = phi i64 [ 0, %vector.memcheck409 ], [ 0, %.lr.ph.split.i37.preheader.i ], [ %n.vec415, %middle.block421 ]
  br label %.lr.ph.split.i37.i

.lr.ph.split.i37.i:                               ; preds = %.lr.ph.split.i37.i.preheader, %.lr.ph.split.i37.i
  %i.acq = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph.split.i37.i ], [ %.ph475, %.lr.ph.split.i37.i.preheader ] ; 3 uses
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.acq
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %i.acq
  %.0.copyload.i.i39.i = load i64, ptr %i.acs, align 8
  store i64 %.0.copyload.i.i39.i, ptr %i.acr, align 1
  %indvars.iv.next.i40.i = add i64 %i.acq, 1      ; 2 uses
  %22 = and i64 %indvars.iv.next.i40.i, 4294967295
  %.not.i40.i = icmp slt i64 %i.yn, %22
  br i1 %.not.i40.i, label %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", label %.lr.ph.split.i37.i, !llvm.loop !311

"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i": ; preds = %.lr.ph.split.i37.i, %middle.block421
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit", label %.lr.ph.split.i37.preheader.i, !llvm.loop !312

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit": ; preds = %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit.i", %"_ZZN5arrow7compute16ExecBatchBuilder14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEENK3$_7clEiPKhi.exit41.loopexit.i", %.preheader.i267, %.lr.ph52.i, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i257
  %i.act = sext i32 %i.yd to i64
  %i.acu = getelementptr inbounds [2 x i8], ptr %4, i64 %i.act ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.acv = load ptr, ptr %1, align 8, !tbaa !63
  call void @_ZN5arrow7compute26ColumnMetadataFromDataTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.acv)
  %i.acw = load ptr, ptr %6, align 8, !tbaa !42
  %i.acx = icmp eq ptr %i.acw, null
  br i1 %i.acx, label %.thread.i285, label %bb.cb, !prof !45

.thread.i285:                                     ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  %i.acy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i35.i = load i64, ptr %i.acy, align 8
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275

bb.cb:                                            ; preds = %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_7EEvS7_iSB_T_.exit"
  invoke void @_ZN5arrow8internal17InvalidValueOrDieERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %.pr.i272 = load ptr, ptr %6, align 8, !tbaa !42
  %i.acz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i273 = load i64, ptr %i.acz, align 8 ; 2 uses
  %.not.i.i.i274 = icmp eq ptr %.pr.i272, null
  br i1 %.not.i.i.i274, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275, label %bb.cd, !prof !250

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275: ; preds = %bb.cd, %bb.cc, %.thread.i285
  %.sroa.0.0.copyload.i.i39.i = phi i64 [ %.sroa.0.0.copyload.i.i35.i, %.thread.i285 ], [ %.sroa.0.0.copyload.i.i.i273, %bb.cc ], [ %.sroa.0.0.copyload.i.i.i273, %bb.cd ] ; 3 uses
  %.sroa.520.0.extract.shift40.i = lshr i64 %.sroa.0.0.copyload.i.i39.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ada = trunc i64 %.sroa.0.0.copyload.i.i39.i to i1
  br i1 %i.ada, label %.preheader.i284, label %bb.ce

.preheader.i284:                                  ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275
  %i.adb = icmp sgt i32 %i.yc, 0
  br i1 %i.adb, label %.lr.ph45.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph45.i:                                       ; preds = %.preheader.i284
  %i.adc = ashr i64 %.sroa.0.0.copyload.i.i39.i, 32
  %wide.trip.count51.i = zext nneg i32 %i.yc to i64
  %i.add = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op380 = add i32 %i.yd, %i.h
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit.i275
  %i.ade = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 40
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !85 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !86 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 9
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !89, !range !96, !noundef !97
  %i.adl = trunc nuw i8 %i.adk to i1
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adn = load ptr, ptr %i.adm, align 8
  %i.ado = select i1 %i.adl, ptr %i.adn, ptr null, !prof !45
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !86 ; 3 uses
  %.not.i.i32.i276 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i32.i276, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ade, i64 32
  %i.ads = load i64, ptr %i.adr, align 8, !tbaa !66
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 9
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !89, !range !96, !noundef !97
  %i.adv = trunc nuw i8 %i.adu to i1
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8
  %i.ady = select i1 %i.adv, ptr %i.adx, ptr null, !prof !45
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.ady, i64 %i.ads
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i278 = phi ptr [ %i.adz, %bb.cf ], [ null, %bb.ce ]
  %i.aea = icmp sgt i32 %i.yc, 0
  br i1 %i.aea, label %.lr.ph.i279, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit"

.lr.ph.i279:                                      ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277
  %wide.trip.count.i280 = zext nneg i32 %i.yc to i64
  %i.aeb = getelementptr inbounds nuw i8, ptr %2, i64 88
  %invariant.op = add i32 %i.yd, %i.h
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cb
  %i.aec = landingpad { ptr, i32 }
          cleanup
  %i.aed = load ptr, ptr %6, align 8, !tbaa !42
  %.not.i.i33.i270 = icmp eq ptr %i.aed, null
  br i1 %.not.i.i33.i270, label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271, label %bb.ch, !prof !45

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271

_ZN5arrow6ResultINS_7compute17KeyColumnMetadataEED2Ev.exit34.i271: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i279
  %indvars.iv.i281 = phi i64 [ 0, %.lr.ph.i279 ], [ %indvars.iv.next.i282, %bb.ci ] ; 3 uses
  %i.aee = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %indvars.iv.i281
  %i.aef = load i16, ptr %i.aee, align 2, !tbaa !251
  %i.aeg = zext i16 %i.aef to i64
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i278, i64 %i.aeg ; 2 uses
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !3 ; 2 uses
  %i.aej = sext i32 %i.aei to i64
  %i.aek = getelementptr inbounds i8, ptr %i.ado, i64 %i.aej
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 4
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !3
  %i.aen = sub nsw i32 %i.aem, %i.aei
  %i.aeo = load ptr, ptr %i.aeb, align 8, !tbaa !161 ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 9
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !89, !range !96, !noundef !97
  %i.aer = trunc nuw i8 %i.aeq to i1
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aet = load i8, ptr %i.aes, align 8, !range !96
  %i.aeu = trunc nuw i8 %i.aet to i1
  %i.aev = select i1 %i.aer, i1 %i.aeu, i1 false, !prof !45
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  %i.aex = load ptr, ptr %i.aew, align 8
  %i.aey = select i1 %i.aev, ptr %i.aex, ptr null, !prof !45
  %i.aez = trunc nuw nsw i64 %indvars.iv.i281 to i32
  %.reass = add i32 %invariant.op, %i.aez
  %i.afa = sext i32 %.reass to i64
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.afa
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !3
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds i8, ptr %i.aey, i64 %i.afd
  %i.aff = sext i32 %i.aen to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.afe, ptr readonly align 8 %i.aek, i64 %i.aff, i1 false)
  %indvars.iv.next.i282 = add nuw nsw i64 %indvars.iv.i281, 1 ; 2 uses
  %exitcond.not.i283 = icmp eq i64 %indvars.iv.next.i282, %wide.trip.count.i280
  br i1 %exitcond.not.i283, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit", label %bb.ci, !llvm.loop !313

bb.cj:                                            ; preds = %bb.cj, %.lr.ph45.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next49.i, %bb.cj ] ; 3 uses
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %indvars.iv48.i
  %i.afh = load i16, ptr %i.afg, align 2, !tbaa !251
  %i.afi = load ptr, ptr %1, align 8, !tbaa !63   ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 40
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !85
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !86 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 9
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !89, !range !96, !noundef !97
  %i.afp = trunc nuw i8 %i.afo to i1
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %i.afr = load ptr, ptr %i.afq, align 8
  %i.afs = select i1 %i.afp, ptr %i.afr, ptr null, !prof !45
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afi, i64 32
  %i.afu = load i64, ptr %i.aft, align 8, !tbaa !66
  %i.afv = zext i16 %i.afh to i64
  %i.afw = add nsw i64 %i.afu, %i.afv
  %i.afx = mul nsw i64 %i.afw, %.sroa.520.0.extract.shift40.i
  %i.afy = getelementptr inbounds i8, ptr %i.afs, i64 %i.afx
  %i.afz = load ptr, ptr %i.add, align 8, !tbaa !161 ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 9
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !89, !range !96, !noundef !97
  %i.agc = trunc nuw i8 %i.agb to i1
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %i.age = load i8, ptr %i.agd, align 8, !range !96
  %i.agf = trunc nuw i8 %i.age to i1
  %i.agg = select i1 %i.agc, i1 %i.agf, i1 false, !prof !45
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  %i.agi = load ptr, ptr %i.agh, align 8
  %i.agj = select i1 %i.agg, ptr %i.agi, ptr null, !prof !45
  %i.agk = trunc nuw nsw i64 %indvars.iv48.i to i32
  %.reass381 = add i32 %invariant.op380, %i.agk
  %i.agl = sext i32 %.reass381 to i64
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.agl
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !3
  %i.ago = sext i32 %i.agn to i64
  %i.agp = getelementptr inbounds i8, ptr %i.agj, i64 %i.ago
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.agp, ptr readonly align 8 %i.afy, i64 %i.adc, i1 false)
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit", label %bb.cj, !llvm.loop !314

"_ZN5arrow7compute16ExecBatchBuilder5VisitIZNS1_14AppendSelectedERKSt10shared_ptrINS_9ArrayDataEEPNS0_18ResizableArrayDataEiPKtPNS_10MemoryPoolEE3$_8EEvS7_iSB_T_.exit": ; preds = %bb.ci, %bb.cj, %.preheader.i284, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit

.critedge103:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit250, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge

_ZN5arrow7compute16ExecBatchBuilder11CollectBitsEPKhlPhliPKt.exit.loopexit467.unr-lcssa.a: ; preds = %.lr.ph.i
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
end_hunk_2
