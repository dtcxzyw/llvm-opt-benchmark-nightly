inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@create_colorindex:bb.a
  %.reass = add i64 %i.aj, %invariant.op
  %i.ak = sdiv i64 %.reass, %i.ad                 ; 2 uses
  %sext = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext, 32
  %i.am = icmp sgt i64 %indvars.iv66, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = trunc i64 %i.ak to i32
  %i.ao = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.149.lcssa = phi i32 [ %.04856, %.preheader ], [ %i.an, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.04557, %.preheader ], [ %i.ao, %._crit_edge.loopexit ] ; 2 uses
  %i.ap = mul nsw i32 %.1.lcssa, %i.u
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv66
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !36
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next67, 256
  br i1 %exitcond.not, label %bb.d, label %.preheader, !llvm.loop !97

bb.d:                                             ; preds = %._crit_edge
  br i1 %.not, label %.preheader52, label %.loopexit

.preheader52:                                     ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 255 ; 3 uses
  %.pre78 = load i8, ptr %i.y, align 1, !tbaa !36 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader52
  %indvars.iv69 = phi i64 [ 1, %.preheader52 ], [ %indvars.iv.next70.2, %bb.e ] ; 7 uses
  %i.at = sub nsw i64 0, %indvars.iv69
  %i.au = getelementptr inbounds i8, ptr %i.y, i64 %i.at
  store i8 %.pre78, ptr %i.au, align 1, !tbaa !36
  %i.av = load i8, ptr %i.as, align 1, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 255
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !36
  %i.ay = xor i64 %indvars.iv69, -1
  %i.az = getelementptr inbounds i8, ptr %i.y, i64 %i.ay
  store i8 %.pre78, ptr %i.az, align 1, !tbaa !36
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 256
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !36
  %i.bd = sub nuw nsw i64 -2, %indvars.iv69
  %i.be = getelementptr inbounds i8, ptr %i.y, i64 %i.bd
  store i8 %.pre78, ptr %i.be, align 1, !tbaa !36
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv69
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 257
  store i8 %i.bf, ptr %i.bh, align 1, !tbaa !36
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %exitcond72.not.2 = icmp eq i64 %indvars.iv.next70.2, 256
  br i1 %exitcond72.not.2, label %.loopexit, label %bb.e, !llvm.loop !98

.loopexit:                                        ; preds = %bb.e, %bb.d
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !53
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next74, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge63, !llvm.loop !99

._crit_edge63:                                    ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @color_quantize3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 5 uses
  %i.l = icmp slt i32 %3, 1
  %.not27 = icmp eq i32 %i.k, 0
  %or.cond = select i1 %i.l, i1 true, i1 %.not27
  br i1 %or.cond, label %._crit_edge34.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  %xtraiter = and i32 %i.k, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.m = add nsw i32 %i.k, -1
  %i.n = icmp eq i32 %i.k, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.p, align 1, !tbaa !36
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.y = load i8, ptr %i.s, align 1, !tbaa !36
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !36
  %i.ac = add i8 %i.ab, %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !36
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = add i8 %i.ac, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.ai, ptr %i.r, align 1, !tbaa !36
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.030.unr = phi ptr [ %i.p, %.lr.ph ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %.02429.unr = phi i32 [ %i.k, %.lr.ph ], [ %i.m, %.prol.loopexit.unr-lcssa ]
  %.02628.unr = phi ptr [ %i.r, %.lr.ph ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  br i1 %i.n, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.030 = phi ptr [ %i.bn, %.lr.ph.new ], [ %.030.unr, %.prol.loopexit ] ; 7 uses
  %.02429 = phi i32 [ %i.bu, %.lr.ph.new ], [ %.02429.unr, %.prol.loopexit ]
  %.02628 = phi ptr [ %i.bt, %.lr.ph.new ], [ %.02628.unr, %.prol.loopexit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.al = load i8, ptr %.030, align 1, !tbaa !36
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %.030, i64 2
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !36
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !36
  %i.au = add i8 %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %.030, i64 3
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = add i8 %i.au, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.02628, i64 1
  store i8 %i.ba, ptr %.02628, align 1, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !36
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %.030, i64 5
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !36
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = add i8 %i.bl, %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %.030, i64 6
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !36
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !36
  %i.bs = add i8 %i.bm, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.02628, i64 2
  store i8 %i.bs, ptr %i.bb, align 1, !tbaa !36
  %i.bu = add i32 %.02429, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.bu, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge34.split, label %.lr.ph, !llvm.loop !101

._crit_edge34.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @color_quantize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !80   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !53   ; 3 uses
  %i.i = icmp slt i32 %3, 1
  %.not31 = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.i, i1 true, i1 %.not31
  br i1 %or.cond, label %._crit_edge.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.a
  %i.j = icmp sgt i32 %i.h, 0
  br i1 %i.j, label %.preheader.lr.ph.us.preheader, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph.split
  %i.k = zext i32 %i.f to i64                     ; 9 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.l = add nsw i32 %3, -1
  %i.m = icmp ult i32 %i.l, 7
  br i1 %i.m, label %.preheader.lr.ph.epil.preheader, label %.preheader.lr.ph.preheader.new

.preheader.lr.ph.preheader.new:                   ; preds = %.preheader.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader.lr.ph

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph.split
  %i.n = zext nneg i32 %3 to i64
  %wide.trip.count44 = zext nneg i32 %i.h to i64  ; 2 uses
  %xtraiter58 = and i64 %wide.trip.count44, 3     ; 3 uses
  %i.o = icmp ult i32 %i.h, 4
  %unroll_iter63 = and i64 %wide.trip.count44, 2147483644
  %lcmp.mod60.not = icmp eq i64 %xtraiter58, 0
  %lcmp.mod62 = icmp ne i64 %xtraiter58, 0
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge35.split.us.us
  %indvars.iv46 = phi i64 [ 0, %.preheader.lr.ph.us.preheader ], [ %indvars.iv.next47, %._crit_edge35.split.us.us ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv46
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv46
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader.lr.ph.us
  %.02334.us.us = phi i32 [ %i.f, %.preheader.lr.ph.us ], [ %i.bl, %._crit_edge.us.us ]
  %.02533.us.us = phi ptr [ %i.s, %.preheader.lr.ph.us ], [ %i.bk, %._crit_edge.us.us ] ; 2 uses
  %.02632.us.us = phi ptr [ %i.q, %.preheader.lr.ph.us ], [ %.lcssa58, %._crit_edge.us.us ] ; 2 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 5 uses
  %.029.us.us = phi i8 [ %i.bb, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %.127.us.us = phi ptr [ %i.aw, %.preheader.us.us.new ], [ %.02632.us.us, %.preheader.us.us ] ; 5 uses
  %niter64 = phi i64 [ %niter64.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 1
  %i.w = load i8, ptr %.127.us.us, align 1, !tbaa !36
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !36
  %i.aa = add i8 %i.z, %.029.us.us
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 2
  %i.af = load i8, ptr %i.v, align 1, !tbaa !36
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !36
  %i.aj = add i8 %i.ai, %i.aa
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.an = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 3
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !36
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = add i8 %i.ar, %i.aj
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %.127.us.us, i64 4 ; 3 uses
  %i.ax = load i8, ptr %i.an, align 1, !tbaa !36
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !36
  %i.bb = add i8 %i.ba, %i.as                     ; 3 uses
  %indvars.iv.next43.3 = add nuw nsw i64 %indvars.iv42, 4 ; 2 uses
  %niter64.next.3 = add i64 %niter64, 4           ; 2 uses
  %niter64.ncmp.3 = icmp eq i64 %niter64.next.3, %unroll_iter63
  br i1 %niter64.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !102

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod60.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv42.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next43.3, %._crit_edge.us.us.unr-lcssa ]
  %.029.us.us.epil.init = phi i8 [ 0, %.preheader.us.us ], [ %i.bb, %._crit_edge.us.us.unr-lcssa ]
  %.127.us.us.epil.init = phi ptr [ %.02632.us.us, %.preheader.us.us ], [ %i.aw, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv42.epil = phi i64 [ %indvars.iv.next43.epil, %bb.b ], [ %indvars.iv42.epil.init, %.epil.preheader ] ; 2 uses
  %.029.us.us.epil = phi i8 [ %i.bj, %bb.b ], [ %.029.us.us.epil.init, %.epil.preheader ]
  %.127.us.us.epil = phi ptr [ %i.be, %bb.b ], [ %.127.us.us.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter59 = phi i64 [ %epil.iter59.next, %bb.b ], [ 0, %.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42.epil
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !72
  %i.be = getelementptr inbounds nuw i8, ptr %.127.us.us.epil, i64 1 ; 2 uses
  %i.bf = load i8, ptr %.127.us.us.epil, align 1, !tbaa !36
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !36
  %i.bj = add i8 %i.bi, %.029.us.us.epil          ; 2 uses
  %indvars.iv.next43.epil = add nuw nsw i64 %indvars.iv42.epil, 1
  %epil.iter59.next = add i64 %epil.iter59, 1     ; 2 uses
  %epil.iter59.cmp.not = icmp eq i64 %epil.iter59.next, %xtraiter58
  br i1 %epil.iter59.cmp.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !103

._crit_edge.us.us:                                ; preds = %bb.b, %._crit_edge.us.us.unr-lcssa
  %.lcssa58 = phi ptr [ %i.aw, %._crit_edge.us.us.unr-lcssa ], [ %i.be, %bb.b ]
  %.lcssa = phi i8 [ %i.bb, %._crit_edge.us.us.unr-lcssa ], [ %i.bj, %bb.b ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.02533.us.us, i64 1
  store i8 %.lcssa, ptr %.02533.us.us, align 1, !tbaa !36
  %i.bl = add i32 %.02334.us.us, -1               ; 2 uses
  %.not.us.us = icmp eq i32 %i.bl, 0
  br i1 %.not.us.us, label %._crit_edge35.split.us.us, label %.preheader.us.us, !llvm.loop !104

._crit_edge35.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %i.n
  br i1 %exitcond50.not, label %._crit_edge.split, label %.preheader.lr.ph.us, !llvm.loop !105

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph, %.preheader.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.preheader.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.preheader.new ], [ %niter.next.7, %.preheader.lr.ph ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bn, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bq, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bt, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bw, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bz, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cc, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cf, i8 0, i64 %i.k, i1 false), !tbaa !36
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ci, i8 0, i64 %i.k, i1 false), !tbaa !36
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.loopexit56.unr-lcssa, label %.preheader.lr.ph, !llvm.loop !105

._crit_edge.split.loopexit56.unr-lcssa:           ; preds = %.preheader.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.preheader.lr.ph.epil.preheader

.preheader.lr.ph.epil.preheader:                  ; preds = %._crit_edge.split.loopexit56.unr-lcssa, %.preheader.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.split.loopexit56.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %.preheader.lr.ph.epil

.preheader.lr.ph.epil:                            ; preds = %.preheader.lr.ph.epil, %.preheader.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.preheader.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.lr.ph.epil.preheader ], [ %epil.iter.next, %.preheader.lr.ph.epil ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ck, i8 0, i64 %i.k, i1 false), !tbaa !36
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.preheader.lr.ph.epil, !llvm.loop !106

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit56.unr-lcssa, %.preheader.lr.ph.epil, %._crit_edge35.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @quantize3_ord_dither(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.not45 = icmp eq i32 %i.k, 0
  br i1 %.not45, label %.lr.ph52.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph52
  %wide.trip.count = zext nneg i32 %3 to i64
  %.pre = load i32, ptr %i.m, align 4, !tbaa !87
  br label %.lr.ph

.lr.ph52.split.us:                                ; preds = %.lr.ph52
  %.promoted = load i32, ptr %i.m, align 4, !tbaa !87 ; 2 uses
  %xtraiter = and i32 %3, 7                       ; 3 uses
  %i.q = icmp ult i32 %3, 8
  br i1 %i.q, label %.epil.preheader, label %.lr.ph52.split.us.new

.lr.ph52.split.us.new:                            ; preds = %.lr.ph52.split.us
  %unroll_iter = and i32 %3, 2147483640
  %i.r = and i32 %.promoted, 15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph52.split.us.new
  %i.s = phi i32 [ %i.r, %.lr.ph52.split.us.new ], [ %i.t, %bb.b ]
  %niter = phi i32 [ 0, %.lr.ph52.split.us.new ], [ %niter.next.7, %bb.b ]
  %i.t = xor i32 %i.s, 8                          ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge53.split.us.unr-lcssa, label %bb.b, !llvm.loop !107

._crit_edge53.split.us.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53.split.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge53.split.us.unr-lcssa, %.lr.ph52.split.us
  %.epil.init = phi i32 [ %.promoted, %.lr.ph52.split.us ], [ %i.t, %._crit_edge53.split.us.unr-lcssa ]
  %lcmp.mod58 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %i.u = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.w, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.v = add nsw i32 %i.u, 1
  %i.w = and i32 %i.v, 15                         ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge53.split.us, label %bb.c, !llvm.loop !108

._crit_edge53.split.us:                           ; preds = %bb.c, %._crit_edge53.split.us.unr-lcssa
  %.lcssa = phi i32 [ %i.t, %._crit_edge53.split.us.unr-lcssa ], [ %i.w, %bb.c ]
  store i32 %.lcssa, ptr %i.m, align 4, !tbaa !87
  br label %._crit_edge53

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.x = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.bs, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.ad = sext i32 %i.x to i64                    ; 3 uses
  %i.ae = getelementptr inbounds [64 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.ag = getelementptr inbounds [64 x i8], ptr %i.af, i64 %i.ad
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.ai = getelementptr inbounds [64 x i8], ptr %i.ah, i64 %i.ad
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.049 = phi ptr [ %i.z, %.lr.ph ], [ %i.bd, %bb.d ] ; 4 uses
  %.04148 = phi i32 [ %i.k, %.lr.ph ], [ %i.bq, %bb.d ]
  %.04347 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %bb.d ] ; 2 uses
  %.04446 = phi ptr [ %i.ab, %.lr.ph ], [ %i.bn, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.049, i64 1
  %i.ak = load i8, ptr %.049, align 1, !tbaa !36
  %i.al = zext i8 %i.ak to i32
  %i.am = zext nneg i32 %.04347 to i64            ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ao, %i.al
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.e, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.au = load i8, ptr %i.aj, align 1, !tbaa !36
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.am
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, %i.av
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.g, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %i.bc = add i8 %i.bb, %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %.049, i64 3
  %i.be = load i8, ptr %i.at, align 1, !tbaa !36
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = add i8 %i.bc, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.04446, i64 1
  store i8 %i.bm, ptr %.04446, align 1, !tbaa !36
  %i.bo = add nuw nsw i32 %.04347, 1
  %i.bp = and i32 %i.bo, 15
  %i.bq = add i32 %.04148, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.d
  %i.br = add nsw i32 %i.x, 1
end_hunk_0
